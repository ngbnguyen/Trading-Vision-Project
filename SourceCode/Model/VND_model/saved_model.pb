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
dense_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_95/kernel
s
#dense_95/kernel/Read/ReadVariableOpReadVariableOpdense_95/kernel*
_output_shapes

:
*
dtype0
r
dense_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_95/bias
k
!dense_95/bias/Read/ReadVariableOpReadVariableOpdense_95/bias*
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
lstm_285/lstm_cell_285/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_285/lstm_cell_285/kernel
?
1lstm_285/lstm_cell_285/kernel/Read/ReadVariableOpReadVariableOplstm_285/lstm_cell_285/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_285/lstm_cell_285/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_285/lstm_cell_285/recurrent_kernel
?
;lstm_285/lstm_cell_285/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_285/lstm_cell_285/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_285/lstm_cell_285/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_285/lstm_cell_285/bias
?
/lstm_285/lstm_cell_285/bias/Read/ReadVariableOpReadVariableOplstm_285/lstm_cell_285/bias*
_output_shapes	
:?*
dtype0
?
lstm_286/lstm_cell_286/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_286/lstm_cell_286/kernel
?
1lstm_286/lstm_cell_286/kernel/Read/ReadVariableOpReadVariableOplstm_286/lstm_cell_286/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_286/lstm_cell_286/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_286/lstm_cell_286/recurrent_kernel
?
;lstm_286/lstm_cell_286/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_286/lstm_cell_286/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_286/lstm_cell_286/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_286/lstm_cell_286/bias
?
/lstm_286/lstm_cell_286/bias/Read/ReadVariableOpReadVariableOplstm_286/lstm_cell_286/bias*
_output_shapes	
:?*
dtype0
?
lstm_287/lstm_cell_287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_287/lstm_cell_287/kernel
?
1lstm_287/lstm_cell_287/kernel/Read/ReadVariableOpReadVariableOplstm_287/lstm_cell_287/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_287/lstm_cell_287/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_287/lstm_cell_287/recurrent_kernel
?
;lstm_287/lstm_cell_287/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_287/lstm_cell_287/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_287/lstm_cell_287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_287/lstm_cell_287/bias
?
/lstm_287/lstm_cell_287/bias/Read/ReadVariableOpReadVariableOplstm_287/lstm_cell_287/bias*
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
Adam/dense_95/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_95/kernel/m
?
*Adam/dense_95/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_95/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_95/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_95/bias/m
y
(Adam/dense_95/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_95/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_285/lstm_cell_285/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_285/lstm_cell_285/kernel/m
?
8Adam/lstm_285/lstm_cell_285/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_285/lstm_cell_285/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_285/lstm_cell_285/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_285/lstm_cell_285/recurrent_kernel/m
?
BAdam/lstm_285/lstm_cell_285/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_285/lstm_cell_285/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_285/lstm_cell_285/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_285/lstm_cell_285/bias/m
?
6Adam/lstm_285/lstm_cell_285/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_285/lstm_cell_285/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_286/lstm_cell_286/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_286/lstm_cell_286/kernel/m
?
8Adam/lstm_286/lstm_cell_286/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_286/lstm_cell_286/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_286/lstm_cell_286/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_286/lstm_cell_286/recurrent_kernel/m
?
BAdam/lstm_286/lstm_cell_286/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_286/lstm_cell_286/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_286/lstm_cell_286/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_286/lstm_cell_286/bias/m
?
6Adam/lstm_286/lstm_cell_286/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_286/lstm_cell_286/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_287/lstm_cell_287/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_287/lstm_cell_287/kernel/m
?
8Adam/lstm_287/lstm_cell_287/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_287/lstm_cell_287/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_287/lstm_cell_287/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_287/lstm_cell_287/recurrent_kernel/m
?
BAdam/lstm_287/lstm_cell_287/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_287/lstm_cell_287/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_287/lstm_cell_287/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_287/lstm_cell_287/bias/m
?
6Adam/lstm_287/lstm_cell_287/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_287/lstm_cell_287/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_95/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_95/kernel/v
?
*Adam/dense_95/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_95/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_95/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_95/bias/v
y
(Adam/dense_95/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_95/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_285/lstm_cell_285/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_285/lstm_cell_285/kernel/v
?
8Adam/lstm_285/lstm_cell_285/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_285/lstm_cell_285/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_285/lstm_cell_285/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_285/lstm_cell_285/recurrent_kernel/v
?
BAdam/lstm_285/lstm_cell_285/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_285/lstm_cell_285/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_285/lstm_cell_285/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_285/lstm_cell_285/bias/v
?
6Adam/lstm_285/lstm_cell_285/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_285/lstm_cell_285/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_286/lstm_cell_286/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_286/lstm_cell_286/kernel/v
?
8Adam/lstm_286/lstm_cell_286/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_286/lstm_cell_286/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_286/lstm_cell_286/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_286/lstm_cell_286/recurrent_kernel/v
?
BAdam/lstm_286/lstm_cell_286/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_286/lstm_cell_286/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_286/lstm_cell_286/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_286/lstm_cell_286/bias/v
?
6Adam/lstm_286/lstm_cell_286/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_286/lstm_cell_286/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_287/lstm_cell_287/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_287/lstm_cell_287/kernel/v
?
8Adam/lstm_287/lstm_cell_287/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_287/lstm_cell_287/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_287/lstm_cell_287/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_287/lstm_cell_287/recurrent_kernel/v
?
BAdam/lstm_287/lstm_cell_287/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_287/lstm_cell_287/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_287/lstm_cell_287/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_287/lstm_cell_287/bias/v
?
6Adam/lstm_287/lstm_cell_287/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_287/lstm_cell_287/bias/v*
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
VARIABLE_VALUEdense_95/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_95/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_285/lstm_cell_285/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_285/lstm_cell_285/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_285/lstm_cell_285/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_286/lstm_cell_286/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_286/lstm_cell_286/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_286/lstm_cell_286/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_287/lstm_cell_287/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_287/lstm_cell_287/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_287/lstm_cell_287/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_95/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_95/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_285/lstm_cell_285/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_285/lstm_cell_285/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_285/lstm_cell_285/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_286/lstm_cell_286/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_286/lstm_cell_286/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_286/lstm_cell_286/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_287/lstm_cell_287/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_287/lstm_cell_287/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_287/lstm_cell_287/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_95/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_95/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_285/lstm_cell_285/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_285/lstm_cell_285/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_285/lstm_cell_285/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_286/lstm_cell_286/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_286/lstm_cell_286/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_286/lstm_cell_286/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_287/lstm_cell_287/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_287/lstm_cell_287/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_287/lstm_cell_287/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_285_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_285_inputlstm_285/lstm_cell_285/kernel'lstm_285/lstm_cell_285/recurrent_kernellstm_285/lstm_cell_285/biaslstm_286/lstm_cell_286/kernel'lstm_286/lstm_cell_286/recurrent_kernellstm_286/lstm_cell_286/biaslstm_287/lstm_cell_287/kernel'lstm_287/lstm_cell_287/recurrent_kernellstm_287/lstm_cell_287/biasdense_95/kerneldense_95/bias*
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
%__inference_signature_wrapper_2355123
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_95/kernel/Read/ReadVariableOp!dense_95/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_285/lstm_cell_285/kernel/Read/ReadVariableOp;lstm_285/lstm_cell_285/recurrent_kernel/Read/ReadVariableOp/lstm_285/lstm_cell_285/bias/Read/ReadVariableOp1lstm_286/lstm_cell_286/kernel/Read/ReadVariableOp;lstm_286/lstm_cell_286/recurrent_kernel/Read/ReadVariableOp/lstm_286/lstm_cell_286/bias/Read/ReadVariableOp1lstm_287/lstm_cell_287/kernel/Read/ReadVariableOp;lstm_287/lstm_cell_287/recurrent_kernel/Read/ReadVariableOp/lstm_287/lstm_cell_287/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_95/kernel/m/Read/ReadVariableOp(Adam/dense_95/bias/m/Read/ReadVariableOp8Adam/lstm_285/lstm_cell_285/kernel/m/Read/ReadVariableOpBAdam/lstm_285/lstm_cell_285/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_285/lstm_cell_285/bias/m/Read/ReadVariableOp8Adam/lstm_286/lstm_cell_286/kernel/m/Read/ReadVariableOpBAdam/lstm_286/lstm_cell_286/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_286/lstm_cell_286/bias/m/Read/ReadVariableOp8Adam/lstm_287/lstm_cell_287/kernel/m/Read/ReadVariableOpBAdam/lstm_287/lstm_cell_287/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_287/lstm_cell_287/bias/m/Read/ReadVariableOp*Adam/dense_95/kernel/v/Read/ReadVariableOp(Adam/dense_95/bias/v/Read/ReadVariableOp8Adam/lstm_285/lstm_cell_285/kernel/v/Read/ReadVariableOpBAdam/lstm_285/lstm_cell_285/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_285/lstm_cell_285/bias/v/Read/ReadVariableOp8Adam/lstm_286/lstm_cell_286/kernel/v/Read/ReadVariableOpBAdam/lstm_286/lstm_cell_286/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_286/lstm_cell_286/bias/v/Read/ReadVariableOp8Adam/lstm_287/lstm_cell_287/kernel/v/Read/ReadVariableOpBAdam/lstm_287/lstm_cell_287/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_287/lstm_cell_287/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2358335
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_95/kerneldense_95/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_285/lstm_cell_285/kernel'lstm_285/lstm_cell_285/recurrent_kernellstm_285/lstm_cell_285/biaslstm_286/lstm_cell_286/kernel'lstm_286/lstm_cell_286/recurrent_kernellstm_286/lstm_cell_286/biaslstm_287/lstm_cell_287/kernel'lstm_287/lstm_cell_287/recurrent_kernellstm_287/lstm_cell_287/biastotalcountAdam/dense_95/kernel/mAdam/dense_95/bias/m$Adam/lstm_285/lstm_cell_285/kernel/m.Adam/lstm_285/lstm_cell_285/recurrent_kernel/m"Adam/lstm_285/lstm_cell_285/bias/m$Adam/lstm_286/lstm_cell_286/kernel/m.Adam/lstm_286/lstm_cell_286/recurrent_kernel/m"Adam/lstm_286/lstm_cell_286/bias/m$Adam/lstm_287/lstm_cell_287/kernel/m.Adam/lstm_287/lstm_cell_287/recurrent_kernel/m"Adam/lstm_287/lstm_cell_287/bias/mAdam/dense_95/kernel/vAdam/dense_95/bias/v$Adam/lstm_285/lstm_cell_285/kernel/v.Adam/lstm_285/lstm_cell_285/recurrent_kernel/v"Adam/lstm_285/lstm_cell_285/bias/v$Adam/lstm_286/lstm_cell_286/kernel/v.Adam/lstm_286/lstm_cell_286/recurrent_kernel/v"Adam/lstm_286/lstm_cell_286/bias/v$Adam/lstm_287/lstm_cell_287/kernel/v.Adam/lstm_287/lstm_cell_287/recurrent_kernel/v"Adam/lstm_287/lstm_cell_287/bias/v*4
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
#__inference__traced_restore_2358465??+
?
?
while_cond_2357508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357508___redundant_placeholder05
1while_while_cond_2357508___redundant_placeholder15
1while_while_cond_2357508___redundant_placeholder25
1while_while_cond_2357508___redundant_placeholder3
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
while_cond_2356133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356133___redundant_placeholder05
1while_while_cond_2356133___redundant_placeholder15
1while_while_cond_2356133___redundant_placeholder25
1while_while_cond_2356133___redundant_placeholder3
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358062

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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357593
inputs_0>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2357509*
condR
while_cond_2357508*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356361
inputs_0?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2356277*
condR
while_cond_2356276*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2353643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353643___redundant_placeholder05
1while_while_cond_2353643___redundant_placeholder15
1while_while_cond_2353643___redundant_placeholder25
1while_while_cond_2353643___redundant_placeholder3
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2356031

inputsH
5lstm_285_lstm_cell_387_matmul_readvariableop_resource:	?J
7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource:	d?E
6lstm_285_lstm_cell_387_biasadd_readvariableop_resource:	?H
5lstm_286_lstm_cell_388_matmul_readvariableop_resource:	d?J
7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource:	2?E
6lstm_286_lstm_cell_388_biasadd_readvariableop_resource:	?G
5lstm_287_lstm_cell_389_matmul_readvariableop_resource:2(I
7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource:
(D
6lstm_287_lstm_cell_389_biasadd_readvariableop_resource:(9
'dense_95_matmul_readvariableop_resource:
6
(dense_95_biasadd_readvariableop_resource:
identity??dense_95/BiasAdd/ReadVariableOp?dense_95/MatMul/ReadVariableOp?-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp?,lstm_285/lstm_cell_387/MatMul/ReadVariableOp?.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp?lstm_285/while?-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp?,lstm_286/lstm_cell_388/MatMul/ReadVariableOp?.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp?lstm_286/while?-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp?,lstm_287/lstm_cell_389/MatMul/ReadVariableOp?.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp?lstm_287/whileD
lstm_285/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_285/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_285/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_285/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_sliceStridedSlicelstm_285/Shape:output:0%lstm_285/strided_slice/stack:output:0'lstm_285/strided_slice/stack_1:output:0'lstm_285/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_285/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_285/zeros/packedPacklstm_285/strided_slice:output:0 lstm_285/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_285/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_285/zerosFilllstm_285/zeros/packed:output:0lstm_285/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_285/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_285/zeros_1/packedPacklstm_285/strided_slice:output:0"lstm_285/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_285/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_285/zeros_1Fill lstm_285/zeros_1/packed:output:0lstm_285/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_285/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_285/transpose	Transposeinputs lstm_285/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_285/Shape_1Shapelstm_285/transpose:y:0*
T0*
_output_shapes
:h
lstm_285/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_285/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_1StridedSlicelstm_285/Shape_1:output:0'lstm_285/strided_slice_1/stack:output:0)lstm_285/strided_slice_1/stack_1:output:0)lstm_285/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_285/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_285/TensorArrayV2TensorListReserve-lstm_285/TensorArrayV2/element_shape:output:0!lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_285/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_285/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_285/transpose:y:0Glstm_285/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_285/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_285/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_2StridedSlicelstm_285/transpose:y:0'lstm_285/strided_slice_2/stack:output:0)lstm_285/strided_slice_2/stack_1:output:0)lstm_285/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_285/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp5lstm_285_lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_285/lstm_cell_387/MatMulMatMul!lstm_285/strided_slice_2:output:04lstm_285/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_285/lstm_cell_387/MatMul_1MatMullstm_285/zeros:output:06lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_285/lstm_cell_387/addAddV2'lstm_285/lstm_cell_387/MatMul:product:0)lstm_285/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp6lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_285/lstm_cell_387/BiasAddBiasAddlstm_285/lstm_cell_387/add:z:05lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_285/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_285/lstm_cell_387/splitSplit/lstm_285/lstm_cell_387/split/split_dim:output:0'lstm_285/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_285/lstm_cell_387/SigmoidSigmoid%lstm_285/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_285/lstm_cell_387/Sigmoid_1Sigmoid%lstm_285/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mulMul$lstm_285/lstm_cell_387/Sigmoid_1:y:0lstm_285/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_285/lstm_cell_387/ReluRelu%lstm_285/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mul_1Mul"lstm_285/lstm_cell_387/Sigmoid:y:0)lstm_285/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/add_1AddV2lstm_285/lstm_cell_387/mul:z:0 lstm_285/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_285/lstm_cell_387/Sigmoid_2Sigmoid%lstm_285/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_285/lstm_cell_387/Relu_1Relu lstm_285/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mul_2Mul$lstm_285/lstm_cell_387/Sigmoid_2:y:0+lstm_285/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_285/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_285/TensorArrayV2_1TensorListReserve/lstm_285/TensorArrayV2_1/element_shape:output:0!lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_285/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_285/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_285/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_285/whileWhile$lstm_285/while/loop_counter:output:0*lstm_285/while/maximum_iterations:output:0lstm_285/time:output:0!lstm_285/TensorArrayV2_1:handle:0lstm_285/zeros:output:0lstm_285/zeros_1:output:0!lstm_285/strided_slice_1:output:0@lstm_285/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_285_lstm_cell_387_matmul_readvariableop_resource7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource6lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
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
lstm_285_while_body_2355663*'
condR
lstm_285_while_cond_2355662*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_285/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_285/TensorArrayV2Stack/TensorListStackTensorListStacklstm_285/while:output:3Blstm_285/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_285/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_285/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_3StridedSlice4lstm_285/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_285/strided_slice_3/stack:output:0)lstm_285/strided_slice_3/stack_1:output:0)lstm_285/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_285/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_285/transpose_1	Transpose4lstm_285/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_285/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_285/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_286/ShapeShapelstm_285/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_sliceStridedSlicelstm_286/Shape:output:0%lstm_286/strided_slice/stack:output:0'lstm_286/strided_slice/stack_1:output:0'lstm_286/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_286/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_286/zeros/packedPacklstm_286/strided_slice:output:0 lstm_286/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_286/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_286/zerosFilllstm_286/zeros/packed:output:0lstm_286/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_286/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_286/zeros_1/packedPacklstm_286/strided_slice:output:0"lstm_286/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_286/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_286/zeros_1Fill lstm_286/zeros_1/packed:output:0lstm_286/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_286/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_286/transpose	Transposelstm_285/transpose_1:y:0 lstm_286/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_286/Shape_1Shapelstm_286/transpose:y:0*
T0*
_output_shapes
:h
lstm_286/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_286/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_1StridedSlicelstm_286/Shape_1:output:0'lstm_286/strided_slice_1/stack:output:0)lstm_286/strided_slice_1/stack_1:output:0)lstm_286/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_286/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_286/TensorArrayV2TensorListReserve-lstm_286/TensorArrayV2/element_shape:output:0!lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_286/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_286/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_286/transpose:y:0Glstm_286/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_286/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_286/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_2StridedSlicelstm_286/transpose:y:0'lstm_286/strided_slice_2/stack:output:0)lstm_286/strided_slice_2/stack_1:output:0)lstm_286/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_286/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp5lstm_286_lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_286/lstm_cell_388/MatMulMatMul!lstm_286/strided_slice_2:output:04lstm_286/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_286/lstm_cell_388/MatMul_1MatMullstm_286/zeros:output:06lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_286/lstm_cell_388/addAddV2'lstm_286/lstm_cell_388/MatMul:product:0)lstm_286/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp6lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_286/lstm_cell_388/BiasAddBiasAddlstm_286/lstm_cell_388/add:z:05lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_286/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_286/lstm_cell_388/splitSplit/lstm_286/lstm_cell_388/split/split_dim:output:0'lstm_286/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_286/lstm_cell_388/SigmoidSigmoid%lstm_286/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_286/lstm_cell_388/Sigmoid_1Sigmoid%lstm_286/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mulMul$lstm_286/lstm_cell_388/Sigmoid_1:y:0lstm_286/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_286/lstm_cell_388/ReluRelu%lstm_286/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mul_1Mul"lstm_286/lstm_cell_388/Sigmoid:y:0)lstm_286/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/add_1AddV2lstm_286/lstm_cell_388/mul:z:0 lstm_286/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_286/lstm_cell_388/Sigmoid_2Sigmoid%lstm_286/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_286/lstm_cell_388/Relu_1Relu lstm_286/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mul_2Mul$lstm_286/lstm_cell_388/Sigmoid_2:y:0+lstm_286/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_286/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_286/TensorArrayV2_1TensorListReserve/lstm_286/TensorArrayV2_1/element_shape:output:0!lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_286/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_286/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_286/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_286/whileWhile$lstm_286/while/loop_counter:output:0*lstm_286/while/maximum_iterations:output:0lstm_286/time:output:0!lstm_286/TensorArrayV2_1:handle:0lstm_286/zeros:output:0lstm_286/zeros_1:output:0!lstm_286/strided_slice_1:output:0@lstm_286/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_286_lstm_cell_388_matmul_readvariableop_resource7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource6lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
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
lstm_286_while_body_2355802*'
condR
lstm_286_while_cond_2355801*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_286/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_286/TensorArrayV2Stack/TensorListStackTensorListStacklstm_286/while:output:3Blstm_286/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_286/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_286/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_3StridedSlice4lstm_286/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_286/strided_slice_3/stack:output:0)lstm_286/strided_slice_3/stack_1:output:0)lstm_286/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_286/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_286/transpose_1	Transpose4lstm_286/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_286/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_286/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_287/ShapeShapelstm_286/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_sliceStridedSlicelstm_287/Shape:output:0%lstm_287/strided_slice/stack:output:0'lstm_287/strided_slice/stack_1:output:0'lstm_287/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_287/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_287/zeros/packedPacklstm_287/strided_slice:output:0 lstm_287/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_287/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_287/zerosFilllstm_287/zeros/packed:output:0lstm_287/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_287/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_287/zeros_1/packedPacklstm_287/strided_slice:output:0"lstm_287/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_287/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_287/zeros_1Fill lstm_287/zeros_1/packed:output:0lstm_287/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_287/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_287/transpose	Transposelstm_286/transpose_1:y:0 lstm_287/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_287/Shape_1Shapelstm_287/transpose:y:0*
T0*
_output_shapes
:h
lstm_287/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_287/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_1StridedSlicelstm_287/Shape_1:output:0'lstm_287/strided_slice_1/stack:output:0)lstm_287/strided_slice_1/stack_1:output:0)lstm_287/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_287/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_287/TensorArrayV2TensorListReserve-lstm_287/TensorArrayV2/element_shape:output:0!lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_287/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_287/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_287/transpose:y:0Glstm_287/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_287/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_287/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_2StridedSlicelstm_287/transpose:y:0'lstm_287/strided_slice_2/stack:output:0)lstm_287/strided_slice_2/stack_1:output:0)lstm_287/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_287/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp5lstm_287_lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_287/lstm_cell_389/MatMulMatMul!lstm_287/strided_slice_2:output:04lstm_287/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_287/lstm_cell_389/MatMul_1MatMullstm_287/zeros:output:06lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_287/lstm_cell_389/addAddV2'lstm_287/lstm_cell_389/MatMul:product:0)lstm_287/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp6lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_287/lstm_cell_389/BiasAddBiasAddlstm_287/lstm_cell_389/add:z:05lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_287/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_287/lstm_cell_389/splitSplit/lstm_287/lstm_cell_389/split/split_dim:output:0'lstm_287/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_287/lstm_cell_389/SigmoidSigmoid%lstm_287/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_287/lstm_cell_389/Sigmoid_1Sigmoid%lstm_287/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mulMul$lstm_287/lstm_cell_389/Sigmoid_1:y:0lstm_287/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_287/lstm_cell_389/ReluRelu%lstm_287/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mul_1Mul"lstm_287/lstm_cell_389/Sigmoid:y:0)lstm_287/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/add_1AddV2lstm_287/lstm_cell_389/mul:z:0 lstm_287/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_287/lstm_cell_389/Sigmoid_2Sigmoid%lstm_287/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_287/lstm_cell_389/Relu_1Relu lstm_287/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mul_2Mul$lstm_287/lstm_cell_389/Sigmoid_2:y:0+lstm_287/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_287/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_287/TensorArrayV2_1TensorListReserve/lstm_287/TensorArrayV2_1/element_shape:output:0!lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_287/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_287/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_287/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_287/whileWhile$lstm_287/while/loop_counter:output:0*lstm_287/while/maximum_iterations:output:0lstm_287/time:output:0!lstm_287/TensorArrayV2_1:handle:0lstm_287/zeros:output:0lstm_287/zeros_1:output:0!lstm_287/strided_slice_1:output:0@lstm_287/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_287_lstm_cell_389_matmul_readvariableop_resource7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource6lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
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
lstm_287_while_body_2355941*'
condR
lstm_287_while_cond_2355940*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_287/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_287/TensorArrayV2Stack/TensorListStackTensorListStacklstm_287/while:output:3Blstm_287/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_287/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_287/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_3StridedSlice4lstm_287/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_287/strided_slice_3/stack:output:0)lstm_287/strided_slice_3/stack_1:output:0)lstm_287/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_287/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_287/transpose_1	Transpose4lstm_287/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_287/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_287/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_95/MatMul/ReadVariableOpReadVariableOp'dense_95_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_95/MatMulMatMul!lstm_287/strided_slice_3:output:0&dense_95/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_95/BiasAdd/ReadVariableOpReadVariableOp(dense_95_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_95/BiasAddBiasAdddense_95/MatMul:product:0'dense_95/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_95/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_95/BiasAdd/ReadVariableOp^dense_95/MatMul/ReadVariableOp.^lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp-^lstm_285/lstm_cell_387/MatMul/ReadVariableOp/^lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp^lstm_285/while.^lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp-^lstm_286/lstm_cell_388/MatMul/ReadVariableOp/^lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp^lstm_286/while.^lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp-^lstm_287/lstm_cell_389/MatMul/ReadVariableOp/^lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp^lstm_287/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_95/BiasAdd/ReadVariableOpdense_95/BiasAdd/ReadVariableOp2@
dense_95/MatMul/ReadVariableOpdense_95/MatMul/ReadVariableOp2^
-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp2\
,lstm_285/lstm_cell_387/MatMul/ReadVariableOp,lstm_285/lstm_cell_387/MatMul/ReadVariableOp2`
.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp2 
lstm_285/whilelstm_285/while2^
-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp2\
,lstm_286/lstm_cell_388/MatMul/ReadVariableOp,lstm_286/lstm_cell_388/MatMul/ReadVariableOp2`
.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp2 
lstm_286/whilelstm_286/while2^
-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp2\
,lstm_287/lstm_cell_389/MatMul/ReadVariableOp,lstm_287/lstm_cell_389/MatMul/ReadVariableOp2`
.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp2 
lstm_287/whilelstm_287/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358094

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
lstm_287_while_cond_2355940.
*lstm_287_while_lstm_287_while_loop_counter4
0lstm_287_while_lstm_287_while_maximum_iterations
lstm_287_while_placeholder 
lstm_287_while_placeholder_1 
lstm_287_while_placeholder_2 
lstm_287_while_placeholder_30
,lstm_287_while_less_lstm_287_strided_slice_1G
Clstm_287_while_lstm_287_while_cond_2355940___redundant_placeholder0G
Clstm_287_while_lstm_287_while_cond_2355940___redundant_placeholder1G
Clstm_287_while_lstm_287_while_cond_2355940___redundant_placeholder2G
Clstm_287_while_lstm_287_while_cond_2355940___redundant_placeholder3
lstm_287_while_identity
?
lstm_287/while/LessLesslstm_287_while_placeholder,lstm_287_while_less_lstm_287_strided_slice_1*
T0*
_output_shapes
: ]
lstm_287/while/IdentityIdentitylstm_287/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_287_while_identity lstm_287/while/Identity:output:0*(
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
while_body_2352944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_387_2352968_0:	?0
while_lstm_cell_387_2352970_0:	d?,
while_lstm_cell_387_2352972_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_387_2352968:	?.
while_lstm_cell_387_2352970:	d?*
while_lstm_cell_387_2352972:	???+while/lstm_cell_387/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_387/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_387_2352968_0while_lstm_cell_387_2352970_0while_lstm_cell_387_2352972_0*
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2352930?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_387/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_387/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_387/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_387/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_387_2352968while_lstm_cell_387_2352968_0"<
while_lstm_cell_387_2352970while_lstm_cell_387_2352970_0"<
while_lstm_cell_387_2352972while_lstm_cell_387_2352972_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_387/StatefulPartitionedCall+while/lstm_cell_387/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_95_lstm_285_while_body_2352495J
Fsequential_95_lstm_285_while_sequential_95_lstm_285_while_loop_counterP
Lsequential_95_lstm_285_while_sequential_95_lstm_285_while_maximum_iterations,
(sequential_95_lstm_285_while_placeholder.
*sequential_95_lstm_285_while_placeholder_1.
*sequential_95_lstm_285_while_placeholder_2.
*sequential_95_lstm_285_while_placeholder_3I
Esequential_95_lstm_285_while_sequential_95_lstm_285_strided_slice_1_0?
?sequential_95_lstm_285_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_285_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_95_lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0:	?`
Msequential_95_lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?[
Lsequential_95_lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0:	?)
%sequential_95_lstm_285_while_identity+
'sequential_95_lstm_285_while_identity_1+
'sequential_95_lstm_285_while_identity_2+
'sequential_95_lstm_285_while_identity_3+
'sequential_95_lstm_285_while_identity_4+
'sequential_95_lstm_285_while_identity_5G
Csequential_95_lstm_285_while_sequential_95_lstm_285_strided_slice_1?
sequential_95_lstm_285_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_285_tensorarrayunstack_tensorlistfromtensor\
Isequential_95_lstm_285_while_lstm_cell_387_matmul_readvariableop_resource:	?^
Ksequential_95_lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource:	d?Y
Jsequential_95_lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource:	???Asequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp?@sequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp?Bsequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp?
Nsequential_95/lstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_95/lstm_285/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_95_lstm_285_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_285_tensorarrayunstack_tensorlistfromtensor_0(sequential_95_lstm_285_while_placeholderWsequential_95/lstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOpKsequential_95_lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_95/lstm_285/while/lstm_cell_387/MatMulMatMulGsequential_95/lstm_285/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOpMsequential_95_lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_95/lstm_285/while/lstm_cell_387/MatMul_1MatMul*sequential_95_lstm_285_while_placeholder_2Jsequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_95/lstm_285/while/lstm_cell_387/addAddV2;sequential_95/lstm_285/while/lstm_cell_387/MatMul:product:0=sequential_95/lstm_285/while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOpLsequential_95_lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_95/lstm_285/while/lstm_cell_387/BiasAddBiasAdd2sequential_95/lstm_285/while/lstm_cell_387/add:z:0Isequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_95/lstm_285/while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_95/lstm_285/while/lstm_cell_387/splitSplitCsequential_95/lstm_285/while/lstm_cell_387/split/split_dim:output:0;sequential_95/lstm_285/while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_95/lstm_285/while/lstm_cell_387/SigmoidSigmoid9sequential_95/lstm_285/while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_95/lstm_285/while/lstm_cell_387/Sigmoid_1Sigmoid9sequential_95/lstm_285/while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_95/lstm_285/while/lstm_cell_387/mulMul8sequential_95/lstm_285/while/lstm_cell_387/Sigmoid_1:y:0*sequential_95_lstm_285_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_95/lstm_285/while/lstm_cell_387/ReluRelu9sequential_95/lstm_285/while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_95/lstm_285/while/lstm_cell_387/mul_1Mul6sequential_95/lstm_285/while/lstm_cell_387/Sigmoid:y:0=sequential_95/lstm_285/while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_95/lstm_285/while/lstm_cell_387/add_1AddV22sequential_95/lstm_285/while/lstm_cell_387/mul:z:04sequential_95/lstm_285/while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_95/lstm_285/while/lstm_cell_387/Sigmoid_2Sigmoid9sequential_95/lstm_285/while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_95/lstm_285/while/lstm_cell_387/Relu_1Relu4sequential_95/lstm_285/while/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_95/lstm_285/while/lstm_cell_387/mul_2Mul8sequential_95/lstm_285/while/lstm_cell_387/Sigmoid_2:y:0?sequential_95/lstm_285/while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_95/lstm_285/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_95_lstm_285_while_placeholder_1(sequential_95_lstm_285_while_placeholder4sequential_95/lstm_285/while/lstm_cell_387/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_95/lstm_285/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_95/lstm_285/while/addAddV2(sequential_95_lstm_285_while_placeholder+sequential_95/lstm_285/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_95/lstm_285/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_95/lstm_285/while/add_1AddV2Fsequential_95_lstm_285_while_sequential_95_lstm_285_while_loop_counter-sequential_95/lstm_285/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_95/lstm_285/while/IdentityIdentity&sequential_95/lstm_285/while/add_1:z:0"^sequential_95/lstm_285/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_285/while/Identity_1IdentityLsequential_95_lstm_285_while_sequential_95_lstm_285_while_maximum_iterations"^sequential_95/lstm_285/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_285/while/Identity_2Identity$sequential_95/lstm_285/while/add:z:0"^sequential_95/lstm_285/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_285/while/Identity_3IdentityQsequential_95/lstm_285/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_95/lstm_285/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_285/while/Identity_4Identity4sequential_95/lstm_285/while/lstm_cell_387/mul_2:z:0"^sequential_95/lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_95/lstm_285/while/Identity_5Identity4sequential_95/lstm_285/while/lstm_cell_387/add_1:z:0"^sequential_95/lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_95/lstm_285/while/NoOpNoOpB^sequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOpA^sequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOpC^sequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_95_lstm_285_while_identity.sequential_95/lstm_285/while/Identity:output:0"[
'sequential_95_lstm_285_while_identity_10sequential_95/lstm_285/while/Identity_1:output:0"[
'sequential_95_lstm_285_while_identity_20sequential_95/lstm_285/while/Identity_2:output:0"[
'sequential_95_lstm_285_while_identity_30sequential_95/lstm_285/while/Identity_3:output:0"[
'sequential_95_lstm_285_while_identity_40sequential_95/lstm_285/while/Identity_4:output:0"[
'sequential_95_lstm_285_while_identity_50sequential_95/lstm_285/while/Identity_5:output:0"?
Jsequential_95_lstm_285_while_lstm_cell_387_biasadd_readvariableop_resourceLsequential_95_lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0"?
Ksequential_95_lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resourceMsequential_95_lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0"?
Isequential_95_lstm_285_while_lstm_cell_387_matmul_readvariableop_resourceKsequential_95_lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0"?
Csequential_95_lstm_285_while_sequential_95_lstm_285_strided_slice_1Esequential_95_lstm_285_while_sequential_95_lstm_285_strided_slice_1_0"?
sequential_95_lstm_285_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_285_tensorarrayunstack_tensorlistfromtensor?sequential_95_lstm_285_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_285_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOpAsequential_95/lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp2?
@sequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp@sequential_95/lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp2?
Bsequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOpBsequential_95/lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_287_while_cond_2355513.
*lstm_287_while_lstm_287_while_loop_counter4
0lstm_287_while_lstm_287_while_maximum_iterations
lstm_287_while_placeholder 
lstm_287_while_placeholder_1 
lstm_287_while_placeholder_2 
lstm_287_while_placeholder_30
,lstm_287_while_less_lstm_287_strided_slice_1G
Clstm_287_while_lstm_287_while_cond_2355513___redundant_placeholder0G
Clstm_287_while_lstm_287_while_cond_2355513___redundant_placeholder1G
Clstm_287_while_lstm_287_while_cond_2355513___redundant_placeholder2G
Clstm_287_while_lstm_287_while_cond_2355513___redundant_placeholder3
lstm_287_while_identity
?
lstm_287/while/LessLesslstm_287_while_placeholder,lstm_287_while_less_lstm_287_strided_slice_1*
T0*
_output_shapes
: ]
lstm_287/while/IdentityIdentitylstm_287/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_287_while_identity lstm_287/while/Identity:output:0*(
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353280

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
while_cond_2354658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2354658___redundant_placeholder05
1while_while_cond_2354658___redundant_placeholder15
1while_while_cond_2354658___redundant_placeholder25
1while_while_cond_2354658___redundant_placeholder3
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
while_cond_2357365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357365___redundant_placeholder05
1while_while_cond_2357365___redundant_placeholder15
1while_while_cond_2357365___redundant_placeholder25
1while_while_cond_2357365___redundant_placeholder3
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
while_cond_2353484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353484___redundant_placeholder05
1while_while_cond_2353484___redundant_placeholder15
1while_while_cond_2353484___redundant_placeholder25
1while_while_cond_2353484___redundant_placeholder3
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
/__inference_lstm_cell_387_layer_call_fn_2357932

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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2353076o
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356977
inputs_0?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2356893*
condR
while_cond_2356892*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_285_layer_call_and_return_conditional_losses_2353204

inputs(
lstm_cell_387_2353122:	?(
lstm_cell_387_2353124:	d?$
lstm_cell_387_2353126:	?
identity??%lstm_cell_387/StatefulPartitionedCall?while;
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
%lstm_cell_387/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_387_2353122lstm_cell_387_2353124lstm_cell_387_2353126*
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2353076n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_387_2353122lstm_cell_387_2353124lstm_cell_387_2353126*
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
while_body_2353135*
condR
while_cond_2353134*K
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
NoOpNoOp&^lstm_cell_387/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_387/StatefulPartitionedCall%lstm_cell_387/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_2354494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356218
inputs_0?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2356134*
condR
while_cond_2356133*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2357794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357794___redundant_placeholder05
1while_while_cond_2357794___redundant_placeholder15
1while_while_cond_2357794___redundant_placeholder25
1while_while_cond_2357794___redundant_placeholder3
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354212

inputs?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2354128*
condR
while_cond_2354127*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354976

inputs#
lstm_285_2354949:	?#
lstm_285_2354951:	d?
lstm_285_2354953:	?#
lstm_286_2354956:	d?#
lstm_286_2354958:	2?
lstm_286_2354960:	?"
lstm_287_2354963:2("
lstm_287_2354965:
(
lstm_287_2354967:("
dense_95_2354970:

dense_95_2354972:
identity?? dense_95/StatefulPartitionedCall? lstm_285/StatefulPartitionedCall? lstm_286/StatefulPartitionedCall? lstm_287/StatefulPartitionedCall?
 lstm_285/StatefulPartitionedCallStatefulPartitionedCallinputslstm_285_2354949lstm_285_2354951lstm_285_2354953*
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354908?
 lstm_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_285/StatefulPartitionedCall:output:0lstm_286_2354956lstm_286_2354958lstm_286_2354960*
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354743?
 lstm_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_286/StatefulPartitionedCall:output:0lstm_287_2354963lstm_287_2354965lstm_287_2354967*
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354578?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall)lstm_287/StatefulPartitionedCall:output:0dense_95_2354970dense_95_2354972*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_95/StatefulPartitionedCall!^lstm_285/StatefulPartitionedCall!^lstm_286/StatefulPartitionedCall!^lstm_287/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 lstm_285/StatefulPartitionedCall lstm_285/StatefulPartitionedCall2D
 lstm_286/StatefulPartitionedCall lstm_286/StatefulPartitionedCall2D
 lstm_287/StatefulPartitionedCall lstm_287/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_389_layer_call_fn_2358128

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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353776o
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

lstm_285_while_body_2355663.
*lstm_285_while_lstm_285_while_loop_counter4
0lstm_285_while_lstm_285_while_maximum_iterations
lstm_285_while_placeholder 
lstm_285_while_placeholder_1 
lstm_285_while_placeholder_2 
lstm_285_while_placeholder_3-
)lstm_285_while_lstm_285_strided_slice_1_0i
elstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0:	?R
?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?M
>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
lstm_285_while_identity
lstm_285_while_identity_1
lstm_285_while_identity_2
lstm_285_while_identity_3
lstm_285_while_identity_4
lstm_285_while_identity_5+
'lstm_285_while_lstm_285_strided_slice_1g
clstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensorN
;lstm_285_while_lstm_cell_387_matmul_readvariableop_resource:	?P
=lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource:	d?K
<lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource:	???3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp?2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp?4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp?
@lstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_285/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0lstm_285_while_placeholderIlstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_285/while/lstm_cell_387/MatMulMatMul9lstm_285/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_285/while/lstm_cell_387/MatMul_1MatMullstm_285_while_placeholder_2<lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_285/while/lstm_cell_387/addAddV2-lstm_285/while/lstm_cell_387/MatMul:product:0/lstm_285/while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_285/while/lstm_cell_387/BiasAddBiasAdd$lstm_285/while/lstm_cell_387/add:z:0;lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_285/while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_285/while/lstm_cell_387/splitSplit5lstm_285/while/lstm_cell_387/split/split_dim:output:0-lstm_285/while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_285/while/lstm_cell_387/SigmoidSigmoid+lstm_285/while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_285/while/lstm_cell_387/Sigmoid_1Sigmoid+lstm_285/while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_285/while/lstm_cell_387/mulMul*lstm_285/while/lstm_cell_387/Sigmoid_1:y:0lstm_285_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_285/while/lstm_cell_387/ReluRelu+lstm_285/while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/mul_1Mul(lstm_285/while/lstm_cell_387/Sigmoid:y:0/lstm_285/while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/add_1AddV2$lstm_285/while/lstm_cell_387/mul:z:0&lstm_285/while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_285/while/lstm_cell_387/Sigmoid_2Sigmoid+lstm_285/while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_285/while/lstm_cell_387/Relu_1Relu&lstm_285/while/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/mul_2Mul*lstm_285/while/lstm_cell_387/Sigmoid_2:y:01lstm_285/while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_285/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_285_while_placeholder_1lstm_285_while_placeholder&lstm_285/while/lstm_cell_387/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_285/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_285/while/addAddV2lstm_285_while_placeholderlstm_285/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_285/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_285/while/add_1AddV2*lstm_285_while_lstm_285_while_loop_counterlstm_285/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_285/while/IdentityIdentitylstm_285/while/add_1:z:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_1Identity0lstm_285_while_lstm_285_while_maximum_iterations^lstm_285/while/NoOp*
T0*
_output_shapes
: t
lstm_285/while/Identity_2Identitylstm_285/while/add:z:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_3IdentityClstm_285/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_4Identity&lstm_285/while/lstm_cell_387/mul_2:z:0^lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_285/while/Identity_5Identity&lstm_285/while/lstm_cell_387/add_1:z:0^lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_285/while/NoOpNoOp4^lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp3^lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp5^lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_285_while_identity lstm_285/while/Identity:output:0"?
lstm_285_while_identity_1"lstm_285/while/Identity_1:output:0"?
lstm_285_while_identity_2"lstm_285/while/Identity_2:output:0"?
lstm_285_while_identity_3"lstm_285/while/Identity_3:output:0"?
lstm_285_while_identity_4"lstm_285/while/Identity_4:output:0"?
lstm_285_while_identity_5"lstm_285/while/Identity_5:output:0"T
'lstm_285_while_lstm_285_strided_slice_1)lstm_285_while_lstm_285_strided_slice_1_0"~
<lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0"?
=lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0"|
;lstm_285_while_lstm_cell_387_matmul_readvariableop_resource=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0"?
clstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensorelstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp2h
2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp2l
4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2356420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357996

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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357964

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
while_cond_2356276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356276___redundant_placeholder05
1while_while_cond_2356276___redundant_placeholder15
1while_while_cond_2356276___redundant_placeholder25
1while_while_cond_2356276___redundant_placeholder3
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357450
inputs_0>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2357366*
condR
while_cond_2357365*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_95_layer_call_fn_2355177

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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354976o
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353426

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
while_cond_2353134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353134___redundant_placeholder05
1while_while_cond_2353134___redundant_placeholder15
1while_while_cond_2353134___redundant_placeholder25
1while_while_cond_2353134___redundant_placeholder3
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
?S
?
)sequential_95_lstm_286_while_body_2352634J
Fsequential_95_lstm_286_while_sequential_95_lstm_286_while_loop_counterP
Lsequential_95_lstm_286_while_sequential_95_lstm_286_while_maximum_iterations,
(sequential_95_lstm_286_while_placeholder.
*sequential_95_lstm_286_while_placeholder_1.
*sequential_95_lstm_286_while_placeholder_2.
*sequential_95_lstm_286_while_placeholder_3I
Esequential_95_lstm_286_while_sequential_95_lstm_286_strided_slice_1_0?
?sequential_95_lstm_286_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_286_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_95_lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0:	d?`
Msequential_95_lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?[
Lsequential_95_lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0:	?)
%sequential_95_lstm_286_while_identity+
'sequential_95_lstm_286_while_identity_1+
'sequential_95_lstm_286_while_identity_2+
'sequential_95_lstm_286_while_identity_3+
'sequential_95_lstm_286_while_identity_4+
'sequential_95_lstm_286_while_identity_5G
Csequential_95_lstm_286_while_sequential_95_lstm_286_strided_slice_1?
sequential_95_lstm_286_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_286_tensorarrayunstack_tensorlistfromtensor\
Isequential_95_lstm_286_while_lstm_cell_388_matmul_readvariableop_resource:	d?^
Ksequential_95_lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource:	2?Y
Jsequential_95_lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource:	???Asequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp?@sequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp?Bsequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp?
Nsequential_95/lstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_95/lstm_286/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_95_lstm_286_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_286_tensorarrayunstack_tensorlistfromtensor_0(sequential_95_lstm_286_while_placeholderWsequential_95/lstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOpKsequential_95_lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_95/lstm_286/while/lstm_cell_388/MatMulMatMulGsequential_95/lstm_286/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOpMsequential_95_lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_95/lstm_286/while/lstm_cell_388/MatMul_1MatMul*sequential_95_lstm_286_while_placeholder_2Jsequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_95/lstm_286/while/lstm_cell_388/addAddV2;sequential_95/lstm_286/while/lstm_cell_388/MatMul:product:0=sequential_95/lstm_286/while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOpLsequential_95_lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_95/lstm_286/while/lstm_cell_388/BiasAddBiasAdd2sequential_95/lstm_286/while/lstm_cell_388/add:z:0Isequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_95/lstm_286/while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_95/lstm_286/while/lstm_cell_388/splitSplitCsequential_95/lstm_286/while/lstm_cell_388/split/split_dim:output:0;sequential_95/lstm_286/while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_95/lstm_286/while/lstm_cell_388/SigmoidSigmoid9sequential_95/lstm_286/while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_95/lstm_286/while/lstm_cell_388/Sigmoid_1Sigmoid9sequential_95/lstm_286/while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_95/lstm_286/while/lstm_cell_388/mulMul8sequential_95/lstm_286/while/lstm_cell_388/Sigmoid_1:y:0*sequential_95_lstm_286_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_95/lstm_286/while/lstm_cell_388/ReluRelu9sequential_95/lstm_286/while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_95/lstm_286/while/lstm_cell_388/mul_1Mul6sequential_95/lstm_286/while/lstm_cell_388/Sigmoid:y:0=sequential_95/lstm_286/while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_95/lstm_286/while/lstm_cell_388/add_1AddV22sequential_95/lstm_286/while/lstm_cell_388/mul:z:04sequential_95/lstm_286/while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_95/lstm_286/while/lstm_cell_388/Sigmoid_2Sigmoid9sequential_95/lstm_286/while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_95/lstm_286/while/lstm_cell_388/Relu_1Relu4sequential_95/lstm_286/while/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_95/lstm_286/while/lstm_cell_388/mul_2Mul8sequential_95/lstm_286/while/lstm_cell_388/Sigmoid_2:y:0?sequential_95/lstm_286/while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_95/lstm_286/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_95_lstm_286_while_placeholder_1(sequential_95_lstm_286_while_placeholder4sequential_95/lstm_286/while/lstm_cell_388/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_95/lstm_286/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_95/lstm_286/while/addAddV2(sequential_95_lstm_286_while_placeholder+sequential_95/lstm_286/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_95/lstm_286/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_95/lstm_286/while/add_1AddV2Fsequential_95_lstm_286_while_sequential_95_lstm_286_while_loop_counter-sequential_95/lstm_286/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_95/lstm_286/while/IdentityIdentity&sequential_95/lstm_286/while/add_1:z:0"^sequential_95/lstm_286/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_286/while/Identity_1IdentityLsequential_95_lstm_286_while_sequential_95_lstm_286_while_maximum_iterations"^sequential_95/lstm_286/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_286/while/Identity_2Identity$sequential_95/lstm_286/while/add:z:0"^sequential_95/lstm_286/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_286/while/Identity_3IdentityQsequential_95/lstm_286/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_95/lstm_286/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_286/while/Identity_4Identity4sequential_95/lstm_286/while/lstm_cell_388/mul_2:z:0"^sequential_95/lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_95/lstm_286/while/Identity_5Identity4sequential_95/lstm_286/while/lstm_cell_388/add_1:z:0"^sequential_95/lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_95/lstm_286/while/NoOpNoOpB^sequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOpA^sequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOpC^sequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_95_lstm_286_while_identity.sequential_95/lstm_286/while/Identity:output:0"[
'sequential_95_lstm_286_while_identity_10sequential_95/lstm_286/while/Identity_1:output:0"[
'sequential_95_lstm_286_while_identity_20sequential_95/lstm_286/while/Identity_2:output:0"[
'sequential_95_lstm_286_while_identity_30sequential_95/lstm_286/while/Identity_3:output:0"[
'sequential_95_lstm_286_while_identity_40sequential_95/lstm_286/while/Identity_4:output:0"[
'sequential_95_lstm_286_while_identity_50sequential_95/lstm_286/while/Identity_5:output:0"?
Jsequential_95_lstm_286_while_lstm_cell_388_biasadd_readvariableop_resourceLsequential_95_lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0"?
Ksequential_95_lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resourceMsequential_95_lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0"?
Isequential_95_lstm_286_while_lstm_cell_388_matmul_readvariableop_resourceKsequential_95_lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0"?
Csequential_95_lstm_286_while_sequential_95_lstm_286_strided_slice_1Esequential_95_lstm_286_while_sequential_95_lstm_286_strided_slice_1_0"?
sequential_95_lstm_286_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_286_tensorarrayunstack_tensorlistfromtensor?sequential_95_lstm_286_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_286_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOpAsequential_95/lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp2?
@sequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp@sequential_95/lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp2?
Bsequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOpBsequential_95/lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2356892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356892___redundant_placeholder05
1while_while_cond_2356892___redundant_placeholder15
1while_while_cond_2356892___redundant_placeholder25
1while_while_cond_2356892___redundant_placeholder3
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
)sequential_95_lstm_286_while_cond_2352633J
Fsequential_95_lstm_286_while_sequential_95_lstm_286_while_loop_counterP
Lsequential_95_lstm_286_while_sequential_95_lstm_286_while_maximum_iterations,
(sequential_95_lstm_286_while_placeholder.
*sequential_95_lstm_286_while_placeholder_1.
*sequential_95_lstm_286_while_placeholder_2.
*sequential_95_lstm_286_while_placeholder_3L
Hsequential_95_lstm_286_while_less_sequential_95_lstm_286_strided_slice_1c
_sequential_95_lstm_286_while_sequential_95_lstm_286_while_cond_2352633___redundant_placeholder0c
_sequential_95_lstm_286_while_sequential_95_lstm_286_while_cond_2352633___redundant_placeholder1c
_sequential_95_lstm_286_while_sequential_95_lstm_286_while_cond_2352633___redundant_placeholder2c
_sequential_95_lstm_286_while_sequential_95_lstm_286_while_cond_2352633___redundant_placeholder3)
%sequential_95_lstm_286_while_identity
?
!sequential_95/lstm_286/while/LessLess(sequential_95_lstm_286_while_placeholderHsequential_95_lstm_286_while_less_sequential_95_lstm_286_strided_slice_1*
T0*
_output_shapes
: y
%sequential_95/lstm_286/while/IdentityIdentity%sequential_95/lstm_286/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_95_lstm_286_while_identity.sequential_95/lstm_286/while/Identity:output:0*(
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
/__inference_sequential_95_layer_call_fn_2354412
lstm_285_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354387o
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
_user_specified_namelstm_285_input
?

?
lstm_285_while_cond_2355662.
*lstm_285_while_lstm_285_while_loop_counter4
0lstm_285_while_lstm_285_while_maximum_iterations
lstm_285_while_placeholder 
lstm_285_while_placeholder_1 
lstm_285_while_placeholder_2 
lstm_285_while_placeholder_30
,lstm_285_while_less_lstm_285_strided_slice_1G
Clstm_285_while_lstm_285_while_cond_2355662___redundant_placeholder0G
Clstm_285_while_lstm_285_while_cond_2355662___redundant_placeholder1G
Clstm_285_while_lstm_285_while_cond_2355662___redundant_placeholder2G
Clstm_285_while_lstm_285_while_cond_2355662___redundant_placeholder3
lstm_285_while_identity
?
lstm_285/while/LessLesslstm_285_while_placeholder,lstm_285_while_less_lstm_285_strided_slice_1*
T0*
_output_shapes
: ]
lstm_285/while/IdentityIdentitylstm_285/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_285_while_identity lstm_285/while/Identity:output:0*(
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353776

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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2353076

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
*__inference_lstm_286_layer_call_fn_2356669
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2353554|
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
?#
?
while_body_2353835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_389_2353859_0:2(/
while_lstm_cell_389_2353861_0:
(+
while_lstm_cell_389_2353863_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_389_2353859:2(-
while_lstm_cell_389_2353861:
()
while_lstm_cell_389_2353863:(??+while/lstm_cell_389/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_389/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_389_2353859_0while_lstm_cell_389_2353861_0while_lstm_cell_389_2353863_0*
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353776?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_389/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_389/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_389/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_389/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_389_2353859while_lstm_cell_389_2353859_0"<
while_lstm_cell_389_2353861while_lstm_cell_389_2353861_0"<
while_lstm_cell_389_2353863while_lstm_cell_389_2353863_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_389/StatefulPartitionedCall+while/lstm_cell_389/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2357366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358192

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
while_body_2354278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2357651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357651___redundant_placeholder05
1while_while_cond_2357651___redundant_placeholder15
1while_while_cond_2357651___redundant_placeholder25
1while_while_cond_2357651___redundant_placeholder3
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354743

inputs?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2354659*
condR
while_cond_2354658*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_95_lstm_287_while_cond_2352772J
Fsequential_95_lstm_287_while_sequential_95_lstm_287_while_loop_counterP
Lsequential_95_lstm_287_while_sequential_95_lstm_287_while_maximum_iterations,
(sequential_95_lstm_287_while_placeholder.
*sequential_95_lstm_287_while_placeholder_1.
*sequential_95_lstm_287_while_placeholder_2.
*sequential_95_lstm_287_while_placeholder_3L
Hsequential_95_lstm_287_while_less_sequential_95_lstm_287_strided_slice_1c
_sequential_95_lstm_287_while_sequential_95_lstm_287_while_cond_2352772___redundant_placeholder0c
_sequential_95_lstm_287_while_sequential_95_lstm_287_while_cond_2352772___redundant_placeholder1c
_sequential_95_lstm_287_while_sequential_95_lstm_287_while_cond_2352772___redundant_placeholder2c
_sequential_95_lstm_287_while_sequential_95_lstm_287_while_cond_2352772___redundant_placeholder3)
%sequential_95_lstm_287_while_identity
?
!sequential_95/lstm_287/while/LessLess(sequential_95_lstm_287_while_placeholderHsequential_95_lstm_287_while_less_sequential_95_lstm_287_strided_slice_1*
T0*
_output_shapes
: y
%sequential_95/lstm_287/while/IdentityIdentity%sequential_95/lstm_287/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_95_lstm_287_while_identity.sequential_95/lstm_287/while/Identity:output:0*(
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355604

inputsH
5lstm_285_lstm_cell_387_matmul_readvariableop_resource:	?J
7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource:	d?E
6lstm_285_lstm_cell_387_biasadd_readvariableop_resource:	?H
5lstm_286_lstm_cell_388_matmul_readvariableop_resource:	d?J
7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource:	2?E
6lstm_286_lstm_cell_388_biasadd_readvariableop_resource:	?G
5lstm_287_lstm_cell_389_matmul_readvariableop_resource:2(I
7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource:
(D
6lstm_287_lstm_cell_389_biasadd_readvariableop_resource:(9
'dense_95_matmul_readvariableop_resource:
6
(dense_95_biasadd_readvariableop_resource:
identity??dense_95/BiasAdd/ReadVariableOp?dense_95/MatMul/ReadVariableOp?-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp?,lstm_285/lstm_cell_387/MatMul/ReadVariableOp?.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp?lstm_285/while?-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp?,lstm_286/lstm_cell_388/MatMul/ReadVariableOp?.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp?lstm_286/while?-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp?,lstm_287/lstm_cell_389/MatMul/ReadVariableOp?.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp?lstm_287/whileD
lstm_285/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_285/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_285/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_285/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_sliceStridedSlicelstm_285/Shape:output:0%lstm_285/strided_slice/stack:output:0'lstm_285/strided_slice/stack_1:output:0'lstm_285/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_285/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_285/zeros/packedPacklstm_285/strided_slice:output:0 lstm_285/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_285/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_285/zerosFilllstm_285/zeros/packed:output:0lstm_285/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_285/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_285/zeros_1/packedPacklstm_285/strided_slice:output:0"lstm_285/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_285/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_285/zeros_1Fill lstm_285/zeros_1/packed:output:0lstm_285/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_285/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_285/transpose	Transposeinputs lstm_285/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_285/Shape_1Shapelstm_285/transpose:y:0*
T0*
_output_shapes
:h
lstm_285/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_285/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_1StridedSlicelstm_285/Shape_1:output:0'lstm_285/strided_slice_1/stack:output:0)lstm_285/strided_slice_1/stack_1:output:0)lstm_285/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_285/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_285/TensorArrayV2TensorListReserve-lstm_285/TensorArrayV2/element_shape:output:0!lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_285/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_285/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_285/transpose:y:0Glstm_285/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_285/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_285/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_2StridedSlicelstm_285/transpose:y:0'lstm_285/strided_slice_2/stack:output:0)lstm_285/strided_slice_2/stack_1:output:0)lstm_285/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_285/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp5lstm_285_lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_285/lstm_cell_387/MatMulMatMul!lstm_285/strided_slice_2:output:04lstm_285/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_285/lstm_cell_387/MatMul_1MatMullstm_285/zeros:output:06lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_285/lstm_cell_387/addAddV2'lstm_285/lstm_cell_387/MatMul:product:0)lstm_285/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp6lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_285/lstm_cell_387/BiasAddBiasAddlstm_285/lstm_cell_387/add:z:05lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_285/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_285/lstm_cell_387/splitSplit/lstm_285/lstm_cell_387/split/split_dim:output:0'lstm_285/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_285/lstm_cell_387/SigmoidSigmoid%lstm_285/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_285/lstm_cell_387/Sigmoid_1Sigmoid%lstm_285/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mulMul$lstm_285/lstm_cell_387/Sigmoid_1:y:0lstm_285/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_285/lstm_cell_387/ReluRelu%lstm_285/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mul_1Mul"lstm_285/lstm_cell_387/Sigmoid:y:0)lstm_285/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/add_1AddV2lstm_285/lstm_cell_387/mul:z:0 lstm_285/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_285/lstm_cell_387/Sigmoid_2Sigmoid%lstm_285/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_285/lstm_cell_387/Relu_1Relu lstm_285/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_285/lstm_cell_387/mul_2Mul$lstm_285/lstm_cell_387/Sigmoid_2:y:0+lstm_285/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_285/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_285/TensorArrayV2_1TensorListReserve/lstm_285/TensorArrayV2_1/element_shape:output:0!lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_285/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_285/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_285/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_285/whileWhile$lstm_285/while/loop_counter:output:0*lstm_285/while/maximum_iterations:output:0lstm_285/time:output:0!lstm_285/TensorArrayV2_1:handle:0lstm_285/zeros:output:0lstm_285/zeros_1:output:0!lstm_285/strided_slice_1:output:0@lstm_285/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_285_lstm_cell_387_matmul_readvariableop_resource7lstm_285_lstm_cell_387_matmul_1_readvariableop_resource6lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
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
lstm_285_while_body_2355236*'
condR
lstm_285_while_cond_2355235*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_285/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_285/TensorArrayV2Stack/TensorListStackTensorListStacklstm_285/while:output:3Blstm_285/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_285/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_285/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_285/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_285/strided_slice_3StridedSlice4lstm_285/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_285/strided_slice_3/stack:output:0)lstm_285/strided_slice_3/stack_1:output:0)lstm_285/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_285/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_285/transpose_1	Transpose4lstm_285/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_285/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_285/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_286/ShapeShapelstm_285/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_sliceStridedSlicelstm_286/Shape:output:0%lstm_286/strided_slice/stack:output:0'lstm_286/strided_slice/stack_1:output:0'lstm_286/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_286/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_286/zeros/packedPacklstm_286/strided_slice:output:0 lstm_286/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_286/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_286/zerosFilllstm_286/zeros/packed:output:0lstm_286/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_286/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_286/zeros_1/packedPacklstm_286/strided_slice:output:0"lstm_286/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_286/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_286/zeros_1Fill lstm_286/zeros_1/packed:output:0lstm_286/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_286/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_286/transpose	Transposelstm_285/transpose_1:y:0 lstm_286/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_286/Shape_1Shapelstm_286/transpose:y:0*
T0*
_output_shapes
:h
lstm_286/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_286/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_1StridedSlicelstm_286/Shape_1:output:0'lstm_286/strided_slice_1/stack:output:0)lstm_286/strided_slice_1/stack_1:output:0)lstm_286/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_286/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_286/TensorArrayV2TensorListReserve-lstm_286/TensorArrayV2/element_shape:output:0!lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_286/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_286/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_286/transpose:y:0Glstm_286/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_286/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_286/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_2StridedSlicelstm_286/transpose:y:0'lstm_286/strided_slice_2/stack:output:0)lstm_286/strided_slice_2/stack_1:output:0)lstm_286/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_286/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp5lstm_286_lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_286/lstm_cell_388/MatMulMatMul!lstm_286/strided_slice_2:output:04lstm_286/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_286/lstm_cell_388/MatMul_1MatMullstm_286/zeros:output:06lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_286/lstm_cell_388/addAddV2'lstm_286/lstm_cell_388/MatMul:product:0)lstm_286/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp6lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_286/lstm_cell_388/BiasAddBiasAddlstm_286/lstm_cell_388/add:z:05lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_286/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_286/lstm_cell_388/splitSplit/lstm_286/lstm_cell_388/split/split_dim:output:0'lstm_286/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_286/lstm_cell_388/SigmoidSigmoid%lstm_286/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_286/lstm_cell_388/Sigmoid_1Sigmoid%lstm_286/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mulMul$lstm_286/lstm_cell_388/Sigmoid_1:y:0lstm_286/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_286/lstm_cell_388/ReluRelu%lstm_286/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mul_1Mul"lstm_286/lstm_cell_388/Sigmoid:y:0)lstm_286/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/add_1AddV2lstm_286/lstm_cell_388/mul:z:0 lstm_286/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_286/lstm_cell_388/Sigmoid_2Sigmoid%lstm_286/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_286/lstm_cell_388/Relu_1Relu lstm_286/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_286/lstm_cell_388/mul_2Mul$lstm_286/lstm_cell_388/Sigmoid_2:y:0+lstm_286/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_286/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_286/TensorArrayV2_1TensorListReserve/lstm_286/TensorArrayV2_1/element_shape:output:0!lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_286/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_286/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_286/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_286/whileWhile$lstm_286/while/loop_counter:output:0*lstm_286/while/maximum_iterations:output:0lstm_286/time:output:0!lstm_286/TensorArrayV2_1:handle:0lstm_286/zeros:output:0lstm_286/zeros_1:output:0!lstm_286/strided_slice_1:output:0@lstm_286/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_286_lstm_cell_388_matmul_readvariableop_resource7lstm_286_lstm_cell_388_matmul_1_readvariableop_resource6lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
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
lstm_286_while_body_2355375*'
condR
lstm_286_while_cond_2355374*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_286/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_286/TensorArrayV2Stack/TensorListStackTensorListStacklstm_286/while:output:3Blstm_286/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_286/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_286/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_286/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_286/strided_slice_3StridedSlice4lstm_286/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_286/strided_slice_3/stack:output:0)lstm_286/strided_slice_3/stack_1:output:0)lstm_286/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_286/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_286/transpose_1	Transpose4lstm_286/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_286/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_286/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_287/ShapeShapelstm_286/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_sliceStridedSlicelstm_287/Shape:output:0%lstm_287/strided_slice/stack:output:0'lstm_287/strided_slice/stack_1:output:0'lstm_287/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_287/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_287/zeros/packedPacklstm_287/strided_slice:output:0 lstm_287/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_287/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_287/zerosFilllstm_287/zeros/packed:output:0lstm_287/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_287/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_287/zeros_1/packedPacklstm_287/strided_slice:output:0"lstm_287/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_287/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_287/zeros_1Fill lstm_287/zeros_1/packed:output:0lstm_287/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_287/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_287/transpose	Transposelstm_286/transpose_1:y:0 lstm_287/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_287/Shape_1Shapelstm_287/transpose:y:0*
T0*
_output_shapes
:h
lstm_287/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_287/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_1StridedSlicelstm_287/Shape_1:output:0'lstm_287/strided_slice_1/stack:output:0)lstm_287/strided_slice_1/stack_1:output:0)lstm_287/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_287/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_287/TensorArrayV2TensorListReserve-lstm_287/TensorArrayV2/element_shape:output:0!lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_287/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_287/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_287/transpose:y:0Glstm_287/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_287/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_287/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_2StridedSlicelstm_287/transpose:y:0'lstm_287/strided_slice_2/stack:output:0)lstm_287/strided_slice_2/stack_1:output:0)lstm_287/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_287/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp5lstm_287_lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_287/lstm_cell_389/MatMulMatMul!lstm_287/strided_slice_2:output:04lstm_287/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_287/lstm_cell_389/MatMul_1MatMullstm_287/zeros:output:06lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_287/lstm_cell_389/addAddV2'lstm_287/lstm_cell_389/MatMul:product:0)lstm_287/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp6lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_287/lstm_cell_389/BiasAddBiasAddlstm_287/lstm_cell_389/add:z:05lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_287/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_287/lstm_cell_389/splitSplit/lstm_287/lstm_cell_389/split/split_dim:output:0'lstm_287/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_287/lstm_cell_389/SigmoidSigmoid%lstm_287/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_287/lstm_cell_389/Sigmoid_1Sigmoid%lstm_287/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mulMul$lstm_287/lstm_cell_389/Sigmoid_1:y:0lstm_287/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_287/lstm_cell_389/ReluRelu%lstm_287/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mul_1Mul"lstm_287/lstm_cell_389/Sigmoid:y:0)lstm_287/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/add_1AddV2lstm_287/lstm_cell_389/mul:z:0 lstm_287/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_287/lstm_cell_389/Sigmoid_2Sigmoid%lstm_287/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_287/lstm_cell_389/Relu_1Relu lstm_287/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_287/lstm_cell_389/mul_2Mul$lstm_287/lstm_cell_389/Sigmoid_2:y:0+lstm_287/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_287/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_287/TensorArrayV2_1TensorListReserve/lstm_287/TensorArrayV2_1/element_shape:output:0!lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_287/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_287/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_287/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_287/whileWhile$lstm_287/while/loop_counter:output:0*lstm_287/while/maximum_iterations:output:0lstm_287/time:output:0!lstm_287/TensorArrayV2_1:handle:0lstm_287/zeros:output:0lstm_287/zeros_1:output:0!lstm_287/strided_slice_1:output:0@lstm_287/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_287_lstm_cell_389_matmul_readvariableop_resource7lstm_287_lstm_cell_389_matmul_1_readvariableop_resource6lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
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
lstm_287_while_body_2355514*'
condR
lstm_287_while_cond_2355513*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_287/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_287/TensorArrayV2Stack/TensorListStackTensorListStacklstm_287/while:output:3Blstm_287/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_287/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_287/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_287/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_287/strided_slice_3StridedSlice4lstm_287/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_287/strided_slice_3/stack:output:0)lstm_287/strided_slice_3/stack_1:output:0)lstm_287/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_287/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_287/transpose_1	Transpose4lstm_287/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_287/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_287/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_95/MatMul/ReadVariableOpReadVariableOp'dense_95_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_95/MatMulMatMul!lstm_287/strided_slice_3:output:0&dense_95/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_95/BiasAdd/ReadVariableOpReadVariableOp(dense_95_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_95/BiasAddBiasAdddense_95/MatMul:product:0'dense_95/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_95/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_95/BiasAdd/ReadVariableOp^dense_95/MatMul/ReadVariableOp.^lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp-^lstm_285/lstm_cell_387/MatMul/ReadVariableOp/^lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp^lstm_285/while.^lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp-^lstm_286/lstm_cell_388/MatMul/ReadVariableOp/^lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp^lstm_286/while.^lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp-^lstm_287/lstm_cell_389/MatMul/ReadVariableOp/^lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp^lstm_287/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_95/BiasAdd/ReadVariableOpdense_95/BiasAdd/ReadVariableOp2@
dense_95/MatMul/ReadVariableOpdense_95/MatMul/ReadVariableOp2^
-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp-lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp2\
,lstm_285/lstm_cell_387/MatMul/ReadVariableOp,lstm_285/lstm_cell_387/MatMul/ReadVariableOp2`
.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp.lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp2 
lstm_285/whilelstm_285/while2^
-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp-lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp2\
,lstm_286/lstm_cell_388/MatMul/ReadVariableOp,lstm_286/lstm_cell_388/MatMul/ReadVariableOp2`
.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp.lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp2 
lstm_286/whilelstm_286/while2^
-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp-lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp2\
,lstm_287/lstm_cell_389/MatMul/ReadVariableOp,lstm_287/lstm_cell_389/MatMul/ReadVariableOp2`
.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp.lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp2 
lstm_287/whilelstm_287/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357120

inputs?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2357036*
condR
while_cond_2357035*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2357178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357178___redundant_placeholder05
1while_while_cond_2357178___redundant_placeholder15
1while_while_cond_2357178___redundant_placeholder25
1while_while_cond_2357178___redundant_placeholder3
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
while_body_2357036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356647

inputs?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2356563*
condR
while_cond_2356562*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2356419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356419___redundant_placeholder05
1while_while_cond_2356419___redundant_placeholder15
1while_while_cond_2356419___redundant_placeholder25
1while_while_cond_2356419___redundant_placeholder3
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
*__inference_lstm_286_layer_call_fn_2356680

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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354212s
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
while_cond_2354127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2354127___redundant_placeholder05
1while_while_cond_2354127___redundant_placeholder15
1while_while_cond_2354127___redundant_placeholder25
1while_while_cond_2354127___redundant_placeholder3
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
while_body_2356750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2353294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_388_2353318_0:	d?0
while_lstm_cell_388_2353320_0:	2?,
while_lstm_cell_388_2353322_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_388_2353318:	d?.
while_lstm_cell_388_2353320:	2?*
while_lstm_cell_388_2353322:	???+while/lstm_cell_388/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_388/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_388_2353318_0while_lstm_cell_388_2353320_0while_lstm_cell_388_2353322_0*
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353280?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_388/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_388/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_388/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_388/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_388_2353318while_lstm_cell_388_2353318_0"<
while_lstm_cell_388_2353320while_lstm_cell_388_2353320_0"<
while_lstm_cell_388_2353322while_lstm_cell_388_2353322_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_388/StatefulPartitionedCall+while/lstm_cell_388/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2353977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353977___redundant_placeholder05
1while_while_cond_2353977___redundant_placeholder15
1while_while_cond_2353977___redundant_placeholder25
1while_while_cond_2353977___redundant_placeholder3
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
"__inference__wrapped_model_2352863
lstm_285_inputV
Csequential_95_lstm_285_lstm_cell_387_matmul_readvariableop_resource:	?X
Esequential_95_lstm_285_lstm_cell_387_matmul_1_readvariableop_resource:	d?S
Dsequential_95_lstm_285_lstm_cell_387_biasadd_readvariableop_resource:	?V
Csequential_95_lstm_286_lstm_cell_388_matmul_readvariableop_resource:	d?X
Esequential_95_lstm_286_lstm_cell_388_matmul_1_readvariableop_resource:	2?S
Dsequential_95_lstm_286_lstm_cell_388_biasadd_readvariableop_resource:	?U
Csequential_95_lstm_287_lstm_cell_389_matmul_readvariableop_resource:2(W
Esequential_95_lstm_287_lstm_cell_389_matmul_1_readvariableop_resource:
(R
Dsequential_95_lstm_287_lstm_cell_389_biasadd_readvariableop_resource:(G
5sequential_95_dense_95_matmul_readvariableop_resource:
D
6sequential_95_dense_95_biasadd_readvariableop_resource:
identity??-sequential_95/dense_95/BiasAdd/ReadVariableOp?,sequential_95/dense_95/MatMul/ReadVariableOp?;sequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp?:sequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOp?<sequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp?sequential_95/lstm_285/while?;sequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp?:sequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOp?<sequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp?sequential_95/lstm_286/while?;sequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp?:sequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOp?<sequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp?sequential_95/lstm_287/whileZ
sequential_95/lstm_285/ShapeShapelstm_285_input*
T0*
_output_shapes
:t
*sequential_95/lstm_285/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_95/lstm_285/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_95/lstm_285/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_95/lstm_285/strided_sliceStridedSlice%sequential_95/lstm_285/Shape:output:03sequential_95/lstm_285/strided_slice/stack:output:05sequential_95/lstm_285/strided_slice/stack_1:output:05sequential_95/lstm_285/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_95/lstm_285/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_95/lstm_285/zeros/packedPack-sequential_95/lstm_285/strided_slice:output:0.sequential_95/lstm_285/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_95/lstm_285/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_285/zerosFill,sequential_95/lstm_285/zeros/packed:output:0+sequential_95/lstm_285/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_95/lstm_285/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_95/lstm_285/zeros_1/packedPack-sequential_95/lstm_285/strided_slice:output:00sequential_95/lstm_285/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_95/lstm_285/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_285/zeros_1Fill.sequential_95/lstm_285/zeros_1/packed:output:0-sequential_95/lstm_285/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_95/lstm_285/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_95/lstm_285/transpose	Transposelstm_285_input.sequential_95/lstm_285/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_95/lstm_285/Shape_1Shape$sequential_95/lstm_285/transpose:y:0*
T0*
_output_shapes
:v
,sequential_95/lstm_285/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_285/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_285/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_285/strided_slice_1StridedSlice'sequential_95/lstm_285/Shape_1:output:05sequential_95/lstm_285/strided_slice_1/stack:output:07sequential_95/lstm_285/strided_slice_1/stack_1:output:07sequential_95/lstm_285/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_95/lstm_285/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_95/lstm_285/TensorArrayV2TensorListReserve;sequential_95/lstm_285/TensorArrayV2/element_shape:output:0/sequential_95/lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_95/lstm_285/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_95/lstm_285/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_95/lstm_285/transpose:y:0Usequential_95/lstm_285/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_95/lstm_285/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_285/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_285/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_285/strided_slice_2StridedSlice$sequential_95/lstm_285/transpose:y:05sequential_95/lstm_285/strided_slice_2/stack:output:07sequential_95/lstm_285/strided_slice_2/stack_1:output:07sequential_95/lstm_285/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOpReadVariableOpCsequential_95_lstm_285_lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_95/lstm_285/lstm_cell_387/MatMulMatMul/sequential_95/lstm_285/strided_slice_2:output:0Bsequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOpEsequential_95_lstm_285_lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_95/lstm_285/lstm_cell_387/MatMul_1MatMul%sequential_95/lstm_285/zeros:output:0Dsequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_95/lstm_285/lstm_cell_387/addAddV25sequential_95/lstm_285/lstm_cell_387/MatMul:product:07sequential_95/lstm_285/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOpDsequential_95_lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_95/lstm_285/lstm_cell_387/BiasAddBiasAdd,sequential_95/lstm_285/lstm_cell_387/add:z:0Csequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_95/lstm_285/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_95/lstm_285/lstm_cell_387/splitSplit=sequential_95/lstm_285/lstm_cell_387/split/split_dim:output:05sequential_95/lstm_285/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_95/lstm_285/lstm_cell_387/SigmoidSigmoid3sequential_95/lstm_285/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_95/lstm_285/lstm_cell_387/Sigmoid_1Sigmoid3sequential_95/lstm_285/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_95/lstm_285/lstm_cell_387/mulMul2sequential_95/lstm_285/lstm_cell_387/Sigmoid_1:y:0'sequential_95/lstm_285/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_95/lstm_285/lstm_cell_387/ReluRelu3sequential_95/lstm_285/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_95/lstm_285/lstm_cell_387/mul_1Mul0sequential_95/lstm_285/lstm_cell_387/Sigmoid:y:07sequential_95/lstm_285/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_95/lstm_285/lstm_cell_387/add_1AddV2,sequential_95/lstm_285/lstm_cell_387/mul:z:0.sequential_95/lstm_285/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_95/lstm_285/lstm_cell_387/Sigmoid_2Sigmoid3sequential_95/lstm_285/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_95/lstm_285/lstm_cell_387/Relu_1Relu.sequential_95/lstm_285/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_95/lstm_285/lstm_cell_387/mul_2Mul2sequential_95/lstm_285/lstm_cell_387/Sigmoid_2:y:09sequential_95/lstm_285/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_95/lstm_285/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_95/lstm_285/TensorArrayV2_1TensorListReserve=sequential_95/lstm_285/TensorArrayV2_1/element_shape:output:0/sequential_95/lstm_285/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_95/lstm_285/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_95/lstm_285/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_95/lstm_285/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_95/lstm_285/whileWhile2sequential_95/lstm_285/while/loop_counter:output:08sequential_95/lstm_285/while/maximum_iterations:output:0$sequential_95/lstm_285/time:output:0/sequential_95/lstm_285/TensorArrayV2_1:handle:0%sequential_95/lstm_285/zeros:output:0'sequential_95/lstm_285/zeros_1:output:0/sequential_95/lstm_285/strided_slice_1:output:0Nsequential_95/lstm_285/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_95_lstm_285_lstm_cell_387_matmul_readvariableop_resourceEsequential_95_lstm_285_lstm_cell_387_matmul_1_readvariableop_resourceDsequential_95_lstm_285_lstm_cell_387_biasadd_readvariableop_resource*
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
)sequential_95_lstm_285_while_body_2352495*5
cond-R+
)sequential_95_lstm_285_while_cond_2352494*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_95/lstm_285/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_95/lstm_285/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_95/lstm_285/while:output:3Psequential_95/lstm_285/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_95/lstm_285/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_95/lstm_285/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_285/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_285/strided_slice_3StridedSliceBsequential_95/lstm_285/TensorArrayV2Stack/TensorListStack:tensor:05sequential_95/lstm_285/strided_slice_3/stack:output:07sequential_95/lstm_285/strided_slice_3/stack_1:output:07sequential_95/lstm_285/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_95/lstm_285/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_95/lstm_285/transpose_1	TransposeBsequential_95/lstm_285/TensorArrayV2Stack/TensorListStack:tensor:00sequential_95/lstm_285/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_95/lstm_285/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_95/lstm_286/ShapeShape&sequential_95/lstm_285/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_95/lstm_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_95/lstm_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_95/lstm_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_95/lstm_286/strided_sliceStridedSlice%sequential_95/lstm_286/Shape:output:03sequential_95/lstm_286/strided_slice/stack:output:05sequential_95/lstm_286/strided_slice/stack_1:output:05sequential_95/lstm_286/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_95/lstm_286/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_95/lstm_286/zeros/packedPack-sequential_95/lstm_286/strided_slice:output:0.sequential_95/lstm_286/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_95/lstm_286/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_286/zerosFill,sequential_95/lstm_286/zeros/packed:output:0+sequential_95/lstm_286/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_95/lstm_286/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_95/lstm_286/zeros_1/packedPack-sequential_95/lstm_286/strided_slice:output:00sequential_95/lstm_286/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_95/lstm_286/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_286/zeros_1Fill.sequential_95/lstm_286/zeros_1/packed:output:0-sequential_95/lstm_286/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_95/lstm_286/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_95/lstm_286/transpose	Transpose&sequential_95/lstm_285/transpose_1:y:0.sequential_95/lstm_286/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_95/lstm_286/Shape_1Shape$sequential_95/lstm_286/transpose:y:0*
T0*
_output_shapes
:v
,sequential_95/lstm_286/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_286/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_286/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_286/strided_slice_1StridedSlice'sequential_95/lstm_286/Shape_1:output:05sequential_95/lstm_286/strided_slice_1/stack:output:07sequential_95/lstm_286/strided_slice_1/stack_1:output:07sequential_95/lstm_286/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_95/lstm_286/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_95/lstm_286/TensorArrayV2TensorListReserve;sequential_95/lstm_286/TensorArrayV2/element_shape:output:0/sequential_95/lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_95/lstm_286/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_95/lstm_286/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_95/lstm_286/transpose:y:0Usequential_95/lstm_286/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_95/lstm_286/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_286/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_286/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_286/strided_slice_2StridedSlice$sequential_95/lstm_286/transpose:y:05sequential_95/lstm_286/strided_slice_2/stack:output:07sequential_95/lstm_286/strided_slice_2/stack_1:output:07sequential_95/lstm_286/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOpReadVariableOpCsequential_95_lstm_286_lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_95/lstm_286/lstm_cell_388/MatMulMatMul/sequential_95/lstm_286/strided_slice_2:output:0Bsequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOpEsequential_95_lstm_286_lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_95/lstm_286/lstm_cell_388/MatMul_1MatMul%sequential_95/lstm_286/zeros:output:0Dsequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_95/lstm_286/lstm_cell_388/addAddV25sequential_95/lstm_286/lstm_cell_388/MatMul:product:07sequential_95/lstm_286/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOpDsequential_95_lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_95/lstm_286/lstm_cell_388/BiasAddBiasAdd,sequential_95/lstm_286/lstm_cell_388/add:z:0Csequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_95/lstm_286/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_95/lstm_286/lstm_cell_388/splitSplit=sequential_95/lstm_286/lstm_cell_388/split/split_dim:output:05sequential_95/lstm_286/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_95/lstm_286/lstm_cell_388/SigmoidSigmoid3sequential_95/lstm_286/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_95/lstm_286/lstm_cell_388/Sigmoid_1Sigmoid3sequential_95/lstm_286/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_95/lstm_286/lstm_cell_388/mulMul2sequential_95/lstm_286/lstm_cell_388/Sigmoid_1:y:0'sequential_95/lstm_286/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_95/lstm_286/lstm_cell_388/ReluRelu3sequential_95/lstm_286/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_95/lstm_286/lstm_cell_388/mul_1Mul0sequential_95/lstm_286/lstm_cell_388/Sigmoid:y:07sequential_95/lstm_286/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_95/lstm_286/lstm_cell_388/add_1AddV2,sequential_95/lstm_286/lstm_cell_388/mul:z:0.sequential_95/lstm_286/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_95/lstm_286/lstm_cell_388/Sigmoid_2Sigmoid3sequential_95/lstm_286/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_95/lstm_286/lstm_cell_388/Relu_1Relu.sequential_95/lstm_286/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_95/lstm_286/lstm_cell_388/mul_2Mul2sequential_95/lstm_286/lstm_cell_388/Sigmoid_2:y:09sequential_95/lstm_286/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_95/lstm_286/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_95/lstm_286/TensorArrayV2_1TensorListReserve=sequential_95/lstm_286/TensorArrayV2_1/element_shape:output:0/sequential_95/lstm_286/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_95/lstm_286/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_95/lstm_286/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_95/lstm_286/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_95/lstm_286/whileWhile2sequential_95/lstm_286/while/loop_counter:output:08sequential_95/lstm_286/while/maximum_iterations:output:0$sequential_95/lstm_286/time:output:0/sequential_95/lstm_286/TensorArrayV2_1:handle:0%sequential_95/lstm_286/zeros:output:0'sequential_95/lstm_286/zeros_1:output:0/sequential_95/lstm_286/strided_slice_1:output:0Nsequential_95/lstm_286/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_95_lstm_286_lstm_cell_388_matmul_readvariableop_resourceEsequential_95_lstm_286_lstm_cell_388_matmul_1_readvariableop_resourceDsequential_95_lstm_286_lstm_cell_388_biasadd_readvariableop_resource*
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
)sequential_95_lstm_286_while_body_2352634*5
cond-R+
)sequential_95_lstm_286_while_cond_2352633*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_95/lstm_286/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_95/lstm_286/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_95/lstm_286/while:output:3Psequential_95/lstm_286/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_95/lstm_286/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_95/lstm_286/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_286/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_286/strided_slice_3StridedSliceBsequential_95/lstm_286/TensorArrayV2Stack/TensorListStack:tensor:05sequential_95/lstm_286/strided_slice_3/stack:output:07sequential_95/lstm_286/strided_slice_3/stack_1:output:07sequential_95/lstm_286/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_95/lstm_286/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_95/lstm_286/transpose_1	TransposeBsequential_95/lstm_286/TensorArrayV2Stack/TensorListStack:tensor:00sequential_95/lstm_286/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_95/lstm_286/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_95/lstm_287/ShapeShape&sequential_95/lstm_286/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_95/lstm_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_95/lstm_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_95/lstm_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_95/lstm_287/strided_sliceStridedSlice%sequential_95/lstm_287/Shape:output:03sequential_95/lstm_287/strided_slice/stack:output:05sequential_95/lstm_287/strided_slice/stack_1:output:05sequential_95/lstm_287/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_95/lstm_287/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_95/lstm_287/zeros/packedPack-sequential_95/lstm_287/strided_slice:output:0.sequential_95/lstm_287/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_95/lstm_287/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_287/zerosFill,sequential_95/lstm_287/zeros/packed:output:0+sequential_95/lstm_287/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_95/lstm_287/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_95/lstm_287/zeros_1/packedPack-sequential_95/lstm_287/strided_slice:output:00sequential_95/lstm_287/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_95/lstm_287/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_95/lstm_287/zeros_1Fill.sequential_95/lstm_287/zeros_1/packed:output:0-sequential_95/lstm_287/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_95/lstm_287/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_95/lstm_287/transpose	Transpose&sequential_95/lstm_286/transpose_1:y:0.sequential_95/lstm_287/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_95/lstm_287/Shape_1Shape$sequential_95/lstm_287/transpose:y:0*
T0*
_output_shapes
:v
,sequential_95/lstm_287/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_287/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_287/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_287/strided_slice_1StridedSlice'sequential_95/lstm_287/Shape_1:output:05sequential_95/lstm_287/strided_slice_1/stack:output:07sequential_95/lstm_287/strided_slice_1/stack_1:output:07sequential_95/lstm_287/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_95/lstm_287/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_95/lstm_287/TensorArrayV2TensorListReserve;sequential_95/lstm_287/TensorArrayV2/element_shape:output:0/sequential_95/lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_95/lstm_287/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_95/lstm_287/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_95/lstm_287/transpose:y:0Usequential_95/lstm_287/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_95/lstm_287/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_287/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_95/lstm_287/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_287/strided_slice_2StridedSlice$sequential_95/lstm_287/transpose:y:05sequential_95/lstm_287/strided_slice_2/stack:output:07sequential_95/lstm_287/strided_slice_2/stack_1:output:07sequential_95/lstm_287/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOpReadVariableOpCsequential_95_lstm_287_lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_95/lstm_287/lstm_cell_389/MatMulMatMul/sequential_95/lstm_287/strided_slice_2:output:0Bsequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOpEsequential_95_lstm_287_lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_95/lstm_287/lstm_cell_389/MatMul_1MatMul%sequential_95/lstm_287/zeros:output:0Dsequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_95/lstm_287/lstm_cell_389/addAddV25sequential_95/lstm_287/lstm_cell_389/MatMul:product:07sequential_95/lstm_287/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOpDsequential_95_lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_95/lstm_287/lstm_cell_389/BiasAddBiasAdd,sequential_95/lstm_287/lstm_cell_389/add:z:0Csequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_95/lstm_287/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_95/lstm_287/lstm_cell_389/splitSplit=sequential_95/lstm_287/lstm_cell_389/split/split_dim:output:05sequential_95/lstm_287/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_95/lstm_287/lstm_cell_389/SigmoidSigmoid3sequential_95/lstm_287/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_95/lstm_287/lstm_cell_389/Sigmoid_1Sigmoid3sequential_95/lstm_287/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_95/lstm_287/lstm_cell_389/mulMul2sequential_95/lstm_287/lstm_cell_389/Sigmoid_1:y:0'sequential_95/lstm_287/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_95/lstm_287/lstm_cell_389/ReluRelu3sequential_95/lstm_287/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_95/lstm_287/lstm_cell_389/mul_1Mul0sequential_95/lstm_287/lstm_cell_389/Sigmoid:y:07sequential_95/lstm_287/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_95/lstm_287/lstm_cell_389/add_1AddV2,sequential_95/lstm_287/lstm_cell_389/mul:z:0.sequential_95/lstm_287/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_95/lstm_287/lstm_cell_389/Sigmoid_2Sigmoid3sequential_95/lstm_287/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_95/lstm_287/lstm_cell_389/Relu_1Relu.sequential_95/lstm_287/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_95/lstm_287/lstm_cell_389/mul_2Mul2sequential_95/lstm_287/lstm_cell_389/Sigmoid_2:y:09sequential_95/lstm_287/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_95/lstm_287/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_95/lstm_287/TensorArrayV2_1TensorListReserve=sequential_95/lstm_287/TensorArrayV2_1/element_shape:output:0/sequential_95/lstm_287/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_95/lstm_287/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_95/lstm_287/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_95/lstm_287/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_95/lstm_287/whileWhile2sequential_95/lstm_287/while/loop_counter:output:08sequential_95/lstm_287/while/maximum_iterations:output:0$sequential_95/lstm_287/time:output:0/sequential_95/lstm_287/TensorArrayV2_1:handle:0%sequential_95/lstm_287/zeros:output:0'sequential_95/lstm_287/zeros_1:output:0/sequential_95/lstm_287/strided_slice_1:output:0Nsequential_95/lstm_287/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_95_lstm_287_lstm_cell_389_matmul_readvariableop_resourceEsequential_95_lstm_287_lstm_cell_389_matmul_1_readvariableop_resourceDsequential_95_lstm_287_lstm_cell_389_biasadd_readvariableop_resource*
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
)sequential_95_lstm_287_while_body_2352773*5
cond-R+
)sequential_95_lstm_287_while_cond_2352772*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_95/lstm_287/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_95/lstm_287/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_95/lstm_287/while:output:3Psequential_95/lstm_287/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_95/lstm_287/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_95/lstm_287/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_95/lstm_287/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_95/lstm_287/strided_slice_3StridedSliceBsequential_95/lstm_287/TensorArrayV2Stack/TensorListStack:tensor:05sequential_95/lstm_287/strided_slice_3/stack:output:07sequential_95/lstm_287/strided_slice_3/stack_1:output:07sequential_95/lstm_287/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_95/lstm_287/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_95/lstm_287/transpose_1	TransposeBsequential_95/lstm_287/TensorArrayV2Stack/TensorListStack:tensor:00sequential_95/lstm_287/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_95/lstm_287/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_95/dense_95/MatMul/ReadVariableOpReadVariableOp5sequential_95_dense_95_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_95/dense_95/MatMulMatMul/sequential_95/lstm_287/strided_slice_3:output:04sequential_95/dense_95/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_95/dense_95/BiasAdd/ReadVariableOpReadVariableOp6sequential_95_dense_95_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_95/dense_95/BiasAddBiasAdd'sequential_95/dense_95/MatMul:product:05sequential_95/dense_95/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_95/dense_95/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_95/dense_95/BiasAdd/ReadVariableOp-^sequential_95/dense_95/MatMul/ReadVariableOp<^sequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp;^sequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOp=^sequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp^sequential_95/lstm_285/while<^sequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp;^sequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOp=^sequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp^sequential_95/lstm_286/while<^sequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp;^sequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOp=^sequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp^sequential_95/lstm_287/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_95/dense_95/BiasAdd/ReadVariableOp-sequential_95/dense_95/BiasAdd/ReadVariableOp2\
,sequential_95/dense_95/MatMul/ReadVariableOp,sequential_95/dense_95/MatMul/ReadVariableOp2z
;sequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp;sequential_95/lstm_285/lstm_cell_387/BiasAdd/ReadVariableOp2x
:sequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOp:sequential_95/lstm_285/lstm_cell_387/MatMul/ReadVariableOp2|
<sequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp<sequential_95/lstm_285/lstm_cell_387/MatMul_1/ReadVariableOp2<
sequential_95/lstm_285/whilesequential_95/lstm_285/while2z
;sequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp;sequential_95/lstm_286/lstm_cell_388/BiasAdd/ReadVariableOp2x
:sequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOp:sequential_95/lstm_286/lstm_cell_388/MatMul/ReadVariableOp2|
<sequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp<sequential_95/lstm_286/lstm_cell_388/MatMul_1/ReadVariableOp2<
sequential_95/lstm_286/whilesequential_95/lstm_286/while2z
;sequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp;sequential_95/lstm_287/lstm_cell_389/BiasAdd/ReadVariableOp2x
:sequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOp:sequential_95/lstm_287/lstm_cell_389/MatMul/ReadVariableOp2|
<sequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp<sequential_95/lstm_287/lstm_cell_389/MatMul_1/ReadVariableOp2<
sequential_95/lstm_287/whilesequential_95/lstm_287/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_285_input
?8
?
while_body_2354128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_286_while_cond_2355374.
*lstm_286_while_lstm_286_while_loop_counter4
0lstm_286_while_lstm_286_while_maximum_iterations
lstm_286_while_placeholder 
lstm_286_while_placeholder_1 
lstm_286_while_placeholder_2 
lstm_286_while_placeholder_30
,lstm_286_while_less_lstm_286_strided_slice_1G
Clstm_286_while_lstm_286_while_cond_2355374___redundant_placeholder0G
Clstm_286_while_lstm_286_while_cond_2355374___redundant_placeholder1G
Clstm_286_while_lstm_286_while_cond_2355374___redundant_placeholder2G
Clstm_286_while_lstm_286_while_cond_2355374___redundant_placeholder3
lstm_286_while_identity
?
lstm_286/while/LessLesslstm_286_while_placeholder,lstm_286_while_less_lstm_286_strided_slice_1*
T0*
_output_shapes
: ]
lstm_286/while/IdentityIdentitylstm_286/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_286_while_identity lstm_286/while/Identity:output:0*(
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

lstm_286_while_body_2355375.
*lstm_286_while_lstm_286_while_loop_counter4
0lstm_286_while_lstm_286_while_maximum_iterations
lstm_286_while_placeholder 
lstm_286_while_placeholder_1 
lstm_286_while_placeholder_2 
lstm_286_while_placeholder_3-
)lstm_286_while_lstm_286_strided_slice_1_0i
elstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0:	d?R
?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?M
>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
lstm_286_while_identity
lstm_286_while_identity_1
lstm_286_while_identity_2
lstm_286_while_identity_3
lstm_286_while_identity_4
lstm_286_while_identity_5+
'lstm_286_while_lstm_286_strided_slice_1g
clstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensorN
;lstm_286_while_lstm_cell_388_matmul_readvariableop_resource:	d?P
=lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource:	2?K
<lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource:	???3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp?2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp?4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp?
@lstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_286/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0lstm_286_while_placeholderIlstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_286/while/lstm_cell_388/MatMulMatMul9lstm_286/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_286/while/lstm_cell_388/MatMul_1MatMullstm_286_while_placeholder_2<lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_286/while/lstm_cell_388/addAddV2-lstm_286/while/lstm_cell_388/MatMul:product:0/lstm_286/while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_286/while/lstm_cell_388/BiasAddBiasAdd$lstm_286/while/lstm_cell_388/add:z:0;lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_286/while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_286/while/lstm_cell_388/splitSplit5lstm_286/while/lstm_cell_388/split/split_dim:output:0-lstm_286/while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_286/while/lstm_cell_388/SigmoidSigmoid+lstm_286/while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_286/while/lstm_cell_388/Sigmoid_1Sigmoid+lstm_286/while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_286/while/lstm_cell_388/mulMul*lstm_286/while/lstm_cell_388/Sigmoid_1:y:0lstm_286_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_286/while/lstm_cell_388/ReluRelu+lstm_286/while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/mul_1Mul(lstm_286/while/lstm_cell_388/Sigmoid:y:0/lstm_286/while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/add_1AddV2$lstm_286/while/lstm_cell_388/mul:z:0&lstm_286/while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_286/while/lstm_cell_388/Sigmoid_2Sigmoid+lstm_286/while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_286/while/lstm_cell_388/Relu_1Relu&lstm_286/while/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/mul_2Mul*lstm_286/while/lstm_cell_388/Sigmoid_2:y:01lstm_286/while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_286/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_286_while_placeholder_1lstm_286_while_placeholder&lstm_286/while/lstm_cell_388/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_286/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_286/while/addAddV2lstm_286_while_placeholderlstm_286/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_286/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_286/while/add_1AddV2*lstm_286_while_lstm_286_while_loop_counterlstm_286/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_286/while/IdentityIdentitylstm_286/while/add_1:z:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_1Identity0lstm_286_while_lstm_286_while_maximum_iterations^lstm_286/while/NoOp*
T0*
_output_shapes
: t
lstm_286/while/Identity_2Identitylstm_286/while/add:z:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_3IdentityClstm_286/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_4Identity&lstm_286/while/lstm_cell_388/mul_2:z:0^lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_286/while/Identity_5Identity&lstm_286/while/lstm_cell_388/add_1:z:0^lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_286/while/NoOpNoOp4^lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp3^lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp5^lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_286_while_identity lstm_286/while/Identity:output:0"?
lstm_286_while_identity_1"lstm_286/while/Identity_1:output:0"?
lstm_286_while_identity_2"lstm_286/while/Identity_2:output:0"?
lstm_286_while_identity_3"lstm_286/while/Identity_3:output:0"?
lstm_286_while_identity_4"lstm_286/while/Identity_4:output:0"?
lstm_286_while_identity_5"lstm_286/while/Identity_5:output:0"T
'lstm_286_while_lstm_286_strided_slice_1)lstm_286_while_lstm_286_strided_slice_1_0"~
<lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0"?
=lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0"|
;lstm_286_while_lstm_cell_388_matmul_readvariableop_resource=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0"?
clstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensorelstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp2h
2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp2l
4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2353904

inputs'
lstm_cell_389_2353822:2('
lstm_cell_389_2353824:
(#
lstm_cell_389_2353826:(
identity??%lstm_cell_389/StatefulPartitionedCall?while;
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
%lstm_cell_389/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_389_2353822lstm_cell_389_2353824lstm_cell_389_2353826*
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353776n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_389_2353822lstm_cell_389_2353824lstm_cell_389_2353826*
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
while_body_2353835*
condR
while_cond_2353834*K
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
NoOpNoOp&^lstm_cell_389/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_389/StatefulPartitionedCall%lstm_cell_389/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2357035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2357035___redundant_placeholder05
1while_while_cond_2357035___redundant_placeholder15
1while_while_cond_2357035___redundant_placeholder25
1while_while_cond_2357035___redundant_placeholder3
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
*__inference_lstm_285_layer_call_fn_2356064

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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354062s
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
?
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380

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
*__inference_lstm_287_layer_call_fn_2357285
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2353904o
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
while_cond_2353834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353834___redundant_placeholder05
1while_while_cond_2353834___redundant_placeholder15
1while_while_cond_2353834___redundant_placeholder25
1while_while_cond_2353834___redundant_placeholder3
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
while_cond_2354277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2354277___redundant_placeholder05
1while_while_cond_2354277___redundant_placeholder15
1while_while_cond_2354277___redundant_placeholder25
1while_while_cond_2354277___redundant_placeholder3
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354908

inputs?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2354824*
condR
while_cond_2354823*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_287_layer_call_fn_2357274
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2353713o
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354578

inputs>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2354494*
condR
while_cond_2354493*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_286_while_body_2355802.
*lstm_286_while_lstm_286_while_loop_counter4
0lstm_286_while_lstm_286_while_maximum_iterations
lstm_286_while_placeholder 
lstm_286_while_placeholder_1 
lstm_286_while_placeholder_2 
lstm_286_while_placeholder_3-
)lstm_286_while_lstm_286_strided_slice_1_0i
elstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0:	d?R
?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?M
>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
lstm_286_while_identity
lstm_286_while_identity_1
lstm_286_while_identity_2
lstm_286_while_identity_3
lstm_286_while_identity_4
lstm_286_while_identity_5+
'lstm_286_while_lstm_286_strided_slice_1g
clstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensorN
;lstm_286_while_lstm_cell_388_matmul_readvariableop_resource:	d?P
=lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource:	2?K
<lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource:	???3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp?2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp?4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp?
@lstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_286/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0lstm_286_while_placeholderIlstm_286/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_286/while/lstm_cell_388/MatMulMatMul9lstm_286/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_286/while/lstm_cell_388/MatMul_1MatMullstm_286_while_placeholder_2<lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_286/while/lstm_cell_388/addAddV2-lstm_286/while/lstm_cell_388/MatMul:product:0/lstm_286/while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_286/while/lstm_cell_388/BiasAddBiasAdd$lstm_286/while/lstm_cell_388/add:z:0;lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_286/while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_286/while/lstm_cell_388/splitSplit5lstm_286/while/lstm_cell_388/split/split_dim:output:0-lstm_286/while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_286/while/lstm_cell_388/SigmoidSigmoid+lstm_286/while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_286/while/lstm_cell_388/Sigmoid_1Sigmoid+lstm_286/while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_286/while/lstm_cell_388/mulMul*lstm_286/while/lstm_cell_388/Sigmoid_1:y:0lstm_286_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_286/while/lstm_cell_388/ReluRelu+lstm_286/while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/mul_1Mul(lstm_286/while/lstm_cell_388/Sigmoid:y:0/lstm_286/while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/add_1AddV2$lstm_286/while/lstm_cell_388/mul:z:0&lstm_286/while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_286/while/lstm_cell_388/Sigmoid_2Sigmoid+lstm_286/while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_286/while/lstm_cell_388/Relu_1Relu&lstm_286/while/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_286/while/lstm_cell_388/mul_2Mul*lstm_286/while/lstm_cell_388/Sigmoid_2:y:01lstm_286/while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_286/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_286_while_placeholder_1lstm_286_while_placeholder&lstm_286/while/lstm_cell_388/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_286/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_286/while/addAddV2lstm_286_while_placeholderlstm_286/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_286/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_286/while/add_1AddV2*lstm_286_while_lstm_286_while_loop_counterlstm_286/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_286/while/IdentityIdentitylstm_286/while/add_1:z:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_1Identity0lstm_286_while_lstm_286_while_maximum_iterations^lstm_286/while/NoOp*
T0*
_output_shapes
: t
lstm_286/while/Identity_2Identitylstm_286/while/add:z:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_3IdentityClstm_286/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_286/while/NoOp*
T0*
_output_shapes
: ?
lstm_286/while/Identity_4Identity&lstm_286/while/lstm_cell_388/mul_2:z:0^lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_286/while/Identity_5Identity&lstm_286/while/lstm_cell_388/add_1:z:0^lstm_286/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_286/while/NoOpNoOp4^lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp3^lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp5^lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_286_while_identity lstm_286/while/Identity:output:0"?
lstm_286_while_identity_1"lstm_286/while/Identity_1:output:0"?
lstm_286_while_identity_2"lstm_286/while/Identity_2:output:0"?
lstm_286_while_identity_3"lstm_286/while/Identity_3:output:0"?
lstm_286_while_identity_4"lstm_286/while/Identity_4:output:0"?
lstm_286_while_identity_5"lstm_286/while/Identity_5:output:0"T
'lstm_286_while_lstm_286_strided_slice_1)lstm_286_while_lstm_286_strided_slice_1_0"~
<lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource>lstm_286_while_lstm_cell_388_biasadd_readvariableop_resource_0"?
=lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource?lstm_286_while_lstm_cell_388_matmul_1_readvariableop_resource_0"|
;lstm_286_while_lstm_cell_388_matmul_readvariableop_resource=lstm_286_while_lstm_cell_388_matmul_readvariableop_resource_0"?
clstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensorelstm_286_while_tensorarrayv2read_tensorlistgetitem_lstm_286_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp3lstm_286/while/lstm_cell_388/BiasAdd/ReadVariableOp2h
2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp2lstm_286/while/lstm_cell_388/MatMul/ReadVariableOp2l
4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp4lstm_286/while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2353293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2353293___redundant_placeholder05
1while_while_cond_2353293___redundant_placeholder15
1while_while_cond_2353293___redundant_placeholder25
1while_while_cond_2353293___redundant_placeholder3
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
%__inference_signature_wrapper_2355123
lstm_285_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2352863o
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
_user_specified_namelstm_285_input
?8
?
E__inference_lstm_286_layer_call_and_return_conditional_losses_2353554

inputs(
lstm_cell_388_2353472:	d?(
lstm_cell_388_2353474:	2?$
lstm_cell_388_2353476:	?
identity??%lstm_cell_388/StatefulPartitionedCall?while;
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
%lstm_cell_388/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_388_2353472lstm_cell_388_2353474lstm_cell_388_2353476*
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353426n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_388_2353472lstm_cell_388_2353474lstm_cell_388_2353476*
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
while_body_2353485*
condR
while_cond_2353484*K
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
NoOpNoOp&^lstm_cell_388/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_388/StatefulPartitionedCall%lstm_cell_388/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357879

inputs>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2357795*
condR
while_cond_2357794*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_286_layer_call_fn_2356658
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2353363|
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357736

inputs>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2357652*
condR
while_cond_2357651*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2353978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353630

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
?
)sequential_95_lstm_285_while_cond_2352494J
Fsequential_95_lstm_285_while_sequential_95_lstm_285_while_loop_counterP
Lsequential_95_lstm_285_while_sequential_95_lstm_285_while_maximum_iterations,
(sequential_95_lstm_285_while_placeholder.
*sequential_95_lstm_285_while_placeholder_1.
*sequential_95_lstm_285_while_placeholder_2.
*sequential_95_lstm_285_while_placeholder_3L
Hsequential_95_lstm_285_while_less_sequential_95_lstm_285_strided_slice_1c
_sequential_95_lstm_285_while_sequential_95_lstm_285_while_cond_2352494___redundant_placeholder0c
_sequential_95_lstm_285_while_sequential_95_lstm_285_while_cond_2352494___redundant_placeholder1c
_sequential_95_lstm_285_while_sequential_95_lstm_285_while_cond_2352494___redundant_placeholder2c
_sequential_95_lstm_285_while_sequential_95_lstm_285_while_cond_2352494___redundant_placeholder3)
%sequential_95_lstm_285_while_identity
?
!sequential_95/lstm_285/while/LessLess(sequential_95_lstm_285_while_placeholderHsequential_95_lstm_285_while_less_sequential_95_lstm_285_strided_slice_1*
T0*
_output_shapes
: y
%sequential_95/lstm_285/while/IdentityIdentity%sequential_95/lstm_285/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_95_lstm_285_while_identity.sequential_95/lstm_285/while/Identity:output:0*(
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2357898

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
while_body_2354659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_2358335
file_prefix.
*savev2_dense_95_kernel_read_readvariableop,
(savev2_dense_95_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_285_lstm_cell_285_kernel_read_readvariableopF
Bsavev2_lstm_285_lstm_cell_285_recurrent_kernel_read_readvariableop:
6savev2_lstm_285_lstm_cell_285_bias_read_readvariableop<
8savev2_lstm_286_lstm_cell_286_kernel_read_readvariableopF
Bsavev2_lstm_286_lstm_cell_286_recurrent_kernel_read_readvariableop:
6savev2_lstm_286_lstm_cell_286_bias_read_readvariableop<
8savev2_lstm_287_lstm_cell_287_kernel_read_readvariableopF
Bsavev2_lstm_287_lstm_cell_287_recurrent_kernel_read_readvariableop:
6savev2_lstm_287_lstm_cell_287_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_95_kernel_m_read_readvariableop3
/savev2_adam_dense_95_bias_m_read_readvariableopC
?savev2_adam_lstm_285_lstm_cell_285_kernel_m_read_readvariableopM
Isavev2_adam_lstm_285_lstm_cell_285_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_285_lstm_cell_285_bias_m_read_readvariableopC
?savev2_adam_lstm_286_lstm_cell_286_kernel_m_read_readvariableopM
Isavev2_adam_lstm_286_lstm_cell_286_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_286_lstm_cell_286_bias_m_read_readvariableopC
?savev2_adam_lstm_287_lstm_cell_287_kernel_m_read_readvariableopM
Isavev2_adam_lstm_287_lstm_cell_287_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_287_lstm_cell_287_bias_m_read_readvariableop5
1savev2_adam_dense_95_kernel_v_read_readvariableop3
/savev2_adam_dense_95_bias_v_read_readvariableopC
?savev2_adam_lstm_285_lstm_cell_285_kernel_v_read_readvariableopM
Isavev2_adam_lstm_285_lstm_cell_285_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_285_lstm_cell_285_bias_v_read_readvariableopC
?savev2_adam_lstm_286_lstm_cell_286_kernel_v_read_readvariableopM
Isavev2_adam_lstm_286_lstm_cell_286_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_286_lstm_cell_286_bias_v_read_readvariableopC
?savev2_adam_lstm_287_lstm_cell_287_kernel_v_read_readvariableopM
Isavev2_adam_lstm_287_lstm_cell_287_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_287_lstm_cell_287_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_95_kernel_read_readvariableop(savev2_dense_95_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_285_lstm_cell_285_kernel_read_readvariableopBsavev2_lstm_285_lstm_cell_285_recurrent_kernel_read_readvariableop6savev2_lstm_285_lstm_cell_285_bias_read_readvariableop8savev2_lstm_286_lstm_cell_286_kernel_read_readvariableopBsavev2_lstm_286_lstm_cell_286_recurrent_kernel_read_readvariableop6savev2_lstm_286_lstm_cell_286_bias_read_readvariableop8savev2_lstm_287_lstm_cell_287_kernel_read_readvariableopBsavev2_lstm_287_lstm_cell_287_recurrent_kernel_read_readvariableop6savev2_lstm_287_lstm_cell_287_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_95_kernel_m_read_readvariableop/savev2_adam_dense_95_bias_m_read_readvariableop?savev2_adam_lstm_285_lstm_cell_285_kernel_m_read_readvariableopIsavev2_adam_lstm_285_lstm_cell_285_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_285_lstm_cell_285_bias_m_read_readvariableop?savev2_adam_lstm_286_lstm_cell_286_kernel_m_read_readvariableopIsavev2_adam_lstm_286_lstm_cell_286_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_286_lstm_cell_286_bias_m_read_readvariableop?savev2_adam_lstm_287_lstm_cell_287_kernel_m_read_readvariableopIsavev2_adam_lstm_287_lstm_cell_287_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_287_lstm_cell_287_bias_m_read_readvariableop1savev2_adam_dense_95_kernel_v_read_readvariableop/savev2_adam_dense_95_bias_v_read_readvariableop?savev2_adam_lstm_285_lstm_cell_285_kernel_v_read_readvariableopIsavev2_adam_lstm_285_lstm_cell_285_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_285_lstm_cell_285_bias_v_read_readvariableop?savev2_adam_lstm_286_lstm_cell_286_kernel_v_read_readvariableopIsavev2_adam_lstm_286_lstm_cell_286_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_286_lstm_cell_286_bias_v_read_readvariableop?savev2_adam_lstm_287_lstm_cell_287_kernel_v_read_readvariableopIsavev2_adam_lstm_287_lstm_cell_287_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_287_lstm_cell_287_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_2356277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2354824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2357509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2352930

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
while_body_2356893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2353713

inputs'
lstm_cell_389_2353631:2('
lstm_cell_389_2353633:
(#
lstm_cell_389_2353635:(
identity??%lstm_cell_389/StatefulPartitionedCall?while;
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
%lstm_cell_389/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_389_2353631lstm_cell_389_2353633lstm_cell_389_2353635*
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353630n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_389_2353631lstm_cell_389_2353633lstm_cell_389_2353635*
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
while_body_2353644*
condR
while_cond_2353643*K
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
NoOpNoOp&^lstm_cell_389/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_389/StatefulPartitionedCall%lstm_cell_389/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_2353135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_387_2353159_0:	?0
while_lstm_cell_387_2353161_0:	d?,
while_lstm_cell_387_2353163_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_387_2353159:	?.
while_lstm_cell_387_2353161:	d?*
while_lstm_cell_387_2353163:	???+while/lstm_cell_387/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_387/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_387_2353159_0while_lstm_cell_387_2353161_0while_lstm_cell_387_2353163_0*
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2353076?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_387/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_387/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_387/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_387/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_387_2353159while_lstm_cell_387_2353159_0"<
while_lstm_cell_387_2353161while_lstm_cell_387_2353161_0"<
while_lstm_cell_387_2353163while_lstm_cell_387_2353163_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_387/StatefulPartitionedCall+while/lstm_cell_387/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_387_layer_call_fn_2357915

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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2352930o
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
/__inference_lstm_cell_388_layer_call_fn_2358030

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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353426o
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
?
while_body_2356563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2356749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356749___redundant_placeholder05
1while_while_cond_2356749___redundant_placeholder15
1while_while_cond_2356749___redundant_placeholder25
1while_while_cond_2356749___redundant_placeholder3
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
lstm_286_while_cond_2355801.
*lstm_286_while_lstm_286_while_loop_counter4
0lstm_286_while_lstm_286_while_maximum_iterations
lstm_286_while_placeholder 
lstm_286_while_placeholder_1 
lstm_286_while_placeholder_2 
lstm_286_while_placeholder_30
,lstm_286_while_less_lstm_286_strided_slice_1G
Clstm_286_while_lstm_286_while_cond_2355801___redundant_placeholder0G
Clstm_286_while_lstm_286_while_cond_2355801___redundant_placeholder1G
Clstm_286_while_lstm_286_while_cond_2355801___redundant_placeholder2G
Clstm_286_while_lstm_286_while_cond_2355801___redundant_placeholder3
lstm_286_while_identity
?
lstm_286/while/LessLesslstm_286_while_placeholder,lstm_286_while_less_lstm_286_strided_slice_1*
T0*
_output_shapes
: ]
lstm_286/while/IdentityIdentitylstm_286/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_286_while_identity lstm_286/while/Identity:output:0*(
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355058
lstm_285_input#
lstm_285_2355031:	?#
lstm_285_2355033:	d?
lstm_285_2355035:	?#
lstm_286_2355038:	d?#
lstm_286_2355040:	2?
lstm_286_2355042:	?"
lstm_287_2355045:2("
lstm_287_2355047:
(
lstm_287_2355049:("
dense_95_2355052:

dense_95_2355054:
identity?? dense_95/StatefulPartitionedCall? lstm_285/StatefulPartitionedCall? lstm_286/StatefulPartitionedCall? lstm_287/StatefulPartitionedCall?
 lstm_285/StatefulPartitionedCallStatefulPartitionedCalllstm_285_inputlstm_285_2355031lstm_285_2355033lstm_285_2355035*
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354062?
 lstm_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_285/StatefulPartitionedCall:output:0lstm_286_2355038lstm_286_2355040lstm_286_2355042*
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354212?
 lstm_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_286/StatefulPartitionedCall:output:0lstm_287_2355045lstm_287_2355047lstm_287_2355049*
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354362?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall)lstm_287/StatefulPartitionedCall:output:0dense_95_2355052dense_95_2355054*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_95/StatefulPartitionedCall!^lstm_285/StatefulPartitionedCall!^lstm_286/StatefulPartitionedCall!^lstm_287/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 lstm_285/StatefulPartitionedCall lstm_285/StatefulPartitionedCall2D
 lstm_286/StatefulPartitionedCall lstm_286/StatefulPartitionedCall2D
 lstm_287/StatefulPartitionedCall lstm_287/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_285_input
?
?
*__inference_dense_95_layer_call_fn_2357888

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
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380o
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

?
/__inference_sequential_95_layer_call_fn_2355028
lstm_285_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_285_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354976o
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
_user_specified_namelstm_285_input
?
?
*__inference_lstm_286_layer_call_fn_2356691

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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354743s
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
lstm_285_while_cond_2355235.
*lstm_285_while_lstm_285_while_loop_counter4
0lstm_285_while_lstm_285_while_maximum_iterations
lstm_285_while_placeholder 
lstm_285_while_placeholder_1 
lstm_285_while_placeholder_2 
lstm_285_while_placeholder_30
,lstm_285_while_less_lstm_285_strided_slice_1G
Clstm_285_while_lstm_285_while_cond_2355235___redundant_placeholder0G
Clstm_285_while_lstm_285_while_cond_2355235___redundant_placeholder1G
Clstm_285_while_lstm_285_while_cond_2355235___redundant_placeholder2G
Clstm_285_while_lstm_285_while_cond_2355235___redundant_placeholder3
lstm_285_while_identity
?
lstm_285/while/LessLesslstm_285_while_placeholder,lstm_285_while_less_lstm_285_strided_slice_1*
T0*
_output_shapes
: ]
lstm_285/while/IdentityIdentitylstm_285/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_285_while_identity lstm_285/while/Identity:output:0*(
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
while_cond_2356562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2356562___redundant_placeholder05
1while_while_cond_2356562___redundant_placeholder15
1while_while_cond_2356562___redundant_placeholder25
1while_while_cond_2356562___redundant_placeholder3
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2353363

inputs(
lstm_cell_388_2353281:	d?(
lstm_cell_388_2353283:	2?$
lstm_cell_388_2353285:	?
identity??%lstm_cell_388/StatefulPartitionedCall?while;
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
%lstm_cell_388/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_388_2353281lstm_cell_388_2353283lstm_cell_388_2353285*
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353280n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_388_2353281lstm_cell_388_2353283lstm_cell_388_2353285*
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
while_body_2353294*
condR
while_cond_2353293*K
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
NoOpNoOp&^lstm_cell_388/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_388/StatefulPartitionedCall%lstm_cell_388/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_2357795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2354823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2354823___redundant_placeholder05
1while_while_cond_2354823___redundant_placeholder15
1while_while_cond_2354823___redundant_placeholder25
1while_while_cond_2354823___redundant_placeholder3
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
while_body_2356134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_387_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_387_matmul_readvariableop_resource:	?G
4while_lstm_cell_387_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_387_biasadd_readvariableop_resource:	???*while/lstm_cell_387/BiasAdd/ReadVariableOp?)while/lstm_cell_387/MatMul/ReadVariableOp?+while/lstm_cell_387/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_387/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_387/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_387/addAddV2$while/lstm_cell_387/MatMul:product:0&while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_387/BiasAddBiasAddwhile/lstm_cell_387/add:z:02while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_387/splitSplit,while/lstm_cell_387/split/split_dim:output:0$while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_387/SigmoidSigmoid"while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_1Sigmoid"while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mulMul!while/lstm_cell_387/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_387/ReluRelu"while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_1Mulwhile/lstm_cell_387/Sigmoid:y:0&while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/add_1AddV2while/lstm_cell_387/mul:z:0while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_387/Sigmoid_2Sigmoid"while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_387/Relu_1Reluwhile/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_387/mul_2Mul!while/lstm_cell_387/Sigmoid_2:y:0(while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_387/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_387/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_387/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_387/BiasAdd/ReadVariableOp*^while/lstm_cell_387/MatMul/ReadVariableOp,^while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_387_biasadd_readvariableop_resource5while_lstm_cell_387_biasadd_readvariableop_resource_0"n
4while_lstm_cell_387_matmul_1_readvariableop_resource6while_lstm_cell_387_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_387_matmul_readvariableop_resource4while_lstm_cell_387_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_387/BiasAdd/ReadVariableOp*while/lstm_cell_387/BiasAdd/ReadVariableOp2V
)while/lstm_cell_387/MatMul/ReadVariableOp)while/lstm_cell_387/MatMul/ReadVariableOp2Z
+while/lstm_cell_387/MatMul_1/ReadVariableOp+while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_285_while_body_2355236.
*lstm_285_while_lstm_285_while_loop_counter4
0lstm_285_while_lstm_285_while_maximum_iterations
lstm_285_while_placeholder 
lstm_285_while_placeholder_1 
lstm_285_while_placeholder_2 
lstm_285_while_placeholder_3-
)lstm_285_while_lstm_285_strided_slice_1_0i
elstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0:	?R
?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0:	d?M
>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0:	?
lstm_285_while_identity
lstm_285_while_identity_1
lstm_285_while_identity_2
lstm_285_while_identity_3
lstm_285_while_identity_4
lstm_285_while_identity_5+
'lstm_285_while_lstm_285_strided_slice_1g
clstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensorN
;lstm_285_while_lstm_cell_387_matmul_readvariableop_resource:	?P
=lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource:	d?K
<lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource:	???3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp?2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp?4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp?
@lstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_285/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0lstm_285_while_placeholderIlstm_285/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOpReadVariableOp=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_285/while/lstm_cell_387/MatMulMatMul9lstm_285/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_285/while/lstm_cell_387/MatMul_1MatMullstm_285_while_placeholder_2<lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_285/while/lstm_cell_387/addAddV2-lstm_285/while/lstm_cell_387/MatMul:product:0/lstm_285/while/lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_285/while/lstm_cell_387/BiasAddBiasAdd$lstm_285/while/lstm_cell_387/add:z:0;lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_285/while/lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_285/while/lstm_cell_387/splitSplit5lstm_285/while/lstm_cell_387/split/split_dim:output:0-lstm_285/while/lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_285/while/lstm_cell_387/SigmoidSigmoid+lstm_285/while/lstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_285/while/lstm_cell_387/Sigmoid_1Sigmoid+lstm_285/while/lstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_285/while/lstm_cell_387/mulMul*lstm_285/while/lstm_cell_387/Sigmoid_1:y:0lstm_285_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_285/while/lstm_cell_387/ReluRelu+lstm_285/while/lstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/mul_1Mul(lstm_285/while/lstm_cell_387/Sigmoid:y:0/lstm_285/while/lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/add_1AddV2$lstm_285/while/lstm_cell_387/mul:z:0&lstm_285/while/lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_285/while/lstm_cell_387/Sigmoid_2Sigmoid+lstm_285/while/lstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_285/while/lstm_cell_387/Relu_1Relu&lstm_285/while/lstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_285/while/lstm_cell_387/mul_2Mul*lstm_285/while/lstm_cell_387/Sigmoid_2:y:01lstm_285/while/lstm_cell_387/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_285/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_285_while_placeholder_1lstm_285_while_placeholder&lstm_285/while/lstm_cell_387/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_285/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_285/while/addAddV2lstm_285_while_placeholderlstm_285/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_285/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_285/while/add_1AddV2*lstm_285_while_lstm_285_while_loop_counterlstm_285/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_285/while/IdentityIdentitylstm_285/while/add_1:z:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_1Identity0lstm_285_while_lstm_285_while_maximum_iterations^lstm_285/while/NoOp*
T0*
_output_shapes
: t
lstm_285/while/Identity_2Identitylstm_285/while/add:z:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_3IdentityClstm_285/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_285/while/NoOp*
T0*
_output_shapes
: ?
lstm_285/while/Identity_4Identity&lstm_285/while/lstm_cell_387/mul_2:z:0^lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_285/while/Identity_5Identity&lstm_285/while/lstm_cell_387/add_1:z:0^lstm_285/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_285/while/NoOpNoOp4^lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp3^lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp5^lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_285_while_identity lstm_285/while/Identity:output:0"?
lstm_285_while_identity_1"lstm_285/while/Identity_1:output:0"?
lstm_285_while_identity_2"lstm_285/while/Identity_2:output:0"?
lstm_285_while_identity_3"lstm_285/while/Identity_3:output:0"?
lstm_285_while_identity_4"lstm_285/while/Identity_4:output:0"?
lstm_285_while_identity_5"lstm_285/while/Identity_5:output:0"T
'lstm_285_while_lstm_285_strided_slice_1)lstm_285_while_lstm_285_strided_slice_1_0"~
<lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource>lstm_285_while_lstm_cell_387_biasadd_readvariableop_resource_0"?
=lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource?lstm_285_while_lstm_cell_387_matmul_1_readvariableop_resource_0"|
;lstm_285_while_lstm_cell_387_matmul_readvariableop_resource=lstm_285_while_lstm_cell_387_matmul_readvariableop_resource_0"?
clstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensorelstm_285_while_tensorarrayv2read_tensorlistgetitem_lstm_285_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp3lstm_285/while/lstm_cell_387/BiasAdd/ReadVariableOp2h
2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp2lstm_285/while/lstm_cell_387/MatMul/ReadVariableOp2l
4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp4lstm_285/while/lstm_cell_387/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_389_layer_call_fn_2358111

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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353630o
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
?
E__inference_lstm_285_layer_call_and_return_conditional_losses_2353013

inputs(
lstm_cell_387_2352931:	?(
lstm_cell_387_2352933:	d?$
lstm_cell_387_2352935:	?
identity??%lstm_cell_387/StatefulPartitionedCall?while;
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
%lstm_cell_387/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_387_2352931lstm_cell_387_2352933lstm_cell_387_2352935*
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2352930n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_387_2352931lstm_cell_387_2352933lstm_cell_387_2352935*
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
while_body_2352944*
condR
while_cond_2352943*K
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
NoOpNoOp&^lstm_cell_387/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_387/StatefulPartitionedCall%lstm_cell_387/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_285_layer_call_fn_2356075

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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354908s
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358160

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
?J
?
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354362

inputs>
,lstm_cell_389_matmul_readvariableop_resource:2(@
.lstm_cell_389_matmul_1_readvariableop_resource:
(;
-lstm_cell_389_biasadd_readvariableop_resource:(
identity??$lstm_cell_389/BiasAdd/ReadVariableOp?#lstm_cell_389/MatMul/ReadVariableOp?%lstm_cell_389/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_389/MatMul/ReadVariableOpReadVariableOp,lstm_cell_389_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_389/MatMulMatMulstrided_slice_2:output:0+lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_389_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_389/MatMul_1MatMulzeros:output:0-lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_389/addAddV2lstm_cell_389/MatMul:product:0 lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_389_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_389/BiasAddBiasAddlstm_cell_389/add:z:0,lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_389/splitSplit&lstm_cell_389/split/split_dim:output:0lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_389/SigmoidSigmoidlstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_1Sigmoidlstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_389/mulMullstm_cell_389/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_389/ReluRelulstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_1Mullstm_cell_389/Sigmoid:y:0 lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_389/add_1AddV2lstm_cell_389/mul:z:0lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_389/Sigmoid_2Sigmoidlstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_389/Relu_1Relulstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_389/mul_2Mullstm_cell_389/Sigmoid_2:y:0"lstm_cell_389/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_389_matmul_readvariableop_resource.lstm_cell_389_matmul_1_readvariableop_resource-lstm_cell_389_biasadd_readvariableop_resource*
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
while_body_2354278*
condR
while_cond_2354277*K
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
NoOpNoOp%^lstm_cell_389/BiasAdd/ReadVariableOp$^lstm_cell_389/MatMul/ReadVariableOp&^lstm_cell_389/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_389/BiasAdd/ReadVariableOp$lstm_cell_389/BiasAdd/ReadVariableOp2J
#lstm_cell_389/MatMul/ReadVariableOp#lstm_cell_389/MatMul/ReadVariableOp2N
%lstm_cell_389/MatMul_1/ReadVariableOp%lstm_cell_389/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_95_layer_call_fn_2355150

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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354387o
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
?#
?
while_body_2353644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_389_2353668_0:2(/
while_lstm_cell_389_2353670_0:
(+
while_lstm_cell_389_2353672_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_389_2353668:2(-
while_lstm_cell_389_2353670:
()
while_lstm_cell_389_2353672:(??+while/lstm_cell_389/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_389/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_389_2353668_0while_lstm_cell_389_2353670_0while_lstm_cell_389_2353672_0*
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2353630?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_389/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_389/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_389/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_389/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_389_2353668while_lstm_cell_389_2353668_0"<
while_lstm_cell_389_2353670while_lstm_cell_389_2353670_0"<
while_lstm_cell_389_2353672while_lstm_cell_389_2353672_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_389/StatefulPartitionedCall+while/lstm_cell_389/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_95_lstm_287_while_body_2352773J
Fsequential_95_lstm_287_while_sequential_95_lstm_287_while_loop_counterP
Lsequential_95_lstm_287_while_sequential_95_lstm_287_while_maximum_iterations,
(sequential_95_lstm_287_while_placeholder.
*sequential_95_lstm_287_while_placeholder_1.
*sequential_95_lstm_287_while_placeholder_2.
*sequential_95_lstm_287_while_placeholder_3I
Esequential_95_lstm_287_while_sequential_95_lstm_287_strided_slice_1_0?
?sequential_95_lstm_287_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_287_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_95_lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0:2(_
Msequential_95_lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(Z
Lsequential_95_lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0:()
%sequential_95_lstm_287_while_identity+
'sequential_95_lstm_287_while_identity_1+
'sequential_95_lstm_287_while_identity_2+
'sequential_95_lstm_287_while_identity_3+
'sequential_95_lstm_287_while_identity_4+
'sequential_95_lstm_287_while_identity_5G
Csequential_95_lstm_287_while_sequential_95_lstm_287_strided_slice_1?
sequential_95_lstm_287_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_287_tensorarrayunstack_tensorlistfromtensor[
Isequential_95_lstm_287_while_lstm_cell_389_matmul_readvariableop_resource:2(]
Ksequential_95_lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource:
(X
Jsequential_95_lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource:(??Asequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp?@sequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp?Bsequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp?
Nsequential_95/lstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_95/lstm_287/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_95_lstm_287_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_287_tensorarrayunstack_tensorlistfromtensor_0(sequential_95_lstm_287_while_placeholderWsequential_95/lstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOpKsequential_95_lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_95/lstm_287/while/lstm_cell_389/MatMulMatMulGsequential_95/lstm_287/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOpMsequential_95_lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_95/lstm_287/while/lstm_cell_389/MatMul_1MatMul*sequential_95_lstm_287_while_placeholder_2Jsequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_95/lstm_287/while/lstm_cell_389/addAddV2;sequential_95/lstm_287/while/lstm_cell_389/MatMul:product:0=sequential_95/lstm_287/while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOpLsequential_95_lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_95/lstm_287/while/lstm_cell_389/BiasAddBiasAdd2sequential_95/lstm_287/while/lstm_cell_389/add:z:0Isequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_95/lstm_287/while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_95/lstm_287/while/lstm_cell_389/splitSplitCsequential_95/lstm_287/while/lstm_cell_389/split/split_dim:output:0;sequential_95/lstm_287/while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_95/lstm_287/while/lstm_cell_389/SigmoidSigmoid9sequential_95/lstm_287/while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_95/lstm_287/while/lstm_cell_389/Sigmoid_1Sigmoid9sequential_95/lstm_287/while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_95/lstm_287/while/lstm_cell_389/mulMul8sequential_95/lstm_287/while/lstm_cell_389/Sigmoid_1:y:0*sequential_95_lstm_287_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_95/lstm_287/while/lstm_cell_389/ReluRelu9sequential_95/lstm_287/while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_95/lstm_287/while/lstm_cell_389/mul_1Mul6sequential_95/lstm_287/while/lstm_cell_389/Sigmoid:y:0=sequential_95/lstm_287/while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_95/lstm_287/while/lstm_cell_389/add_1AddV22sequential_95/lstm_287/while/lstm_cell_389/mul:z:04sequential_95/lstm_287/while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_95/lstm_287/while/lstm_cell_389/Sigmoid_2Sigmoid9sequential_95/lstm_287/while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_95/lstm_287/while/lstm_cell_389/Relu_1Relu4sequential_95/lstm_287/while/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_95/lstm_287/while/lstm_cell_389/mul_2Mul8sequential_95/lstm_287/while/lstm_cell_389/Sigmoid_2:y:0?sequential_95/lstm_287/while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_95/lstm_287/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_95_lstm_287_while_placeholder_1(sequential_95_lstm_287_while_placeholder4sequential_95/lstm_287/while/lstm_cell_389/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_95/lstm_287/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_95/lstm_287/while/addAddV2(sequential_95_lstm_287_while_placeholder+sequential_95/lstm_287/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_95/lstm_287/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_95/lstm_287/while/add_1AddV2Fsequential_95_lstm_287_while_sequential_95_lstm_287_while_loop_counter-sequential_95/lstm_287/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_95/lstm_287/while/IdentityIdentity&sequential_95/lstm_287/while/add_1:z:0"^sequential_95/lstm_287/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_287/while/Identity_1IdentityLsequential_95_lstm_287_while_sequential_95_lstm_287_while_maximum_iterations"^sequential_95/lstm_287/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_287/while/Identity_2Identity$sequential_95/lstm_287/while/add:z:0"^sequential_95/lstm_287/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_287/while/Identity_3IdentityQsequential_95/lstm_287/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_95/lstm_287/while/NoOp*
T0*
_output_shapes
: ?
'sequential_95/lstm_287/while/Identity_4Identity4sequential_95/lstm_287/while/lstm_cell_389/mul_2:z:0"^sequential_95/lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_95/lstm_287/while/Identity_5Identity4sequential_95/lstm_287/while/lstm_cell_389/add_1:z:0"^sequential_95/lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_95/lstm_287/while/NoOpNoOpB^sequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOpA^sequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOpC^sequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_95_lstm_287_while_identity.sequential_95/lstm_287/while/Identity:output:0"[
'sequential_95_lstm_287_while_identity_10sequential_95/lstm_287/while/Identity_1:output:0"[
'sequential_95_lstm_287_while_identity_20sequential_95/lstm_287/while/Identity_2:output:0"[
'sequential_95_lstm_287_while_identity_30sequential_95/lstm_287/while/Identity_3:output:0"[
'sequential_95_lstm_287_while_identity_40sequential_95/lstm_287/while/Identity_4:output:0"[
'sequential_95_lstm_287_while_identity_50sequential_95/lstm_287/while/Identity_5:output:0"?
Jsequential_95_lstm_287_while_lstm_cell_389_biasadd_readvariableop_resourceLsequential_95_lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0"?
Ksequential_95_lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resourceMsequential_95_lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0"?
Isequential_95_lstm_287_while_lstm_cell_389_matmul_readvariableop_resourceKsequential_95_lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0"?
Csequential_95_lstm_287_while_sequential_95_lstm_287_strided_slice_1Esequential_95_lstm_287_while_sequential_95_lstm_287_strided_slice_1_0"?
sequential_95_lstm_287_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_287_tensorarrayunstack_tensorlistfromtensor?sequential_95_lstm_287_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_287_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOpAsequential_95/lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp2?
@sequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp@sequential_95/lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp2?
Bsequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOpBsequential_95/lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_287_while_body_2355514.
*lstm_287_while_lstm_287_while_loop_counter4
0lstm_287_while_lstm_287_while_maximum_iterations
lstm_287_while_placeholder 
lstm_287_while_placeholder_1 
lstm_287_while_placeholder_2 
lstm_287_while_placeholder_3-
)lstm_287_while_lstm_287_strided_slice_1_0i
elstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0:2(Q
?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(L
>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0:(
lstm_287_while_identity
lstm_287_while_identity_1
lstm_287_while_identity_2
lstm_287_while_identity_3
lstm_287_while_identity_4
lstm_287_while_identity_5+
'lstm_287_while_lstm_287_strided_slice_1g
clstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensorM
;lstm_287_while_lstm_cell_389_matmul_readvariableop_resource:2(O
=lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource:
(J
<lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource:(??3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp?2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp?4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp?
@lstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_287/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0lstm_287_while_placeholderIlstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_287/while/lstm_cell_389/MatMulMatMul9lstm_287/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_287/while/lstm_cell_389/MatMul_1MatMullstm_287_while_placeholder_2<lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_287/while/lstm_cell_389/addAddV2-lstm_287/while/lstm_cell_389/MatMul:product:0/lstm_287/while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_287/while/lstm_cell_389/BiasAddBiasAdd$lstm_287/while/lstm_cell_389/add:z:0;lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_287/while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_287/while/lstm_cell_389/splitSplit5lstm_287/while/lstm_cell_389/split/split_dim:output:0-lstm_287/while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_287/while/lstm_cell_389/SigmoidSigmoid+lstm_287/while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_287/while/lstm_cell_389/Sigmoid_1Sigmoid+lstm_287/while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_287/while/lstm_cell_389/mulMul*lstm_287/while/lstm_cell_389/Sigmoid_1:y:0lstm_287_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_287/while/lstm_cell_389/ReluRelu+lstm_287/while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/mul_1Mul(lstm_287/while/lstm_cell_389/Sigmoid:y:0/lstm_287/while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/add_1AddV2$lstm_287/while/lstm_cell_389/mul:z:0&lstm_287/while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_287/while/lstm_cell_389/Sigmoid_2Sigmoid+lstm_287/while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_287/while/lstm_cell_389/Relu_1Relu&lstm_287/while/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/mul_2Mul*lstm_287/while/lstm_cell_389/Sigmoid_2:y:01lstm_287/while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_287/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_287_while_placeholder_1lstm_287_while_placeholder&lstm_287/while/lstm_cell_389/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_287/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_287/while/addAddV2lstm_287_while_placeholderlstm_287/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_287/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_287/while/add_1AddV2*lstm_287_while_lstm_287_while_loop_counterlstm_287/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_287/while/IdentityIdentitylstm_287/while/add_1:z:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_1Identity0lstm_287_while_lstm_287_while_maximum_iterations^lstm_287/while/NoOp*
T0*
_output_shapes
: t
lstm_287/while/Identity_2Identitylstm_287/while/add:z:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_3IdentityClstm_287/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_4Identity&lstm_287/while/lstm_cell_389/mul_2:z:0^lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_287/while/Identity_5Identity&lstm_287/while/lstm_cell_389/add_1:z:0^lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_287/while/NoOpNoOp4^lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp3^lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp5^lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_287_while_identity lstm_287/while/Identity:output:0"?
lstm_287_while_identity_1"lstm_287/while/Identity_1:output:0"?
lstm_287_while_identity_2"lstm_287/while/Identity_2:output:0"?
lstm_287_while_identity_3"lstm_287/while/Identity_3:output:0"?
lstm_287_while_identity_4"lstm_287/while/Identity_4:output:0"?
lstm_287_while_identity_5"lstm_287/while/Identity_5:output:0"T
'lstm_287_while_lstm_287_strided_slice_1)lstm_287_while_lstm_287_strided_slice_1_0"~
<lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0"?
=lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0"|
;lstm_287_while_lstm_cell_389_matmul_readvariableop_resource=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0"?
clstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensorelstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp2h
2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp2l
4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2354493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2354493___redundant_placeholder05
1while_while_cond_2354493___redundant_placeholder15
1while_while_cond_2354493___redundant_placeholder25
1while_while_cond_2354493___redundant_placeholder3
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357263

inputs?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2357179*
condR
while_cond_2357178*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2357179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_388_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_388_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_388_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_388_matmul_readvariableop_resource:	d?G
4while_lstm_cell_388_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_388_biasadd_readvariableop_resource:	???*while/lstm_cell_388/BiasAdd/ReadVariableOp?)while/lstm_cell_388/MatMul/ReadVariableOp?+while/lstm_cell_388/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_388/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_388_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_388/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_388_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_388/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_388/addAddV2$while/lstm_cell_388/MatMul:product:0&while/lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_388_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_388/BiasAddBiasAddwhile/lstm_cell_388/add:z:02while/lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_388/splitSplit,while/lstm_cell_388/split/split_dim:output:0$while/lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_388/SigmoidSigmoid"while/lstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_1Sigmoid"while/lstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mulMul!while/lstm_cell_388/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_388/ReluRelu"while/lstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_1Mulwhile/lstm_cell_388/Sigmoid:y:0&while/lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/add_1AddV2while/lstm_cell_388/mul:z:0while/lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_388/Sigmoid_2Sigmoid"while/lstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_388/Relu_1Reluwhile/lstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_388/mul_2Mul!while/lstm_cell_388/Sigmoid_2:y:0(while/lstm_cell_388/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_388/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_388/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_388/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_388/BiasAdd/ReadVariableOp*^while/lstm_cell_388/MatMul/ReadVariableOp,^while/lstm_cell_388/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_388_biasadd_readvariableop_resource5while_lstm_cell_388_biasadd_readvariableop_resource_0"n
4while_lstm_cell_388_matmul_1_readvariableop_resource6while_lstm_cell_388_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_388_matmul_readvariableop_resource4while_lstm_cell_388_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_388/BiasAdd/ReadVariableOp*while/lstm_cell_388/BiasAdd/ReadVariableOp2V
)while/lstm_cell_388/MatMul/ReadVariableOp)while/lstm_cell_388/MatMul/ReadVariableOp2Z
+while/lstm_cell_388/MatMul_1/ReadVariableOp+while/lstm_cell_388/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2357652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_389_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_389_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_389_matmul_readvariableop_resource:2(F
4while_lstm_cell_389_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_389_biasadd_readvariableop_resource:(??*while/lstm_cell_389/BiasAdd/ReadVariableOp?)while/lstm_cell_389/MatMul/ReadVariableOp?+while/lstm_cell_389/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_389/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_389/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_389/addAddV2$while/lstm_cell_389/MatMul:product:0&while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_389/BiasAddBiasAddwhile/lstm_cell_389/add:z:02while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_389/splitSplit,while/lstm_cell_389/split/split_dim:output:0$while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_389/SigmoidSigmoid"while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_1Sigmoid"while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mulMul!while/lstm_cell_389/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_389/ReluRelu"while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_1Mulwhile/lstm_cell_389/Sigmoid:y:0&while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/add_1AddV2while/lstm_cell_389/mul:z:0while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_389/Sigmoid_2Sigmoid"while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_389/Relu_1Reluwhile/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_389/mul_2Mul!while/lstm_cell_389/Sigmoid_2:y:0(while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_389/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_389/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_389/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_389/BiasAdd/ReadVariableOp*^while/lstm_cell_389/MatMul/ReadVariableOp,^while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_389_biasadd_readvariableop_resource5while_lstm_cell_389_biasadd_readvariableop_resource_0"n
4while_lstm_cell_389_matmul_1_readvariableop_resource6while_lstm_cell_389_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_389_matmul_readvariableop_resource4while_lstm_cell_389_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_389/BiasAdd/ReadVariableOp*while/lstm_cell_389/BiasAdd/ReadVariableOp2V
)while/lstm_cell_389/MatMul/ReadVariableOp)while/lstm_cell_389/MatMul/ReadVariableOp2Z
+while/lstm_cell_389/MatMul_1/ReadVariableOp+while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356834
inputs_0?
,lstm_cell_388_matmul_readvariableop_resource:	d?A
.lstm_cell_388_matmul_1_readvariableop_resource:	2?<
-lstm_cell_388_biasadd_readvariableop_resource:	?
identity??$lstm_cell_388/BiasAdd/ReadVariableOp?#lstm_cell_388/MatMul/ReadVariableOp?%lstm_cell_388/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_388/MatMul/ReadVariableOpReadVariableOp,lstm_cell_388_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_388/MatMulMatMulstrided_slice_2:output:0+lstm_cell_388/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_388/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_388_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_388/MatMul_1MatMulzeros:output:0-lstm_cell_388/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_388/addAddV2lstm_cell_388/MatMul:product:0 lstm_cell_388/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_388/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_388_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_388/BiasAddBiasAddlstm_cell_388/add:z:0,lstm_cell_388/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_388/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_388/splitSplit&lstm_cell_388/split/split_dim:output:0lstm_cell_388/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_388/SigmoidSigmoidlstm_cell_388/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_1Sigmoidlstm_cell_388/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_388/mulMullstm_cell_388/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_388/ReluRelulstm_cell_388/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_1Mullstm_cell_388/Sigmoid:y:0 lstm_cell_388/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_388/add_1AddV2lstm_cell_388/mul:z:0lstm_cell_388/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_388/Sigmoid_2Sigmoidlstm_cell_388/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_388/Relu_1Relulstm_cell_388/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_388/mul_2Mullstm_cell_388/Sigmoid_2:y:0"lstm_cell_388/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_388_matmul_readvariableop_resource.lstm_cell_388_matmul_1_readvariableop_resource-lstm_cell_388_biasadd_readvariableop_resource*
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
while_body_2356750*
condR
while_cond_2356749*K
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
NoOpNoOp%^lstm_cell_388/BiasAdd/ReadVariableOp$^lstm_cell_388/MatMul/ReadVariableOp&^lstm_cell_388/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_388/BiasAdd/ReadVariableOp$lstm_cell_388/BiasAdd/ReadVariableOp2J
#lstm_cell_388/MatMul/ReadVariableOp#lstm_cell_388/MatMul/ReadVariableOp2N
%lstm_cell_388/MatMul_1/ReadVariableOp%lstm_cell_388/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_388_layer_call_fn_2358013

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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353280o
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
?
?
J__inference_sequential_95_layer_call_and_return_conditional_losses_2354387

inputs#
lstm_285_2354063:	?#
lstm_285_2354065:	d?
lstm_285_2354067:	?#
lstm_286_2354213:	d?#
lstm_286_2354215:	2?
lstm_286_2354217:	?"
lstm_287_2354363:2("
lstm_287_2354365:
(
lstm_287_2354367:("
dense_95_2354381:

dense_95_2354383:
identity?? dense_95/StatefulPartitionedCall? lstm_285/StatefulPartitionedCall? lstm_286/StatefulPartitionedCall? lstm_287/StatefulPartitionedCall?
 lstm_285/StatefulPartitionedCallStatefulPartitionedCallinputslstm_285_2354063lstm_285_2354065lstm_285_2354067*
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354062?
 lstm_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_285/StatefulPartitionedCall:output:0lstm_286_2354213lstm_286_2354215lstm_286_2354217*
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354212?
 lstm_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_286/StatefulPartitionedCall:output:0lstm_287_2354363lstm_287_2354365lstm_287_2354367*
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354362?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall)lstm_287/StatefulPartitionedCall:output:0dense_95_2354381dense_95_2354383*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_95/StatefulPartitionedCall!^lstm_285/StatefulPartitionedCall!^lstm_286/StatefulPartitionedCall!^lstm_287/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 lstm_285/StatefulPartitionedCall lstm_285/StatefulPartitionedCall2D
 lstm_286/StatefulPartitionedCall lstm_286/StatefulPartitionedCall2D
 lstm_287/StatefulPartitionedCall lstm_287/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2353485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_388_2353509_0:	d?0
while_lstm_cell_388_2353511_0:	2?,
while_lstm_cell_388_2353513_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_388_2353509:	d?.
while_lstm_cell_388_2353511:	2?*
while_lstm_cell_388_2353513:	???+while/lstm_cell_388/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_388/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_388_2353509_0while_lstm_cell_388_2353511_0while_lstm_cell_388_2353513_0*
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2353426?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_388/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_388/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_388/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_388/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_388_2353509while_lstm_cell_388_2353509_0"<
while_lstm_cell_388_2353511while_lstm_cell_388_2353511_0"<
while_lstm_cell_388_2353513while_lstm_cell_388_2353513_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_388/StatefulPartitionedCall+while/lstm_cell_388/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2358465
file_prefix2
 assignvariableop_dense_95_kernel:
.
 assignvariableop_1_dense_95_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_285_lstm_cell_285_kernel:	?M
:assignvariableop_8_lstm_285_lstm_cell_285_recurrent_kernel:	d?=
.assignvariableop_9_lstm_285_lstm_cell_285_bias:	?D
1assignvariableop_10_lstm_286_lstm_cell_286_kernel:	d?N
;assignvariableop_11_lstm_286_lstm_cell_286_recurrent_kernel:	2?>
/assignvariableop_12_lstm_286_lstm_cell_286_bias:	?C
1assignvariableop_13_lstm_287_lstm_cell_287_kernel:2(M
;assignvariableop_14_lstm_287_lstm_cell_287_recurrent_kernel:
(=
/assignvariableop_15_lstm_287_lstm_cell_287_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_95_kernel_m:
6
(assignvariableop_19_adam_dense_95_bias_m:K
8assignvariableop_20_adam_lstm_285_lstm_cell_285_kernel_m:	?U
Bassignvariableop_21_adam_lstm_285_lstm_cell_285_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_285_lstm_cell_285_bias_m:	?K
8assignvariableop_23_adam_lstm_286_lstm_cell_286_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_286_lstm_cell_286_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_286_lstm_cell_286_bias_m:	?J
8assignvariableop_26_adam_lstm_287_lstm_cell_287_kernel_m:2(T
Bassignvariableop_27_adam_lstm_287_lstm_cell_287_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_287_lstm_cell_287_bias_m:(<
*assignvariableop_29_adam_dense_95_kernel_v:
6
(assignvariableop_30_adam_dense_95_bias_v:K
8assignvariableop_31_adam_lstm_285_lstm_cell_285_kernel_v:	?U
Bassignvariableop_32_adam_lstm_285_lstm_cell_285_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_285_lstm_cell_285_bias_v:	?K
8assignvariableop_34_adam_lstm_286_lstm_cell_286_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_286_lstm_cell_286_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_286_lstm_cell_286_bias_v:	?J
8assignvariableop_37_adam_lstm_287_lstm_cell_287_kernel_v:2(T
Bassignvariableop_38_adam_lstm_287_lstm_cell_287_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_287_lstm_cell_287_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_95_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_95_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_285_lstm_cell_285_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_285_lstm_cell_285_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_285_lstm_cell_285_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_286_lstm_cell_286_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_286_lstm_cell_286_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_286_lstm_cell_286_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_287_lstm_cell_287_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_287_lstm_cell_287_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_287_lstm_cell_287_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_95_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_95_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_285_lstm_cell_285_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_285_lstm_cell_285_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_285_lstm_cell_285_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_286_lstm_cell_286_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_286_lstm_cell_286_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_286_lstm_cell_286_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_287_lstm_cell_287_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_287_lstm_cell_287_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_287_lstm_cell_287_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_95_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_95_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_285_lstm_cell_285_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_285_lstm_cell_285_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_285_lstm_cell_285_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_286_lstm_cell_286_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_286_lstm_cell_286_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_286_lstm_cell_286_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_287_lstm_cell_287_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_287_lstm_cell_287_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_287_lstm_cell_287_bias_vIdentity_39:output:0"/device:CPU:0*
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
*__inference_lstm_285_layer_call_fn_2356042
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2353013|
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354062

inputs?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2353978*
condR
while_cond_2353977*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2352943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2352943___redundant_placeholder05
1while_while_cond_2352943___redundant_placeholder15
1while_while_cond_2352943___redundant_placeholder25
1while_while_cond_2352943___redundant_placeholder3
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
?C
?

lstm_287_while_body_2355941.
*lstm_287_while_lstm_287_while_loop_counter4
0lstm_287_while_lstm_287_while_maximum_iterations
lstm_287_while_placeholder 
lstm_287_while_placeholder_1 
lstm_287_while_placeholder_2 
lstm_287_while_placeholder_3-
)lstm_287_while_lstm_287_strided_slice_1_0i
elstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0:2(Q
?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0:
(L
>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0:(
lstm_287_while_identity
lstm_287_while_identity_1
lstm_287_while_identity_2
lstm_287_while_identity_3
lstm_287_while_identity_4
lstm_287_while_identity_5+
'lstm_287_while_lstm_287_strided_slice_1g
clstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensorM
;lstm_287_while_lstm_cell_389_matmul_readvariableop_resource:2(O
=lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource:
(J
<lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource:(??3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp?2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp?4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp?
@lstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_287/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0lstm_287_while_placeholderIlstm_287/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOpReadVariableOp=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_287/while/lstm_cell_389/MatMulMatMul9lstm_287/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOpReadVariableOp?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_287/while/lstm_cell_389/MatMul_1MatMullstm_287_while_placeholder_2<lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_287/while/lstm_cell_389/addAddV2-lstm_287/while/lstm_cell_389/MatMul:product:0/lstm_287/while/lstm_cell_389/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOpReadVariableOp>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_287/while/lstm_cell_389/BiasAddBiasAdd$lstm_287/while/lstm_cell_389/add:z:0;lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_287/while/lstm_cell_389/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_287/while/lstm_cell_389/splitSplit5lstm_287/while/lstm_cell_389/split/split_dim:output:0-lstm_287/while/lstm_cell_389/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_287/while/lstm_cell_389/SigmoidSigmoid+lstm_287/while/lstm_cell_389/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_287/while/lstm_cell_389/Sigmoid_1Sigmoid+lstm_287/while/lstm_cell_389/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_287/while/lstm_cell_389/mulMul*lstm_287/while/lstm_cell_389/Sigmoid_1:y:0lstm_287_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_287/while/lstm_cell_389/ReluRelu+lstm_287/while/lstm_cell_389/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/mul_1Mul(lstm_287/while/lstm_cell_389/Sigmoid:y:0/lstm_287/while/lstm_cell_389/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/add_1AddV2$lstm_287/while/lstm_cell_389/mul:z:0&lstm_287/while/lstm_cell_389/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_287/while/lstm_cell_389/Sigmoid_2Sigmoid+lstm_287/while/lstm_cell_389/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_287/while/lstm_cell_389/Relu_1Relu&lstm_287/while/lstm_cell_389/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_287/while/lstm_cell_389/mul_2Mul*lstm_287/while/lstm_cell_389/Sigmoid_2:y:01lstm_287/while/lstm_cell_389/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_287/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_287_while_placeholder_1lstm_287_while_placeholder&lstm_287/while/lstm_cell_389/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_287/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_287/while/addAddV2lstm_287_while_placeholderlstm_287/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_287/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_287/while/add_1AddV2*lstm_287_while_lstm_287_while_loop_counterlstm_287/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_287/while/IdentityIdentitylstm_287/while/add_1:z:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_1Identity0lstm_287_while_lstm_287_while_maximum_iterations^lstm_287/while/NoOp*
T0*
_output_shapes
: t
lstm_287/while/Identity_2Identitylstm_287/while/add:z:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_3IdentityClstm_287/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_287/while/NoOp*
T0*
_output_shapes
: ?
lstm_287/while/Identity_4Identity&lstm_287/while/lstm_cell_389/mul_2:z:0^lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_287/while/Identity_5Identity&lstm_287/while/lstm_cell_389/add_1:z:0^lstm_287/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_287/while/NoOpNoOp4^lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp3^lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp5^lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_287_while_identity lstm_287/while/Identity:output:0"?
lstm_287_while_identity_1"lstm_287/while/Identity_1:output:0"?
lstm_287_while_identity_2"lstm_287/while/Identity_2:output:0"?
lstm_287_while_identity_3"lstm_287/while/Identity_3:output:0"?
lstm_287_while_identity_4"lstm_287/while/Identity_4:output:0"?
lstm_287_while_identity_5"lstm_287/while/Identity_5:output:0"T
'lstm_287_while_lstm_287_strided_slice_1)lstm_287_while_lstm_287_strided_slice_1_0"~
<lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource>lstm_287_while_lstm_cell_389_biasadd_readvariableop_resource_0"?
=lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource?lstm_287_while_lstm_cell_389_matmul_1_readvariableop_resource_0"|
;lstm_287_while_lstm_cell_389_matmul_readvariableop_resource=lstm_287_while_lstm_cell_389_matmul_readvariableop_resource_0"?
clstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensorelstm_287_while_tensorarrayv2read_tensorlistgetitem_lstm_287_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp3lstm_287/while/lstm_cell_389/BiasAdd/ReadVariableOp2h
2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp2lstm_287/while/lstm_cell_389/MatMul/ReadVariableOp2l
4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp4lstm_287/while/lstm_cell_389/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_287_layer_call_fn_2357296

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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354362o
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
?
?
*__inference_lstm_287_layer_call_fn_2357307

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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354578o
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356504

inputs?
,lstm_cell_387_matmul_readvariableop_resource:	?A
.lstm_cell_387_matmul_1_readvariableop_resource:	d?<
-lstm_cell_387_biasadd_readvariableop_resource:	?
identity??$lstm_cell_387/BiasAdd/ReadVariableOp?#lstm_cell_387/MatMul/ReadVariableOp?%lstm_cell_387/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_387/MatMul/ReadVariableOpReadVariableOp,lstm_cell_387_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_387/MatMulMatMulstrided_slice_2:output:0+lstm_cell_387/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_387/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_387_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_387/MatMul_1MatMulzeros:output:0-lstm_cell_387/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_387/addAddV2lstm_cell_387/MatMul:product:0 lstm_cell_387/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_387/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_387_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_387/BiasAddBiasAddlstm_cell_387/add:z:0,lstm_cell_387/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_387/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_387/splitSplit&lstm_cell_387/split/split_dim:output:0lstm_cell_387/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_387/SigmoidSigmoidlstm_cell_387/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_1Sigmoidlstm_cell_387/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_387/mulMullstm_cell_387/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_387/ReluRelulstm_cell_387/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_1Mullstm_cell_387/Sigmoid:y:0 lstm_cell_387/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_387/add_1AddV2lstm_cell_387/mul:z:0lstm_cell_387/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_387/Sigmoid_2Sigmoidlstm_cell_387/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_387/Relu_1Relulstm_cell_387/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_387/mul_2Mullstm_cell_387/Sigmoid_2:y:0"lstm_cell_387/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_387_matmul_readvariableop_resource.lstm_cell_387_matmul_1_readvariableop_resource-lstm_cell_387_biasadd_readvariableop_resource*
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
while_body_2356420*
condR
while_cond_2356419*K
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
NoOpNoOp%^lstm_cell_387/BiasAdd/ReadVariableOp$^lstm_cell_387/MatMul/ReadVariableOp&^lstm_cell_387/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_387/BiasAdd/ReadVariableOp$lstm_cell_387/BiasAdd/ReadVariableOp2J
#lstm_cell_387/MatMul/ReadVariableOp#lstm_cell_387/MatMul/ReadVariableOp2N
%lstm_cell_387/MatMul_1/ReadVariableOp%lstm_cell_387/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_285_layer_call_fn_2356053
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2353204|
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
?
?
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355088
lstm_285_input#
lstm_285_2355061:	?#
lstm_285_2355063:	d?
lstm_285_2355065:	?#
lstm_286_2355068:	d?#
lstm_286_2355070:	2?
lstm_286_2355072:	?"
lstm_287_2355075:2("
lstm_287_2355077:
(
lstm_287_2355079:("
dense_95_2355082:

dense_95_2355084:
identity?? dense_95/StatefulPartitionedCall? lstm_285/StatefulPartitionedCall? lstm_286/StatefulPartitionedCall? lstm_287/StatefulPartitionedCall?
 lstm_285/StatefulPartitionedCallStatefulPartitionedCalllstm_285_inputlstm_285_2355061lstm_285_2355063lstm_285_2355065*
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2354908?
 lstm_286/StatefulPartitionedCallStatefulPartitionedCall)lstm_285/StatefulPartitionedCall:output:0lstm_286_2355068lstm_286_2355070lstm_286_2355072*
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2354743?
 lstm_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_286/StatefulPartitionedCall:output:0lstm_287_2355075lstm_287_2355077lstm_287_2355079*
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2354578?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall)lstm_287/StatefulPartitionedCall:output:0dense_95_2355082dense_95_2355084*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2354380x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_95/StatefulPartitionedCall!^lstm_285/StatefulPartitionedCall!^lstm_286/StatefulPartitionedCall!^lstm_287/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 lstm_285/StatefulPartitionedCall lstm_285/StatefulPartitionedCall2D
 lstm_286/StatefulPartitionedCall lstm_286/StatefulPartitionedCall2D
 lstm_287/StatefulPartitionedCall lstm_287/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_285_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_285_input;
 serving_default_lstm_285_input:0?????????<
dense_950
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
2dense_95/kernel
:2dense_95/bias
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
0:.	?2lstm_285/lstm_cell_285/kernel
::8	d?2'lstm_285/lstm_cell_285/recurrent_kernel
*:(?2lstm_285/lstm_cell_285/bias
0:.	d?2lstm_286/lstm_cell_286/kernel
::8	2?2'lstm_286/lstm_cell_286/recurrent_kernel
*:(?2lstm_286/lstm_cell_286/bias
/:-2(2lstm_287/lstm_cell_287/kernel
9:7
(2'lstm_287/lstm_cell_287/recurrent_kernel
):'(2lstm_287/lstm_cell_287/bias
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
2Adam/dense_95/kernel/m
 :2Adam/dense_95/bias/m
5:3	?2$Adam/lstm_285/lstm_cell_285/kernel/m
?:=	d?2.Adam/lstm_285/lstm_cell_285/recurrent_kernel/m
/:-?2"Adam/lstm_285/lstm_cell_285/bias/m
5:3	d?2$Adam/lstm_286/lstm_cell_286/kernel/m
?:=	2?2.Adam/lstm_286/lstm_cell_286/recurrent_kernel/m
/:-?2"Adam/lstm_286/lstm_cell_286/bias/m
4:22(2$Adam/lstm_287/lstm_cell_287/kernel/m
>:<
(2.Adam/lstm_287/lstm_cell_287/recurrent_kernel/m
.:,(2"Adam/lstm_287/lstm_cell_287/bias/m
&:$
2Adam/dense_95/kernel/v
 :2Adam/dense_95/bias/v
5:3	?2$Adam/lstm_285/lstm_cell_285/kernel/v
?:=	d?2.Adam/lstm_285/lstm_cell_285/recurrent_kernel/v
/:-?2"Adam/lstm_285/lstm_cell_285/bias/v
5:3	d?2$Adam/lstm_286/lstm_cell_286/kernel/v
?:=	2?2.Adam/lstm_286/lstm_cell_286/recurrent_kernel/v
/:-?2"Adam/lstm_286/lstm_cell_286/bias/v
4:22(2$Adam/lstm_287/lstm_cell_287/kernel/v
>:<
(2.Adam/lstm_287/lstm_cell_287/recurrent_kernel/v
.:,(2"Adam/lstm_287/lstm_cell_287/bias/v
?2?
/__inference_sequential_95_layer_call_fn_2354412
/__inference_sequential_95_layer_call_fn_2355150
/__inference_sequential_95_layer_call_fn_2355177
/__inference_sequential_95_layer_call_fn_2355028?
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355604
J__inference_sequential_95_layer_call_and_return_conditional_losses_2356031
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355058
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355088?
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
"__inference__wrapped_model_2352863lstm_285_input"?
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
*__inference_lstm_285_layer_call_fn_2356042
*__inference_lstm_285_layer_call_fn_2356053
*__inference_lstm_285_layer_call_fn_2356064
*__inference_lstm_285_layer_call_fn_2356075?
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356218
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356361
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356504
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356647?
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
*__inference_lstm_286_layer_call_fn_2356658
*__inference_lstm_286_layer_call_fn_2356669
*__inference_lstm_286_layer_call_fn_2356680
*__inference_lstm_286_layer_call_fn_2356691?
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356834
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356977
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357120
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357263?
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
*__inference_lstm_287_layer_call_fn_2357274
*__inference_lstm_287_layer_call_fn_2357285
*__inference_lstm_287_layer_call_fn_2357296
*__inference_lstm_287_layer_call_fn_2357307?
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357450
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357593
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357736
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357879?
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
*__inference_dense_95_layer_call_fn_2357888?
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
E__inference_dense_95_layer_call_and_return_conditional_losses_2357898?
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
%__inference_signature_wrapper_2355123lstm_285_input"?
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
/__inference_lstm_cell_387_layer_call_fn_2357915
/__inference_lstm_cell_387_layer_call_fn_2357932?
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357964
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357996?
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
/__inference_lstm_cell_388_layer_call_fn_2358013
/__inference_lstm_cell_388_layer_call_fn_2358030?
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358062
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358094?
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
/__inference_lstm_cell_389_layer_call_fn_2358111
/__inference_lstm_cell_389_layer_call_fn_2358128?
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358160
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358192?
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
"__inference__wrapped_model_2352863-./012345!";?8
1?.
,?)
lstm_285_input?????????
? "3?0
.
dense_95"?
dense_95??????????
E__inference_dense_95_layer_call_and_return_conditional_losses_2357898\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_95_layer_call_fn_2357888O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356218?-./O?L
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356361?-./O?L
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356504q-./??<
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
E__inference_lstm_285_layer_call_and_return_conditional_losses_2356647q-./??<
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
*__inference_lstm_285_layer_call_fn_2356042}-./O?L
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
*__inference_lstm_285_layer_call_fn_2356053}-./O?L
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
*__inference_lstm_285_layer_call_fn_2356064d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_285_layer_call_fn_2356075d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356834?012O?L
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2356977?012O?L
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357120q012??<
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
E__inference_lstm_286_layer_call_and_return_conditional_losses_2357263q012??<
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
*__inference_lstm_286_layer_call_fn_2356658}012O?L
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
*__inference_lstm_286_layer_call_fn_2356669}012O?L
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
*__inference_lstm_286_layer_call_fn_2356680d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_286_layer_call_fn_2356691d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357450}345O?L
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357593}345O?L
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357736m345??<
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
E__inference_lstm_287_layer_call_and_return_conditional_losses_2357879m345??<
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
*__inference_lstm_287_layer_call_fn_2357274p345O?L
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
*__inference_lstm_287_layer_call_fn_2357285p345O?L
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
*__inference_lstm_287_layer_call_fn_2357296`345??<
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
*__inference_lstm_287_layer_call_fn_2357307`345??<
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357964?-./??}
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
J__inference_lstm_cell_387_layer_call_and_return_conditional_losses_2357996?-./??}
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
/__inference_lstm_cell_387_layer_call_fn_2357915?-./??}
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
/__inference_lstm_cell_387_layer_call_fn_2357932?-./??}
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358062?012??}
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
J__inference_lstm_cell_388_layer_call_and_return_conditional_losses_2358094?012??}
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
/__inference_lstm_cell_388_layer_call_fn_2358013?012??}
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
/__inference_lstm_cell_388_layer_call_fn_2358030?012??}
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358160?345??}
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
J__inference_lstm_cell_389_layer_call_and_return_conditional_losses_2358192?345??}
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
/__inference_lstm_cell_389_layer_call_fn_2358111?345??}
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
/__inference_lstm_cell_389_layer_call_fn_2358128?345??}
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355058y-./012345!"C?@
9?6
,?)
lstm_285_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355088y-./012345!"C?@
9?6
,?)
lstm_285_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_95_layer_call_and_return_conditional_losses_2355604q-./012345!";?8
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_2356031q-./012345!";?8
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
/__inference_sequential_95_layer_call_fn_2354412l-./012345!"C?@
9?6
,?)
lstm_285_input?????????
p 

 
? "???????????
/__inference_sequential_95_layer_call_fn_2355028l-./012345!"C?@
9?6
,?)
lstm_285_input?????????
p

 
? "???????????
/__inference_sequential_95_layer_call_fn_2355150d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_95_layer_call_fn_2355177d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2355123?-./012345!"M?J
? 
C?@
>
lstm_285_input,?)
lstm_285_input?????????"3?0
.
dense_95"?
dense_95?????????