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
dense_90/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_90/kernel
s
#dense_90/kernel/Read/ReadVariableOpReadVariableOpdense_90/kernel*
_output_shapes

:
*
dtype0
r
dense_90/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_90/bias
k
!dense_90/bias/Read/ReadVariableOpReadVariableOpdense_90/bias*
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
lstm_270/lstm_cell_270/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_270/lstm_cell_270/kernel
?
1lstm_270/lstm_cell_270/kernel/Read/ReadVariableOpReadVariableOplstm_270/lstm_cell_270/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_270/lstm_cell_270/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_270/lstm_cell_270/recurrent_kernel
?
;lstm_270/lstm_cell_270/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_270/lstm_cell_270/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_270/lstm_cell_270/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_270/lstm_cell_270/bias
?
/lstm_270/lstm_cell_270/bias/Read/ReadVariableOpReadVariableOplstm_270/lstm_cell_270/bias*
_output_shapes	
:?*
dtype0
?
lstm_271/lstm_cell_271/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_271/lstm_cell_271/kernel
?
1lstm_271/lstm_cell_271/kernel/Read/ReadVariableOpReadVariableOplstm_271/lstm_cell_271/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_271/lstm_cell_271/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_271/lstm_cell_271/recurrent_kernel
?
;lstm_271/lstm_cell_271/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_271/lstm_cell_271/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_271/lstm_cell_271/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_271/lstm_cell_271/bias
?
/lstm_271/lstm_cell_271/bias/Read/ReadVariableOpReadVariableOplstm_271/lstm_cell_271/bias*
_output_shapes	
:?*
dtype0
?
lstm_272/lstm_cell_272/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_272/lstm_cell_272/kernel
?
1lstm_272/lstm_cell_272/kernel/Read/ReadVariableOpReadVariableOplstm_272/lstm_cell_272/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_272/lstm_cell_272/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_272/lstm_cell_272/recurrent_kernel
?
;lstm_272/lstm_cell_272/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_272/lstm_cell_272/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_272/lstm_cell_272/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_272/lstm_cell_272/bias
?
/lstm_272/lstm_cell_272/bias/Read/ReadVariableOpReadVariableOplstm_272/lstm_cell_272/bias*
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
Adam/dense_90/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_90/kernel/m
?
*Adam/dense_90/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_90/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_90/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_90/bias/m
y
(Adam/dense_90/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_90/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_270/lstm_cell_270/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_270/lstm_cell_270/kernel/m
?
8Adam/lstm_270/lstm_cell_270/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_270/lstm_cell_270/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_270/lstm_cell_270/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_270/lstm_cell_270/recurrent_kernel/m
?
BAdam/lstm_270/lstm_cell_270/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_270/lstm_cell_270/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_270/lstm_cell_270/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_270/lstm_cell_270/bias/m
?
6Adam/lstm_270/lstm_cell_270/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_270/lstm_cell_270/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_271/lstm_cell_271/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_271/lstm_cell_271/kernel/m
?
8Adam/lstm_271/lstm_cell_271/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_271/lstm_cell_271/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_271/lstm_cell_271/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_271/lstm_cell_271/recurrent_kernel/m
?
BAdam/lstm_271/lstm_cell_271/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_271/lstm_cell_271/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_271/lstm_cell_271/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_271/lstm_cell_271/bias/m
?
6Adam/lstm_271/lstm_cell_271/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_271/lstm_cell_271/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_272/lstm_cell_272/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_272/lstm_cell_272/kernel/m
?
8Adam/lstm_272/lstm_cell_272/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_272/lstm_cell_272/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_272/lstm_cell_272/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_272/lstm_cell_272/recurrent_kernel/m
?
BAdam/lstm_272/lstm_cell_272/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_272/lstm_cell_272/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_272/lstm_cell_272/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_272/lstm_cell_272/bias/m
?
6Adam/lstm_272/lstm_cell_272/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_272/lstm_cell_272/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_90/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_90/kernel/v
?
*Adam/dense_90/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_90/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_90/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_90/bias/v
y
(Adam/dense_90/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_90/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_270/lstm_cell_270/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_270/lstm_cell_270/kernel/v
?
8Adam/lstm_270/lstm_cell_270/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_270/lstm_cell_270/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_270/lstm_cell_270/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_270/lstm_cell_270/recurrent_kernel/v
?
BAdam/lstm_270/lstm_cell_270/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_270/lstm_cell_270/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_270/lstm_cell_270/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_270/lstm_cell_270/bias/v
?
6Adam/lstm_270/lstm_cell_270/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_270/lstm_cell_270/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_271/lstm_cell_271/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_271/lstm_cell_271/kernel/v
?
8Adam/lstm_271/lstm_cell_271/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_271/lstm_cell_271/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_271/lstm_cell_271/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_271/lstm_cell_271/recurrent_kernel/v
?
BAdam/lstm_271/lstm_cell_271/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_271/lstm_cell_271/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_271/lstm_cell_271/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_271/lstm_cell_271/bias/v
?
6Adam/lstm_271/lstm_cell_271/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_271/lstm_cell_271/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_272/lstm_cell_272/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_272/lstm_cell_272/kernel/v
?
8Adam/lstm_272/lstm_cell_272/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_272/lstm_cell_272/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_272/lstm_cell_272/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_272/lstm_cell_272/recurrent_kernel/v
?
BAdam/lstm_272/lstm_cell_272/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_272/lstm_cell_272/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_272/lstm_cell_272/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_272/lstm_cell_272/bias/v
?
6Adam/lstm_272/lstm_cell_272/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_272/lstm_cell_272/bias/v*
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
VARIABLE_VALUEdense_90/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_90/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_270/lstm_cell_270/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_270/lstm_cell_270/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_270/lstm_cell_270/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_271/lstm_cell_271/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_271/lstm_cell_271/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_271/lstm_cell_271/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_272/lstm_cell_272/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_272/lstm_cell_272/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_272/lstm_cell_272/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_90/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_90/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_270/lstm_cell_270/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_270/lstm_cell_270/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_270/lstm_cell_270/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_271/lstm_cell_271/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_271/lstm_cell_271/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_271/lstm_cell_271/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_272/lstm_cell_272/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_272/lstm_cell_272/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_272/lstm_cell_272/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_90/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_90/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_270/lstm_cell_270/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_270/lstm_cell_270/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_270/lstm_cell_270/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_271/lstm_cell_271/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_271/lstm_cell_271/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_271/lstm_cell_271/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_272/lstm_cell_272/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_272/lstm_cell_272/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_272/lstm_cell_272/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_270_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_270_inputlstm_270/lstm_cell_270/kernel'lstm_270/lstm_cell_270/recurrent_kernellstm_270/lstm_cell_270/biaslstm_271/lstm_cell_271/kernel'lstm_271/lstm_cell_271/recurrent_kernellstm_271/lstm_cell_271/biaslstm_272/lstm_cell_272/kernel'lstm_272/lstm_cell_272/recurrent_kernellstm_272/lstm_cell_272/biasdense_90/kerneldense_90/bias*
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
%__inference_signature_wrapper_3189542
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_90/kernel/Read/ReadVariableOp!dense_90/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_270/lstm_cell_270/kernel/Read/ReadVariableOp;lstm_270/lstm_cell_270/recurrent_kernel/Read/ReadVariableOp/lstm_270/lstm_cell_270/bias/Read/ReadVariableOp1lstm_271/lstm_cell_271/kernel/Read/ReadVariableOp;lstm_271/lstm_cell_271/recurrent_kernel/Read/ReadVariableOp/lstm_271/lstm_cell_271/bias/Read/ReadVariableOp1lstm_272/lstm_cell_272/kernel/Read/ReadVariableOp;lstm_272/lstm_cell_272/recurrent_kernel/Read/ReadVariableOp/lstm_272/lstm_cell_272/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_90/kernel/m/Read/ReadVariableOp(Adam/dense_90/bias/m/Read/ReadVariableOp8Adam/lstm_270/lstm_cell_270/kernel/m/Read/ReadVariableOpBAdam/lstm_270/lstm_cell_270/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_270/lstm_cell_270/bias/m/Read/ReadVariableOp8Adam/lstm_271/lstm_cell_271/kernel/m/Read/ReadVariableOpBAdam/lstm_271/lstm_cell_271/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_271/lstm_cell_271/bias/m/Read/ReadVariableOp8Adam/lstm_272/lstm_cell_272/kernel/m/Read/ReadVariableOpBAdam/lstm_272/lstm_cell_272/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_272/lstm_cell_272/bias/m/Read/ReadVariableOp*Adam/dense_90/kernel/v/Read/ReadVariableOp(Adam/dense_90/bias/v/Read/ReadVariableOp8Adam/lstm_270/lstm_cell_270/kernel/v/Read/ReadVariableOpBAdam/lstm_270/lstm_cell_270/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_270/lstm_cell_270/bias/v/Read/ReadVariableOp8Adam/lstm_271/lstm_cell_271/kernel/v/Read/ReadVariableOpBAdam/lstm_271/lstm_cell_271/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_271/lstm_cell_271/bias/v/Read/ReadVariableOp8Adam/lstm_272/lstm_cell_272/kernel/v/Read/ReadVariableOpBAdam/lstm_272/lstm_cell_272/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_272/lstm_cell_272/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3192754
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_90/kerneldense_90/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_270/lstm_cell_270/kernel'lstm_270/lstm_cell_270/recurrent_kernellstm_270/lstm_cell_270/biaslstm_271/lstm_cell_271/kernel'lstm_271/lstm_cell_271/recurrent_kernellstm_271/lstm_cell_271/biaslstm_272/lstm_cell_272/kernel'lstm_272/lstm_cell_272/recurrent_kernellstm_272/lstm_cell_272/biastotalcountAdam/dense_90/kernel/mAdam/dense_90/bias/m$Adam/lstm_270/lstm_cell_270/kernel/m.Adam/lstm_270/lstm_cell_270/recurrent_kernel/m"Adam/lstm_270/lstm_cell_270/bias/m$Adam/lstm_271/lstm_cell_271/kernel/m.Adam/lstm_271/lstm_cell_271/recurrent_kernel/m"Adam/lstm_271/lstm_cell_271/bias/m$Adam/lstm_272/lstm_cell_272/kernel/m.Adam/lstm_272/lstm_cell_272/recurrent_kernel/m"Adam/lstm_272/lstm_cell_272/bias/mAdam/dense_90/kernel/vAdam/dense_90/bias/v$Adam/lstm_270/lstm_cell_270/kernel/v.Adam/lstm_270/lstm_cell_270/recurrent_kernel/v"Adam/lstm_270/lstm_cell_270/bias/v$Adam/lstm_271/lstm_cell_271/kernel/v.Adam/lstm_271/lstm_cell_271/recurrent_kernel/v"Adam/lstm_271/lstm_cell_271/bias/v$Adam/lstm_272/lstm_cell_272/kernel/v.Adam/lstm_272/lstm_cell_272/recurrent_kernel/v"Adam/lstm_272/lstm_cell_272/bias/v*4
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
#__inference__traced_restore_3192884??+
?#
?
while_body_3187363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_525_3187387_0:	?0
while_lstm_cell_525_3187389_0:	d?,
while_lstm_cell_525_3187391_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_525_3187387:	?.
while_lstm_cell_525_3187389:	d?*
while_lstm_cell_525_3187391:	???+while/lstm_cell_525/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_525/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_525_3187387_0while_lstm_cell_525_3187389_0while_lstm_cell_525_3187391_0*
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187349?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_525/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_525/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_525/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_525/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_525_3187387while_lstm_cell_525_3187387_0"<
while_lstm_cell_525_3187389while_lstm_cell_525_3187389_0"<
while_lstm_cell_525_3187391while_lstm_cell_525_3187391_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_525/StatefulPartitionedCall+while/lstm_cell_525/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190923

inputs?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3190839*
condR
while_cond_3190838*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3187362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3187362___redundant_placeholder05
1while_while_cond_3187362___redundant_placeholder15
1while_while_cond_3187362___redundant_placeholder25
1while_while_cond_3187362___redundant_placeholder3
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192383

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
while_cond_3190838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3190838___redundant_placeholder05
1while_while_cond_3190838___redundant_placeholder15
1while_while_cond_3190838___redundant_placeholder25
1while_while_cond_3190838___redundant_placeholder3
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3189327

inputs?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3189243*
condR
while_cond_3189242*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_272_while_cond_3189932.
*lstm_272_while_lstm_272_while_loop_counter4
0lstm_272_while_lstm_272_while_maximum_iterations
lstm_272_while_placeholder 
lstm_272_while_placeholder_1 
lstm_272_while_placeholder_2 
lstm_272_while_placeholder_30
,lstm_272_while_less_lstm_272_strided_slice_1G
Clstm_272_while_lstm_272_while_cond_3189932___redundant_placeholder0G
Clstm_272_while_lstm_272_while_cond_3189932___redundant_placeholder1G
Clstm_272_while_lstm_272_while_cond_3189932___redundant_placeholder2G
Clstm_272_while_lstm_272_while_cond_3189932___redundant_placeholder3
lstm_272_while_identity
?
lstm_272/while/LessLesslstm_272_while_placeholder,lstm_272_while_less_lstm_272_strided_slice_1*
T0*
_output_shapes
: ]
lstm_272/while/IdentityIdentitylstm_272/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_272_while_identity lstm_272/while/Identity:output:0*(
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
while_cond_3191927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191927___redundant_placeholder05
1while_while_cond_3191927___redundant_placeholder15
1while_while_cond_3191927___redundant_placeholder25
1while_while_cond_3191927___redundant_placeholder3
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3192317

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
/__inference_lstm_cell_525_layer_call_fn_3192334

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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187349o
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
while_body_3191169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3187623

inputs(
lstm_cell_525_3187541:	?(
lstm_cell_525_3187543:	d?$
lstm_cell_525_3187545:	?
identity??%lstm_cell_525/StatefulPartitionedCall?while;
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
%lstm_cell_525/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_525_3187541lstm_cell_525_3187543lstm_cell_525_3187545*
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187495n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_525_3187541lstm_cell_525_3187543lstm_cell_525_3187545*
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
while_body_3187554*
condR
while_cond_3187553*K
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
NoOpNoOp&^lstm_cell_525/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_525/StatefulPartitionedCall%lstm_cell_525/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3188913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3191928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3188631

inputs?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3188547*
condR
while_cond_3188546*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188997

inputs>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3188913*
condR
while_cond_3188912*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191682

inputs?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3191598*
condR
while_cond_3191597*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3190839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_271_layer_call_fn_3191077
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3187782|
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
while_cond_3187712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3187712___redundant_placeholder05
1while_while_cond_3187712___redundant_placeholder15
1while_while_cond_3187712___redundant_placeholder25
1while_while_cond_3187712___redundant_placeholder3
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
while_body_3189078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_270_layer_call_fn_3190483

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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3188481s
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
?J
?
E__inference_lstm_270_layer_call_and_return_conditional_losses_3188481

inputs?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3188397*
condR
while_cond_3188396*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192611

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
?
?
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187845

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

?
/__inference_sequential_90_layer_call_fn_3189569

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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3188806o
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
?
/__inference_lstm_cell_526_layer_call_fn_3192432

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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187699o
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3187432

inputs(
lstm_cell_525_3187350:	?(
lstm_cell_525_3187352:	d?$
lstm_cell_525_3187354:	?
identity??%lstm_cell_525/StatefulPartitionedCall?while;
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
%lstm_cell_525/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_525_3187350lstm_cell_525_3187352lstm_cell_525_3187354*
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187349n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_525_3187350lstm_cell_525_3187352lstm_cell_525_3187354*
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
while_body_3187363*
condR
while_cond_3187362*K
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
NoOpNoOp&^lstm_cell_525/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_525/StatefulPartitionedCall%lstm_cell_525/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_272_layer_call_fn_3191726

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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188997o
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
?K
?
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191253
inputs_0?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3191169*
condR
while_cond_3191168*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_270_layer_call_fn_3190461
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3187432|
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
?
?
)sequential_90_lstm_272_while_cond_3187191J
Fsequential_90_lstm_272_while_sequential_90_lstm_272_while_loop_counterP
Lsequential_90_lstm_272_while_sequential_90_lstm_272_while_maximum_iterations,
(sequential_90_lstm_272_while_placeholder.
*sequential_90_lstm_272_while_placeholder_1.
*sequential_90_lstm_272_while_placeholder_2.
*sequential_90_lstm_272_while_placeholder_3L
Hsequential_90_lstm_272_while_less_sequential_90_lstm_272_strided_slice_1c
_sequential_90_lstm_272_while_sequential_90_lstm_272_while_cond_3187191___redundant_placeholder0c
_sequential_90_lstm_272_while_sequential_90_lstm_272_while_cond_3187191___redundant_placeholder1c
_sequential_90_lstm_272_while_sequential_90_lstm_272_while_cond_3187191___redundant_placeholder2c
_sequential_90_lstm_272_while_sequential_90_lstm_272_while_cond_3187191___redundant_placeholder3)
%sequential_90_lstm_272_while_identity
?
!sequential_90/lstm_272/while/LessLess(sequential_90_lstm_272_while_placeholderHsequential_90_lstm_272_while_less_sequential_90_lstm_272_strided_slice_1*
T0*
_output_shapes
: y
%sequential_90/lstm_272/while/IdentityIdentity%sequential_90/lstm_272/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_90_lstm_272_while_identity.sequential_90/lstm_272/while/Identity:output:0*(
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
while_body_3187904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_526_3187928_0:	d?0
while_lstm_cell_526_3187930_0:	2?,
while_lstm_cell_526_3187932_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_526_3187928:	d?.
while_lstm_cell_526_3187930:	2?*
while_lstm_cell_526_3187932:	???+while/lstm_cell_526/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_526/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_526_3187928_0while_lstm_cell_526_3187930_0while_lstm_cell_526_3187932_0*
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187845?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_526/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_526/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_526/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_526/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_526_3187928while_lstm_cell_526_3187928_0"<
while_lstm_cell_526_3187930while_lstm_cell_526_3187930_0"<
while_lstm_cell_526_3187932while_lstm_cell_526_3187932_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_526/StatefulPartitionedCall+while/lstm_cell_526/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_90_lstm_270_while_body_3186914J
Fsequential_90_lstm_270_while_sequential_90_lstm_270_while_loop_counterP
Lsequential_90_lstm_270_while_sequential_90_lstm_270_while_maximum_iterations,
(sequential_90_lstm_270_while_placeholder.
*sequential_90_lstm_270_while_placeholder_1.
*sequential_90_lstm_270_while_placeholder_2.
*sequential_90_lstm_270_while_placeholder_3I
Esequential_90_lstm_270_while_sequential_90_lstm_270_strided_slice_1_0?
?sequential_90_lstm_270_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_270_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_90_lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0:	?`
Msequential_90_lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?[
Lsequential_90_lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0:	?)
%sequential_90_lstm_270_while_identity+
'sequential_90_lstm_270_while_identity_1+
'sequential_90_lstm_270_while_identity_2+
'sequential_90_lstm_270_while_identity_3+
'sequential_90_lstm_270_while_identity_4+
'sequential_90_lstm_270_while_identity_5G
Csequential_90_lstm_270_while_sequential_90_lstm_270_strided_slice_1?
sequential_90_lstm_270_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_270_tensorarrayunstack_tensorlistfromtensor\
Isequential_90_lstm_270_while_lstm_cell_525_matmul_readvariableop_resource:	?^
Ksequential_90_lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource:	d?Y
Jsequential_90_lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource:	???Asequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp?@sequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp?Bsequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp?
Nsequential_90/lstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_90/lstm_270/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_90_lstm_270_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_270_tensorarrayunstack_tensorlistfromtensor_0(sequential_90_lstm_270_while_placeholderWsequential_90/lstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOpKsequential_90_lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_90/lstm_270/while/lstm_cell_525/MatMulMatMulGsequential_90/lstm_270/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOpMsequential_90_lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_90/lstm_270/while/lstm_cell_525/MatMul_1MatMul*sequential_90_lstm_270_while_placeholder_2Jsequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_90/lstm_270/while/lstm_cell_525/addAddV2;sequential_90/lstm_270/while/lstm_cell_525/MatMul:product:0=sequential_90/lstm_270/while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOpLsequential_90_lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_90/lstm_270/while/lstm_cell_525/BiasAddBiasAdd2sequential_90/lstm_270/while/lstm_cell_525/add:z:0Isequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_90/lstm_270/while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_90/lstm_270/while/lstm_cell_525/splitSplitCsequential_90/lstm_270/while/lstm_cell_525/split/split_dim:output:0;sequential_90/lstm_270/while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_90/lstm_270/while/lstm_cell_525/SigmoidSigmoid9sequential_90/lstm_270/while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_90/lstm_270/while/lstm_cell_525/Sigmoid_1Sigmoid9sequential_90/lstm_270/while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_90/lstm_270/while/lstm_cell_525/mulMul8sequential_90/lstm_270/while/lstm_cell_525/Sigmoid_1:y:0*sequential_90_lstm_270_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_90/lstm_270/while/lstm_cell_525/ReluRelu9sequential_90/lstm_270/while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_90/lstm_270/while/lstm_cell_525/mul_1Mul6sequential_90/lstm_270/while/lstm_cell_525/Sigmoid:y:0=sequential_90/lstm_270/while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_90/lstm_270/while/lstm_cell_525/add_1AddV22sequential_90/lstm_270/while/lstm_cell_525/mul:z:04sequential_90/lstm_270/while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_90/lstm_270/while/lstm_cell_525/Sigmoid_2Sigmoid9sequential_90/lstm_270/while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_90/lstm_270/while/lstm_cell_525/Relu_1Relu4sequential_90/lstm_270/while/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_90/lstm_270/while/lstm_cell_525/mul_2Mul8sequential_90/lstm_270/while/lstm_cell_525/Sigmoid_2:y:0?sequential_90/lstm_270/while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_90/lstm_270/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_90_lstm_270_while_placeholder_1(sequential_90_lstm_270_while_placeholder4sequential_90/lstm_270/while/lstm_cell_525/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_90/lstm_270/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_90/lstm_270/while/addAddV2(sequential_90_lstm_270_while_placeholder+sequential_90/lstm_270/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_90/lstm_270/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_90/lstm_270/while/add_1AddV2Fsequential_90_lstm_270_while_sequential_90_lstm_270_while_loop_counter-sequential_90/lstm_270/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_90/lstm_270/while/IdentityIdentity&sequential_90/lstm_270/while/add_1:z:0"^sequential_90/lstm_270/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_270/while/Identity_1IdentityLsequential_90_lstm_270_while_sequential_90_lstm_270_while_maximum_iterations"^sequential_90/lstm_270/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_270/while/Identity_2Identity$sequential_90/lstm_270/while/add:z:0"^sequential_90/lstm_270/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_270/while/Identity_3IdentityQsequential_90/lstm_270/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_90/lstm_270/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_270/while/Identity_4Identity4sequential_90/lstm_270/while/lstm_cell_525/mul_2:z:0"^sequential_90/lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_90/lstm_270/while/Identity_5Identity4sequential_90/lstm_270/while/lstm_cell_525/add_1:z:0"^sequential_90/lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_90/lstm_270/while/NoOpNoOpB^sequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOpA^sequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOpC^sequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_90_lstm_270_while_identity.sequential_90/lstm_270/while/Identity:output:0"[
'sequential_90_lstm_270_while_identity_10sequential_90/lstm_270/while/Identity_1:output:0"[
'sequential_90_lstm_270_while_identity_20sequential_90/lstm_270/while/Identity_2:output:0"[
'sequential_90_lstm_270_while_identity_30sequential_90/lstm_270/while/Identity_3:output:0"[
'sequential_90_lstm_270_while_identity_40sequential_90/lstm_270/while/Identity_4:output:0"[
'sequential_90_lstm_270_while_identity_50sequential_90/lstm_270/while/Identity_5:output:0"?
Jsequential_90_lstm_270_while_lstm_cell_525_biasadd_readvariableop_resourceLsequential_90_lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0"?
Ksequential_90_lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resourceMsequential_90_lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0"?
Isequential_90_lstm_270_while_lstm_cell_525_matmul_readvariableop_resourceKsequential_90_lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0"?
Csequential_90_lstm_270_while_sequential_90_lstm_270_strided_slice_1Esequential_90_lstm_270_while_sequential_90_lstm_270_strided_slice_1_0"?
sequential_90_lstm_270_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_270_tensorarrayunstack_tensorlistfromtensor?sequential_90_lstm_270_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_270_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOpAsequential_90/lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp2?
@sequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp@sequential_90/lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp2?
Bsequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOpBsequential_90/lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3188254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_527_3188278_0:2(/
while_lstm_cell_527_3188280_0:
(+
while_lstm_cell_527_3188282_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_527_3188278:2(-
while_lstm_cell_527_3188280:
()
while_lstm_cell_527_3188282:(??+while/lstm_cell_527/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_527/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_527_3188278_0while_lstm_cell_527_3188280_0while_lstm_cell_527_3188282_0*
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188195?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_527/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_527/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_527/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_527_3188278while_lstm_cell_527_3188278_0"<
while_lstm_cell_527_3188280while_lstm_cell_527_3188280_0"<
while_lstm_cell_527_3188282while_lstm_cell_527_3188282_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_527/StatefulPartitionedCall+while/lstm_cell_527/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192579

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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192298

inputs>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3192214*
condR
while_cond_3192213*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3188396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188396___redundant_placeholder05
1while_while_cond_3188396___redundant_placeholder15
1while_while_cond_3188396___redundant_placeholder25
1while_while_cond_3188396___redundant_placeholder3
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
while_cond_3191454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191454___redundant_placeholder05
1while_while_cond_3191454___redundant_placeholder15
1while_while_cond_3191454___redundant_placeholder25
1while_while_cond_3191454___redundant_placeholder3
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
while_body_3188063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_527_3188087_0:2(/
while_lstm_cell_527_3188089_0:
(+
while_lstm_cell_527_3188091_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_527_3188087:2(-
while_lstm_cell_527_3188089:
()
while_lstm_cell_527_3188091:(??+while/lstm_cell_527/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_527/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_527_3188087_0while_lstm_cell_527_3188089_0while_lstm_cell_527_3188091_0*
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188049?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_527/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_527/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_527/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_527_3188087while_lstm_cell_527_3188087_0"<
while_lstm_cell_527_3188089while_lstm_cell_527_3188089_0"<
while_lstm_cell_527_3188091while_lstm_cell_527_3188091_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_527/StatefulPartitionedCall+while/lstm_cell_527/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_90_lstm_271_while_body_3187053J
Fsequential_90_lstm_271_while_sequential_90_lstm_271_while_loop_counterP
Lsequential_90_lstm_271_while_sequential_90_lstm_271_while_maximum_iterations,
(sequential_90_lstm_271_while_placeholder.
*sequential_90_lstm_271_while_placeholder_1.
*sequential_90_lstm_271_while_placeholder_2.
*sequential_90_lstm_271_while_placeholder_3I
Esequential_90_lstm_271_while_sequential_90_lstm_271_strided_slice_1_0?
?sequential_90_lstm_271_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_271_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_90_lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0:	d?`
Msequential_90_lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?[
Lsequential_90_lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0:	?)
%sequential_90_lstm_271_while_identity+
'sequential_90_lstm_271_while_identity_1+
'sequential_90_lstm_271_while_identity_2+
'sequential_90_lstm_271_while_identity_3+
'sequential_90_lstm_271_while_identity_4+
'sequential_90_lstm_271_while_identity_5G
Csequential_90_lstm_271_while_sequential_90_lstm_271_strided_slice_1?
sequential_90_lstm_271_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_271_tensorarrayunstack_tensorlistfromtensor\
Isequential_90_lstm_271_while_lstm_cell_526_matmul_readvariableop_resource:	d?^
Ksequential_90_lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource:	2?Y
Jsequential_90_lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource:	???Asequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp?@sequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp?Bsequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp?
Nsequential_90/lstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_90/lstm_271/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_90_lstm_271_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_271_tensorarrayunstack_tensorlistfromtensor_0(sequential_90_lstm_271_while_placeholderWsequential_90/lstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOpKsequential_90_lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_90/lstm_271/while/lstm_cell_526/MatMulMatMulGsequential_90/lstm_271/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOpMsequential_90_lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_90/lstm_271/while/lstm_cell_526/MatMul_1MatMul*sequential_90_lstm_271_while_placeholder_2Jsequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_90/lstm_271/while/lstm_cell_526/addAddV2;sequential_90/lstm_271/while/lstm_cell_526/MatMul:product:0=sequential_90/lstm_271/while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOpLsequential_90_lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_90/lstm_271/while/lstm_cell_526/BiasAddBiasAdd2sequential_90/lstm_271/while/lstm_cell_526/add:z:0Isequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_90/lstm_271/while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_90/lstm_271/while/lstm_cell_526/splitSplitCsequential_90/lstm_271/while/lstm_cell_526/split/split_dim:output:0;sequential_90/lstm_271/while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_90/lstm_271/while/lstm_cell_526/SigmoidSigmoid9sequential_90/lstm_271/while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_90/lstm_271/while/lstm_cell_526/Sigmoid_1Sigmoid9sequential_90/lstm_271/while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_90/lstm_271/while/lstm_cell_526/mulMul8sequential_90/lstm_271/while/lstm_cell_526/Sigmoid_1:y:0*sequential_90_lstm_271_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_90/lstm_271/while/lstm_cell_526/ReluRelu9sequential_90/lstm_271/while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_90/lstm_271/while/lstm_cell_526/mul_1Mul6sequential_90/lstm_271/while/lstm_cell_526/Sigmoid:y:0=sequential_90/lstm_271/while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_90/lstm_271/while/lstm_cell_526/add_1AddV22sequential_90/lstm_271/while/lstm_cell_526/mul:z:04sequential_90/lstm_271/while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_90/lstm_271/while/lstm_cell_526/Sigmoid_2Sigmoid9sequential_90/lstm_271/while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_90/lstm_271/while/lstm_cell_526/Relu_1Relu4sequential_90/lstm_271/while/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_90/lstm_271/while/lstm_cell_526/mul_2Mul8sequential_90/lstm_271/while/lstm_cell_526/Sigmoid_2:y:0?sequential_90/lstm_271/while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_90/lstm_271/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_90_lstm_271_while_placeholder_1(sequential_90_lstm_271_while_placeholder4sequential_90/lstm_271/while/lstm_cell_526/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_90/lstm_271/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_90/lstm_271/while/addAddV2(sequential_90_lstm_271_while_placeholder+sequential_90/lstm_271/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_90/lstm_271/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_90/lstm_271/while/add_1AddV2Fsequential_90_lstm_271_while_sequential_90_lstm_271_while_loop_counter-sequential_90/lstm_271/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_90/lstm_271/while/IdentityIdentity&sequential_90/lstm_271/while/add_1:z:0"^sequential_90/lstm_271/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_271/while/Identity_1IdentityLsequential_90_lstm_271_while_sequential_90_lstm_271_while_maximum_iterations"^sequential_90/lstm_271/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_271/while/Identity_2Identity$sequential_90/lstm_271/while/add:z:0"^sequential_90/lstm_271/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_271/while/Identity_3IdentityQsequential_90/lstm_271/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_90/lstm_271/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_271/while/Identity_4Identity4sequential_90/lstm_271/while/lstm_cell_526/mul_2:z:0"^sequential_90/lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_90/lstm_271/while/Identity_5Identity4sequential_90/lstm_271/while/lstm_cell_526/add_1:z:0"^sequential_90/lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_90/lstm_271/while/NoOpNoOpB^sequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOpA^sequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOpC^sequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_90_lstm_271_while_identity.sequential_90/lstm_271/while/Identity:output:0"[
'sequential_90_lstm_271_while_identity_10sequential_90/lstm_271/while/Identity_1:output:0"[
'sequential_90_lstm_271_while_identity_20sequential_90/lstm_271/while/Identity_2:output:0"[
'sequential_90_lstm_271_while_identity_30sequential_90/lstm_271/while/Identity_3:output:0"[
'sequential_90_lstm_271_while_identity_40sequential_90/lstm_271/while/Identity_4:output:0"[
'sequential_90_lstm_271_while_identity_50sequential_90/lstm_271/while/Identity_5:output:0"?
Jsequential_90_lstm_271_while_lstm_cell_526_biasadd_readvariableop_resourceLsequential_90_lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0"?
Ksequential_90_lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resourceMsequential_90_lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0"?
Isequential_90_lstm_271_while_lstm_cell_526_matmul_readvariableop_resourceKsequential_90_lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0"?
Csequential_90_lstm_271_while_sequential_90_lstm_271_strided_slice_1Esequential_90_lstm_271_while_sequential_90_lstm_271_strided_slice_1_0"?
sequential_90_lstm_271_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_271_tensorarrayunstack_tensorlistfromtensor?sequential_90_lstm_271_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_271_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOpAsequential_90/lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp2?
@sequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp@sequential_90/lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp2?
Bsequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOpBsequential_90/lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3189243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3188912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188912___redundant_placeholder05
1while_while_cond_3188912___redundant_placeholder15
1while_while_cond_3188912___redundant_placeholder25
1while_while_cond_3188912___redundant_placeholder3
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
*__inference_lstm_271_layer_call_fn_3191099

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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3188631s
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
?K
?
E__inference_lstm_272_layer_call_and_return_conditional_losses_3191869
inputs_0>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3191785*
condR
while_cond_3191784*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3189077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3189077___redundant_placeholder05
1while_while_cond_3189077___redundant_placeholder15
1while_while_cond_3189077___redundant_placeholder25
1while_while_cond_3189077___redundant_placeholder3
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191396
inputs_0?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3191312*
condR
while_cond_3191311*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187495

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
while_cond_3188696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188696___redundant_placeholder05
1while_while_cond_3188696___redundant_placeholder15
1while_while_cond_3188696___redundant_placeholder25
1while_while_cond_3188696___redundant_placeholder3
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188781

inputs>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3188697*
condR
while_cond_3188696*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_272_while_body_3190360.
*lstm_272_while_lstm_272_while_loop_counter4
0lstm_272_while_lstm_272_while_maximum_iterations
lstm_272_while_placeholder 
lstm_272_while_placeholder_1 
lstm_272_while_placeholder_2 
lstm_272_while_placeholder_3-
)lstm_272_while_lstm_272_strided_slice_1_0i
elstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0:2(Q
?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(L
>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0:(
lstm_272_while_identity
lstm_272_while_identity_1
lstm_272_while_identity_2
lstm_272_while_identity_3
lstm_272_while_identity_4
lstm_272_while_identity_5+
'lstm_272_while_lstm_272_strided_slice_1g
clstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensorM
;lstm_272_while_lstm_cell_527_matmul_readvariableop_resource:2(O
=lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource:
(J
<lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource:(??3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp?2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp?4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp?
@lstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_272/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0lstm_272_while_placeholderIlstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_272/while/lstm_cell_527/MatMulMatMul9lstm_272/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_272/while/lstm_cell_527/MatMul_1MatMullstm_272_while_placeholder_2<lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_272/while/lstm_cell_527/addAddV2-lstm_272/while/lstm_cell_527/MatMul:product:0/lstm_272/while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_272/while/lstm_cell_527/BiasAddBiasAdd$lstm_272/while/lstm_cell_527/add:z:0;lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_272/while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_272/while/lstm_cell_527/splitSplit5lstm_272/while/lstm_cell_527/split/split_dim:output:0-lstm_272/while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_272/while/lstm_cell_527/SigmoidSigmoid+lstm_272/while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_272/while/lstm_cell_527/Sigmoid_1Sigmoid+lstm_272/while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_272/while/lstm_cell_527/mulMul*lstm_272/while/lstm_cell_527/Sigmoid_1:y:0lstm_272_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_272/while/lstm_cell_527/ReluRelu+lstm_272/while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/mul_1Mul(lstm_272/while/lstm_cell_527/Sigmoid:y:0/lstm_272/while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/add_1AddV2$lstm_272/while/lstm_cell_527/mul:z:0&lstm_272/while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_272/while/lstm_cell_527/Sigmoid_2Sigmoid+lstm_272/while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_272/while/lstm_cell_527/Relu_1Relu&lstm_272/while/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/mul_2Mul*lstm_272/while/lstm_cell_527/Sigmoid_2:y:01lstm_272/while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_272/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_272_while_placeholder_1lstm_272_while_placeholder&lstm_272/while/lstm_cell_527/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_272/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_272/while/addAddV2lstm_272_while_placeholderlstm_272/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_272/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_272/while/add_1AddV2*lstm_272_while_lstm_272_while_loop_counterlstm_272/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_272/while/IdentityIdentitylstm_272/while/add_1:z:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_1Identity0lstm_272_while_lstm_272_while_maximum_iterations^lstm_272/while/NoOp*
T0*
_output_shapes
: t
lstm_272/while/Identity_2Identitylstm_272/while/add:z:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_3IdentityClstm_272/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_4Identity&lstm_272/while/lstm_cell_527/mul_2:z:0^lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_272/while/Identity_5Identity&lstm_272/while/lstm_cell_527/add_1:z:0^lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_272/while/NoOpNoOp4^lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp3^lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp5^lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_272_while_identity lstm_272/while/Identity:output:0"?
lstm_272_while_identity_1"lstm_272/while/Identity_1:output:0"?
lstm_272_while_identity_2"lstm_272/while/Identity_2:output:0"?
lstm_272_while_identity_3"lstm_272/while/Identity_3:output:0"?
lstm_272_while_identity_4"lstm_272/while/Identity_4:output:0"?
lstm_272_while_identity_5"lstm_272/while/Identity_5:output:0"T
'lstm_272_while_lstm_272_strided_slice_1)lstm_272_while_lstm_272_strided_slice_1_0"~
<lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0"?
=lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0"|
;lstm_272_while_lstm_cell_527_matmul_readvariableop_resource=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0"?
clstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensorelstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp2h
2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp2l
4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799

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
while_cond_3188546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188546___redundant_placeholder05
1while_while_cond_3188546___redundant_placeholder15
1while_while_cond_3188546___redundant_placeholder25
1while_while_cond_3188546___redundant_placeholder3
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
*__inference_lstm_271_layer_call_fn_3191110

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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3189162s
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
while_body_3191785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_271_while_body_3190221.
*lstm_271_while_lstm_271_while_loop_counter4
0lstm_271_while_lstm_271_while_maximum_iterations
lstm_271_while_placeholder 
lstm_271_while_placeholder_1 
lstm_271_while_placeholder_2 
lstm_271_while_placeholder_3-
)lstm_271_while_lstm_271_strided_slice_1_0i
elstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0:	d?R
?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?M
>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
lstm_271_while_identity
lstm_271_while_identity_1
lstm_271_while_identity_2
lstm_271_while_identity_3
lstm_271_while_identity_4
lstm_271_while_identity_5+
'lstm_271_while_lstm_271_strided_slice_1g
clstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensorN
;lstm_271_while_lstm_cell_526_matmul_readvariableop_resource:	d?P
=lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource:	2?K
<lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource:	???3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp?2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp?4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp?
@lstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_271/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0lstm_271_while_placeholderIlstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_271/while/lstm_cell_526/MatMulMatMul9lstm_271/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_271/while/lstm_cell_526/MatMul_1MatMullstm_271_while_placeholder_2<lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_271/while/lstm_cell_526/addAddV2-lstm_271/while/lstm_cell_526/MatMul:product:0/lstm_271/while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_271/while/lstm_cell_526/BiasAddBiasAdd$lstm_271/while/lstm_cell_526/add:z:0;lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_271/while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_271/while/lstm_cell_526/splitSplit5lstm_271/while/lstm_cell_526/split/split_dim:output:0-lstm_271/while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_271/while/lstm_cell_526/SigmoidSigmoid+lstm_271/while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_271/while/lstm_cell_526/Sigmoid_1Sigmoid+lstm_271/while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_271/while/lstm_cell_526/mulMul*lstm_271/while/lstm_cell_526/Sigmoid_1:y:0lstm_271_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_271/while/lstm_cell_526/ReluRelu+lstm_271/while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/mul_1Mul(lstm_271/while/lstm_cell_526/Sigmoid:y:0/lstm_271/while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/add_1AddV2$lstm_271/while/lstm_cell_526/mul:z:0&lstm_271/while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_271/while/lstm_cell_526/Sigmoid_2Sigmoid+lstm_271/while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_271/while/lstm_cell_526/Relu_1Relu&lstm_271/while/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/mul_2Mul*lstm_271/while/lstm_cell_526/Sigmoid_2:y:01lstm_271/while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_271/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_271_while_placeholder_1lstm_271_while_placeholder&lstm_271/while/lstm_cell_526/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_271/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_271/while/addAddV2lstm_271_while_placeholderlstm_271/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_271/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_271/while/add_1AddV2*lstm_271_while_lstm_271_while_loop_counterlstm_271/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_271/while/IdentityIdentitylstm_271/while/add_1:z:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_1Identity0lstm_271_while_lstm_271_while_maximum_iterations^lstm_271/while/NoOp*
T0*
_output_shapes
: t
lstm_271/while/Identity_2Identitylstm_271/while/add:z:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_3IdentityClstm_271/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_4Identity&lstm_271/while/lstm_cell_526/mul_2:z:0^lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_271/while/Identity_5Identity&lstm_271/while/lstm_cell_526/add_1:z:0^lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_271/while/NoOpNoOp4^lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp3^lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp5^lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_271_while_identity lstm_271/while/Identity:output:0"?
lstm_271_while_identity_1"lstm_271/while/Identity_1:output:0"?
lstm_271_while_identity_2"lstm_271/while/Identity_2:output:0"?
lstm_271_while_identity_3"lstm_271/while/Identity_3:output:0"?
lstm_271_while_identity_4"lstm_271/while/Identity_4:output:0"?
lstm_271_while_identity_5"lstm_271/while/Identity_5:output:0"T
'lstm_271_while_lstm_271_strided_slice_1)lstm_271_while_lstm_271_strided_slice_1_0"~
<lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0"?
=lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0"|
;lstm_271_while_lstm_cell_526_matmul_readvariableop_resource=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0"?
clstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensorelstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp2h
2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp2l
4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192012
inputs_0>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3191928*
condR
while_cond_3191927*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_527_layer_call_fn_3192547

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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188195o
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
?W
?
 __inference__traced_save_3192754
file_prefix.
*savev2_dense_90_kernel_read_readvariableop,
(savev2_dense_90_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_270_lstm_cell_270_kernel_read_readvariableopF
Bsavev2_lstm_270_lstm_cell_270_recurrent_kernel_read_readvariableop:
6savev2_lstm_270_lstm_cell_270_bias_read_readvariableop<
8savev2_lstm_271_lstm_cell_271_kernel_read_readvariableopF
Bsavev2_lstm_271_lstm_cell_271_recurrent_kernel_read_readvariableop:
6savev2_lstm_271_lstm_cell_271_bias_read_readvariableop<
8savev2_lstm_272_lstm_cell_272_kernel_read_readvariableopF
Bsavev2_lstm_272_lstm_cell_272_recurrent_kernel_read_readvariableop:
6savev2_lstm_272_lstm_cell_272_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_90_kernel_m_read_readvariableop3
/savev2_adam_dense_90_bias_m_read_readvariableopC
?savev2_adam_lstm_270_lstm_cell_270_kernel_m_read_readvariableopM
Isavev2_adam_lstm_270_lstm_cell_270_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_270_lstm_cell_270_bias_m_read_readvariableopC
?savev2_adam_lstm_271_lstm_cell_271_kernel_m_read_readvariableopM
Isavev2_adam_lstm_271_lstm_cell_271_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_271_lstm_cell_271_bias_m_read_readvariableopC
?savev2_adam_lstm_272_lstm_cell_272_kernel_m_read_readvariableopM
Isavev2_adam_lstm_272_lstm_cell_272_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_272_lstm_cell_272_bias_m_read_readvariableop5
1savev2_adam_dense_90_kernel_v_read_readvariableop3
/savev2_adam_dense_90_bias_v_read_readvariableopC
?savev2_adam_lstm_270_lstm_cell_270_kernel_v_read_readvariableopM
Isavev2_adam_lstm_270_lstm_cell_270_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_270_lstm_cell_270_bias_v_read_readvariableopC
?savev2_adam_lstm_271_lstm_cell_271_kernel_v_read_readvariableopM
Isavev2_adam_lstm_271_lstm_cell_271_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_271_lstm_cell_271_bias_v_read_readvariableopC
?savev2_adam_lstm_272_lstm_cell_272_kernel_v_read_readvariableopM
Isavev2_adam_lstm_272_lstm_cell_272_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_272_lstm_cell_272_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_90_kernel_read_readvariableop(savev2_dense_90_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_270_lstm_cell_270_kernel_read_readvariableopBsavev2_lstm_270_lstm_cell_270_recurrent_kernel_read_readvariableop6savev2_lstm_270_lstm_cell_270_bias_read_readvariableop8savev2_lstm_271_lstm_cell_271_kernel_read_readvariableopBsavev2_lstm_271_lstm_cell_271_recurrent_kernel_read_readvariableop6savev2_lstm_271_lstm_cell_271_bias_read_readvariableop8savev2_lstm_272_lstm_cell_272_kernel_read_readvariableopBsavev2_lstm_272_lstm_cell_272_recurrent_kernel_read_readvariableop6savev2_lstm_272_lstm_cell_272_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_90_kernel_m_read_readvariableop/savev2_adam_dense_90_bias_m_read_readvariableop?savev2_adam_lstm_270_lstm_cell_270_kernel_m_read_readvariableopIsavev2_adam_lstm_270_lstm_cell_270_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_270_lstm_cell_270_bias_m_read_readvariableop?savev2_adam_lstm_271_lstm_cell_271_kernel_m_read_readvariableopIsavev2_adam_lstm_271_lstm_cell_271_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_271_lstm_cell_271_bias_m_read_readvariableop?savev2_adam_lstm_272_lstm_cell_272_kernel_m_read_readvariableopIsavev2_adam_lstm_272_lstm_cell_272_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_272_lstm_cell_272_bias_m_read_readvariableop1savev2_adam_dense_90_kernel_v_read_readvariableop/savev2_adam_dense_90_bias_v_read_readvariableop?savev2_adam_lstm_270_lstm_cell_270_kernel_v_read_readvariableopIsavev2_adam_lstm_270_lstm_cell_270_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_270_lstm_cell_270_bias_v_read_readvariableop?savev2_adam_lstm_271_lstm_cell_271_kernel_v_read_readvariableopIsavev2_adam_lstm_271_lstm_cell_271_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_271_lstm_cell_271_bias_v_read_readvariableop?savev2_adam_lstm_272_lstm_cell_272_kernel_v_read_readvariableopIsavev2_adam_lstm_272_lstm_cell_272_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_272_lstm_cell_272_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192155

inputs>
,lstm_cell_527_matmul_readvariableop_resource:2(@
.lstm_cell_527_matmul_1_readvariableop_resource:
(;
-lstm_cell_527_biasadd_readvariableop_resource:(
identity??$lstm_cell_527/BiasAdd/ReadVariableOp?#lstm_cell_527/MatMul/ReadVariableOp?%lstm_cell_527/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_527/MatMul/ReadVariableOpReadVariableOp,lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_527/MatMulMatMulstrided_slice_2:output:0+lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_527/MatMul_1MatMulzeros:output:0-lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_527/addAddV2lstm_cell_527/MatMul:product:0 lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_527/BiasAddBiasAddlstm_cell_527/add:z:0,lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_527/splitSplit&lstm_cell_527/split/split_dim:output:0lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_527/SigmoidSigmoidlstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_1Sigmoidlstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_527/mulMullstm_cell_527/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_527/ReluRelulstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_1Mullstm_cell_527/Sigmoid:y:0 lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_527/add_1AddV2lstm_cell_527/mul:z:0lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_527/Sigmoid_2Sigmoidlstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_527/Relu_1Relulstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_527/mul_2Mullstm_cell_527/Sigmoid_2:y:0"lstm_cell_527/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_527_matmul_readvariableop_resource.lstm_cell_527_matmul_1_readvariableop_resource-lstm_cell_527_biasadd_readvariableop_resource*
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
while_body_3192071*
condR
while_cond_3192070*K
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
NoOpNoOp%^lstm_cell_527/BiasAdd/ReadVariableOp$^lstm_cell_527/MatMul/ReadVariableOp&^lstm_cell_527/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_527/BiasAdd/ReadVariableOp$lstm_cell_527/BiasAdd/ReadVariableOp2J
#lstm_cell_527/MatMul/ReadVariableOp#lstm_cell_527/MatMul/ReadVariableOp2N
%lstm_cell_527/MatMul_1/ReadVariableOp%lstm_cell_527/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188195

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
*__inference_lstm_270_layer_call_fn_3190494

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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3189327s
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
?C
?

lstm_270_while_body_3190082.
*lstm_270_while_lstm_270_while_loop_counter4
0lstm_270_while_lstm_270_while_maximum_iterations
lstm_270_while_placeholder 
lstm_270_while_placeholder_1 
lstm_270_while_placeholder_2 
lstm_270_while_placeholder_3-
)lstm_270_while_lstm_270_strided_slice_1_0i
elstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0:	?R
?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?M
>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
lstm_270_while_identity
lstm_270_while_identity_1
lstm_270_while_identity_2
lstm_270_while_identity_3
lstm_270_while_identity_4
lstm_270_while_identity_5+
'lstm_270_while_lstm_270_strided_slice_1g
clstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensorN
;lstm_270_while_lstm_cell_525_matmul_readvariableop_resource:	?P
=lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource:	d?K
<lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource:	???3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp?2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp?4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp?
@lstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_270/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0lstm_270_while_placeholderIlstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_270/while/lstm_cell_525/MatMulMatMul9lstm_270/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_270/while/lstm_cell_525/MatMul_1MatMullstm_270_while_placeholder_2<lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_270/while/lstm_cell_525/addAddV2-lstm_270/while/lstm_cell_525/MatMul:product:0/lstm_270/while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_270/while/lstm_cell_525/BiasAddBiasAdd$lstm_270/while/lstm_cell_525/add:z:0;lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_270/while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_270/while/lstm_cell_525/splitSplit5lstm_270/while/lstm_cell_525/split/split_dim:output:0-lstm_270/while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_270/while/lstm_cell_525/SigmoidSigmoid+lstm_270/while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_270/while/lstm_cell_525/Sigmoid_1Sigmoid+lstm_270/while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_270/while/lstm_cell_525/mulMul*lstm_270/while/lstm_cell_525/Sigmoid_1:y:0lstm_270_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_270/while/lstm_cell_525/ReluRelu+lstm_270/while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/mul_1Mul(lstm_270/while/lstm_cell_525/Sigmoid:y:0/lstm_270/while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/add_1AddV2$lstm_270/while/lstm_cell_525/mul:z:0&lstm_270/while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_270/while/lstm_cell_525/Sigmoid_2Sigmoid+lstm_270/while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_270/while/lstm_cell_525/Relu_1Relu&lstm_270/while/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/mul_2Mul*lstm_270/while/lstm_cell_525/Sigmoid_2:y:01lstm_270/while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_270/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_270_while_placeholder_1lstm_270_while_placeholder&lstm_270/while/lstm_cell_525/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_270/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_270/while/addAddV2lstm_270_while_placeholderlstm_270/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_270/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_270/while/add_1AddV2*lstm_270_while_lstm_270_while_loop_counterlstm_270/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_270/while/IdentityIdentitylstm_270/while/add_1:z:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_1Identity0lstm_270_while_lstm_270_while_maximum_iterations^lstm_270/while/NoOp*
T0*
_output_shapes
: t
lstm_270/while/Identity_2Identitylstm_270/while/add:z:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_3IdentityClstm_270/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_4Identity&lstm_270/while/lstm_cell_525/mul_2:z:0^lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_270/while/Identity_5Identity&lstm_270/while/lstm_cell_525/add_1:z:0^lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_270/while/NoOpNoOp4^lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp3^lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp5^lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_270_while_identity lstm_270/while/Identity:output:0"?
lstm_270_while_identity_1"lstm_270/while/Identity_1:output:0"?
lstm_270_while_identity_2"lstm_270/while/Identity_2:output:0"?
lstm_270_while_identity_3"lstm_270/while/Identity_3:output:0"?
lstm_270_while_identity_4"lstm_270/while/Identity_4:output:0"?
lstm_270_while_identity_5"lstm_270/while/Identity_5:output:0"T
'lstm_270_while_lstm_270_strided_slice_1)lstm_270_while_lstm_270_strided_slice_1_0"~
<lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0"?
=lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0"|
;lstm_270_while_lstm_cell_525_matmul_readvariableop_resource=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0"?
clstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensorelstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp2h
2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp2l
4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192513

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
*__inference_lstm_272_layer_call_fn_3191693
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188132o
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
while_cond_3190552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3190552___redundant_placeholder05
1while_while_cond_3190552___redundant_placeholder15
1while_while_cond_3190552___redundant_placeholder25
1while_while_cond_3190552___redundant_placeholder3
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

lstm_271_while_body_3189794.
*lstm_271_while_lstm_271_while_loop_counter4
0lstm_271_while_lstm_271_while_maximum_iterations
lstm_271_while_placeholder 
lstm_271_while_placeholder_1 
lstm_271_while_placeholder_2 
lstm_271_while_placeholder_3-
)lstm_271_while_lstm_271_strided_slice_1_0i
elstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0:	d?R
?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?M
>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
lstm_271_while_identity
lstm_271_while_identity_1
lstm_271_while_identity_2
lstm_271_while_identity_3
lstm_271_while_identity_4
lstm_271_while_identity_5+
'lstm_271_while_lstm_271_strided_slice_1g
clstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensorN
;lstm_271_while_lstm_cell_526_matmul_readvariableop_resource:	d?P
=lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource:	2?K
<lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource:	???3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp?2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp?4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp?
@lstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_271/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0lstm_271_while_placeholderIlstm_271/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_271/while/lstm_cell_526/MatMulMatMul9lstm_271/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_271/while/lstm_cell_526/MatMul_1MatMullstm_271_while_placeholder_2<lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_271/while/lstm_cell_526/addAddV2-lstm_271/while/lstm_cell_526/MatMul:product:0/lstm_271/while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_271/while/lstm_cell_526/BiasAddBiasAdd$lstm_271/while/lstm_cell_526/add:z:0;lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_271/while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_271/while/lstm_cell_526/splitSplit5lstm_271/while/lstm_cell_526/split/split_dim:output:0-lstm_271/while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_271/while/lstm_cell_526/SigmoidSigmoid+lstm_271/while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_271/while/lstm_cell_526/Sigmoid_1Sigmoid+lstm_271/while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_271/while/lstm_cell_526/mulMul*lstm_271/while/lstm_cell_526/Sigmoid_1:y:0lstm_271_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_271/while/lstm_cell_526/ReluRelu+lstm_271/while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/mul_1Mul(lstm_271/while/lstm_cell_526/Sigmoid:y:0/lstm_271/while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/add_1AddV2$lstm_271/while/lstm_cell_526/mul:z:0&lstm_271/while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_271/while/lstm_cell_526/Sigmoid_2Sigmoid+lstm_271/while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_271/while/lstm_cell_526/Relu_1Relu&lstm_271/while/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_271/while/lstm_cell_526/mul_2Mul*lstm_271/while/lstm_cell_526/Sigmoid_2:y:01lstm_271/while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_271/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_271_while_placeholder_1lstm_271_while_placeholder&lstm_271/while/lstm_cell_526/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_271/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_271/while/addAddV2lstm_271_while_placeholderlstm_271/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_271/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_271/while/add_1AddV2*lstm_271_while_lstm_271_while_loop_counterlstm_271/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_271/while/IdentityIdentitylstm_271/while/add_1:z:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_1Identity0lstm_271_while_lstm_271_while_maximum_iterations^lstm_271/while/NoOp*
T0*
_output_shapes
: t
lstm_271/while/Identity_2Identitylstm_271/while/add:z:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_3IdentityClstm_271/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_271/while/NoOp*
T0*
_output_shapes
: ?
lstm_271/while/Identity_4Identity&lstm_271/while/lstm_cell_526/mul_2:z:0^lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_271/while/Identity_5Identity&lstm_271/while/lstm_cell_526/add_1:z:0^lstm_271/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_271/while/NoOpNoOp4^lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp3^lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp5^lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_271_while_identity lstm_271/while/Identity:output:0"?
lstm_271_while_identity_1"lstm_271/while/Identity_1:output:0"?
lstm_271_while_identity_2"lstm_271/while/Identity_2:output:0"?
lstm_271_while_identity_3"lstm_271/while/Identity_3:output:0"?
lstm_271_while_identity_4"lstm_271/while/Identity_4:output:0"?
lstm_271_while_identity_5"lstm_271/while/Identity_5:output:0"T
'lstm_271_while_lstm_271_strided_slice_1)lstm_271_while_lstm_271_strided_slice_1_0"~
<lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource>lstm_271_while_lstm_cell_526_biasadd_readvariableop_resource_0"?
=lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource?lstm_271_while_lstm_cell_526_matmul_1_readvariableop_resource_0"|
;lstm_271_while_lstm_cell_526_matmul_readvariableop_resource=lstm_271_while_lstm_cell_526_matmul_readvariableop_resource_0"?
clstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensorelstm_271_while_tensorarrayv2read_tensorlistgetitem_lstm_271_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp3lstm_271/while/lstm_cell_526/BiasAdd/ReadVariableOp2h
2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp2lstm_271/while/lstm_cell_526/MatMul/ReadVariableOp2l
4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp4lstm_271/while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191539

inputs?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3191455*
condR
while_cond_3191454*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3188062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188062___redundant_placeholder05
1while_while_cond_3188062___redundant_placeholder15
1while_while_cond_3188062___redundant_placeholder25
1while_while_cond_3188062___redundant_placeholder3
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
/__inference_lstm_cell_526_layer_call_fn_3192449

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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187845o
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
*__inference_lstm_272_layer_call_fn_3191704
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188323o
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
while_cond_3187553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3187553___redundant_placeholder05
1while_while_cond_3187553___redundant_placeholder15
1while_while_cond_3187553___redundant_placeholder25
1while_while_cond_3187553___redundant_placeholder3
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190780
inputs_0?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3190696*
condR
while_cond_3190695*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_270_while_cond_3190081.
*lstm_270_while_lstm_270_while_loop_counter4
0lstm_270_while_lstm_270_while_maximum_iterations
lstm_270_while_placeholder 
lstm_270_while_placeholder_1 
lstm_270_while_placeholder_2 
lstm_270_while_placeholder_30
,lstm_270_while_less_lstm_270_strided_slice_1G
Clstm_270_while_lstm_270_while_cond_3190081___redundant_placeholder0G
Clstm_270_while_lstm_270_while_cond_3190081___redundant_placeholder1G
Clstm_270_while_lstm_270_while_cond_3190081___redundant_placeholder2G
Clstm_270_while_lstm_270_while_cond_3190081___redundant_placeholder3
lstm_270_while_identity
?
lstm_270/while/LessLesslstm_270_while_placeholder,lstm_270_while_less_lstm_270_strided_slice_1*
T0*
_output_shapes
: ]
lstm_270/while/IdentityIdentitylstm_270/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_270_while_identity lstm_270/while/Identity:output:0*(
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3189162

inputs?
,lstm_cell_526_matmul_readvariableop_resource:	d?A
.lstm_cell_526_matmul_1_readvariableop_resource:	2?<
-lstm_cell_526_biasadd_readvariableop_resource:	?
identity??$lstm_cell_526/BiasAdd/ReadVariableOp?#lstm_cell_526/MatMul/ReadVariableOp?%lstm_cell_526/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_526/MatMul/ReadVariableOpReadVariableOp,lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_526/MatMulMatMulstrided_slice_2:output:0+lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_526/MatMul_1MatMulzeros:output:0-lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_526/addAddV2lstm_cell_526/MatMul:product:0 lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_526/BiasAddBiasAddlstm_cell_526/add:z:0,lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_526/splitSplit&lstm_cell_526/split/split_dim:output:0lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_526/SigmoidSigmoidlstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_1Sigmoidlstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_526/mulMullstm_cell_526/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_526/ReluRelulstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_1Mullstm_cell_526/Sigmoid:y:0 lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_526/add_1AddV2lstm_cell_526/mul:z:0lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_526/Sigmoid_2Sigmoidlstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_526/Relu_1Relulstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_526/mul_2Mullstm_cell_526/Sigmoid_2:y:0"lstm_cell_526/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_526_matmul_readvariableop_resource.lstm_cell_526_matmul_1_readvariableop_resource-lstm_cell_526_biasadd_readvariableop_resource*
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
while_body_3189078*
condR
while_cond_3189077*K
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
NoOpNoOp%^lstm_cell_526/BiasAdd/ReadVariableOp$^lstm_cell_526/MatMul/ReadVariableOp&^lstm_cell_526/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_526/BiasAdd/ReadVariableOp$lstm_cell_526/BiasAdd/ReadVariableOp2J
#lstm_cell_526/MatMul/ReadVariableOp#lstm_cell_526/MatMul/ReadVariableOp2N
%lstm_cell_526/MatMul_1/ReadVariableOp%lstm_cell_526/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_271_layer_call_fn_3191088
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3187973|
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
while_cond_3191168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191168___redundant_placeholder05
1while_while_cond_3191168___redundant_placeholder15
1while_while_cond_3191168___redundant_placeholder25
1while_while_cond_3191168___redundant_placeholder3
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
while_body_3190696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3190981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3190981___redundant_placeholder05
1while_while_cond_3190981___redundant_placeholder15
1while_while_cond_3190981___redundant_placeholder25
1while_while_cond_3190981___redundant_placeholder3
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188049

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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192481

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
?J
?
E__inference_lstm_270_layer_call_and_return_conditional_losses_3191066

inputs?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3190982*
condR
while_cond_3190981*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3188697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_90_layer_call_fn_3192307

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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799o
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
while_body_3187713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_526_3187737_0:	d?0
while_lstm_cell_526_3187739_0:	2?,
while_lstm_cell_526_3187741_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_526_3187737:	d?.
while_lstm_cell_526_3187739:	2?*
while_lstm_cell_526_3187741:	???+while/lstm_cell_526/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_526/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_526_3187737_0while_lstm_cell_526_3187739_0while_lstm_cell_526_3187741_0*
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187699?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_526/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_526/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_526/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_526/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_526_3187737while_lstm_cell_526_3187737_0"<
while_lstm_cell_526_3187739while_lstm_cell_526_3187739_0"<
while_lstm_cell_526_3187741while_lstm_cell_526_3187741_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_526/StatefulPartitionedCall+while/lstm_cell_526/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3191784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191784___redundant_placeholder05
1while_while_cond_3191784___redundant_placeholder15
1while_while_cond_3191784___redundant_placeholder25
1while_while_cond_3191784___redundant_placeholder3
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3187782

inputs(
lstm_cell_526_3187700:	d?(
lstm_cell_526_3187702:	2?$
lstm_cell_526_3187704:	?
identity??%lstm_cell_526/StatefulPartitionedCall?while;
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
%lstm_cell_526/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_526_3187700lstm_cell_526_3187702lstm_cell_526_3187704*
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187699n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_526_3187700lstm_cell_526_3187702lstm_cell_526_3187704*
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
while_body_3187713*
condR
while_cond_3187712*K
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
NoOpNoOp&^lstm_cell_526/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_526/StatefulPartitionedCall%lstm_cell_526/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3192071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188323

inputs'
lstm_cell_527_3188241:2('
lstm_cell_527_3188243:
(#
lstm_cell_527_3188245:(
identity??%lstm_cell_527/StatefulPartitionedCall?while;
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
%lstm_cell_527/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_527_3188241lstm_cell_527_3188243lstm_cell_527_3188245*
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188195n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_527_3188241lstm_cell_527_3188243lstm_cell_527_3188245*
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
while_body_3188254*
condR
while_cond_3188253*K
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
NoOpNoOp&^lstm_cell_527/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_527/StatefulPartitionedCall%lstm_cell_527/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_90_layer_call_fn_3188831
lstm_270_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_270_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3188806o
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
_user_specified_namelstm_270_input
?8
?
while_body_3188397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_90_lstm_270_while_cond_3186913J
Fsequential_90_lstm_270_while_sequential_90_lstm_270_while_loop_counterP
Lsequential_90_lstm_270_while_sequential_90_lstm_270_while_maximum_iterations,
(sequential_90_lstm_270_while_placeholder.
*sequential_90_lstm_270_while_placeholder_1.
*sequential_90_lstm_270_while_placeholder_2.
*sequential_90_lstm_270_while_placeholder_3L
Hsequential_90_lstm_270_while_less_sequential_90_lstm_270_strided_slice_1c
_sequential_90_lstm_270_while_sequential_90_lstm_270_while_cond_3186913___redundant_placeholder0c
_sequential_90_lstm_270_while_sequential_90_lstm_270_while_cond_3186913___redundant_placeholder1c
_sequential_90_lstm_270_while_sequential_90_lstm_270_while_cond_3186913___redundant_placeholder2c
_sequential_90_lstm_270_while_sequential_90_lstm_270_while_cond_3186913___redundant_placeholder3)
%sequential_90_lstm_270_while_identity
?
!sequential_90/lstm_270/while/LessLess(sequential_90_lstm_270_while_placeholderHsequential_90_lstm_270_while_less_sequential_90_lstm_270_strided_slice_1*
T0*
_output_shapes
: y
%sequential_90/lstm_270/while/IdentityIdentity%sequential_90/lstm_270/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_90_lstm_270_while_identity.sequential_90/lstm_270/while/Identity:output:0*(
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189477
lstm_270_input#
lstm_270_3189450:	?#
lstm_270_3189452:	d?
lstm_270_3189454:	?#
lstm_271_3189457:	d?#
lstm_271_3189459:	2?
lstm_271_3189461:	?"
lstm_272_3189464:2("
lstm_272_3189466:
(
lstm_272_3189468:("
dense_90_3189471:

dense_90_3189473:
identity?? dense_90/StatefulPartitionedCall? lstm_270/StatefulPartitionedCall? lstm_271/StatefulPartitionedCall? lstm_272/StatefulPartitionedCall?
 lstm_270/StatefulPartitionedCallStatefulPartitionedCalllstm_270_inputlstm_270_3189450lstm_270_3189452lstm_270_3189454*
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3188481?
 lstm_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_270/StatefulPartitionedCall:output:0lstm_271_3189457lstm_271_3189459lstm_271_3189461*
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3188631?
 lstm_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_271/StatefulPartitionedCall:output:0lstm_272_3189464lstm_272_3189466lstm_272_3189468*
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188781?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall)lstm_272/StatefulPartitionedCall:output:0dense_90_3189471dense_90_3189473*
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799x
IdentityIdentity)dense_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_90/StatefulPartitionedCall!^lstm_270/StatefulPartitionedCall!^lstm_271/StatefulPartitionedCall!^lstm_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 lstm_270/StatefulPartitionedCall lstm_270/StatefulPartitionedCall2D
 lstm_271/StatefulPartitionedCall lstm_271/StatefulPartitionedCall2D
 lstm_272/StatefulPartitionedCall lstm_272/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_270_input
?8
?
E__inference_lstm_271_layer_call_and_return_conditional_losses_3187973

inputs(
lstm_cell_526_3187891:	d?(
lstm_cell_526_3187893:	2?$
lstm_cell_526_3187895:	?
identity??%lstm_cell_526/StatefulPartitionedCall?while;
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
%lstm_cell_526/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_526_3187891lstm_cell_526_3187893lstm_cell_526_3187895*
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187845n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_526_3187891lstm_cell_526_3187893lstm_cell_526_3187895*
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
while_body_3187904*
condR
while_cond_3187903*K
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
NoOpNoOp&^lstm_cell_526/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_526/StatefulPartitionedCall%lstm_cell_526/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3187282
lstm_270_inputV
Csequential_90_lstm_270_lstm_cell_525_matmul_readvariableop_resource:	?X
Esequential_90_lstm_270_lstm_cell_525_matmul_1_readvariableop_resource:	d?S
Dsequential_90_lstm_270_lstm_cell_525_biasadd_readvariableop_resource:	?V
Csequential_90_lstm_271_lstm_cell_526_matmul_readvariableop_resource:	d?X
Esequential_90_lstm_271_lstm_cell_526_matmul_1_readvariableop_resource:	2?S
Dsequential_90_lstm_271_lstm_cell_526_biasadd_readvariableop_resource:	?U
Csequential_90_lstm_272_lstm_cell_527_matmul_readvariableop_resource:2(W
Esequential_90_lstm_272_lstm_cell_527_matmul_1_readvariableop_resource:
(R
Dsequential_90_lstm_272_lstm_cell_527_biasadd_readvariableop_resource:(G
5sequential_90_dense_90_matmul_readvariableop_resource:
D
6sequential_90_dense_90_biasadd_readvariableop_resource:
identity??-sequential_90/dense_90/BiasAdd/ReadVariableOp?,sequential_90/dense_90/MatMul/ReadVariableOp?;sequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp?:sequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOp?<sequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp?sequential_90/lstm_270/while?;sequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp?:sequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOp?<sequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp?sequential_90/lstm_271/while?;sequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp?:sequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOp?<sequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp?sequential_90/lstm_272/whileZ
sequential_90/lstm_270/ShapeShapelstm_270_input*
T0*
_output_shapes
:t
*sequential_90/lstm_270/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_90/lstm_270/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_90/lstm_270/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_90/lstm_270/strided_sliceStridedSlice%sequential_90/lstm_270/Shape:output:03sequential_90/lstm_270/strided_slice/stack:output:05sequential_90/lstm_270/strided_slice/stack_1:output:05sequential_90/lstm_270/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_90/lstm_270/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_90/lstm_270/zeros/packedPack-sequential_90/lstm_270/strided_slice:output:0.sequential_90/lstm_270/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_90/lstm_270/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_270/zerosFill,sequential_90/lstm_270/zeros/packed:output:0+sequential_90/lstm_270/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_90/lstm_270/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_90/lstm_270/zeros_1/packedPack-sequential_90/lstm_270/strided_slice:output:00sequential_90/lstm_270/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_90/lstm_270/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_270/zeros_1Fill.sequential_90/lstm_270/zeros_1/packed:output:0-sequential_90/lstm_270/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_90/lstm_270/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_90/lstm_270/transpose	Transposelstm_270_input.sequential_90/lstm_270/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_90/lstm_270/Shape_1Shape$sequential_90/lstm_270/transpose:y:0*
T0*
_output_shapes
:v
,sequential_90/lstm_270/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_270/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_270/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_270/strided_slice_1StridedSlice'sequential_90/lstm_270/Shape_1:output:05sequential_90/lstm_270/strided_slice_1/stack:output:07sequential_90/lstm_270/strided_slice_1/stack_1:output:07sequential_90/lstm_270/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_90/lstm_270/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_90/lstm_270/TensorArrayV2TensorListReserve;sequential_90/lstm_270/TensorArrayV2/element_shape:output:0/sequential_90/lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_90/lstm_270/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_90/lstm_270/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_90/lstm_270/transpose:y:0Usequential_90/lstm_270/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_90/lstm_270/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_270/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_270/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_270/strided_slice_2StridedSlice$sequential_90/lstm_270/transpose:y:05sequential_90/lstm_270/strided_slice_2/stack:output:07sequential_90/lstm_270/strided_slice_2/stack_1:output:07sequential_90/lstm_270/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOpReadVariableOpCsequential_90_lstm_270_lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_90/lstm_270/lstm_cell_525/MatMulMatMul/sequential_90/lstm_270/strided_slice_2:output:0Bsequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOpEsequential_90_lstm_270_lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_90/lstm_270/lstm_cell_525/MatMul_1MatMul%sequential_90/lstm_270/zeros:output:0Dsequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_90/lstm_270/lstm_cell_525/addAddV25sequential_90/lstm_270/lstm_cell_525/MatMul:product:07sequential_90/lstm_270/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOpDsequential_90_lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_90/lstm_270/lstm_cell_525/BiasAddBiasAdd,sequential_90/lstm_270/lstm_cell_525/add:z:0Csequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_90/lstm_270/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_90/lstm_270/lstm_cell_525/splitSplit=sequential_90/lstm_270/lstm_cell_525/split/split_dim:output:05sequential_90/lstm_270/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_90/lstm_270/lstm_cell_525/SigmoidSigmoid3sequential_90/lstm_270/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_90/lstm_270/lstm_cell_525/Sigmoid_1Sigmoid3sequential_90/lstm_270/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_90/lstm_270/lstm_cell_525/mulMul2sequential_90/lstm_270/lstm_cell_525/Sigmoid_1:y:0'sequential_90/lstm_270/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_90/lstm_270/lstm_cell_525/ReluRelu3sequential_90/lstm_270/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_90/lstm_270/lstm_cell_525/mul_1Mul0sequential_90/lstm_270/lstm_cell_525/Sigmoid:y:07sequential_90/lstm_270/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_90/lstm_270/lstm_cell_525/add_1AddV2,sequential_90/lstm_270/lstm_cell_525/mul:z:0.sequential_90/lstm_270/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_90/lstm_270/lstm_cell_525/Sigmoid_2Sigmoid3sequential_90/lstm_270/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_90/lstm_270/lstm_cell_525/Relu_1Relu.sequential_90/lstm_270/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_90/lstm_270/lstm_cell_525/mul_2Mul2sequential_90/lstm_270/lstm_cell_525/Sigmoid_2:y:09sequential_90/lstm_270/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_90/lstm_270/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_90/lstm_270/TensorArrayV2_1TensorListReserve=sequential_90/lstm_270/TensorArrayV2_1/element_shape:output:0/sequential_90/lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_90/lstm_270/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_90/lstm_270/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_90/lstm_270/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_90/lstm_270/whileWhile2sequential_90/lstm_270/while/loop_counter:output:08sequential_90/lstm_270/while/maximum_iterations:output:0$sequential_90/lstm_270/time:output:0/sequential_90/lstm_270/TensorArrayV2_1:handle:0%sequential_90/lstm_270/zeros:output:0'sequential_90/lstm_270/zeros_1:output:0/sequential_90/lstm_270/strided_slice_1:output:0Nsequential_90/lstm_270/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_90_lstm_270_lstm_cell_525_matmul_readvariableop_resourceEsequential_90_lstm_270_lstm_cell_525_matmul_1_readvariableop_resourceDsequential_90_lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
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
)sequential_90_lstm_270_while_body_3186914*5
cond-R+
)sequential_90_lstm_270_while_cond_3186913*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_90/lstm_270/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_90/lstm_270/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_90/lstm_270/while:output:3Psequential_90/lstm_270/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_90/lstm_270/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_90/lstm_270/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_270/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_270/strided_slice_3StridedSliceBsequential_90/lstm_270/TensorArrayV2Stack/TensorListStack:tensor:05sequential_90/lstm_270/strided_slice_3/stack:output:07sequential_90/lstm_270/strided_slice_3/stack_1:output:07sequential_90/lstm_270/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_90/lstm_270/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_90/lstm_270/transpose_1	TransposeBsequential_90/lstm_270/TensorArrayV2Stack/TensorListStack:tensor:00sequential_90/lstm_270/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_90/lstm_270/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_90/lstm_271/ShapeShape&sequential_90/lstm_270/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_90/lstm_271/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_90/lstm_271/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_90/lstm_271/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_90/lstm_271/strided_sliceStridedSlice%sequential_90/lstm_271/Shape:output:03sequential_90/lstm_271/strided_slice/stack:output:05sequential_90/lstm_271/strided_slice/stack_1:output:05sequential_90/lstm_271/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_90/lstm_271/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_90/lstm_271/zeros/packedPack-sequential_90/lstm_271/strided_slice:output:0.sequential_90/lstm_271/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_90/lstm_271/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_271/zerosFill,sequential_90/lstm_271/zeros/packed:output:0+sequential_90/lstm_271/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_90/lstm_271/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_90/lstm_271/zeros_1/packedPack-sequential_90/lstm_271/strided_slice:output:00sequential_90/lstm_271/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_90/lstm_271/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_271/zeros_1Fill.sequential_90/lstm_271/zeros_1/packed:output:0-sequential_90/lstm_271/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_90/lstm_271/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_90/lstm_271/transpose	Transpose&sequential_90/lstm_270/transpose_1:y:0.sequential_90/lstm_271/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_90/lstm_271/Shape_1Shape$sequential_90/lstm_271/transpose:y:0*
T0*
_output_shapes
:v
,sequential_90/lstm_271/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_271/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_271/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_271/strided_slice_1StridedSlice'sequential_90/lstm_271/Shape_1:output:05sequential_90/lstm_271/strided_slice_1/stack:output:07sequential_90/lstm_271/strided_slice_1/stack_1:output:07sequential_90/lstm_271/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_90/lstm_271/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_90/lstm_271/TensorArrayV2TensorListReserve;sequential_90/lstm_271/TensorArrayV2/element_shape:output:0/sequential_90/lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_90/lstm_271/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_90/lstm_271/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_90/lstm_271/transpose:y:0Usequential_90/lstm_271/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_90/lstm_271/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_271/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_271/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_271/strided_slice_2StridedSlice$sequential_90/lstm_271/transpose:y:05sequential_90/lstm_271/strided_slice_2/stack:output:07sequential_90/lstm_271/strided_slice_2/stack_1:output:07sequential_90/lstm_271/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOpReadVariableOpCsequential_90_lstm_271_lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_90/lstm_271/lstm_cell_526/MatMulMatMul/sequential_90/lstm_271/strided_slice_2:output:0Bsequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOpEsequential_90_lstm_271_lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_90/lstm_271/lstm_cell_526/MatMul_1MatMul%sequential_90/lstm_271/zeros:output:0Dsequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_90/lstm_271/lstm_cell_526/addAddV25sequential_90/lstm_271/lstm_cell_526/MatMul:product:07sequential_90/lstm_271/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOpDsequential_90_lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_90/lstm_271/lstm_cell_526/BiasAddBiasAdd,sequential_90/lstm_271/lstm_cell_526/add:z:0Csequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_90/lstm_271/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_90/lstm_271/lstm_cell_526/splitSplit=sequential_90/lstm_271/lstm_cell_526/split/split_dim:output:05sequential_90/lstm_271/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_90/lstm_271/lstm_cell_526/SigmoidSigmoid3sequential_90/lstm_271/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_90/lstm_271/lstm_cell_526/Sigmoid_1Sigmoid3sequential_90/lstm_271/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_90/lstm_271/lstm_cell_526/mulMul2sequential_90/lstm_271/lstm_cell_526/Sigmoid_1:y:0'sequential_90/lstm_271/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_90/lstm_271/lstm_cell_526/ReluRelu3sequential_90/lstm_271/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_90/lstm_271/lstm_cell_526/mul_1Mul0sequential_90/lstm_271/lstm_cell_526/Sigmoid:y:07sequential_90/lstm_271/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_90/lstm_271/lstm_cell_526/add_1AddV2,sequential_90/lstm_271/lstm_cell_526/mul:z:0.sequential_90/lstm_271/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_90/lstm_271/lstm_cell_526/Sigmoid_2Sigmoid3sequential_90/lstm_271/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_90/lstm_271/lstm_cell_526/Relu_1Relu.sequential_90/lstm_271/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_90/lstm_271/lstm_cell_526/mul_2Mul2sequential_90/lstm_271/lstm_cell_526/Sigmoid_2:y:09sequential_90/lstm_271/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_90/lstm_271/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_90/lstm_271/TensorArrayV2_1TensorListReserve=sequential_90/lstm_271/TensorArrayV2_1/element_shape:output:0/sequential_90/lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_90/lstm_271/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_90/lstm_271/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_90/lstm_271/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_90/lstm_271/whileWhile2sequential_90/lstm_271/while/loop_counter:output:08sequential_90/lstm_271/while/maximum_iterations:output:0$sequential_90/lstm_271/time:output:0/sequential_90/lstm_271/TensorArrayV2_1:handle:0%sequential_90/lstm_271/zeros:output:0'sequential_90/lstm_271/zeros_1:output:0/sequential_90/lstm_271/strided_slice_1:output:0Nsequential_90/lstm_271/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_90_lstm_271_lstm_cell_526_matmul_readvariableop_resourceEsequential_90_lstm_271_lstm_cell_526_matmul_1_readvariableop_resourceDsequential_90_lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
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
)sequential_90_lstm_271_while_body_3187053*5
cond-R+
)sequential_90_lstm_271_while_cond_3187052*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_90/lstm_271/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_90/lstm_271/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_90/lstm_271/while:output:3Psequential_90/lstm_271/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_90/lstm_271/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_90/lstm_271/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_271/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_271/strided_slice_3StridedSliceBsequential_90/lstm_271/TensorArrayV2Stack/TensorListStack:tensor:05sequential_90/lstm_271/strided_slice_3/stack:output:07sequential_90/lstm_271/strided_slice_3/stack_1:output:07sequential_90/lstm_271/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_90/lstm_271/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_90/lstm_271/transpose_1	TransposeBsequential_90/lstm_271/TensorArrayV2Stack/TensorListStack:tensor:00sequential_90/lstm_271/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_90/lstm_271/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_90/lstm_272/ShapeShape&sequential_90/lstm_271/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_90/lstm_272/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_90/lstm_272/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_90/lstm_272/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_90/lstm_272/strided_sliceStridedSlice%sequential_90/lstm_272/Shape:output:03sequential_90/lstm_272/strided_slice/stack:output:05sequential_90/lstm_272/strided_slice/stack_1:output:05sequential_90/lstm_272/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_90/lstm_272/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_90/lstm_272/zeros/packedPack-sequential_90/lstm_272/strided_slice:output:0.sequential_90/lstm_272/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_90/lstm_272/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_272/zerosFill,sequential_90/lstm_272/zeros/packed:output:0+sequential_90/lstm_272/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_90/lstm_272/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_90/lstm_272/zeros_1/packedPack-sequential_90/lstm_272/strided_slice:output:00sequential_90/lstm_272/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_90/lstm_272/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_90/lstm_272/zeros_1Fill.sequential_90/lstm_272/zeros_1/packed:output:0-sequential_90/lstm_272/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_90/lstm_272/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_90/lstm_272/transpose	Transpose&sequential_90/lstm_271/transpose_1:y:0.sequential_90/lstm_272/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_90/lstm_272/Shape_1Shape$sequential_90/lstm_272/transpose:y:0*
T0*
_output_shapes
:v
,sequential_90/lstm_272/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_272/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_272/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_272/strided_slice_1StridedSlice'sequential_90/lstm_272/Shape_1:output:05sequential_90/lstm_272/strided_slice_1/stack:output:07sequential_90/lstm_272/strided_slice_1/stack_1:output:07sequential_90/lstm_272/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_90/lstm_272/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_90/lstm_272/TensorArrayV2TensorListReserve;sequential_90/lstm_272/TensorArrayV2/element_shape:output:0/sequential_90/lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_90/lstm_272/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_90/lstm_272/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_90/lstm_272/transpose:y:0Usequential_90/lstm_272/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_90/lstm_272/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_272/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_90/lstm_272/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_272/strided_slice_2StridedSlice$sequential_90/lstm_272/transpose:y:05sequential_90/lstm_272/strided_slice_2/stack:output:07sequential_90/lstm_272/strided_slice_2/stack_1:output:07sequential_90/lstm_272/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOpReadVariableOpCsequential_90_lstm_272_lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_90/lstm_272/lstm_cell_527/MatMulMatMul/sequential_90/lstm_272/strided_slice_2:output:0Bsequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOpEsequential_90_lstm_272_lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_90/lstm_272/lstm_cell_527/MatMul_1MatMul%sequential_90/lstm_272/zeros:output:0Dsequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_90/lstm_272/lstm_cell_527/addAddV25sequential_90/lstm_272/lstm_cell_527/MatMul:product:07sequential_90/lstm_272/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOpDsequential_90_lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_90/lstm_272/lstm_cell_527/BiasAddBiasAdd,sequential_90/lstm_272/lstm_cell_527/add:z:0Csequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_90/lstm_272/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_90/lstm_272/lstm_cell_527/splitSplit=sequential_90/lstm_272/lstm_cell_527/split/split_dim:output:05sequential_90/lstm_272/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_90/lstm_272/lstm_cell_527/SigmoidSigmoid3sequential_90/lstm_272/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_90/lstm_272/lstm_cell_527/Sigmoid_1Sigmoid3sequential_90/lstm_272/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_90/lstm_272/lstm_cell_527/mulMul2sequential_90/lstm_272/lstm_cell_527/Sigmoid_1:y:0'sequential_90/lstm_272/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_90/lstm_272/lstm_cell_527/ReluRelu3sequential_90/lstm_272/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_90/lstm_272/lstm_cell_527/mul_1Mul0sequential_90/lstm_272/lstm_cell_527/Sigmoid:y:07sequential_90/lstm_272/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_90/lstm_272/lstm_cell_527/add_1AddV2,sequential_90/lstm_272/lstm_cell_527/mul:z:0.sequential_90/lstm_272/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_90/lstm_272/lstm_cell_527/Sigmoid_2Sigmoid3sequential_90/lstm_272/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_90/lstm_272/lstm_cell_527/Relu_1Relu.sequential_90/lstm_272/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_90/lstm_272/lstm_cell_527/mul_2Mul2sequential_90/lstm_272/lstm_cell_527/Sigmoid_2:y:09sequential_90/lstm_272/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_90/lstm_272/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_90/lstm_272/TensorArrayV2_1TensorListReserve=sequential_90/lstm_272/TensorArrayV2_1/element_shape:output:0/sequential_90/lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_90/lstm_272/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_90/lstm_272/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_90/lstm_272/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_90/lstm_272/whileWhile2sequential_90/lstm_272/while/loop_counter:output:08sequential_90/lstm_272/while/maximum_iterations:output:0$sequential_90/lstm_272/time:output:0/sequential_90/lstm_272/TensorArrayV2_1:handle:0%sequential_90/lstm_272/zeros:output:0'sequential_90/lstm_272/zeros_1:output:0/sequential_90/lstm_272/strided_slice_1:output:0Nsequential_90/lstm_272/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_90_lstm_272_lstm_cell_527_matmul_readvariableop_resourceEsequential_90_lstm_272_lstm_cell_527_matmul_1_readvariableop_resourceDsequential_90_lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
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
)sequential_90_lstm_272_while_body_3187192*5
cond-R+
)sequential_90_lstm_272_while_cond_3187191*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_90/lstm_272/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_90/lstm_272/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_90/lstm_272/while:output:3Psequential_90/lstm_272/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_90/lstm_272/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_90/lstm_272/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_90/lstm_272/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_90/lstm_272/strided_slice_3StridedSliceBsequential_90/lstm_272/TensorArrayV2Stack/TensorListStack:tensor:05sequential_90/lstm_272/strided_slice_3/stack:output:07sequential_90/lstm_272/strided_slice_3/stack_1:output:07sequential_90/lstm_272/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_90/lstm_272/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_90/lstm_272/transpose_1	TransposeBsequential_90/lstm_272/TensorArrayV2Stack/TensorListStack:tensor:00sequential_90/lstm_272/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_90/lstm_272/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_90/dense_90/MatMul/ReadVariableOpReadVariableOp5sequential_90_dense_90_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_90/dense_90/MatMulMatMul/sequential_90/lstm_272/strided_slice_3:output:04sequential_90/dense_90/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_90/dense_90/BiasAdd/ReadVariableOpReadVariableOp6sequential_90_dense_90_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_90/dense_90/BiasAddBiasAdd'sequential_90/dense_90/MatMul:product:05sequential_90/dense_90/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_90/dense_90/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_90/dense_90/BiasAdd/ReadVariableOp-^sequential_90/dense_90/MatMul/ReadVariableOp<^sequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp;^sequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOp=^sequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp^sequential_90/lstm_270/while<^sequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp;^sequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOp=^sequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp^sequential_90/lstm_271/while<^sequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp;^sequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOp=^sequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp^sequential_90/lstm_272/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_90/dense_90/BiasAdd/ReadVariableOp-sequential_90/dense_90/BiasAdd/ReadVariableOp2\
,sequential_90/dense_90/MatMul/ReadVariableOp,sequential_90/dense_90/MatMul/ReadVariableOp2z
;sequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp;sequential_90/lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp2x
:sequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOp:sequential_90/lstm_270/lstm_cell_525/MatMul/ReadVariableOp2|
<sequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp<sequential_90/lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp2<
sequential_90/lstm_270/whilesequential_90/lstm_270/while2z
;sequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp;sequential_90/lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp2x
:sequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOp:sequential_90/lstm_271/lstm_cell_526/MatMul/ReadVariableOp2|
<sequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp<sequential_90/lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp2<
sequential_90/lstm_271/whilesequential_90/lstm_271/while2z
;sequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp;sequential_90/lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp2x
:sequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOp:sequential_90/lstm_272/lstm_cell_527/MatMul/ReadVariableOp2|
<sequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp<sequential_90/lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp2<
sequential_90/lstm_272/whilesequential_90/lstm_272/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_270_input
?
?
while_cond_3191311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191311___redundant_placeholder05
1while_while_cond_3191311___redundant_placeholder15
1while_while_cond_3191311___redundant_placeholder25
1while_while_cond_3191311___redundant_placeholder3
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
while_body_3190553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3189542
lstm_270_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_270_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3187282o
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
_user_specified_namelstm_270_input
?K
?
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190637
inputs_0?
,lstm_cell_525_matmul_readvariableop_resource:	?A
.lstm_cell_525_matmul_1_readvariableop_resource:	d?<
-lstm_cell_525_biasadd_readvariableop_resource:	?
identity??$lstm_cell_525/BiasAdd/ReadVariableOp?#lstm_cell_525/MatMul/ReadVariableOp?%lstm_cell_525/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_525/MatMul/ReadVariableOpReadVariableOp,lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_525/MatMulMatMulstrided_slice_2:output:0+lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_525/MatMul_1MatMulzeros:output:0-lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_525/addAddV2lstm_cell_525/MatMul:product:0 lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_525/BiasAddBiasAddlstm_cell_525/add:z:0,lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_525/splitSplit&lstm_cell_525/split/split_dim:output:0lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_525/SigmoidSigmoidlstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_1Sigmoidlstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_525/mulMullstm_cell_525/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_525/ReluRelulstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_1Mullstm_cell_525/Sigmoid:y:0 lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_525/add_1AddV2lstm_cell_525/mul:z:0lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_525/Sigmoid_2Sigmoidlstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_525/Relu_1Relulstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_525/mul_2Mullstm_cell_525/Sigmoid_2:y:0"lstm_cell_525/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_525_matmul_readvariableop_resource.lstm_cell_525_matmul_1_readvariableop_resource-lstm_cell_525_biasadd_readvariableop_resource*
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
while_body_3190553*
condR
while_cond_3190552*K
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
NoOpNoOp%^lstm_cell_525/BiasAdd/ReadVariableOp$^lstm_cell_525/MatMul/ReadVariableOp&^lstm_cell_525/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_525/BiasAdd/ReadVariableOp$lstm_cell_525/BiasAdd/ReadVariableOp2J
#lstm_cell_525/MatMul/ReadVariableOp#lstm_cell_525/MatMul/ReadVariableOp2N
%lstm_cell_525/MatMul_1/ReadVariableOp%lstm_cell_525/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_270_layer_call_fn_3190472
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3187623|
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
?
while_body_3191312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190450

inputsH
5lstm_270_lstm_cell_525_matmul_readvariableop_resource:	?J
7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource:	d?E
6lstm_270_lstm_cell_525_biasadd_readvariableop_resource:	?H
5lstm_271_lstm_cell_526_matmul_readvariableop_resource:	d?J
7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource:	2?E
6lstm_271_lstm_cell_526_biasadd_readvariableop_resource:	?G
5lstm_272_lstm_cell_527_matmul_readvariableop_resource:2(I
7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource:
(D
6lstm_272_lstm_cell_527_biasadd_readvariableop_resource:(9
'dense_90_matmul_readvariableop_resource:
6
(dense_90_biasadd_readvariableop_resource:
identity??dense_90/BiasAdd/ReadVariableOp?dense_90/MatMul/ReadVariableOp?-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp?,lstm_270/lstm_cell_525/MatMul/ReadVariableOp?.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp?lstm_270/while?-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp?,lstm_271/lstm_cell_526/MatMul/ReadVariableOp?.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp?lstm_271/while?-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp?,lstm_272/lstm_cell_527/MatMul/ReadVariableOp?.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp?lstm_272/whileD
lstm_270/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_270/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_270/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_270/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_sliceStridedSlicelstm_270/Shape:output:0%lstm_270/strided_slice/stack:output:0'lstm_270/strided_slice/stack_1:output:0'lstm_270/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_270/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_270/zeros/packedPacklstm_270/strided_slice:output:0 lstm_270/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_270/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_270/zerosFilllstm_270/zeros/packed:output:0lstm_270/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_270/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_270/zeros_1/packedPacklstm_270/strided_slice:output:0"lstm_270/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_270/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_270/zeros_1Fill lstm_270/zeros_1/packed:output:0lstm_270/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_270/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_270/transpose	Transposeinputs lstm_270/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_270/Shape_1Shapelstm_270/transpose:y:0*
T0*
_output_shapes
:h
lstm_270/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_270/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_1StridedSlicelstm_270/Shape_1:output:0'lstm_270/strided_slice_1/stack:output:0)lstm_270/strided_slice_1/stack_1:output:0)lstm_270/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_270/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_270/TensorArrayV2TensorListReserve-lstm_270/TensorArrayV2/element_shape:output:0!lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_270/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_270/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_270/transpose:y:0Glstm_270/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_270/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_270/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_2StridedSlicelstm_270/transpose:y:0'lstm_270/strided_slice_2/stack:output:0)lstm_270/strided_slice_2/stack_1:output:0)lstm_270/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_270/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp5lstm_270_lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_270/lstm_cell_525/MatMulMatMul!lstm_270/strided_slice_2:output:04lstm_270/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_270/lstm_cell_525/MatMul_1MatMullstm_270/zeros:output:06lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_270/lstm_cell_525/addAddV2'lstm_270/lstm_cell_525/MatMul:product:0)lstm_270/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp6lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_270/lstm_cell_525/BiasAddBiasAddlstm_270/lstm_cell_525/add:z:05lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_270/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_270/lstm_cell_525/splitSplit/lstm_270/lstm_cell_525/split/split_dim:output:0'lstm_270/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_270/lstm_cell_525/SigmoidSigmoid%lstm_270/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_270/lstm_cell_525/Sigmoid_1Sigmoid%lstm_270/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mulMul$lstm_270/lstm_cell_525/Sigmoid_1:y:0lstm_270/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_270/lstm_cell_525/ReluRelu%lstm_270/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mul_1Mul"lstm_270/lstm_cell_525/Sigmoid:y:0)lstm_270/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/add_1AddV2lstm_270/lstm_cell_525/mul:z:0 lstm_270/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_270/lstm_cell_525/Sigmoid_2Sigmoid%lstm_270/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_270/lstm_cell_525/Relu_1Relu lstm_270/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mul_2Mul$lstm_270/lstm_cell_525/Sigmoid_2:y:0+lstm_270/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_270/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_270/TensorArrayV2_1TensorListReserve/lstm_270/TensorArrayV2_1/element_shape:output:0!lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_270/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_270/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_270/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_270/whileWhile$lstm_270/while/loop_counter:output:0*lstm_270/while/maximum_iterations:output:0lstm_270/time:output:0!lstm_270/TensorArrayV2_1:handle:0lstm_270/zeros:output:0lstm_270/zeros_1:output:0!lstm_270/strided_slice_1:output:0@lstm_270/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_270_lstm_cell_525_matmul_readvariableop_resource7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource6lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
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
lstm_270_while_body_3190082*'
condR
lstm_270_while_cond_3190081*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_270/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_270/TensorArrayV2Stack/TensorListStackTensorListStacklstm_270/while:output:3Blstm_270/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_270/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_270/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_3StridedSlice4lstm_270/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_270/strided_slice_3/stack:output:0)lstm_270/strided_slice_3/stack_1:output:0)lstm_270/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_270/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_270/transpose_1	Transpose4lstm_270/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_270/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_270/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_271/ShapeShapelstm_270/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_271/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_271/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_271/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_sliceStridedSlicelstm_271/Shape:output:0%lstm_271/strided_slice/stack:output:0'lstm_271/strided_slice/stack_1:output:0'lstm_271/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_271/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_271/zeros/packedPacklstm_271/strided_slice:output:0 lstm_271/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_271/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_271/zerosFilllstm_271/zeros/packed:output:0lstm_271/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_271/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_271/zeros_1/packedPacklstm_271/strided_slice:output:0"lstm_271/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_271/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_271/zeros_1Fill lstm_271/zeros_1/packed:output:0lstm_271/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_271/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_271/transpose	Transposelstm_270/transpose_1:y:0 lstm_271/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_271/Shape_1Shapelstm_271/transpose:y:0*
T0*
_output_shapes
:h
lstm_271/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_271/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_1StridedSlicelstm_271/Shape_1:output:0'lstm_271/strided_slice_1/stack:output:0)lstm_271/strided_slice_1/stack_1:output:0)lstm_271/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_271/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_271/TensorArrayV2TensorListReserve-lstm_271/TensorArrayV2/element_shape:output:0!lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_271/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_271/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_271/transpose:y:0Glstm_271/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_271/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_271/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_2StridedSlicelstm_271/transpose:y:0'lstm_271/strided_slice_2/stack:output:0)lstm_271/strided_slice_2/stack_1:output:0)lstm_271/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_271/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp5lstm_271_lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_271/lstm_cell_526/MatMulMatMul!lstm_271/strided_slice_2:output:04lstm_271/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_271/lstm_cell_526/MatMul_1MatMullstm_271/zeros:output:06lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_271/lstm_cell_526/addAddV2'lstm_271/lstm_cell_526/MatMul:product:0)lstm_271/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp6lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_271/lstm_cell_526/BiasAddBiasAddlstm_271/lstm_cell_526/add:z:05lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_271/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_271/lstm_cell_526/splitSplit/lstm_271/lstm_cell_526/split/split_dim:output:0'lstm_271/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_271/lstm_cell_526/SigmoidSigmoid%lstm_271/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_271/lstm_cell_526/Sigmoid_1Sigmoid%lstm_271/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mulMul$lstm_271/lstm_cell_526/Sigmoid_1:y:0lstm_271/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_271/lstm_cell_526/ReluRelu%lstm_271/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mul_1Mul"lstm_271/lstm_cell_526/Sigmoid:y:0)lstm_271/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/add_1AddV2lstm_271/lstm_cell_526/mul:z:0 lstm_271/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_271/lstm_cell_526/Sigmoid_2Sigmoid%lstm_271/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_271/lstm_cell_526/Relu_1Relu lstm_271/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mul_2Mul$lstm_271/lstm_cell_526/Sigmoid_2:y:0+lstm_271/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_271/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_271/TensorArrayV2_1TensorListReserve/lstm_271/TensorArrayV2_1/element_shape:output:0!lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_271/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_271/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_271/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_271/whileWhile$lstm_271/while/loop_counter:output:0*lstm_271/while/maximum_iterations:output:0lstm_271/time:output:0!lstm_271/TensorArrayV2_1:handle:0lstm_271/zeros:output:0lstm_271/zeros_1:output:0!lstm_271/strided_slice_1:output:0@lstm_271/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_271_lstm_cell_526_matmul_readvariableop_resource7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource6lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
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
lstm_271_while_body_3190221*'
condR
lstm_271_while_cond_3190220*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_271/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_271/TensorArrayV2Stack/TensorListStackTensorListStacklstm_271/while:output:3Blstm_271/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_271/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_271/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_3StridedSlice4lstm_271/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_271/strided_slice_3/stack:output:0)lstm_271/strided_slice_3/stack_1:output:0)lstm_271/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_271/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_271/transpose_1	Transpose4lstm_271/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_271/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_271/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_272/ShapeShapelstm_271/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_272/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_272/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_272/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_sliceStridedSlicelstm_272/Shape:output:0%lstm_272/strided_slice/stack:output:0'lstm_272/strided_slice/stack_1:output:0'lstm_272/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_272/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_272/zeros/packedPacklstm_272/strided_slice:output:0 lstm_272/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_272/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_272/zerosFilllstm_272/zeros/packed:output:0lstm_272/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_272/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_272/zeros_1/packedPacklstm_272/strided_slice:output:0"lstm_272/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_272/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_272/zeros_1Fill lstm_272/zeros_1/packed:output:0lstm_272/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_272/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_272/transpose	Transposelstm_271/transpose_1:y:0 lstm_272/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_272/Shape_1Shapelstm_272/transpose:y:0*
T0*
_output_shapes
:h
lstm_272/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_272/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_1StridedSlicelstm_272/Shape_1:output:0'lstm_272/strided_slice_1/stack:output:0)lstm_272/strided_slice_1/stack_1:output:0)lstm_272/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_272/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_272/TensorArrayV2TensorListReserve-lstm_272/TensorArrayV2/element_shape:output:0!lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_272/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_272/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_272/transpose:y:0Glstm_272/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_272/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_272/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_2StridedSlicelstm_272/transpose:y:0'lstm_272/strided_slice_2/stack:output:0)lstm_272/strided_slice_2/stack_1:output:0)lstm_272/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_272/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp5lstm_272_lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_272/lstm_cell_527/MatMulMatMul!lstm_272/strided_slice_2:output:04lstm_272/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_272/lstm_cell_527/MatMul_1MatMullstm_272/zeros:output:06lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_272/lstm_cell_527/addAddV2'lstm_272/lstm_cell_527/MatMul:product:0)lstm_272/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp6lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_272/lstm_cell_527/BiasAddBiasAddlstm_272/lstm_cell_527/add:z:05lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_272/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_272/lstm_cell_527/splitSplit/lstm_272/lstm_cell_527/split/split_dim:output:0'lstm_272/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_272/lstm_cell_527/SigmoidSigmoid%lstm_272/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_272/lstm_cell_527/Sigmoid_1Sigmoid%lstm_272/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mulMul$lstm_272/lstm_cell_527/Sigmoid_1:y:0lstm_272/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_272/lstm_cell_527/ReluRelu%lstm_272/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mul_1Mul"lstm_272/lstm_cell_527/Sigmoid:y:0)lstm_272/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/add_1AddV2lstm_272/lstm_cell_527/mul:z:0 lstm_272/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_272/lstm_cell_527/Sigmoid_2Sigmoid%lstm_272/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_272/lstm_cell_527/Relu_1Relu lstm_272/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mul_2Mul$lstm_272/lstm_cell_527/Sigmoid_2:y:0+lstm_272/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_272/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_272/TensorArrayV2_1TensorListReserve/lstm_272/TensorArrayV2_1/element_shape:output:0!lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_272/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_272/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_272/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_272/whileWhile$lstm_272/while/loop_counter:output:0*lstm_272/while/maximum_iterations:output:0lstm_272/time:output:0!lstm_272/TensorArrayV2_1:handle:0lstm_272/zeros:output:0lstm_272/zeros_1:output:0!lstm_272/strided_slice_1:output:0@lstm_272/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_272_lstm_cell_527_matmul_readvariableop_resource7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource6lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
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
lstm_272_while_body_3190360*'
condR
lstm_272_while_cond_3190359*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_272/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_272/TensorArrayV2Stack/TensorListStackTensorListStacklstm_272/while:output:3Blstm_272/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_272/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_272/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_3StridedSlice4lstm_272/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_272/strided_slice_3/stack:output:0)lstm_272/strided_slice_3/stack_1:output:0)lstm_272/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_272/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_272/transpose_1	Transpose4lstm_272/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_272/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_272/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_90/MatMul/ReadVariableOpReadVariableOp'dense_90_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_90/MatMulMatMul!lstm_272/strided_slice_3:output:0&dense_90/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_90/BiasAdd/ReadVariableOpReadVariableOp(dense_90_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_90/BiasAddBiasAdddense_90/MatMul:product:0'dense_90/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_90/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_90/BiasAdd/ReadVariableOp^dense_90/MatMul/ReadVariableOp.^lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp-^lstm_270/lstm_cell_525/MatMul/ReadVariableOp/^lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp^lstm_270/while.^lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp-^lstm_271/lstm_cell_526/MatMul/ReadVariableOp/^lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp^lstm_271/while.^lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp-^lstm_272/lstm_cell_527/MatMul/ReadVariableOp/^lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp^lstm_272/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_90/BiasAdd/ReadVariableOpdense_90/BiasAdd/ReadVariableOp2@
dense_90/MatMul/ReadVariableOpdense_90/MatMul/ReadVariableOp2^
-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp2\
,lstm_270/lstm_cell_525/MatMul/ReadVariableOp,lstm_270/lstm_cell_525/MatMul/ReadVariableOp2`
.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp2 
lstm_270/whilelstm_270/while2^
-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp2\
,lstm_271/lstm_cell_526/MatMul/ReadVariableOp,lstm_271/lstm_cell_526/MatMul/ReadVariableOp2`
.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp2 
lstm_271/whilelstm_271/while2^
-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp2\
,lstm_272/lstm_cell_527/MatMul/ReadVariableOp,lstm_272/lstm_cell_527/MatMul/ReadVariableOp2`
.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp2 
lstm_272/whilelstm_272/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_272_while_cond_3190359.
*lstm_272_while_lstm_272_while_loop_counter4
0lstm_272_while_lstm_272_while_maximum_iterations
lstm_272_while_placeholder 
lstm_272_while_placeholder_1 
lstm_272_while_placeholder_2 
lstm_272_while_placeholder_30
,lstm_272_while_less_lstm_272_strided_slice_1G
Clstm_272_while_lstm_272_while_cond_3190359___redundant_placeholder0G
Clstm_272_while_lstm_272_while_cond_3190359___redundant_placeholder1G
Clstm_272_while_lstm_272_while_cond_3190359___redundant_placeholder2G
Clstm_272_while_lstm_272_while_cond_3190359___redundant_placeholder3
lstm_272_while_identity
?
lstm_272/while/LessLesslstm_272_while_placeholder,lstm_272_while_less_lstm_272_strided_slice_1*
T0*
_output_shapes
: ]
lstm_272/while/IdentityIdentitylstm_272/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_272_while_identity lstm_272/while/Identity:output:0*(
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
while_cond_3192070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3192070___redundant_placeholder05
1while_while_cond_3192070___redundant_placeholder15
1while_while_cond_3192070___redundant_placeholder25
1while_while_cond_3192070___redundant_placeholder3
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
while_cond_3191597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3191597___redundant_placeholder05
1while_while_cond_3191597___redundant_placeholder15
1while_while_cond_3191597___redundant_placeholder25
1while_while_cond_3191597___redundant_placeholder3
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
while_cond_3188253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3188253___redundant_placeholder05
1while_while_cond_3188253___redundant_placeholder15
1while_while_cond_3188253___redundant_placeholder25
1while_while_cond_3188253___redundant_placeholder3
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
/__inference_lstm_cell_527_layer_call_fn_3192530

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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188049o
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
while_body_3187554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_525_3187578_0:	?0
while_lstm_cell_525_3187580_0:	d?,
while_lstm_cell_525_3187582_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_525_3187578:	?.
while_lstm_cell_525_3187580:	d?*
while_lstm_cell_525_3187582:	???+while/lstm_cell_525/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_525/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_525_3187578_0while_lstm_cell_525_3187580_0while_lstm_cell_525_3187582_0*
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187495?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_525/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_525/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_525/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_525/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_525_3187578while_lstm_cell_525_3187578_0"<
while_lstm_cell_525_3187580while_lstm_cell_525_3187580_0"<
while_lstm_cell_525_3187582while_lstm_cell_525_3187582_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_525/StatefulPartitionedCall+while/lstm_cell_525/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_525_layer_call_fn_3192351

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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187495o
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
while_body_3191455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3191598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3187903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3187903___redundant_placeholder05
1while_while_cond_3187903___redundant_placeholder15
1while_while_cond_3187903___redundant_placeholder25
1while_while_cond_3187903___redundant_placeholder3
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

lstm_270_while_body_3189655.
*lstm_270_while_lstm_270_while_loop_counter4
0lstm_270_while_lstm_270_while_maximum_iterations
lstm_270_while_placeholder 
lstm_270_while_placeholder_1 
lstm_270_while_placeholder_2 
lstm_270_while_placeholder_3-
)lstm_270_while_lstm_270_strided_slice_1_0i
elstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0:	?R
?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?M
>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
lstm_270_while_identity
lstm_270_while_identity_1
lstm_270_while_identity_2
lstm_270_while_identity_3
lstm_270_while_identity_4
lstm_270_while_identity_5+
'lstm_270_while_lstm_270_strided_slice_1g
clstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensorN
;lstm_270_while_lstm_cell_525_matmul_readvariableop_resource:	?P
=lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource:	d?K
<lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource:	???3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp?2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp?4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp?
@lstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_270/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0lstm_270_while_placeholderIlstm_270/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_270/while/lstm_cell_525/MatMulMatMul9lstm_270/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_270/while/lstm_cell_525/MatMul_1MatMullstm_270_while_placeholder_2<lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_270/while/lstm_cell_525/addAddV2-lstm_270/while/lstm_cell_525/MatMul:product:0/lstm_270/while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_270/while/lstm_cell_525/BiasAddBiasAdd$lstm_270/while/lstm_cell_525/add:z:0;lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_270/while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_270/while/lstm_cell_525/splitSplit5lstm_270/while/lstm_cell_525/split/split_dim:output:0-lstm_270/while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_270/while/lstm_cell_525/SigmoidSigmoid+lstm_270/while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_270/while/lstm_cell_525/Sigmoid_1Sigmoid+lstm_270/while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_270/while/lstm_cell_525/mulMul*lstm_270/while/lstm_cell_525/Sigmoid_1:y:0lstm_270_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_270/while/lstm_cell_525/ReluRelu+lstm_270/while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/mul_1Mul(lstm_270/while/lstm_cell_525/Sigmoid:y:0/lstm_270/while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/add_1AddV2$lstm_270/while/lstm_cell_525/mul:z:0&lstm_270/while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_270/while/lstm_cell_525/Sigmoid_2Sigmoid+lstm_270/while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_270/while/lstm_cell_525/Relu_1Relu&lstm_270/while/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_270/while/lstm_cell_525/mul_2Mul*lstm_270/while/lstm_cell_525/Sigmoid_2:y:01lstm_270/while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_270/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_270_while_placeholder_1lstm_270_while_placeholder&lstm_270/while/lstm_cell_525/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_270/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_270/while/addAddV2lstm_270_while_placeholderlstm_270/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_270/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_270/while/add_1AddV2*lstm_270_while_lstm_270_while_loop_counterlstm_270/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_270/while/IdentityIdentitylstm_270/while/add_1:z:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_1Identity0lstm_270_while_lstm_270_while_maximum_iterations^lstm_270/while/NoOp*
T0*
_output_shapes
: t
lstm_270/while/Identity_2Identitylstm_270/while/add:z:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_3IdentityClstm_270/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_270/while/NoOp*
T0*
_output_shapes
: ?
lstm_270/while/Identity_4Identity&lstm_270/while/lstm_cell_525/mul_2:z:0^lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_270/while/Identity_5Identity&lstm_270/while/lstm_cell_525/add_1:z:0^lstm_270/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_270/while/NoOpNoOp4^lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp3^lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp5^lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_270_while_identity lstm_270/while/Identity:output:0"?
lstm_270_while_identity_1"lstm_270/while/Identity_1:output:0"?
lstm_270_while_identity_2"lstm_270/while/Identity_2:output:0"?
lstm_270_while_identity_3"lstm_270/while/Identity_3:output:0"?
lstm_270_while_identity_4"lstm_270/while/Identity_4:output:0"?
lstm_270_while_identity_5"lstm_270/while/Identity_5:output:0"T
'lstm_270_while_lstm_270_strided_slice_1)lstm_270_while_lstm_270_strided_slice_1_0"~
<lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource>lstm_270_while_lstm_cell_525_biasadd_readvariableop_resource_0"?
=lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource?lstm_270_while_lstm_cell_525_matmul_1_readvariableop_resource_0"|
;lstm_270_while_lstm_cell_525_matmul_readvariableop_resource=lstm_270_while_lstm_cell_525_matmul_readvariableop_resource_0"?
clstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensorelstm_270_while_tensorarrayv2read_tensorlistgetitem_lstm_270_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp3lstm_270/while/lstm_cell_525/BiasAdd/ReadVariableOp2h
2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp2lstm_270/while/lstm_cell_525/MatMul/ReadVariableOp2l
4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp4lstm_270/while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189507
lstm_270_input#
lstm_270_3189480:	?#
lstm_270_3189482:	d?
lstm_270_3189484:	?#
lstm_271_3189487:	d?#
lstm_271_3189489:	2?
lstm_271_3189491:	?"
lstm_272_3189494:2("
lstm_272_3189496:
(
lstm_272_3189498:("
dense_90_3189501:

dense_90_3189503:
identity?? dense_90/StatefulPartitionedCall? lstm_270/StatefulPartitionedCall? lstm_271/StatefulPartitionedCall? lstm_272/StatefulPartitionedCall?
 lstm_270/StatefulPartitionedCallStatefulPartitionedCalllstm_270_inputlstm_270_3189480lstm_270_3189482lstm_270_3189484*
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3189327?
 lstm_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_270/StatefulPartitionedCall:output:0lstm_271_3189487lstm_271_3189489lstm_271_3189491*
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3189162?
 lstm_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_271/StatefulPartitionedCall:output:0lstm_272_3189494lstm_272_3189496lstm_272_3189498*
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188997?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall)lstm_272/StatefulPartitionedCall:output:0dense_90_3189501dense_90_3189503*
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799x
IdentityIdentity)dense_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_90/StatefulPartitionedCall!^lstm_270/StatefulPartitionedCall!^lstm_271/StatefulPartitionedCall!^lstm_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 lstm_270/StatefulPartitionedCall lstm_270/StatefulPartitionedCall2D
 lstm_271/StatefulPartitionedCall lstm_271/StatefulPartitionedCall2D
 lstm_272/StatefulPartitionedCall lstm_272/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_270_input
?
?
)sequential_90_lstm_271_while_cond_3187052J
Fsequential_90_lstm_271_while_sequential_90_lstm_271_while_loop_counterP
Lsequential_90_lstm_271_while_sequential_90_lstm_271_while_maximum_iterations,
(sequential_90_lstm_271_while_placeholder.
*sequential_90_lstm_271_while_placeholder_1.
*sequential_90_lstm_271_while_placeholder_2.
*sequential_90_lstm_271_while_placeholder_3L
Hsequential_90_lstm_271_while_less_sequential_90_lstm_271_strided_slice_1c
_sequential_90_lstm_271_while_sequential_90_lstm_271_while_cond_3187052___redundant_placeholder0c
_sequential_90_lstm_271_while_sequential_90_lstm_271_while_cond_3187052___redundant_placeholder1c
_sequential_90_lstm_271_while_sequential_90_lstm_271_while_cond_3187052___redundant_placeholder2c
_sequential_90_lstm_271_while_sequential_90_lstm_271_while_cond_3187052___redundant_placeholder3)
%sequential_90_lstm_271_while_identity
?
!sequential_90/lstm_271/while/LessLess(sequential_90_lstm_271_while_placeholderHsequential_90_lstm_271_while_less_sequential_90_lstm_271_strided_slice_1*
T0*
_output_shapes
: y
%sequential_90/lstm_271/while/IdentityIdentity%sequential_90/lstm_271/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_90_lstm_271_while_identity.sequential_90/lstm_271/while/Identity:output:0*(
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
while_cond_3192213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3192213___redundant_placeholder05
1while_while_cond_3192213___redundant_placeholder15
1while_while_cond_3192213___redundant_placeholder25
1while_while_cond_3192213___redundant_placeholder3
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
lstm_271_while_cond_3189793.
*lstm_271_while_lstm_271_while_loop_counter4
0lstm_271_while_lstm_271_while_maximum_iterations
lstm_271_while_placeholder 
lstm_271_while_placeholder_1 
lstm_271_while_placeholder_2 
lstm_271_while_placeholder_30
,lstm_271_while_less_lstm_271_strided_slice_1G
Clstm_271_while_lstm_271_while_cond_3189793___redundant_placeholder0G
Clstm_271_while_lstm_271_while_cond_3189793___redundant_placeholder1G
Clstm_271_while_lstm_271_while_cond_3189793___redundant_placeholder2G
Clstm_271_while_lstm_271_while_cond_3189793___redundant_placeholder3
lstm_271_while_identity
?
lstm_271/while/LessLesslstm_271_while_placeholder,lstm_271_while_less_lstm_271_strided_slice_1*
T0*
_output_shapes
: ]
lstm_271/while/IdentityIdentitylstm_271/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_271_while_identity lstm_271/while/Identity:output:0*(
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189395

inputs#
lstm_270_3189368:	?#
lstm_270_3189370:	d?
lstm_270_3189372:	?#
lstm_271_3189375:	d?#
lstm_271_3189377:	2?
lstm_271_3189379:	?"
lstm_272_3189382:2("
lstm_272_3189384:
(
lstm_272_3189386:("
dense_90_3189389:

dense_90_3189391:
identity?? dense_90/StatefulPartitionedCall? lstm_270/StatefulPartitionedCall? lstm_271/StatefulPartitionedCall? lstm_272/StatefulPartitionedCall?
 lstm_270/StatefulPartitionedCallStatefulPartitionedCallinputslstm_270_3189368lstm_270_3189370lstm_270_3189372*
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3189327?
 lstm_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_270/StatefulPartitionedCall:output:0lstm_271_3189375lstm_271_3189377lstm_271_3189379*
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3189162?
 lstm_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_271/StatefulPartitionedCall:output:0lstm_272_3189382lstm_272_3189384lstm_272_3189386*
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188997?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall)lstm_272/StatefulPartitionedCall:output:0dense_90_3189389dense_90_3189391*
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799x
IdentityIdentity)dense_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_90/StatefulPartitionedCall!^lstm_270/StatefulPartitionedCall!^lstm_271/StatefulPartitionedCall!^lstm_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 lstm_270/StatefulPartitionedCall lstm_270/StatefulPartitionedCall2D
 lstm_271/StatefulPartitionedCall lstm_271/StatefulPartitionedCall2D
 lstm_272/StatefulPartitionedCall lstm_272/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_271_while_cond_3190220.
*lstm_271_while_lstm_271_while_loop_counter4
0lstm_271_while_lstm_271_while_maximum_iterations
lstm_271_while_placeholder 
lstm_271_while_placeholder_1 
lstm_271_while_placeholder_2 
lstm_271_while_placeholder_30
,lstm_271_while_less_lstm_271_strided_slice_1G
Clstm_271_while_lstm_271_while_cond_3190220___redundant_placeholder0G
Clstm_271_while_lstm_271_while_cond_3190220___redundant_placeholder1G
Clstm_271_while_lstm_271_while_cond_3190220___redundant_placeholder2G
Clstm_271_while_lstm_271_while_cond_3190220___redundant_placeholder3
lstm_271_while_identity
?
lstm_271/while/LessLesslstm_271_while_placeholder,lstm_271_while_less_lstm_271_strided_slice_1*
T0*
_output_shapes
: ]
lstm_271/while/IdentityIdentitylstm_271/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_271_while_identity lstm_271/while/Identity:output:0*(
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3187699

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
??
?
#__inference__traced_restore_3192884
file_prefix2
 assignvariableop_dense_90_kernel:
.
 assignvariableop_1_dense_90_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_270_lstm_cell_270_kernel:	?M
:assignvariableop_8_lstm_270_lstm_cell_270_recurrent_kernel:	d?=
.assignvariableop_9_lstm_270_lstm_cell_270_bias:	?D
1assignvariableop_10_lstm_271_lstm_cell_271_kernel:	d?N
;assignvariableop_11_lstm_271_lstm_cell_271_recurrent_kernel:	2?>
/assignvariableop_12_lstm_271_lstm_cell_271_bias:	?C
1assignvariableop_13_lstm_272_lstm_cell_272_kernel:2(M
;assignvariableop_14_lstm_272_lstm_cell_272_recurrent_kernel:
(=
/assignvariableop_15_lstm_272_lstm_cell_272_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_90_kernel_m:
6
(assignvariableop_19_adam_dense_90_bias_m:K
8assignvariableop_20_adam_lstm_270_lstm_cell_270_kernel_m:	?U
Bassignvariableop_21_adam_lstm_270_lstm_cell_270_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_270_lstm_cell_270_bias_m:	?K
8assignvariableop_23_adam_lstm_271_lstm_cell_271_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_271_lstm_cell_271_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_271_lstm_cell_271_bias_m:	?J
8assignvariableop_26_adam_lstm_272_lstm_cell_272_kernel_m:2(T
Bassignvariableop_27_adam_lstm_272_lstm_cell_272_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_272_lstm_cell_272_bias_m:(<
*assignvariableop_29_adam_dense_90_kernel_v:
6
(assignvariableop_30_adam_dense_90_bias_v:K
8assignvariableop_31_adam_lstm_270_lstm_cell_270_kernel_v:	?U
Bassignvariableop_32_adam_lstm_270_lstm_cell_270_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_270_lstm_cell_270_bias_v:	?K
8assignvariableop_34_adam_lstm_271_lstm_cell_271_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_271_lstm_cell_271_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_271_lstm_cell_271_bias_v:	?J
8assignvariableop_37_adam_lstm_272_lstm_cell_272_kernel_v:2(T
Bassignvariableop_38_adam_lstm_272_lstm_cell_272_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_272_lstm_cell_272_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_90_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_90_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_270_lstm_cell_270_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_270_lstm_cell_270_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_270_lstm_cell_270_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_271_lstm_cell_271_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_271_lstm_cell_271_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_271_lstm_cell_271_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_272_lstm_cell_272_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_272_lstm_cell_272_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_272_lstm_cell_272_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_90_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_90_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_270_lstm_cell_270_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_270_lstm_cell_270_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_270_lstm_cell_270_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_271_lstm_cell_271_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_271_lstm_cell_271_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_271_lstm_cell_271_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_272_lstm_cell_272_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_272_lstm_cell_272_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_272_lstm_cell_272_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_90_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_90_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_270_lstm_cell_270_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_270_lstm_cell_270_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_270_lstm_cell_270_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_271_lstm_cell_271_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_271_lstm_cell_271_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_271_lstm_cell_271_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_272_lstm_cell_272_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_272_lstm_cell_272_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_272_lstm_cell_272_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188132

inputs'
lstm_cell_527_3188050:2('
lstm_cell_527_3188052:
(#
lstm_cell_527_3188054:(
identity??%lstm_cell_527/StatefulPartitionedCall?while;
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
%lstm_cell_527/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_527_3188050lstm_cell_527_3188052lstm_cell_527_3188054*
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3188049n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_527_3188050lstm_cell_527_3188052lstm_cell_527_3188054*
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
while_body_3188063*
condR
while_cond_3188062*K
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
NoOpNoOp&^lstm_cell_527/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_527/StatefulPartitionedCall%lstm_cell_527/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3188547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_526_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_526_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_526_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_526_matmul_readvariableop_resource:	d?G
4while_lstm_cell_526_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_526_biasadd_readvariableop_resource:	???*while/lstm_cell_526/BiasAdd/ReadVariableOp?)while/lstm_cell_526/MatMul/ReadVariableOp?+while/lstm_cell_526/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_526_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_526/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_526_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_526/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_526/addAddV2$while/lstm_cell_526/MatMul:product:0&while/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_526_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_526/BiasAddBiasAddwhile/lstm_cell_526/add:z:02while/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_526/splitSplit,while/lstm_cell_526/split/split_dim:output:0$while/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_526/SigmoidSigmoid"while/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_1Sigmoid"while/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mulMul!while/lstm_cell_526/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_526/ReluRelu"while/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_1Mulwhile/lstm_cell_526/Sigmoid:y:0&while/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/add_1AddV2while/lstm_cell_526/mul:z:0while/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_526/Sigmoid_2Sigmoid"while/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_526/Relu_1Reluwhile/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_526/mul_2Mul!while/lstm_cell_526/Sigmoid_2:y:0(while/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_526/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_526/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_526/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_526/BiasAdd/ReadVariableOp*^while/lstm_cell_526/MatMul/ReadVariableOp,^while/lstm_cell_526/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_526_biasadd_readvariableop_resource5while_lstm_cell_526_biasadd_readvariableop_resource_0"n
4while_lstm_cell_526_matmul_1_readvariableop_resource6while_lstm_cell_526_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_526_matmul_readvariableop_resource4while_lstm_cell_526_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_526/BiasAdd/ReadVariableOp*while/lstm_cell_526/BiasAdd/ReadVariableOp2V
)while/lstm_cell_526/MatMul/ReadVariableOp)while/lstm_cell_526/MatMul/ReadVariableOp2Z
+while/lstm_cell_526/MatMul_1/ReadVariableOp+while/lstm_cell_526/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3188806

inputs#
lstm_270_3188482:	?#
lstm_270_3188484:	d?
lstm_270_3188486:	?#
lstm_271_3188632:	d?#
lstm_271_3188634:	2?
lstm_271_3188636:	?"
lstm_272_3188782:2("
lstm_272_3188784:
(
lstm_272_3188786:("
dense_90_3188800:

dense_90_3188802:
identity?? dense_90/StatefulPartitionedCall? lstm_270/StatefulPartitionedCall? lstm_271/StatefulPartitionedCall? lstm_272/StatefulPartitionedCall?
 lstm_270/StatefulPartitionedCallStatefulPartitionedCallinputslstm_270_3188482lstm_270_3188484lstm_270_3188486*
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3188481?
 lstm_271/StatefulPartitionedCallStatefulPartitionedCall)lstm_270/StatefulPartitionedCall:output:0lstm_271_3188632lstm_271_3188634lstm_271_3188636*
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3188631?
 lstm_272/StatefulPartitionedCallStatefulPartitionedCall)lstm_271/StatefulPartitionedCall:output:0lstm_272_3188782lstm_272_3188784lstm_272_3188786*
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188781?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall)lstm_272/StatefulPartitionedCall:output:0dense_90_3188800dense_90_3188802*
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3188799x
IdentityIdentity)dense_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_90/StatefulPartitionedCall!^lstm_270/StatefulPartitionedCall!^lstm_271/StatefulPartitionedCall!^lstm_272/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 lstm_270/StatefulPartitionedCall lstm_270/StatefulPartitionedCall2D
 lstm_271/StatefulPartitionedCall lstm_271/StatefulPartitionedCall2D
 lstm_272/StatefulPartitionedCall lstm_272/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3190982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_525_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_525_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_525_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_525_matmul_readvariableop_resource:	?G
4while_lstm_cell_525_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_525_biasadd_readvariableop_resource:	???*while/lstm_cell_525/BiasAdd/ReadVariableOp?)while/lstm_cell_525/MatMul/ReadVariableOp?+while/lstm_cell_525/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_525_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_525/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_525_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_525/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_525/addAddV2$while/lstm_cell_525/MatMul:product:0&while/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_525_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_525/BiasAddBiasAddwhile/lstm_cell_525/add:z:02while/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_525/splitSplit,while/lstm_cell_525/split/split_dim:output:0$while/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_525/SigmoidSigmoid"while/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_1Sigmoid"while/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mulMul!while/lstm_cell_525/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_525/ReluRelu"while/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_1Mulwhile/lstm_cell_525/Sigmoid:y:0&while/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/add_1AddV2while/lstm_cell_525/mul:z:0while/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_525/Sigmoid_2Sigmoid"while/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_525/Relu_1Reluwhile/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_525/mul_2Mul!while/lstm_cell_525/Sigmoid_2:y:0(while/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_525/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_525/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_525/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_525/BiasAdd/ReadVariableOp*^while/lstm_cell_525/MatMul/ReadVariableOp,^while/lstm_cell_525/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_525_biasadd_readvariableop_resource5while_lstm_cell_525_biasadd_readvariableop_resource_0"n
4while_lstm_cell_525_matmul_1_readvariableop_resource6while_lstm_cell_525_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_525_matmul_readvariableop_resource4while_lstm_cell_525_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_525/BiasAdd/ReadVariableOp*while/lstm_cell_525/BiasAdd/ReadVariableOp2V
)while/lstm_cell_525/MatMul/ReadVariableOp)while/lstm_cell_525/MatMul/ReadVariableOp2Z
+while/lstm_cell_525/MatMul_1/ReadVariableOp+while/lstm_cell_525/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_272_while_body_3189933.
*lstm_272_while_lstm_272_while_loop_counter4
0lstm_272_while_lstm_272_while_maximum_iterations
lstm_272_while_placeholder 
lstm_272_while_placeholder_1 
lstm_272_while_placeholder_2 
lstm_272_while_placeholder_3-
)lstm_272_while_lstm_272_strided_slice_1_0i
elstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0:2(Q
?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(L
>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0:(
lstm_272_while_identity
lstm_272_while_identity_1
lstm_272_while_identity_2
lstm_272_while_identity_3
lstm_272_while_identity_4
lstm_272_while_identity_5+
'lstm_272_while_lstm_272_strided_slice_1g
clstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensorM
;lstm_272_while_lstm_cell_527_matmul_readvariableop_resource:2(O
=lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource:
(J
<lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource:(??3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp?2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp?4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp?
@lstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_272/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0lstm_272_while_placeholderIlstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_272/while/lstm_cell_527/MatMulMatMul9lstm_272/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_272/while/lstm_cell_527/MatMul_1MatMullstm_272_while_placeholder_2<lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_272/while/lstm_cell_527/addAddV2-lstm_272/while/lstm_cell_527/MatMul:product:0/lstm_272/while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_272/while/lstm_cell_527/BiasAddBiasAdd$lstm_272/while/lstm_cell_527/add:z:0;lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_272/while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_272/while/lstm_cell_527/splitSplit5lstm_272/while/lstm_cell_527/split/split_dim:output:0-lstm_272/while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_272/while/lstm_cell_527/SigmoidSigmoid+lstm_272/while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_272/while/lstm_cell_527/Sigmoid_1Sigmoid+lstm_272/while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_272/while/lstm_cell_527/mulMul*lstm_272/while/lstm_cell_527/Sigmoid_1:y:0lstm_272_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_272/while/lstm_cell_527/ReluRelu+lstm_272/while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/mul_1Mul(lstm_272/while/lstm_cell_527/Sigmoid:y:0/lstm_272/while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/add_1AddV2$lstm_272/while/lstm_cell_527/mul:z:0&lstm_272/while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_272/while/lstm_cell_527/Sigmoid_2Sigmoid+lstm_272/while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_272/while/lstm_cell_527/Relu_1Relu&lstm_272/while/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_272/while/lstm_cell_527/mul_2Mul*lstm_272/while/lstm_cell_527/Sigmoid_2:y:01lstm_272/while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_272/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_272_while_placeholder_1lstm_272_while_placeholder&lstm_272/while/lstm_cell_527/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_272/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_272/while/addAddV2lstm_272_while_placeholderlstm_272/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_272/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_272/while/add_1AddV2*lstm_272_while_lstm_272_while_loop_counterlstm_272/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_272/while/IdentityIdentitylstm_272/while/add_1:z:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_1Identity0lstm_272_while_lstm_272_while_maximum_iterations^lstm_272/while/NoOp*
T0*
_output_shapes
: t
lstm_272/while/Identity_2Identitylstm_272/while/add:z:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_3IdentityClstm_272/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_272/while/NoOp*
T0*
_output_shapes
: ?
lstm_272/while/Identity_4Identity&lstm_272/while/lstm_cell_527/mul_2:z:0^lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_272/while/Identity_5Identity&lstm_272/while/lstm_cell_527/add_1:z:0^lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_272/while/NoOpNoOp4^lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp3^lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp5^lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_272_while_identity lstm_272/while/Identity:output:0"?
lstm_272_while_identity_1"lstm_272/while/Identity_1:output:0"?
lstm_272_while_identity_2"lstm_272/while/Identity_2:output:0"?
lstm_272_while_identity_3"lstm_272/while/Identity_3:output:0"?
lstm_272_while_identity_4"lstm_272/while/Identity_4:output:0"?
lstm_272_while_identity_5"lstm_272/while/Identity_5:output:0"T
'lstm_272_while_lstm_272_strided_slice_1)lstm_272_while_lstm_272_strided_slice_1_0"~
<lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource>lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0"?
=lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource?lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0"|
;lstm_272_while_lstm_cell_527_matmul_readvariableop_resource=lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0"?
clstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensorelstm_272_while_tensorarrayv2read_tensorlistgetitem_lstm_272_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp3lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp2h
2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp2lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp2l
4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp4lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_90_layer_call_fn_3189447
lstm_270_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_270_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189395o
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
_user_specified_namelstm_270_input
?
?
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192415

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
?S
?
)sequential_90_lstm_272_while_body_3187192J
Fsequential_90_lstm_272_while_sequential_90_lstm_272_while_loop_counterP
Lsequential_90_lstm_272_while_sequential_90_lstm_272_while_maximum_iterations,
(sequential_90_lstm_272_while_placeholder.
*sequential_90_lstm_272_while_placeholder_1.
*sequential_90_lstm_272_while_placeholder_2.
*sequential_90_lstm_272_while_placeholder_3I
Esequential_90_lstm_272_while_sequential_90_lstm_272_strided_slice_1_0?
?sequential_90_lstm_272_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_272_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_90_lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0:2(_
Msequential_90_lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(Z
Lsequential_90_lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0:()
%sequential_90_lstm_272_while_identity+
'sequential_90_lstm_272_while_identity_1+
'sequential_90_lstm_272_while_identity_2+
'sequential_90_lstm_272_while_identity_3+
'sequential_90_lstm_272_while_identity_4+
'sequential_90_lstm_272_while_identity_5G
Csequential_90_lstm_272_while_sequential_90_lstm_272_strided_slice_1?
sequential_90_lstm_272_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_272_tensorarrayunstack_tensorlistfromtensor[
Isequential_90_lstm_272_while_lstm_cell_527_matmul_readvariableop_resource:2(]
Ksequential_90_lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource:
(X
Jsequential_90_lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource:(??Asequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp?@sequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp?Bsequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp?
Nsequential_90/lstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_90/lstm_272/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_90_lstm_272_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_272_tensorarrayunstack_tensorlistfromtensor_0(sequential_90_lstm_272_while_placeholderWsequential_90/lstm_272/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOpKsequential_90_lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_90/lstm_272/while/lstm_cell_527/MatMulMatMulGsequential_90/lstm_272/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOpMsequential_90_lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_90/lstm_272/while/lstm_cell_527/MatMul_1MatMul*sequential_90_lstm_272_while_placeholder_2Jsequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_90/lstm_272/while/lstm_cell_527/addAddV2;sequential_90/lstm_272/while/lstm_cell_527/MatMul:product:0=sequential_90/lstm_272/while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOpLsequential_90_lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_90/lstm_272/while/lstm_cell_527/BiasAddBiasAdd2sequential_90/lstm_272/while/lstm_cell_527/add:z:0Isequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_90/lstm_272/while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_90/lstm_272/while/lstm_cell_527/splitSplitCsequential_90/lstm_272/while/lstm_cell_527/split/split_dim:output:0;sequential_90/lstm_272/while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_90/lstm_272/while/lstm_cell_527/SigmoidSigmoid9sequential_90/lstm_272/while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_90/lstm_272/while/lstm_cell_527/Sigmoid_1Sigmoid9sequential_90/lstm_272/while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_90/lstm_272/while/lstm_cell_527/mulMul8sequential_90/lstm_272/while/lstm_cell_527/Sigmoid_1:y:0*sequential_90_lstm_272_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_90/lstm_272/while/lstm_cell_527/ReluRelu9sequential_90/lstm_272/while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_90/lstm_272/while/lstm_cell_527/mul_1Mul6sequential_90/lstm_272/while/lstm_cell_527/Sigmoid:y:0=sequential_90/lstm_272/while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_90/lstm_272/while/lstm_cell_527/add_1AddV22sequential_90/lstm_272/while/lstm_cell_527/mul:z:04sequential_90/lstm_272/while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_90/lstm_272/while/lstm_cell_527/Sigmoid_2Sigmoid9sequential_90/lstm_272/while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_90/lstm_272/while/lstm_cell_527/Relu_1Relu4sequential_90/lstm_272/while/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_90/lstm_272/while/lstm_cell_527/mul_2Mul8sequential_90/lstm_272/while/lstm_cell_527/Sigmoid_2:y:0?sequential_90/lstm_272/while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_90/lstm_272/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_90_lstm_272_while_placeholder_1(sequential_90_lstm_272_while_placeholder4sequential_90/lstm_272/while/lstm_cell_527/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_90/lstm_272/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_90/lstm_272/while/addAddV2(sequential_90_lstm_272_while_placeholder+sequential_90/lstm_272/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_90/lstm_272/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_90/lstm_272/while/add_1AddV2Fsequential_90_lstm_272_while_sequential_90_lstm_272_while_loop_counter-sequential_90/lstm_272/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_90/lstm_272/while/IdentityIdentity&sequential_90/lstm_272/while/add_1:z:0"^sequential_90/lstm_272/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_272/while/Identity_1IdentityLsequential_90_lstm_272_while_sequential_90_lstm_272_while_maximum_iterations"^sequential_90/lstm_272/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_272/while/Identity_2Identity$sequential_90/lstm_272/while/add:z:0"^sequential_90/lstm_272/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_272/while/Identity_3IdentityQsequential_90/lstm_272/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_90/lstm_272/while/NoOp*
T0*
_output_shapes
: ?
'sequential_90/lstm_272/while/Identity_4Identity4sequential_90/lstm_272/while/lstm_cell_527/mul_2:z:0"^sequential_90/lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_90/lstm_272/while/Identity_5Identity4sequential_90/lstm_272/while/lstm_cell_527/add_1:z:0"^sequential_90/lstm_272/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_90/lstm_272/while/NoOpNoOpB^sequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOpA^sequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOpC^sequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_90_lstm_272_while_identity.sequential_90/lstm_272/while/Identity:output:0"[
'sequential_90_lstm_272_while_identity_10sequential_90/lstm_272/while/Identity_1:output:0"[
'sequential_90_lstm_272_while_identity_20sequential_90/lstm_272/while/Identity_2:output:0"[
'sequential_90_lstm_272_while_identity_30sequential_90/lstm_272/while/Identity_3:output:0"[
'sequential_90_lstm_272_while_identity_40sequential_90/lstm_272/while/Identity_4:output:0"[
'sequential_90_lstm_272_while_identity_50sequential_90/lstm_272/while/Identity_5:output:0"?
Jsequential_90_lstm_272_while_lstm_cell_527_biasadd_readvariableop_resourceLsequential_90_lstm_272_while_lstm_cell_527_biasadd_readvariableop_resource_0"?
Ksequential_90_lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resourceMsequential_90_lstm_272_while_lstm_cell_527_matmul_1_readvariableop_resource_0"?
Isequential_90_lstm_272_while_lstm_cell_527_matmul_readvariableop_resourceKsequential_90_lstm_272_while_lstm_cell_527_matmul_readvariableop_resource_0"?
Csequential_90_lstm_272_while_sequential_90_lstm_272_strided_slice_1Esequential_90_lstm_272_while_sequential_90_lstm_272_strided_slice_1_0"?
sequential_90_lstm_272_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_272_tensorarrayunstack_tensorlistfromtensor?sequential_90_lstm_272_while_tensorarrayv2read_tensorlistgetitem_sequential_90_lstm_272_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOpAsequential_90/lstm_272/while/lstm_cell_527/BiasAdd/ReadVariableOp2?
@sequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp@sequential_90/lstm_272/while/lstm_cell_527/MatMul/ReadVariableOp2?
Bsequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOpBsequential_90/lstm_272/while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3190695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3190695___redundant_placeholder05
1while_while_cond_3190695___redundant_placeholder15
1while_while_cond_3190695___redundant_placeholder25
1while_while_cond_3190695___redundant_placeholder3
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
while_body_3192214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_527_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_527_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_527_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_527_matmul_readvariableop_resource:2(F
4while_lstm_cell_527_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_527_biasadd_readvariableop_resource:(??*while/lstm_cell_527/BiasAdd/ReadVariableOp?)while/lstm_cell_527/MatMul/ReadVariableOp?+while/lstm_cell_527/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_527_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_527/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_527_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_527/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_527/addAddV2$while/lstm_cell_527/MatMul:product:0&while/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_527_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_527/BiasAddBiasAddwhile/lstm_cell_527/add:z:02while/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_527/splitSplit,while/lstm_cell_527/split/split_dim:output:0$while/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_527/SigmoidSigmoid"while/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_1Sigmoid"while/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mulMul!while/lstm_cell_527/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_527/ReluRelu"while/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_1Mulwhile/lstm_cell_527/Sigmoid:y:0&while/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/add_1AddV2while/lstm_cell_527/mul:z:0while/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_527/Sigmoid_2Sigmoid"while/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_527/Relu_1Reluwhile/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_527/mul_2Mul!while/lstm_cell_527/Sigmoid_2:y:0(while/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_527/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_527/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_527/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_527/BiasAdd/ReadVariableOp*^while/lstm_cell_527/MatMul/ReadVariableOp,^while/lstm_cell_527/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_527_biasadd_readvariableop_resource5while_lstm_cell_527_biasadd_readvariableop_resource_0"n
4while_lstm_cell_527_matmul_1_readvariableop_resource6while_lstm_cell_527_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_527_matmul_readvariableop_resource4while_lstm_cell_527_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_527/BiasAdd/ReadVariableOp*while/lstm_cell_527/BiasAdd/ReadVariableOp2V
)while/lstm_cell_527/MatMul/ReadVariableOp)while/lstm_cell_527/MatMul/ReadVariableOp2Z
+while/lstm_cell_527/MatMul_1/ReadVariableOp+while/lstm_cell_527/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_90_layer_call_fn_3189596

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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189395o
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
while_cond_3189242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3189242___redundant_placeholder05
1while_while_cond_3189242___redundant_placeholder15
1while_while_cond_3189242___redundant_placeholder25
1while_while_cond_3189242___redundant_placeholder3
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3187349

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
*__inference_lstm_272_layer_call_fn_3191715

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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3188781o
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

?
lstm_270_while_cond_3189654.
*lstm_270_while_lstm_270_while_loop_counter4
0lstm_270_while_lstm_270_while_maximum_iterations
lstm_270_while_placeholder 
lstm_270_while_placeholder_1 
lstm_270_while_placeholder_2 
lstm_270_while_placeholder_30
,lstm_270_while_less_lstm_270_strided_slice_1G
Clstm_270_while_lstm_270_while_cond_3189654___redundant_placeholder0G
Clstm_270_while_lstm_270_while_cond_3189654___redundant_placeholder1G
Clstm_270_while_lstm_270_while_cond_3189654___redundant_placeholder2G
Clstm_270_while_lstm_270_while_cond_3189654___redundant_placeholder3
lstm_270_while_identity
?
lstm_270/while/LessLesslstm_270_while_placeholder,lstm_270_while_less_lstm_270_strided_slice_1*
T0*
_output_shapes
: ]
lstm_270/while/IdentityIdentitylstm_270/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_270_while_identity lstm_270/while/Identity:output:0*(
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190023

inputsH
5lstm_270_lstm_cell_525_matmul_readvariableop_resource:	?J
7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource:	d?E
6lstm_270_lstm_cell_525_biasadd_readvariableop_resource:	?H
5lstm_271_lstm_cell_526_matmul_readvariableop_resource:	d?J
7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource:	2?E
6lstm_271_lstm_cell_526_biasadd_readvariableop_resource:	?G
5lstm_272_lstm_cell_527_matmul_readvariableop_resource:2(I
7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource:
(D
6lstm_272_lstm_cell_527_biasadd_readvariableop_resource:(9
'dense_90_matmul_readvariableop_resource:
6
(dense_90_biasadd_readvariableop_resource:
identity??dense_90/BiasAdd/ReadVariableOp?dense_90/MatMul/ReadVariableOp?-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp?,lstm_270/lstm_cell_525/MatMul/ReadVariableOp?.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp?lstm_270/while?-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp?,lstm_271/lstm_cell_526/MatMul/ReadVariableOp?.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp?lstm_271/while?-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp?,lstm_272/lstm_cell_527/MatMul/ReadVariableOp?.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp?lstm_272/whileD
lstm_270/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_270/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_270/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_270/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_sliceStridedSlicelstm_270/Shape:output:0%lstm_270/strided_slice/stack:output:0'lstm_270/strided_slice/stack_1:output:0'lstm_270/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_270/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_270/zeros/packedPacklstm_270/strided_slice:output:0 lstm_270/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_270/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_270/zerosFilllstm_270/zeros/packed:output:0lstm_270/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_270/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_270/zeros_1/packedPacklstm_270/strided_slice:output:0"lstm_270/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_270/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_270/zeros_1Fill lstm_270/zeros_1/packed:output:0lstm_270/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_270/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_270/transpose	Transposeinputs lstm_270/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_270/Shape_1Shapelstm_270/transpose:y:0*
T0*
_output_shapes
:h
lstm_270/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_270/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_1StridedSlicelstm_270/Shape_1:output:0'lstm_270/strided_slice_1/stack:output:0)lstm_270/strided_slice_1/stack_1:output:0)lstm_270/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_270/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_270/TensorArrayV2TensorListReserve-lstm_270/TensorArrayV2/element_shape:output:0!lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_270/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_270/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_270/transpose:y:0Glstm_270/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_270/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_270/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_2StridedSlicelstm_270/transpose:y:0'lstm_270/strided_slice_2/stack:output:0)lstm_270/strided_slice_2/stack_1:output:0)lstm_270/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_270/lstm_cell_525/MatMul/ReadVariableOpReadVariableOp5lstm_270_lstm_cell_525_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_270/lstm_cell_525/MatMulMatMul!lstm_270/strided_slice_2:output:04lstm_270/lstm_cell_525/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOpReadVariableOp7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_270/lstm_cell_525/MatMul_1MatMullstm_270/zeros:output:06lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_270/lstm_cell_525/addAddV2'lstm_270/lstm_cell_525/MatMul:product:0)lstm_270/lstm_cell_525/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOpReadVariableOp6lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_270/lstm_cell_525/BiasAddBiasAddlstm_270/lstm_cell_525/add:z:05lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_270/lstm_cell_525/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_270/lstm_cell_525/splitSplit/lstm_270/lstm_cell_525/split/split_dim:output:0'lstm_270/lstm_cell_525/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_270/lstm_cell_525/SigmoidSigmoid%lstm_270/lstm_cell_525/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_270/lstm_cell_525/Sigmoid_1Sigmoid%lstm_270/lstm_cell_525/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mulMul$lstm_270/lstm_cell_525/Sigmoid_1:y:0lstm_270/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_270/lstm_cell_525/ReluRelu%lstm_270/lstm_cell_525/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mul_1Mul"lstm_270/lstm_cell_525/Sigmoid:y:0)lstm_270/lstm_cell_525/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/add_1AddV2lstm_270/lstm_cell_525/mul:z:0 lstm_270/lstm_cell_525/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_270/lstm_cell_525/Sigmoid_2Sigmoid%lstm_270/lstm_cell_525/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_270/lstm_cell_525/Relu_1Relu lstm_270/lstm_cell_525/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_270/lstm_cell_525/mul_2Mul$lstm_270/lstm_cell_525/Sigmoid_2:y:0+lstm_270/lstm_cell_525/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_270/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_270/TensorArrayV2_1TensorListReserve/lstm_270/TensorArrayV2_1/element_shape:output:0!lstm_270/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_270/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_270/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_270/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_270/whileWhile$lstm_270/while/loop_counter:output:0*lstm_270/while/maximum_iterations:output:0lstm_270/time:output:0!lstm_270/TensorArrayV2_1:handle:0lstm_270/zeros:output:0lstm_270/zeros_1:output:0!lstm_270/strided_slice_1:output:0@lstm_270/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_270_lstm_cell_525_matmul_readvariableop_resource7lstm_270_lstm_cell_525_matmul_1_readvariableop_resource6lstm_270_lstm_cell_525_biasadd_readvariableop_resource*
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
lstm_270_while_body_3189655*'
condR
lstm_270_while_cond_3189654*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_270/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_270/TensorArrayV2Stack/TensorListStackTensorListStacklstm_270/while:output:3Blstm_270/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_270/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_270/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_270/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_270/strided_slice_3StridedSlice4lstm_270/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_270/strided_slice_3/stack:output:0)lstm_270/strided_slice_3/stack_1:output:0)lstm_270/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_270/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_270/transpose_1	Transpose4lstm_270/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_270/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_270/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_271/ShapeShapelstm_270/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_271/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_271/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_271/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_sliceStridedSlicelstm_271/Shape:output:0%lstm_271/strided_slice/stack:output:0'lstm_271/strided_slice/stack_1:output:0'lstm_271/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_271/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_271/zeros/packedPacklstm_271/strided_slice:output:0 lstm_271/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_271/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_271/zerosFilllstm_271/zeros/packed:output:0lstm_271/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_271/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_271/zeros_1/packedPacklstm_271/strided_slice:output:0"lstm_271/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_271/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_271/zeros_1Fill lstm_271/zeros_1/packed:output:0lstm_271/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_271/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_271/transpose	Transposelstm_270/transpose_1:y:0 lstm_271/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_271/Shape_1Shapelstm_271/transpose:y:0*
T0*
_output_shapes
:h
lstm_271/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_271/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_1StridedSlicelstm_271/Shape_1:output:0'lstm_271/strided_slice_1/stack:output:0)lstm_271/strided_slice_1/stack_1:output:0)lstm_271/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_271/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_271/TensorArrayV2TensorListReserve-lstm_271/TensorArrayV2/element_shape:output:0!lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_271/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_271/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_271/transpose:y:0Glstm_271/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_271/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_271/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_2StridedSlicelstm_271/transpose:y:0'lstm_271/strided_slice_2/stack:output:0)lstm_271/strided_slice_2/stack_1:output:0)lstm_271/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_271/lstm_cell_526/MatMul/ReadVariableOpReadVariableOp5lstm_271_lstm_cell_526_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_271/lstm_cell_526/MatMulMatMul!lstm_271/strided_slice_2:output:04lstm_271/lstm_cell_526/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOpReadVariableOp7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_271/lstm_cell_526/MatMul_1MatMullstm_271/zeros:output:06lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_271/lstm_cell_526/addAddV2'lstm_271/lstm_cell_526/MatMul:product:0)lstm_271/lstm_cell_526/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOpReadVariableOp6lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_271/lstm_cell_526/BiasAddBiasAddlstm_271/lstm_cell_526/add:z:05lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_271/lstm_cell_526/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_271/lstm_cell_526/splitSplit/lstm_271/lstm_cell_526/split/split_dim:output:0'lstm_271/lstm_cell_526/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_271/lstm_cell_526/SigmoidSigmoid%lstm_271/lstm_cell_526/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_271/lstm_cell_526/Sigmoid_1Sigmoid%lstm_271/lstm_cell_526/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mulMul$lstm_271/lstm_cell_526/Sigmoid_1:y:0lstm_271/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_271/lstm_cell_526/ReluRelu%lstm_271/lstm_cell_526/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mul_1Mul"lstm_271/lstm_cell_526/Sigmoid:y:0)lstm_271/lstm_cell_526/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/add_1AddV2lstm_271/lstm_cell_526/mul:z:0 lstm_271/lstm_cell_526/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_271/lstm_cell_526/Sigmoid_2Sigmoid%lstm_271/lstm_cell_526/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_271/lstm_cell_526/Relu_1Relu lstm_271/lstm_cell_526/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_271/lstm_cell_526/mul_2Mul$lstm_271/lstm_cell_526/Sigmoid_2:y:0+lstm_271/lstm_cell_526/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_271/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_271/TensorArrayV2_1TensorListReserve/lstm_271/TensorArrayV2_1/element_shape:output:0!lstm_271/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_271/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_271/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_271/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_271/whileWhile$lstm_271/while/loop_counter:output:0*lstm_271/while/maximum_iterations:output:0lstm_271/time:output:0!lstm_271/TensorArrayV2_1:handle:0lstm_271/zeros:output:0lstm_271/zeros_1:output:0!lstm_271/strided_slice_1:output:0@lstm_271/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_271_lstm_cell_526_matmul_readvariableop_resource7lstm_271_lstm_cell_526_matmul_1_readvariableop_resource6lstm_271_lstm_cell_526_biasadd_readvariableop_resource*
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
lstm_271_while_body_3189794*'
condR
lstm_271_while_cond_3189793*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_271/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_271/TensorArrayV2Stack/TensorListStackTensorListStacklstm_271/while:output:3Blstm_271/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_271/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_271/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_271/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_271/strided_slice_3StridedSlice4lstm_271/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_271/strided_slice_3/stack:output:0)lstm_271/strided_slice_3/stack_1:output:0)lstm_271/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_271/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_271/transpose_1	Transpose4lstm_271/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_271/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_271/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_272/ShapeShapelstm_271/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_272/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_272/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_272/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_sliceStridedSlicelstm_272/Shape:output:0%lstm_272/strided_slice/stack:output:0'lstm_272/strided_slice/stack_1:output:0'lstm_272/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_272/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_272/zeros/packedPacklstm_272/strided_slice:output:0 lstm_272/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_272/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_272/zerosFilllstm_272/zeros/packed:output:0lstm_272/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_272/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_272/zeros_1/packedPacklstm_272/strided_slice:output:0"lstm_272/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_272/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_272/zeros_1Fill lstm_272/zeros_1/packed:output:0lstm_272/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_272/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_272/transpose	Transposelstm_271/transpose_1:y:0 lstm_272/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_272/Shape_1Shapelstm_272/transpose:y:0*
T0*
_output_shapes
:h
lstm_272/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_272/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_1StridedSlicelstm_272/Shape_1:output:0'lstm_272/strided_slice_1/stack:output:0)lstm_272/strided_slice_1/stack_1:output:0)lstm_272/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_272/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_272/TensorArrayV2TensorListReserve-lstm_272/TensorArrayV2/element_shape:output:0!lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_272/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_272/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_272/transpose:y:0Glstm_272/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_272/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_272/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_2StridedSlicelstm_272/transpose:y:0'lstm_272/strided_slice_2/stack:output:0)lstm_272/strided_slice_2/stack_1:output:0)lstm_272/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_272/lstm_cell_527/MatMul/ReadVariableOpReadVariableOp5lstm_272_lstm_cell_527_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_272/lstm_cell_527/MatMulMatMul!lstm_272/strided_slice_2:output:04lstm_272/lstm_cell_527/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOpReadVariableOp7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_272/lstm_cell_527/MatMul_1MatMullstm_272/zeros:output:06lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_272/lstm_cell_527/addAddV2'lstm_272/lstm_cell_527/MatMul:product:0)lstm_272/lstm_cell_527/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOpReadVariableOp6lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_272/lstm_cell_527/BiasAddBiasAddlstm_272/lstm_cell_527/add:z:05lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_272/lstm_cell_527/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_272/lstm_cell_527/splitSplit/lstm_272/lstm_cell_527/split/split_dim:output:0'lstm_272/lstm_cell_527/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_272/lstm_cell_527/SigmoidSigmoid%lstm_272/lstm_cell_527/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_272/lstm_cell_527/Sigmoid_1Sigmoid%lstm_272/lstm_cell_527/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mulMul$lstm_272/lstm_cell_527/Sigmoid_1:y:0lstm_272/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_272/lstm_cell_527/ReluRelu%lstm_272/lstm_cell_527/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mul_1Mul"lstm_272/lstm_cell_527/Sigmoid:y:0)lstm_272/lstm_cell_527/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/add_1AddV2lstm_272/lstm_cell_527/mul:z:0 lstm_272/lstm_cell_527/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_272/lstm_cell_527/Sigmoid_2Sigmoid%lstm_272/lstm_cell_527/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_272/lstm_cell_527/Relu_1Relu lstm_272/lstm_cell_527/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_272/lstm_cell_527/mul_2Mul$lstm_272/lstm_cell_527/Sigmoid_2:y:0+lstm_272/lstm_cell_527/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_272/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_272/TensorArrayV2_1TensorListReserve/lstm_272/TensorArrayV2_1/element_shape:output:0!lstm_272/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_272/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_272/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_272/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_272/whileWhile$lstm_272/while/loop_counter:output:0*lstm_272/while/maximum_iterations:output:0lstm_272/time:output:0!lstm_272/TensorArrayV2_1:handle:0lstm_272/zeros:output:0lstm_272/zeros_1:output:0!lstm_272/strided_slice_1:output:0@lstm_272/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_272_lstm_cell_527_matmul_readvariableop_resource7lstm_272_lstm_cell_527_matmul_1_readvariableop_resource6lstm_272_lstm_cell_527_biasadd_readvariableop_resource*
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
lstm_272_while_body_3189933*'
condR
lstm_272_while_cond_3189932*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_272/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_272/TensorArrayV2Stack/TensorListStackTensorListStacklstm_272/while:output:3Blstm_272/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_272/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_272/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_272/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_272/strided_slice_3StridedSlice4lstm_272/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_272/strided_slice_3/stack:output:0)lstm_272/strided_slice_3/stack_1:output:0)lstm_272/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_272/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_272/transpose_1	Transpose4lstm_272/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_272/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_272/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_90/MatMul/ReadVariableOpReadVariableOp'dense_90_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_90/MatMulMatMul!lstm_272/strided_slice_3:output:0&dense_90/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_90/BiasAdd/ReadVariableOpReadVariableOp(dense_90_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_90/BiasAddBiasAdddense_90/MatMul:product:0'dense_90/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_90/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_90/BiasAdd/ReadVariableOp^dense_90/MatMul/ReadVariableOp.^lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp-^lstm_270/lstm_cell_525/MatMul/ReadVariableOp/^lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp^lstm_270/while.^lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp-^lstm_271/lstm_cell_526/MatMul/ReadVariableOp/^lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp^lstm_271/while.^lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp-^lstm_272/lstm_cell_527/MatMul/ReadVariableOp/^lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp^lstm_272/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_90/BiasAdd/ReadVariableOpdense_90/BiasAdd/ReadVariableOp2@
dense_90/MatMul/ReadVariableOpdense_90/MatMul/ReadVariableOp2^
-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp-lstm_270/lstm_cell_525/BiasAdd/ReadVariableOp2\
,lstm_270/lstm_cell_525/MatMul/ReadVariableOp,lstm_270/lstm_cell_525/MatMul/ReadVariableOp2`
.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp.lstm_270/lstm_cell_525/MatMul_1/ReadVariableOp2 
lstm_270/whilelstm_270/while2^
-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp-lstm_271/lstm_cell_526/BiasAdd/ReadVariableOp2\
,lstm_271/lstm_cell_526/MatMul/ReadVariableOp,lstm_271/lstm_cell_526/MatMul/ReadVariableOp2`
.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp.lstm_271/lstm_cell_526/MatMul_1/ReadVariableOp2 
lstm_271/whilelstm_271/while2^
-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp-lstm_272/lstm_cell_527/BiasAdd/ReadVariableOp2\
,lstm_272/lstm_cell_527/MatMul/ReadVariableOp,lstm_272/lstm_cell_527/MatMul/ReadVariableOp2`
.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp.lstm_272/lstm_cell_527/MatMul_1/ReadVariableOp2 
lstm_272/whilelstm_272/while:S O
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
lstm_270_input;
 serving_default_lstm_270_input:0?????????<
dense_900
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
2dense_90/kernel
:2dense_90/bias
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
0:.	?2lstm_270/lstm_cell_270/kernel
::8	d?2'lstm_270/lstm_cell_270/recurrent_kernel
*:(?2lstm_270/lstm_cell_270/bias
0:.	d?2lstm_271/lstm_cell_271/kernel
::8	2?2'lstm_271/lstm_cell_271/recurrent_kernel
*:(?2lstm_271/lstm_cell_271/bias
/:-2(2lstm_272/lstm_cell_272/kernel
9:7
(2'lstm_272/lstm_cell_272/recurrent_kernel
):'(2lstm_272/lstm_cell_272/bias
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
2Adam/dense_90/kernel/m
 :2Adam/dense_90/bias/m
5:3	?2$Adam/lstm_270/lstm_cell_270/kernel/m
?:=	d?2.Adam/lstm_270/lstm_cell_270/recurrent_kernel/m
/:-?2"Adam/lstm_270/lstm_cell_270/bias/m
5:3	d?2$Adam/lstm_271/lstm_cell_271/kernel/m
?:=	2?2.Adam/lstm_271/lstm_cell_271/recurrent_kernel/m
/:-?2"Adam/lstm_271/lstm_cell_271/bias/m
4:22(2$Adam/lstm_272/lstm_cell_272/kernel/m
>:<
(2.Adam/lstm_272/lstm_cell_272/recurrent_kernel/m
.:,(2"Adam/lstm_272/lstm_cell_272/bias/m
&:$
2Adam/dense_90/kernel/v
 :2Adam/dense_90/bias/v
5:3	?2$Adam/lstm_270/lstm_cell_270/kernel/v
?:=	d?2.Adam/lstm_270/lstm_cell_270/recurrent_kernel/v
/:-?2"Adam/lstm_270/lstm_cell_270/bias/v
5:3	d?2$Adam/lstm_271/lstm_cell_271/kernel/v
?:=	2?2.Adam/lstm_271/lstm_cell_271/recurrent_kernel/v
/:-?2"Adam/lstm_271/lstm_cell_271/bias/v
4:22(2$Adam/lstm_272/lstm_cell_272/kernel/v
>:<
(2.Adam/lstm_272/lstm_cell_272/recurrent_kernel/v
.:,(2"Adam/lstm_272/lstm_cell_272/bias/v
?2?
/__inference_sequential_90_layer_call_fn_3188831
/__inference_sequential_90_layer_call_fn_3189569
/__inference_sequential_90_layer_call_fn_3189596
/__inference_sequential_90_layer_call_fn_3189447?
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190023
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190450
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189477
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189507?
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
"__inference__wrapped_model_3187282lstm_270_input"?
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
*__inference_lstm_270_layer_call_fn_3190461
*__inference_lstm_270_layer_call_fn_3190472
*__inference_lstm_270_layer_call_fn_3190483
*__inference_lstm_270_layer_call_fn_3190494?
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190637
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190780
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190923
E__inference_lstm_270_layer_call_and_return_conditional_losses_3191066?
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
*__inference_lstm_271_layer_call_fn_3191077
*__inference_lstm_271_layer_call_fn_3191088
*__inference_lstm_271_layer_call_fn_3191099
*__inference_lstm_271_layer_call_fn_3191110?
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191253
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191396
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191539
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191682?
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
*__inference_lstm_272_layer_call_fn_3191693
*__inference_lstm_272_layer_call_fn_3191704
*__inference_lstm_272_layer_call_fn_3191715
*__inference_lstm_272_layer_call_fn_3191726?
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3191869
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192012
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192155
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192298?
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
*__inference_dense_90_layer_call_fn_3192307?
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
E__inference_dense_90_layer_call_and_return_conditional_losses_3192317?
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
%__inference_signature_wrapper_3189542lstm_270_input"?
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
/__inference_lstm_cell_525_layer_call_fn_3192334
/__inference_lstm_cell_525_layer_call_fn_3192351?
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192383
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192415?
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
/__inference_lstm_cell_526_layer_call_fn_3192432
/__inference_lstm_cell_526_layer_call_fn_3192449?
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192481
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192513?
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
/__inference_lstm_cell_527_layer_call_fn_3192530
/__inference_lstm_cell_527_layer_call_fn_3192547?
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192579
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192611?
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
"__inference__wrapped_model_3187282-./012345!";?8
1?.
,?)
lstm_270_input?????????
? "3?0
.
dense_90"?
dense_90??????????
E__inference_dense_90_layer_call_and_return_conditional_losses_3192317\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_90_layer_call_fn_3192307O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190637?-./O?L
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190780?-./O?L
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3190923q-./??<
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
E__inference_lstm_270_layer_call_and_return_conditional_losses_3191066q-./??<
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
*__inference_lstm_270_layer_call_fn_3190461}-./O?L
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
*__inference_lstm_270_layer_call_fn_3190472}-./O?L
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
*__inference_lstm_270_layer_call_fn_3190483d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_270_layer_call_fn_3190494d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191253?012O?L
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191396?012O?L
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191539q012??<
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
E__inference_lstm_271_layer_call_and_return_conditional_losses_3191682q012??<
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
*__inference_lstm_271_layer_call_fn_3191077}012O?L
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
*__inference_lstm_271_layer_call_fn_3191088}012O?L
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
*__inference_lstm_271_layer_call_fn_3191099d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_271_layer_call_fn_3191110d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_272_layer_call_and_return_conditional_losses_3191869}345O?L
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192012}345O?L
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192155m345??<
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
E__inference_lstm_272_layer_call_and_return_conditional_losses_3192298m345??<
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
*__inference_lstm_272_layer_call_fn_3191693p345O?L
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
*__inference_lstm_272_layer_call_fn_3191704p345O?L
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
*__inference_lstm_272_layer_call_fn_3191715`345??<
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
*__inference_lstm_272_layer_call_fn_3191726`345??<
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192383?-./??}
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
J__inference_lstm_cell_525_layer_call_and_return_conditional_losses_3192415?-./??}
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
/__inference_lstm_cell_525_layer_call_fn_3192334?-./??}
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
/__inference_lstm_cell_525_layer_call_fn_3192351?-./??}
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192481?012??}
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
J__inference_lstm_cell_526_layer_call_and_return_conditional_losses_3192513?012??}
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
/__inference_lstm_cell_526_layer_call_fn_3192432?012??}
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
/__inference_lstm_cell_526_layer_call_fn_3192449?012??}
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192579?345??}
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
J__inference_lstm_cell_527_layer_call_and_return_conditional_losses_3192611?345??}
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
/__inference_lstm_cell_527_layer_call_fn_3192530?345??}
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
/__inference_lstm_cell_527_layer_call_fn_3192547?345??}
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189477y-./012345!"C?@
9?6
,?)
lstm_270_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_90_layer_call_and_return_conditional_losses_3189507y-./012345!"C?@
9?6
,?)
lstm_270_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190023q-./012345!";?8
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
J__inference_sequential_90_layer_call_and_return_conditional_losses_3190450q-./012345!";?8
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
/__inference_sequential_90_layer_call_fn_3188831l-./012345!"C?@
9?6
,?)
lstm_270_input?????????
p 

 
? "???????????
/__inference_sequential_90_layer_call_fn_3189447l-./012345!"C?@
9?6
,?)
lstm_270_input?????????
p

 
? "???????????
/__inference_sequential_90_layer_call_fn_3189569d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_90_layer_call_fn_3189596d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3189542?-./012345!"M?J
? 
C?@
>
lstm_270_input,?)
lstm_270_input?????????"3?0
.
dense_90"?
dense_90?????????