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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ž-
|
dense_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_142/kernel
u
$dense_142/kernel/Read/ReadVariableOpReadVariableOpdense_142/kernel*
_output_shapes

:
*
dtype0
t
dense_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_142/bias
m
"dense_142/bias/Read/ReadVariableOpReadVariableOpdense_142/bias*
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
lstm_426/lstm_cell_426/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_426/lstm_cell_426/kernel
?
1lstm_426/lstm_cell_426/kernel/Read/ReadVariableOpReadVariableOplstm_426/lstm_cell_426/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_426/lstm_cell_426/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_426/lstm_cell_426/recurrent_kernel
?
;lstm_426/lstm_cell_426/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_426/lstm_cell_426/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_426/lstm_cell_426/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_426/lstm_cell_426/bias
?
/lstm_426/lstm_cell_426/bias/Read/ReadVariableOpReadVariableOplstm_426/lstm_cell_426/bias*
_output_shapes	
:?*
dtype0
?
lstm_427/lstm_cell_427/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_427/lstm_cell_427/kernel
?
1lstm_427/lstm_cell_427/kernel/Read/ReadVariableOpReadVariableOplstm_427/lstm_cell_427/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_427/lstm_cell_427/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_427/lstm_cell_427/recurrent_kernel
?
;lstm_427/lstm_cell_427/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_427/lstm_cell_427/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_427/lstm_cell_427/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_427/lstm_cell_427/bias
?
/lstm_427/lstm_cell_427/bias/Read/ReadVariableOpReadVariableOplstm_427/lstm_cell_427/bias*
_output_shapes	
:?*
dtype0
?
lstm_428/lstm_cell_428/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_428/lstm_cell_428/kernel
?
1lstm_428/lstm_cell_428/kernel/Read/ReadVariableOpReadVariableOplstm_428/lstm_cell_428/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_428/lstm_cell_428/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_428/lstm_cell_428/recurrent_kernel
?
;lstm_428/lstm_cell_428/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_428/lstm_cell_428/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_428/lstm_cell_428/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_428/lstm_cell_428/bias
?
/lstm_428/lstm_cell_428/bias/Read/ReadVariableOpReadVariableOplstm_428/lstm_cell_428/bias*
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
Adam/dense_142/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_142/kernel/m
?
+Adam/dense_142/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_142/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_142/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_142/bias/m
{
)Adam/dense_142/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_142/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_426/lstm_cell_426/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_426/lstm_cell_426/kernel/m
?
8Adam/lstm_426/lstm_cell_426/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_426/lstm_cell_426/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_426/lstm_cell_426/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_426/lstm_cell_426/recurrent_kernel/m
?
BAdam/lstm_426/lstm_cell_426/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_426/lstm_cell_426/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_426/lstm_cell_426/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_426/lstm_cell_426/bias/m
?
6Adam/lstm_426/lstm_cell_426/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_426/lstm_cell_426/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_427/lstm_cell_427/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_427/lstm_cell_427/kernel/m
?
8Adam/lstm_427/lstm_cell_427/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_427/lstm_cell_427/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_427/lstm_cell_427/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_427/lstm_cell_427/recurrent_kernel/m
?
BAdam/lstm_427/lstm_cell_427/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_427/lstm_cell_427/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_427/lstm_cell_427/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_427/lstm_cell_427/bias/m
?
6Adam/lstm_427/lstm_cell_427/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_427/lstm_cell_427/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_428/lstm_cell_428/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_428/lstm_cell_428/kernel/m
?
8Adam/lstm_428/lstm_cell_428/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_428/lstm_cell_428/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_428/lstm_cell_428/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_428/lstm_cell_428/recurrent_kernel/m
?
BAdam/lstm_428/lstm_cell_428/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_428/lstm_cell_428/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_428/lstm_cell_428/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_428/lstm_cell_428/bias/m
?
6Adam/lstm_428/lstm_cell_428/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_428/lstm_cell_428/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_142/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_142/kernel/v
?
+Adam/dense_142/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_142/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_142/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_142/bias/v
{
)Adam/dense_142/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_142/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_426/lstm_cell_426/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_426/lstm_cell_426/kernel/v
?
8Adam/lstm_426/lstm_cell_426/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_426/lstm_cell_426/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_426/lstm_cell_426/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_426/lstm_cell_426/recurrent_kernel/v
?
BAdam/lstm_426/lstm_cell_426/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_426/lstm_cell_426/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_426/lstm_cell_426/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_426/lstm_cell_426/bias/v
?
6Adam/lstm_426/lstm_cell_426/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_426/lstm_cell_426/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_427/lstm_cell_427/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_427/lstm_cell_427/kernel/v
?
8Adam/lstm_427/lstm_cell_427/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_427/lstm_cell_427/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_427/lstm_cell_427/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_427/lstm_cell_427/recurrent_kernel/v
?
BAdam/lstm_427/lstm_cell_427/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_427/lstm_cell_427/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_427/lstm_cell_427/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_427/lstm_cell_427/bias/v
?
6Adam/lstm_427/lstm_cell_427/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_427/lstm_cell_427/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_428/lstm_cell_428/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_428/lstm_cell_428/kernel/v
?
8Adam/lstm_428/lstm_cell_428/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_428/lstm_cell_428/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_428/lstm_cell_428/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_428/lstm_cell_428/recurrent_kernel/v
?
BAdam/lstm_428/lstm_cell_428/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_428/lstm_cell_428/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_428/lstm_cell_428/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_428/lstm_cell_428/bias/v
?
6Adam/lstm_428/lstm_cell_428/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_428/lstm_cell_428/bias/v*
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
\Z
VARIABLE_VALUEdense_142/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_142/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_426/lstm_cell_426/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_426/lstm_cell_426/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_426/lstm_cell_426/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_427/lstm_cell_427/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_427/lstm_cell_427/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_427/lstm_cell_427/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_428/lstm_cell_428/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_428/lstm_cell_428/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_428/lstm_cell_428/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_142/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_142/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_426/lstm_cell_426/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_426/lstm_cell_426/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_426/lstm_cell_426/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_427/lstm_cell_427/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_427/lstm_cell_427/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_427/lstm_cell_427/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_428/lstm_cell_428/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_428/lstm_cell_428/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_428/lstm_cell_428/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_142/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_142/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_426/lstm_cell_426/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_426/lstm_cell_426/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_426/lstm_cell_426/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_427/lstm_cell_427/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_427/lstm_cell_427/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_427/lstm_cell_427/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_428/lstm_cell_428/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_428/lstm_cell_428/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_428/lstm_cell_428/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_426_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_426_inputlstm_426/lstm_cell_426/kernel'lstm_426/lstm_cell_426/recurrent_kernellstm_426/lstm_cell_426/biaslstm_427/lstm_cell_427/kernel'lstm_427/lstm_cell_427/recurrent_kernellstm_427/lstm_cell_427/biaslstm_428/lstm_cell_428/kernel'lstm_428/lstm_cell_428/recurrent_kernellstm_428/lstm_cell_428/biasdense_142/kerneldense_142/bias*
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
GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_794944
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_142/kernel/Read/ReadVariableOp"dense_142/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_426/lstm_cell_426/kernel/Read/ReadVariableOp;lstm_426/lstm_cell_426/recurrent_kernel/Read/ReadVariableOp/lstm_426/lstm_cell_426/bias/Read/ReadVariableOp1lstm_427/lstm_cell_427/kernel/Read/ReadVariableOp;lstm_427/lstm_cell_427/recurrent_kernel/Read/ReadVariableOp/lstm_427/lstm_cell_427/bias/Read/ReadVariableOp1lstm_428/lstm_cell_428/kernel/Read/ReadVariableOp;lstm_428/lstm_cell_428/recurrent_kernel/Read/ReadVariableOp/lstm_428/lstm_cell_428/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_142/kernel/m/Read/ReadVariableOp)Adam/dense_142/bias/m/Read/ReadVariableOp8Adam/lstm_426/lstm_cell_426/kernel/m/Read/ReadVariableOpBAdam/lstm_426/lstm_cell_426/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_426/lstm_cell_426/bias/m/Read/ReadVariableOp8Adam/lstm_427/lstm_cell_427/kernel/m/Read/ReadVariableOpBAdam/lstm_427/lstm_cell_427/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_427/lstm_cell_427/bias/m/Read/ReadVariableOp8Adam/lstm_428/lstm_cell_428/kernel/m/Read/ReadVariableOpBAdam/lstm_428/lstm_cell_428/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_428/lstm_cell_428/bias/m/Read/ReadVariableOp+Adam/dense_142/kernel/v/Read/ReadVariableOp)Adam/dense_142/bias/v/Read/ReadVariableOp8Adam/lstm_426/lstm_cell_426/kernel/v/Read/ReadVariableOpBAdam/lstm_426/lstm_cell_426/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_426/lstm_cell_426/bias/v/Read/ReadVariableOp8Adam/lstm_427/lstm_cell_427/kernel/v/Read/ReadVariableOpBAdam/lstm_427/lstm_cell_427/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_427/lstm_cell_427/bias/v/Read/ReadVariableOp8Adam/lstm_428/lstm_cell_428/kernel/v/Read/ReadVariableOpBAdam/lstm_428/lstm_cell_428/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_428/lstm_cell_428/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *(
f#R!
__inference__traced_save_798156
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_142/kerneldense_142/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_426/lstm_cell_426/kernel'lstm_426/lstm_cell_426/recurrent_kernellstm_426/lstm_cell_426/biaslstm_427/lstm_cell_427/kernel'lstm_427/lstm_cell_427/recurrent_kernellstm_427/lstm_cell_427/biaslstm_428/lstm_cell_428/kernel'lstm_428/lstm_cell_428/recurrent_kernellstm_428/lstm_cell_428/biastotalcountAdam/dense_142/kernel/mAdam/dense_142/bias/m$Adam/lstm_426/lstm_cell_426/kernel/m.Adam/lstm_426/lstm_cell_426/recurrent_kernel/m"Adam/lstm_426/lstm_cell_426/bias/m$Adam/lstm_427/lstm_cell_427/kernel/m.Adam/lstm_427/lstm_cell_427/recurrent_kernel/m"Adam/lstm_427/lstm_cell_427/bias/m$Adam/lstm_428/lstm_cell_428/kernel/m.Adam/lstm_428/lstm_cell_428/recurrent_kernel/m"Adam/lstm_428/lstm_cell_428/bias/mAdam/dense_142/kernel/vAdam/dense_142/bias/v$Adam/lstm_426/lstm_cell_426/kernel/v.Adam/lstm_426/lstm_cell_426/recurrent_kernel/v"Adam/lstm_426/lstm_cell_426/bias/v$Adam/lstm_427/lstm_cell_427/kernel/v.Adam/lstm_427/lstm_cell_427/recurrent_kernel/v"Adam/lstm_427/lstm_cell_427/bias/v$Adam/lstm_428/lstm_cell_428/kernel/v.Adam/lstm_428/lstm_cell_428/recurrent_kernel/v"Adam/lstm_428/lstm_cell_428/bias/v*4
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_798286??+
?
?
)__inference_lstm_427_layer_call_fn_796490
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_793375|
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
while_cond_797615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_797615___redundant_placeholder04
0while_while_cond_797615___redundant_placeholder14
0while_while_cond_797615___redundant_placeholder24
0while_while_cond_797615___redundant_placeholder3
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_794033

inputs?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_793949*
condR
while_cond_793948*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_142_layer_call_and_return_conditional_losses_794208

inputs"
lstm_426_793884:	?"
lstm_426_793886:	d?
lstm_426_793888:	?"
lstm_427_794034:	d?"
lstm_427_794036:	2?
lstm_427_794038:	?!
lstm_428_794184:2(!
lstm_428_794186:
(
lstm_428_794188:("
dense_142_794202:

dense_142_794204:
identity??!dense_142/StatefulPartitionedCall? lstm_426/StatefulPartitionedCall? lstm_427/StatefulPartitionedCall? lstm_428/StatefulPartitionedCall?
 lstm_426/StatefulPartitionedCallStatefulPartitionedCallinputslstm_426_793884lstm_426_793886lstm_426_793888*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_793883?
 lstm_427/StatefulPartitionedCallStatefulPartitionedCall)lstm_426/StatefulPartitionedCall:output:0lstm_427_794034lstm_427_794036lstm_427_794038*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794033?
 lstm_428/StatefulPartitionedCallStatefulPartitionedCall)lstm_427/StatefulPartitionedCall:output:0lstm_428_794184lstm_428_794186lstm_428_794188*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794183?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_428/StatefulPartitionedCall:output:0dense_142_794202dense_142_794204*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201y
IdentityIdentity*dense_142/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_142/StatefulPartitionedCall!^lstm_426/StatefulPartitionedCall!^lstm_427/StatefulPartitionedCall!^lstm_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2D
 lstm_426/StatefulPartitionedCall lstm_426/StatefulPartitionedCall2D
 lstm_427/StatefulPartitionedCall lstm_427/StatefulPartitionedCall2D
 lstm_428/StatefulPartitionedCall lstm_428/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_795955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_426_while_body_795057.
*lstm_426_while_lstm_426_while_loop_counter4
0lstm_426_while_lstm_426_while_maximum_iterations
lstm_426_while_placeholder 
lstm_426_while_placeholder_1 
lstm_426_while_placeholder_2 
lstm_426_while_placeholder_3-
)lstm_426_while_lstm_426_strided_slice_1_0i
elstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0:	?R
?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?M
>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
lstm_426_while_identity
lstm_426_while_identity_1
lstm_426_while_identity_2
lstm_426_while_identity_3
lstm_426_while_identity_4
lstm_426_while_identity_5+
'lstm_426_while_lstm_426_strided_slice_1g
clstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensorN
;lstm_426_while_lstm_cell_129_matmul_readvariableop_resource:	?P
=lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource:	d?K
<lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource:	???3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp?2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp?4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp?
@lstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_426/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0lstm_426_while_placeholderIlstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_426/while/lstm_cell_129/MatMulMatMul9lstm_426/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_426/while/lstm_cell_129/MatMul_1MatMullstm_426_while_placeholder_2<lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_426/while/lstm_cell_129/addAddV2-lstm_426/while/lstm_cell_129/MatMul:product:0/lstm_426/while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_426/while/lstm_cell_129/BiasAddBiasAdd$lstm_426/while/lstm_cell_129/add:z:0;lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_426/while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_426/while/lstm_cell_129/splitSplit5lstm_426/while/lstm_cell_129/split/split_dim:output:0-lstm_426/while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_426/while/lstm_cell_129/SigmoidSigmoid+lstm_426/while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_426/while/lstm_cell_129/Sigmoid_1Sigmoid+lstm_426/while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_426/while/lstm_cell_129/mulMul*lstm_426/while/lstm_cell_129/Sigmoid_1:y:0lstm_426_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_426/while/lstm_cell_129/ReluRelu+lstm_426/while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/mul_1Mul(lstm_426/while/lstm_cell_129/Sigmoid:y:0/lstm_426/while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/add_1AddV2$lstm_426/while/lstm_cell_129/mul:z:0&lstm_426/while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_426/while/lstm_cell_129/Sigmoid_2Sigmoid+lstm_426/while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_426/while/lstm_cell_129/Relu_1Relu&lstm_426/while/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/mul_2Mul*lstm_426/while/lstm_cell_129/Sigmoid_2:y:01lstm_426/while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_426/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_426_while_placeholder_1lstm_426_while_placeholder&lstm_426/while/lstm_cell_129/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_426/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_426/while/addAddV2lstm_426_while_placeholderlstm_426/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_426/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_426/while/add_1AddV2*lstm_426_while_lstm_426_while_loop_counterlstm_426/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_426/while/IdentityIdentitylstm_426/while/add_1:z:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_1Identity0lstm_426_while_lstm_426_while_maximum_iterations^lstm_426/while/NoOp*
T0*
_output_shapes
: t
lstm_426/while/Identity_2Identitylstm_426/while/add:z:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_3IdentityClstm_426/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_4Identity&lstm_426/while/lstm_cell_129/mul_2:z:0^lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_426/while/Identity_5Identity&lstm_426/while/lstm_cell_129/add_1:z:0^lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_426/while/NoOpNoOp4^lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp3^lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp5^lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_426_while_identity lstm_426/while/Identity:output:0"?
lstm_426_while_identity_1"lstm_426/while/Identity_1:output:0"?
lstm_426_while_identity_2"lstm_426/while/Identity_2:output:0"?
lstm_426_while_identity_3"lstm_426/while/Identity_3:output:0"?
lstm_426_while_identity_4"lstm_426/while/Identity_4:output:0"?
lstm_426_while_identity_5"lstm_426/while/Identity_5:output:0"T
'lstm_426_while_lstm_426_strided_slice_1)lstm_426_while_lstm_426_strided_slice_1_0"~
<lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0"?
=lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0"|
;lstm_426_while_lstm_cell_129_matmul_readvariableop_resource=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0"?
clstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensorelstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp2h
2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp2l
4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_129_layer_call_fn_797753

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792897o
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794797

inputs"
lstm_426_794770:	?"
lstm_426_794772:	d?
lstm_426_794774:	?"
lstm_427_794777:	d?"
lstm_427_794779:	2?
lstm_427_794781:	?!
lstm_428_794784:2(!
lstm_428_794786:
(
lstm_428_794788:("
dense_142_794791:

dense_142_794793:
identity??!dense_142/StatefulPartitionedCall? lstm_426/StatefulPartitionedCall? lstm_427/StatefulPartitionedCall? lstm_428/StatefulPartitionedCall?
 lstm_426/StatefulPartitionedCallStatefulPartitionedCallinputslstm_426_794770lstm_426_794772lstm_426_794774*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_794729?
 lstm_427/StatefulPartitionedCallStatefulPartitionedCall)lstm_426/StatefulPartitionedCall:output:0lstm_427_794777lstm_427_794779lstm_427_794781*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794564?
 lstm_428/StatefulPartitionedCallStatefulPartitionedCall)lstm_427/StatefulPartitionedCall:output:0lstm_428_794784lstm_428_794786lstm_428_794788*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794399?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_428/StatefulPartitionedCall:output:0dense_142_794791dense_142_794793*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201y
IdentityIdentity*dense_142/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_142/StatefulPartitionedCall!^lstm_426/StatefulPartitionedCall!^lstm_427/StatefulPartitionedCall!^lstm_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2D
 lstm_426/StatefulPartitionedCall lstm_426/StatefulPartitionedCall2D
 lstm_427/StatefulPartitionedCall lstm_427/StatefulPartitionedCall2D
 lstm_428/StatefulPartitionedCall lstm_428/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_426_layer_call_and_return_conditional_losses_796325

inputs?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_796241*
condR
while_cond_796240*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_142_layer_call_and_return_conditional_losses_794879
lstm_426_input"
lstm_426_794852:	?"
lstm_426_794854:	d?
lstm_426_794856:	?"
lstm_427_794859:	d?"
lstm_427_794861:	2?
lstm_427_794863:	?!
lstm_428_794866:2(!
lstm_428_794868:
(
lstm_428_794870:("
dense_142_794873:

dense_142_794875:
identity??!dense_142/StatefulPartitionedCall? lstm_426/StatefulPartitionedCall? lstm_427/StatefulPartitionedCall? lstm_428/StatefulPartitionedCall?
 lstm_426/StatefulPartitionedCallStatefulPartitionedCalllstm_426_inputlstm_426_794852lstm_426_794854lstm_426_794856*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_793883?
 lstm_427/StatefulPartitionedCallStatefulPartitionedCall)lstm_426/StatefulPartitionedCall:output:0lstm_427_794859lstm_427_794861lstm_427_794863*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794033?
 lstm_428/StatefulPartitionedCallStatefulPartitionedCall)lstm_427/StatefulPartitionedCall:output:0lstm_428_794866lstm_428_794868lstm_428_794870*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794183?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_428/StatefulPartitionedCall:output:0dense_142_794873dense_142_794875*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201y
IdentityIdentity*dense_142/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_142/StatefulPartitionedCall!^lstm_426/StatefulPartitionedCall!^lstm_427/StatefulPartitionedCall!^lstm_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2D
 lstm_426/StatefulPartitionedCall lstm_426/StatefulPartitionedCall2D
 lstm_427/StatefulPartitionedCall lstm_427/StatefulPartitionedCall2D
 lstm_428/StatefulPartitionedCall lstm_428/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_426_input
?8
?
while_body_796241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_428_layer_call_fn_797095
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_793534o
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797817

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
?
D__inference_lstm_426_layer_call_and_return_conditional_losses_792834

inputs'
lstm_cell_129_792752:	?'
lstm_cell_129_792754:	d?#
lstm_cell_129_792756:	?
identity??%lstm_cell_129/StatefulPartitionedCall?while;
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
%lstm_cell_129/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_129_792752lstm_cell_129_792754lstm_cell_129_792756*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792751n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_129_792752lstm_cell_129_792754lstm_cell_129_792756*
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
bodyR
while_body_792765*
condR
while_cond_792764*K
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
NoOpNoOp&^lstm_cell_129/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_129/StatefulPartitionedCall%lstm_cell_129/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_142_layer_call_fn_794849
lstm_426_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_426_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794797o
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
_user_specified_namelstm_426_input
?"
?
while_body_793306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_130_793330_0:	d?/
while_lstm_cell_130_793332_0:	2?+
while_lstm_cell_130_793334_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_130_793330:	d?-
while_lstm_cell_130_793332:	2?)
while_lstm_cell_130_793334:	???+while/lstm_cell_130/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_130/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_130_793330_0while_lstm_cell_130_793332_0while_lstm_cell_130_793334_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793247?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_130/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_130/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_130/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_130/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_130_793330while_lstm_cell_130_793330_0":
while_lstm_cell_130_793332while_lstm_cell_130_793332_0":
while_lstm_cell_130_793334while_lstm_cell_130_793334_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_130/StatefulPartitionedCall+while/lstm_cell_130/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_426_layer_call_fn_795874
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_793025|
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
while_cond_793948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793948___redundant_placeholder04
0while_while_cond_793948___redundant_placeholder14
0while_while_cond_793948___redundant_placeholder24
0while_while_cond_793948___redundant_placeholder3
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797785

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
while_cond_796240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796240___redundant_placeholder04
0while_while_cond_796240___redundant_placeholder14
0while_while_cond_796240___redundant_placeholder24
0while_while_cond_796240___redundant_placeholder3
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793597

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
while_body_794645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_428_while_cond_795334.
*lstm_428_while_lstm_428_while_loop_counter4
0lstm_428_while_lstm_428_while_maximum_iterations
lstm_428_while_placeholder 
lstm_428_while_placeholder_1 
lstm_428_while_placeholder_2 
lstm_428_while_placeholder_30
,lstm_428_while_less_lstm_428_strided_slice_1F
Blstm_428_while_lstm_428_while_cond_795334___redundant_placeholder0F
Blstm_428_while_lstm_428_while_cond_795334___redundant_placeholder1F
Blstm_428_while_lstm_428_while_cond_795334___redundant_placeholder2F
Blstm_428_while_lstm_428_while_cond_795334___redundant_placeholder3
lstm_428_while_identity
?
lstm_428/while/LessLesslstm_428_while_placeholder,lstm_428_while_less_lstm_428_strided_slice_1*
T0*
_output_shapes
: ]
lstm_428/while/IdentityIdentitylstm_428/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_428_while_identity lstm_428/while/Identity:output:0*(
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
while_cond_793798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793798___redundant_placeholder04
0while_while_cond_793798___redundant_placeholder14
0while_while_cond_793798___redundant_placeholder24
0while_while_cond_793798___redundant_placeholder3
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
while_cond_794479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_794479___redundant_placeholder04
0while_while_cond_794479___redundant_placeholder14
0while_while_cond_794479___redundant_placeholder24
0while_while_cond_794479___redundant_placeholder3
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
.__inference_lstm_cell_130_layer_call_fn_797834

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793101o
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
?T
?
)sequential_142_lstm_426_while_body_792316L
Hsequential_142_lstm_426_while_sequential_142_lstm_426_while_loop_counterR
Nsequential_142_lstm_426_while_sequential_142_lstm_426_while_maximum_iterations-
)sequential_142_lstm_426_while_placeholder/
+sequential_142_lstm_426_while_placeholder_1/
+sequential_142_lstm_426_while_placeholder_2/
+sequential_142_lstm_426_while_placeholder_3K
Gsequential_142_lstm_426_while_sequential_142_lstm_426_strided_slice_1_0?
?sequential_142_lstm_426_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_426_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_142_lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0:	?a
Nsequential_142_lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?\
Msequential_142_lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0:	?*
&sequential_142_lstm_426_while_identity,
(sequential_142_lstm_426_while_identity_1,
(sequential_142_lstm_426_while_identity_2,
(sequential_142_lstm_426_while_identity_3,
(sequential_142_lstm_426_while_identity_4,
(sequential_142_lstm_426_while_identity_5I
Esequential_142_lstm_426_while_sequential_142_lstm_426_strided_slice_1?
?sequential_142_lstm_426_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_426_tensorarrayunstack_tensorlistfromtensor]
Jsequential_142_lstm_426_while_lstm_cell_129_matmul_readvariableop_resource:	?_
Lsequential_142_lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource:	d?Z
Ksequential_142_lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource:	???Bsequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp?Asequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp?Csequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp?
Osequential_142/lstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_142/lstm_426/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_142_lstm_426_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_426_tensorarrayunstack_tensorlistfromtensor_0)sequential_142_lstm_426_while_placeholderXsequential_142/lstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOpLsequential_142_lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_142/lstm_426/while/lstm_cell_129/MatMulMatMulHsequential_142/lstm_426/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOpNsequential_142_lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_142/lstm_426/while/lstm_cell_129/MatMul_1MatMul+sequential_142_lstm_426_while_placeholder_2Ksequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_142/lstm_426/while/lstm_cell_129/addAddV2<sequential_142/lstm_426/while/lstm_cell_129/MatMul:product:0>sequential_142/lstm_426/while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOpMsequential_142_lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_142/lstm_426/while/lstm_cell_129/BiasAddBiasAdd3sequential_142/lstm_426/while/lstm_cell_129/add:z:0Jsequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_142/lstm_426/while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_142/lstm_426/while/lstm_cell_129/splitSplitDsequential_142/lstm_426/while/lstm_cell_129/split/split_dim:output:0<sequential_142/lstm_426/while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_142/lstm_426/while/lstm_cell_129/SigmoidSigmoid:sequential_142/lstm_426/while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_142/lstm_426/while/lstm_cell_129/Sigmoid_1Sigmoid:sequential_142/lstm_426/while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_142/lstm_426/while/lstm_cell_129/mulMul9sequential_142/lstm_426/while/lstm_cell_129/Sigmoid_1:y:0+sequential_142_lstm_426_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_142/lstm_426/while/lstm_cell_129/ReluRelu:sequential_142/lstm_426/while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_142/lstm_426/while/lstm_cell_129/mul_1Mul7sequential_142/lstm_426/while/lstm_cell_129/Sigmoid:y:0>sequential_142/lstm_426/while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_142/lstm_426/while/lstm_cell_129/add_1AddV23sequential_142/lstm_426/while/lstm_cell_129/mul:z:05sequential_142/lstm_426/while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_142/lstm_426/while/lstm_cell_129/Sigmoid_2Sigmoid:sequential_142/lstm_426/while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_142/lstm_426/while/lstm_cell_129/Relu_1Relu5sequential_142/lstm_426/while/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_142/lstm_426/while/lstm_cell_129/mul_2Mul9sequential_142/lstm_426/while/lstm_cell_129/Sigmoid_2:y:0@sequential_142/lstm_426/while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_142/lstm_426/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_142_lstm_426_while_placeholder_1)sequential_142_lstm_426_while_placeholder5sequential_142/lstm_426/while/lstm_cell_129/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_142/lstm_426/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_142/lstm_426/while/addAddV2)sequential_142_lstm_426_while_placeholder,sequential_142/lstm_426/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_142/lstm_426/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_142/lstm_426/while/add_1AddV2Hsequential_142_lstm_426_while_sequential_142_lstm_426_while_loop_counter.sequential_142/lstm_426/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_142/lstm_426/while/IdentityIdentity'sequential_142/lstm_426/while/add_1:z:0#^sequential_142/lstm_426/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_426/while/Identity_1IdentityNsequential_142_lstm_426_while_sequential_142_lstm_426_while_maximum_iterations#^sequential_142/lstm_426/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_426/while/Identity_2Identity%sequential_142/lstm_426/while/add:z:0#^sequential_142/lstm_426/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_426/while/Identity_3IdentityRsequential_142/lstm_426/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_142/lstm_426/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_426/while/Identity_4Identity5sequential_142/lstm_426/while/lstm_cell_129/mul_2:z:0#^sequential_142/lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_142/lstm_426/while/Identity_5Identity5sequential_142/lstm_426/while/lstm_cell_129/add_1:z:0#^sequential_142/lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_142/lstm_426/while/NoOpNoOpC^sequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOpB^sequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOpD^sequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_142_lstm_426_while_identity/sequential_142/lstm_426/while/Identity:output:0"]
(sequential_142_lstm_426_while_identity_11sequential_142/lstm_426/while/Identity_1:output:0"]
(sequential_142_lstm_426_while_identity_21sequential_142/lstm_426/while/Identity_2:output:0"]
(sequential_142_lstm_426_while_identity_31sequential_142/lstm_426/while/Identity_3:output:0"]
(sequential_142_lstm_426_while_identity_41sequential_142/lstm_426/while/Identity_4:output:0"]
(sequential_142_lstm_426_while_identity_51sequential_142/lstm_426/while/Identity_5:output:0"?
Ksequential_142_lstm_426_while_lstm_cell_129_biasadd_readvariableop_resourceMsequential_142_lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0"?
Lsequential_142_lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resourceNsequential_142_lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0"?
Jsequential_142_lstm_426_while_lstm_cell_129_matmul_readvariableop_resourceLsequential_142_lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0"?
Esequential_142_lstm_426_while_sequential_142_lstm_426_strided_slice_1Gsequential_142_lstm_426_while_sequential_142_lstm_426_strided_slice_1_0"?
?sequential_142_lstm_426_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_426_tensorarrayunstack_tensorlistfromtensor?sequential_142_lstm_426_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_426_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOpBsequential_142/lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp2?
Asequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOpAsequential_142/lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp2?
Csequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOpCsequential_142/lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_796570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796570___redundant_placeholder04
0while_while_cond_796570___redundant_placeholder14
0while_while_cond_796570___redundant_placeholder24
0while_while_cond_796570___redundant_placeholder3
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
)sequential_142_lstm_426_while_cond_792315L
Hsequential_142_lstm_426_while_sequential_142_lstm_426_while_loop_counterR
Nsequential_142_lstm_426_while_sequential_142_lstm_426_while_maximum_iterations-
)sequential_142_lstm_426_while_placeholder/
+sequential_142_lstm_426_while_placeholder_1/
+sequential_142_lstm_426_while_placeholder_2/
+sequential_142_lstm_426_while_placeholder_3N
Jsequential_142_lstm_426_while_less_sequential_142_lstm_426_strided_slice_1d
`sequential_142_lstm_426_while_sequential_142_lstm_426_while_cond_792315___redundant_placeholder0d
`sequential_142_lstm_426_while_sequential_142_lstm_426_while_cond_792315___redundant_placeholder1d
`sequential_142_lstm_426_while_sequential_142_lstm_426_while_cond_792315___redundant_placeholder2d
`sequential_142_lstm_426_while_sequential_142_lstm_426_while_cond_792315___redundant_placeholder3*
&sequential_142_lstm_426_while_identity
?
"sequential_142/lstm_426/while/LessLess)sequential_142_lstm_426_while_placeholderJsequential_142_lstm_426_while_less_sequential_142_lstm_426_strided_slice_1*
T0*
_output_shapes
: {
&sequential_142/lstm_426/while/IdentityIdentity&sequential_142/lstm_426/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_142_lstm_426_while_identity/sequential_142/lstm_426/while/Identity:output:0*(
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_793025

inputs'
lstm_cell_129_792943:	?'
lstm_cell_129_792945:	d?#
lstm_cell_129_792947:	?
identity??%lstm_cell_129/StatefulPartitionedCall?while;
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
%lstm_cell_129/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_129_792943lstm_cell_129_792945lstm_cell_129_792947*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792897n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_129_792943lstm_cell_129_792945lstm_cell_129_792947*
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
bodyR
while_body_792956*
condR
while_cond_792955*K
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
NoOpNoOp&^lstm_cell_129/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_129/StatefulPartitionedCall%lstm_cell_129/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_797472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_797472___redundant_placeholder04
0while_while_cond_797472___redundant_placeholder14
0while_while_cond_797472___redundant_placeholder24
0while_while_cond_797472___redundant_placeholder3
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
.__inference_lstm_cell_129_layer_call_fn_797736

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792751o
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_793534

inputs&
lstm_cell_131_793452:2(&
lstm_cell_131_793454:
("
lstm_cell_131_793456:(
identity??%lstm_cell_131/StatefulPartitionedCall?while;
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
%lstm_cell_131/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_131_793452lstm_cell_131_793454lstm_cell_131_793456*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793451n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_131_793452lstm_cell_131_793454lstm_cell_131_793456*
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
bodyR
while_body_793465*
condR
while_cond_793464*K
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
NoOpNoOp&^lstm_cell_131/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_131/StatefulPartitionedCall%lstm_cell_131/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_796857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_794099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_792764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_792764___redundant_placeholder04
0while_while_cond_792764___redundant_placeholder14
0while_while_cond_792764___redundant_placeholder24
0while_while_cond_792764___redundant_placeholder3
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
)__inference_lstm_428_layer_call_fn_797117

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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794183o
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
)__inference_lstm_426_layer_call_fn_795896

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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_794729s
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
.__inference_lstm_cell_130_layer_call_fn_797851

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793247o
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
while_body_796098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201

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

?
lstm_426_while_cond_795056.
*lstm_426_while_lstm_426_while_loop_counter4
0lstm_426_while_lstm_426_while_maximum_iterations
lstm_426_while_placeholder 
lstm_426_while_placeholder_1 
lstm_426_while_placeholder_2 
lstm_426_while_placeholder_30
,lstm_426_while_less_lstm_426_strided_slice_1F
Blstm_426_while_lstm_426_while_cond_795056___redundant_placeholder0F
Blstm_426_while_lstm_426_while_cond_795056___redundant_placeholder1F
Blstm_426_while_lstm_426_while_cond_795056___redundant_placeholder2F
Blstm_426_while_lstm_426_while_cond_795056___redundant_placeholder3
lstm_426_while_identity
?
lstm_426/while/LessLesslstm_426_while_placeholder,lstm_426_while_less_lstm_426_strided_slice_1*
T0*
_output_shapes
: ]
lstm_426/while/IdentityIdentitylstm_426/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_426_while_identity lstm_426/while/Identity:output:0*(
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_797084

inputs?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_797000*
condR
while_cond_796999*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_796714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_796999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796999___redundant_placeholder04
0while_while_cond_796999___redundant_placeholder14
0while_while_cond_796999___redundant_placeholder24
0while_while_cond_796999___redundant_placeholder3
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
while_cond_797186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_797186___redundant_placeholder04
0while_while_cond_797186___redundant_placeholder14
0while_while_cond_797186___redundant_placeholder24
0while_while_cond_797186___redundant_placeholder3
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
*__inference_dense_142_layer_call_fn_797709

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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201o
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
?
while_body_794480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_795425

inputsH
5lstm_426_lstm_cell_129_matmul_readvariableop_resource:	?J
7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource:	d?E
6lstm_426_lstm_cell_129_biasadd_readvariableop_resource:	?H
5lstm_427_lstm_cell_130_matmul_readvariableop_resource:	d?J
7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource:	2?E
6lstm_427_lstm_cell_130_biasadd_readvariableop_resource:	?G
5lstm_428_lstm_cell_131_matmul_readvariableop_resource:2(I
7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource:
(D
6lstm_428_lstm_cell_131_biasadd_readvariableop_resource:(:
(dense_142_matmul_readvariableop_resource:
7
)dense_142_biasadd_readvariableop_resource:
identity?? dense_142/BiasAdd/ReadVariableOp?dense_142/MatMul/ReadVariableOp?-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp?,lstm_426/lstm_cell_129/MatMul/ReadVariableOp?.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp?lstm_426/while?-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp?,lstm_427/lstm_cell_130/MatMul/ReadVariableOp?.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp?lstm_427/while?-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp?,lstm_428/lstm_cell_131/MatMul/ReadVariableOp?.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp?lstm_428/whileD
lstm_426/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_sliceStridedSlicelstm_426/Shape:output:0%lstm_426/strided_slice/stack:output:0'lstm_426/strided_slice/stack_1:output:0'lstm_426/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_426/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_426/zeros/packedPacklstm_426/strided_slice:output:0 lstm_426/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_426/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_426/zerosFilllstm_426/zeros/packed:output:0lstm_426/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_426/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_426/zeros_1/packedPacklstm_426/strided_slice:output:0"lstm_426/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_426/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_426/zeros_1Fill lstm_426/zeros_1/packed:output:0lstm_426/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_426/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_426/transpose	Transposeinputs lstm_426/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_426/Shape_1Shapelstm_426/transpose:y:0*
T0*
_output_shapes
:h
lstm_426/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_426/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_1StridedSlicelstm_426/Shape_1:output:0'lstm_426/strided_slice_1/stack:output:0)lstm_426/strided_slice_1/stack_1:output:0)lstm_426/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_426/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_426/TensorArrayV2TensorListReserve-lstm_426/TensorArrayV2/element_shape:output:0!lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_426/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_426/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_426/transpose:y:0Glstm_426/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_426/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_426/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_2StridedSlicelstm_426/transpose:y:0'lstm_426/strided_slice_2/stack:output:0)lstm_426/strided_slice_2/stack_1:output:0)lstm_426/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_426/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp5lstm_426_lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_426/lstm_cell_129/MatMulMatMul!lstm_426/strided_slice_2:output:04lstm_426/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_426/lstm_cell_129/MatMul_1MatMullstm_426/zeros:output:06lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_426/lstm_cell_129/addAddV2'lstm_426/lstm_cell_129/MatMul:product:0)lstm_426/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp6lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_426/lstm_cell_129/BiasAddBiasAddlstm_426/lstm_cell_129/add:z:05lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_426/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_426/lstm_cell_129/splitSplit/lstm_426/lstm_cell_129/split/split_dim:output:0'lstm_426/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_426/lstm_cell_129/SigmoidSigmoid%lstm_426/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_426/lstm_cell_129/Sigmoid_1Sigmoid%lstm_426/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mulMul$lstm_426/lstm_cell_129/Sigmoid_1:y:0lstm_426/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_426/lstm_cell_129/ReluRelu%lstm_426/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mul_1Mul"lstm_426/lstm_cell_129/Sigmoid:y:0)lstm_426/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/add_1AddV2lstm_426/lstm_cell_129/mul:z:0 lstm_426/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_426/lstm_cell_129/Sigmoid_2Sigmoid%lstm_426/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_426/lstm_cell_129/Relu_1Relu lstm_426/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mul_2Mul$lstm_426/lstm_cell_129/Sigmoid_2:y:0+lstm_426/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_426/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_426/TensorArrayV2_1TensorListReserve/lstm_426/TensorArrayV2_1/element_shape:output:0!lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_426/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_426/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_426/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_426/whileWhile$lstm_426/while/loop_counter:output:0*lstm_426/while/maximum_iterations:output:0lstm_426/time:output:0!lstm_426/TensorArrayV2_1:handle:0lstm_426/zeros:output:0lstm_426/zeros_1:output:0!lstm_426/strided_slice_1:output:0@lstm_426/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_426_lstm_cell_129_matmul_readvariableop_resource7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource6lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_426_while_body_795057*&
condR
lstm_426_while_cond_795056*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_426/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_426/TensorArrayV2Stack/TensorListStackTensorListStacklstm_426/while:output:3Blstm_426/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_426/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_426/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_3StridedSlice4lstm_426/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_426/strided_slice_3/stack:output:0)lstm_426/strided_slice_3/stack_1:output:0)lstm_426/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_426/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_426/transpose_1	Transpose4lstm_426/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_426/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_426/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_427/ShapeShapelstm_426/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_sliceStridedSlicelstm_427/Shape:output:0%lstm_427/strided_slice/stack:output:0'lstm_427/strided_slice/stack_1:output:0'lstm_427/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_427/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_427/zeros/packedPacklstm_427/strided_slice:output:0 lstm_427/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_427/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_427/zerosFilllstm_427/zeros/packed:output:0lstm_427/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_427/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_427/zeros_1/packedPacklstm_427/strided_slice:output:0"lstm_427/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_427/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_427/zeros_1Fill lstm_427/zeros_1/packed:output:0lstm_427/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_427/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_427/transpose	Transposelstm_426/transpose_1:y:0 lstm_427/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_427/Shape_1Shapelstm_427/transpose:y:0*
T0*
_output_shapes
:h
lstm_427/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_427/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_1StridedSlicelstm_427/Shape_1:output:0'lstm_427/strided_slice_1/stack:output:0)lstm_427/strided_slice_1/stack_1:output:0)lstm_427/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_427/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_427/TensorArrayV2TensorListReserve-lstm_427/TensorArrayV2/element_shape:output:0!lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_427/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_427/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_427/transpose:y:0Glstm_427/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_427/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_427/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_2StridedSlicelstm_427/transpose:y:0'lstm_427/strided_slice_2/stack:output:0)lstm_427/strided_slice_2/stack_1:output:0)lstm_427/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_427/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp5lstm_427_lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_427/lstm_cell_130/MatMulMatMul!lstm_427/strided_slice_2:output:04lstm_427/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_427/lstm_cell_130/MatMul_1MatMullstm_427/zeros:output:06lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_427/lstm_cell_130/addAddV2'lstm_427/lstm_cell_130/MatMul:product:0)lstm_427/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp6lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_427/lstm_cell_130/BiasAddBiasAddlstm_427/lstm_cell_130/add:z:05lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_427/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_427/lstm_cell_130/splitSplit/lstm_427/lstm_cell_130/split/split_dim:output:0'lstm_427/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_427/lstm_cell_130/SigmoidSigmoid%lstm_427/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_427/lstm_cell_130/Sigmoid_1Sigmoid%lstm_427/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mulMul$lstm_427/lstm_cell_130/Sigmoid_1:y:0lstm_427/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_427/lstm_cell_130/ReluRelu%lstm_427/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mul_1Mul"lstm_427/lstm_cell_130/Sigmoid:y:0)lstm_427/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/add_1AddV2lstm_427/lstm_cell_130/mul:z:0 lstm_427/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_427/lstm_cell_130/Sigmoid_2Sigmoid%lstm_427/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_427/lstm_cell_130/Relu_1Relu lstm_427/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mul_2Mul$lstm_427/lstm_cell_130/Sigmoid_2:y:0+lstm_427/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_427/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_427/TensorArrayV2_1TensorListReserve/lstm_427/TensorArrayV2_1/element_shape:output:0!lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_427/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_427/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_427/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_427/whileWhile$lstm_427/while/loop_counter:output:0*lstm_427/while/maximum_iterations:output:0lstm_427/time:output:0!lstm_427/TensorArrayV2_1:handle:0lstm_427/zeros:output:0lstm_427/zeros_1:output:0!lstm_427/strided_slice_1:output:0@lstm_427/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_427_lstm_cell_130_matmul_readvariableop_resource7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource6lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_427_while_body_795196*&
condR
lstm_427_while_cond_795195*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_427/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_427/TensorArrayV2Stack/TensorListStackTensorListStacklstm_427/while:output:3Blstm_427/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_427/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_427/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_3StridedSlice4lstm_427/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_427/strided_slice_3/stack:output:0)lstm_427/strided_slice_3/stack_1:output:0)lstm_427/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_427/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_427/transpose_1	Transpose4lstm_427/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_427/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_427/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_428/ShapeShapelstm_427/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_428/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_428/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_428/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_sliceStridedSlicelstm_428/Shape:output:0%lstm_428/strided_slice/stack:output:0'lstm_428/strided_slice/stack_1:output:0'lstm_428/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_428/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_428/zeros/packedPacklstm_428/strided_slice:output:0 lstm_428/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_428/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_428/zerosFilllstm_428/zeros/packed:output:0lstm_428/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_428/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_428/zeros_1/packedPacklstm_428/strided_slice:output:0"lstm_428/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_428/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_428/zeros_1Fill lstm_428/zeros_1/packed:output:0lstm_428/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_428/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_428/transpose	Transposelstm_427/transpose_1:y:0 lstm_428/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_428/Shape_1Shapelstm_428/transpose:y:0*
T0*
_output_shapes
:h
lstm_428/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_428/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_1StridedSlicelstm_428/Shape_1:output:0'lstm_428/strided_slice_1/stack:output:0)lstm_428/strided_slice_1/stack_1:output:0)lstm_428/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_428/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_428/TensorArrayV2TensorListReserve-lstm_428/TensorArrayV2/element_shape:output:0!lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_428/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_428/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_428/transpose:y:0Glstm_428/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_428/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_428/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_2StridedSlicelstm_428/transpose:y:0'lstm_428/strided_slice_2/stack:output:0)lstm_428/strided_slice_2/stack_1:output:0)lstm_428/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_428/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp5lstm_428_lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_428/lstm_cell_131/MatMulMatMul!lstm_428/strided_slice_2:output:04lstm_428/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_428/lstm_cell_131/MatMul_1MatMullstm_428/zeros:output:06lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_428/lstm_cell_131/addAddV2'lstm_428/lstm_cell_131/MatMul:product:0)lstm_428/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp6lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_428/lstm_cell_131/BiasAddBiasAddlstm_428/lstm_cell_131/add:z:05lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_428/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_428/lstm_cell_131/splitSplit/lstm_428/lstm_cell_131/split/split_dim:output:0'lstm_428/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_428/lstm_cell_131/SigmoidSigmoid%lstm_428/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_428/lstm_cell_131/Sigmoid_1Sigmoid%lstm_428/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mulMul$lstm_428/lstm_cell_131/Sigmoid_1:y:0lstm_428/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_428/lstm_cell_131/ReluRelu%lstm_428/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mul_1Mul"lstm_428/lstm_cell_131/Sigmoid:y:0)lstm_428/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/add_1AddV2lstm_428/lstm_cell_131/mul:z:0 lstm_428/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_428/lstm_cell_131/Sigmoid_2Sigmoid%lstm_428/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_428/lstm_cell_131/Relu_1Relu lstm_428/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mul_2Mul$lstm_428/lstm_cell_131/Sigmoid_2:y:0+lstm_428/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_428/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_428/TensorArrayV2_1TensorListReserve/lstm_428/TensorArrayV2_1/element_shape:output:0!lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_428/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_428/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_428/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_428/whileWhile$lstm_428/while/loop_counter:output:0*lstm_428/while/maximum_iterations:output:0lstm_428/time:output:0!lstm_428/TensorArrayV2_1:handle:0lstm_428/zeros:output:0lstm_428/zeros_1:output:0!lstm_428/strided_slice_1:output:0@lstm_428/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_428_lstm_cell_131_matmul_readvariableop_resource7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource6lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_428_while_body_795335*&
condR
lstm_428_while_cond_795334*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_428/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_428/TensorArrayV2Stack/TensorListStackTensorListStacklstm_428/while:output:3Blstm_428/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_428/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_428/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_3StridedSlice4lstm_428/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_428/strided_slice_3/stack:output:0)lstm_428/strided_slice_3/stack_1:output:0)lstm_428/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_428/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_428/transpose_1	Transpose4lstm_428/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_428/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_428/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_142/MatMulMatMul!lstm_428/strided_slice_3:output:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_142/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp.^lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp-^lstm_426/lstm_cell_129/MatMul/ReadVariableOp/^lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp^lstm_426/while.^lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp-^lstm_427/lstm_cell_130/MatMul/ReadVariableOp/^lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp^lstm_427/while.^lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp-^lstm_428/lstm_cell_131/MatMul/ReadVariableOp/^lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp^lstm_428/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2^
-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp2\
,lstm_426/lstm_cell_129/MatMul/ReadVariableOp,lstm_426/lstm_cell_129/MatMul/ReadVariableOp2`
.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp2 
lstm_426/whilelstm_426/while2^
-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp2\
,lstm_427/lstm_cell_130/MatMul/ReadVariableOp,lstm_427/lstm_cell_130/MatMul/ReadVariableOp2`
.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp2 
lstm_427/whilelstm_427/while2^
-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp2\
,lstm_428/lstm_cell_131/MatMul/ReadVariableOp,lstm_428/lstm_cell_131/MatMul/ReadVariableOp2`
.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp2 
lstm_428/whilelstm_428/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
__inference__traced_save_798156
file_prefix/
+savev2_dense_142_kernel_read_readvariableop-
)savev2_dense_142_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_426_lstm_cell_426_kernel_read_readvariableopF
Bsavev2_lstm_426_lstm_cell_426_recurrent_kernel_read_readvariableop:
6savev2_lstm_426_lstm_cell_426_bias_read_readvariableop<
8savev2_lstm_427_lstm_cell_427_kernel_read_readvariableopF
Bsavev2_lstm_427_lstm_cell_427_recurrent_kernel_read_readvariableop:
6savev2_lstm_427_lstm_cell_427_bias_read_readvariableop<
8savev2_lstm_428_lstm_cell_428_kernel_read_readvariableopF
Bsavev2_lstm_428_lstm_cell_428_recurrent_kernel_read_readvariableop:
6savev2_lstm_428_lstm_cell_428_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_142_kernel_m_read_readvariableop4
0savev2_adam_dense_142_bias_m_read_readvariableopC
?savev2_adam_lstm_426_lstm_cell_426_kernel_m_read_readvariableopM
Isavev2_adam_lstm_426_lstm_cell_426_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_426_lstm_cell_426_bias_m_read_readvariableopC
?savev2_adam_lstm_427_lstm_cell_427_kernel_m_read_readvariableopM
Isavev2_adam_lstm_427_lstm_cell_427_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_427_lstm_cell_427_bias_m_read_readvariableopC
?savev2_adam_lstm_428_lstm_cell_428_kernel_m_read_readvariableopM
Isavev2_adam_lstm_428_lstm_cell_428_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_428_lstm_cell_428_bias_m_read_readvariableop6
2savev2_adam_dense_142_kernel_v_read_readvariableop4
0savev2_adam_dense_142_bias_v_read_readvariableopC
?savev2_adam_lstm_426_lstm_cell_426_kernel_v_read_readvariableopM
Isavev2_adam_lstm_426_lstm_cell_426_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_426_lstm_cell_426_bias_v_read_readvariableopC
?savev2_adam_lstm_427_lstm_cell_427_kernel_v_read_readvariableopM
Isavev2_adam_lstm_427_lstm_cell_427_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_427_lstm_cell_427_bias_v_read_readvariableopC
?savev2_adam_lstm_428_lstm_cell_428_kernel_v_read_readvariableopM
Isavev2_adam_lstm_428_lstm_cell_428_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_428_lstm_cell_428_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_142_kernel_read_readvariableop)savev2_dense_142_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_426_lstm_cell_426_kernel_read_readvariableopBsavev2_lstm_426_lstm_cell_426_recurrent_kernel_read_readvariableop6savev2_lstm_426_lstm_cell_426_bias_read_readvariableop8savev2_lstm_427_lstm_cell_427_kernel_read_readvariableopBsavev2_lstm_427_lstm_cell_427_recurrent_kernel_read_readvariableop6savev2_lstm_427_lstm_cell_427_bias_read_readvariableop8savev2_lstm_428_lstm_cell_428_kernel_read_readvariableopBsavev2_lstm_428_lstm_cell_428_recurrent_kernel_read_readvariableop6savev2_lstm_428_lstm_cell_428_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_142_kernel_m_read_readvariableop0savev2_adam_dense_142_bias_m_read_readvariableop?savev2_adam_lstm_426_lstm_cell_426_kernel_m_read_readvariableopIsavev2_adam_lstm_426_lstm_cell_426_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_426_lstm_cell_426_bias_m_read_readvariableop?savev2_adam_lstm_427_lstm_cell_427_kernel_m_read_readvariableopIsavev2_adam_lstm_427_lstm_cell_427_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_427_lstm_cell_427_bias_m_read_readvariableop?savev2_adam_lstm_428_lstm_cell_428_kernel_m_read_readvariableopIsavev2_adam_lstm_428_lstm_cell_428_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_428_lstm_cell_428_bias_m_read_readvariableop2savev2_adam_dense_142_kernel_v_read_readvariableop0savev2_adam_dense_142_bias_v_read_readvariableop?savev2_adam_lstm_426_lstm_cell_426_kernel_v_read_readvariableopIsavev2_adam_lstm_426_lstm_cell_426_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_426_lstm_cell_426_bias_v_read_readvariableop?savev2_adam_lstm_427_lstm_cell_427_kernel_v_read_readvariableopIsavev2_adam_lstm_427_lstm_cell_427_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_427_lstm_cell_427_bias_v_read_readvariableop?savev2_adam_lstm_428_lstm_cell_428_kernel_v_read_readvariableopIsavev2_adam_lstm_428_lstm_cell_428_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_428_lstm_cell_428_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??
?
!__inference__wrapped_model_792684
lstm_426_inputW
Dsequential_142_lstm_426_lstm_cell_129_matmul_readvariableop_resource:	?Y
Fsequential_142_lstm_426_lstm_cell_129_matmul_1_readvariableop_resource:	d?T
Esequential_142_lstm_426_lstm_cell_129_biasadd_readvariableop_resource:	?W
Dsequential_142_lstm_427_lstm_cell_130_matmul_readvariableop_resource:	d?Y
Fsequential_142_lstm_427_lstm_cell_130_matmul_1_readvariableop_resource:	2?T
Esequential_142_lstm_427_lstm_cell_130_biasadd_readvariableop_resource:	?V
Dsequential_142_lstm_428_lstm_cell_131_matmul_readvariableop_resource:2(X
Fsequential_142_lstm_428_lstm_cell_131_matmul_1_readvariableop_resource:
(S
Esequential_142_lstm_428_lstm_cell_131_biasadd_readvariableop_resource:(I
7sequential_142_dense_142_matmul_readvariableop_resource:
F
8sequential_142_dense_142_biasadd_readvariableop_resource:
identity??/sequential_142/dense_142/BiasAdd/ReadVariableOp?.sequential_142/dense_142/MatMul/ReadVariableOp?<sequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp?;sequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOp?=sequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp?sequential_142/lstm_426/while?<sequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp?;sequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOp?=sequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp?sequential_142/lstm_427/while?<sequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp?;sequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOp?=sequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp?sequential_142/lstm_428/while[
sequential_142/lstm_426/ShapeShapelstm_426_input*
T0*
_output_shapes
:u
+sequential_142/lstm_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_142/lstm_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_142/lstm_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_142/lstm_426/strided_sliceStridedSlice&sequential_142/lstm_426/Shape:output:04sequential_142/lstm_426/strided_slice/stack:output:06sequential_142/lstm_426/strided_slice/stack_1:output:06sequential_142/lstm_426/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_142/lstm_426/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_142/lstm_426/zeros/packedPack.sequential_142/lstm_426/strided_slice:output:0/sequential_142/lstm_426/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_142/lstm_426/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_426/zerosFill-sequential_142/lstm_426/zeros/packed:output:0,sequential_142/lstm_426/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_142/lstm_426/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_142/lstm_426/zeros_1/packedPack.sequential_142/lstm_426/strided_slice:output:01sequential_142/lstm_426/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_142/lstm_426/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_426/zeros_1Fill/sequential_142/lstm_426/zeros_1/packed:output:0.sequential_142/lstm_426/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_142/lstm_426/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_142/lstm_426/transpose	Transposelstm_426_input/sequential_142/lstm_426/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_142/lstm_426/Shape_1Shape%sequential_142/lstm_426/transpose:y:0*
T0*
_output_shapes
:w
-sequential_142/lstm_426/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_426/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_426/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_426/strided_slice_1StridedSlice(sequential_142/lstm_426/Shape_1:output:06sequential_142/lstm_426/strided_slice_1/stack:output:08sequential_142/lstm_426/strided_slice_1/stack_1:output:08sequential_142/lstm_426/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_142/lstm_426/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_142/lstm_426/TensorArrayV2TensorListReserve<sequential_142/lstm_426/TensorArrayV2/element_shape:output:00sequential_142/lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_142/lstm_426/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_142/lstm_426/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_142/lstm_426/transpose:y:0Vsequential_142/lstm_426/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_142/lstm_426/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_426/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_426/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_426/strided_slice_2StridedSlice%sequential_142/lstm_426/transpose:y:06sequential_142/lstm_426/strided_slice_2/stack:output:08sequential_142/lstm_426/strided_slice_2/stack_1:output:08sequential_142/lstm_426/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOpReadVariableOpDsequential_142_lstm_426_lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_142/lstm_426/lstm_cell_129/MatMulMatMul0sequential_142/lstm_426/strided_slice_2:output:0Csequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOpFsequential_142_lstm_426_lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_142/lstm_426/lstm_cell_129/MatMul_1MatMul&sequential_142/lstm_426/zeros:output:0Esequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_142/lstm_426/lstm_cell_129/addAddV26sequential_142/lstm_426/lstm_cell_129/MatMul:product:08sequential_142/lstm_426/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOpEsequential_142_lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_142/lstm_426/lstm_cell_129/BiasAddBiasAdd-sequential_142/lstm_426/lstm_cell_129/add:z:0Dsequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_142/lstm_426/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_142/lstm_426/lstm_cell_129/splitSplit>sequential_142/lstm_426/lstm_cell_129/split/split_dim:output:06sequential_142/lstm_426/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_142/lstm_426/lstm_cell_129/SigmoidSigmoid4sequential_142/lstm_426/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_142/lstm_426/lstm_cell_129/Sigmoid_1Sigmoid4sequential_142/lstm_426/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_142/lstm_426/lstm_cell_129/mulMul3sequential_142/lstm_426/lstm_cell_129/Sigmoid_1:y:0(sequential_142/lstm_426/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_142/lstm_426/lstm_cell_129/ReluRelu4sequential_142/lstm_426/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_142/lstm_426/lstm_cell_129/mul_1Mul1sequential_142/lstm_426/lstm_cell_129/Sigmoid:y:08sequential_142/lstm_426/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_142/lstm_426/lstm_cell_129/add_1AddV2-sequential_142/lstm_426/lstm_cell_129/mul:z:0/sequential_142/lstm_426/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_142/lstm_426/lstm_cell_129/Sigmoid_2Sigmoid4sequential_142/lstm_426/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_142/lstm_426/lstm_cell_129/Relu_1Relu/sequential_142/lstm_426/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_142/lstm_426/lstm_cell_129/mul_2Mul3sequential_142/lstm_426/lstm_cell_129/Sigmoid_2:y:0:sequential_142/lstm_426/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_142/lstm_426/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_142/lstm_426/TensorArrayV2_1TensorListReserve>sequential_142/lstm_426/TensorArrayV2_1/element_shape:output:00sequential_142/lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_142/lstm_426/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_142/lstm_426/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_142/lstm_426/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_142/lstm_426/whileWhile3sequential_142/lstm_426/while/loop_counter:output:09sequential_142/lstm_426/while/maximum_iterations:output:0%sequential_142/lstm_426/time:output:00sequential_142/lstm_426/TensorArrayV2_1:handle:0&sequential_142/lstm_426/zeros:output:0(sequential_142/lstm_426/zeros_1:output:00sequential_142/lstm_426/strided_slice_1:output:0Osequential_142/lstm_426/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_142_lstm_426_lstm_cell_129_matmul_readvariableop_resourceFsequential_142_lstm_426_lstm_cell_129_matmul_1_readvariableop_resourceEsequential_142_lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
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
)sequential_142_lstm_426_while_body_792316*5
cond-R+
)sequential_142_lstm_426_while_cond_792315*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_142/lstm_426/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_142/lstm_426/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_142/lstm_426/while:output:3Qsequential_142/lstm_426/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_142/lstm_426/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_142/lstm_426/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_426/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_426/strided_slice_3StridedSliceCsequential_142/lstm_426/TensorArrayV2Stack/TensorListStack:tensor:06sequential_142/lstm_426/strided_slice_3/stack:output:08sequential_142/lstm_426/strided_slice_3/stack_1:output:08sequential_142/lstm_426/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_142/lstm_426/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_142/lstm_426/transpose_1	TransposeCsequential_142/lstm_426/TensorArrayV2Stack/TensorListStack:tensor:01sequential_142/lstm_426/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_142/lstm_426/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_142/lstm_427/ShapeShape'sequential_142/lstm_426/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_142/lstm_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_142/lstm_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_142/lstm_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_142/lstm_427/strided_sliceStridedSlice&sequential_142/lstm_427/Shape:output:04sequential_142/lstm_427/strided_slice/stack:output:06sequential_142/lstm_427/strided_slice/stack_1:output:06sequential_142/lstm_427/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_142/lstm_427/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_142/lstm_427/zeros/packedPack.sequential_142/lstm_427/strided_slice:output:0/sequential_142/lstm_427/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_142/lstm_427/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_427/zerosFill-sequential_142/lstm_427/zeros/packed:output:0,sequential_142/lstm_427/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_142/lstm_427/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_142/lstm_427/zeros_1/packedPack.sequential_142/lstm_427/strided_slice:output:01sequential_142/lstm_427/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_142/lstm_427/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_427/zeros_1Fill/sequential_142/lstm_427/zeros_1/packed:output:0.sequential_142/lstm_427/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_142/lstm_427/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_142/lstm_427/transpose	Transpose'sequential_142/lstm_426/transpose_1:y:0/sequential_142/lstm_427/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_142/lstm_427/Shape_1Shape%sequential_142/lstm_427/transpose:y:0*
T0*
_output_shapes
:w
-sequential_142/lstm_427/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_427/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_427/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_427/strided_slice_1StridedSlice(sequential_142/lstm_427/Shape_1:output:06sequential_142/lstm_427/strided_slice_1/stack:output:08sequential_142/lstm_427/strided_slice_1/stack_1:output:08sequential_142/lstm_427/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_142/lstm_427/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_142/lstm_427/TensorArrayV2TensorListReserve<sequential_142/lstm_427/TensorArrayV2/element_shape:output:00sequential_142/lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_142/lstm_427/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_142/lstm_427/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_142/lstm_427/transpose:y:0Vsequential_142/lstm_427/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_142/lstm_427/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_427/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_427/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_427/strided_slice_2StridedSlice%sequential_142/lstm_427/transpose:y:06sequential_142/lstm_427/strided_slice_2/stack:output:08sequential_142/lstm_427/strided_slice_2/stack_1:output:08sequential_142/lstm_427/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOpReadVariableOpDsequential_142_lstm_427_lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_142/lstm_427/lstm_cell_130/MatMulMatMul0sequential_142/lstm_427/strided_slice_2:output:0Csequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOpFsequential_142_lstm_427_lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_142/lstm_427/lstm_cell_130/MatMul_1MatMul&sequential_142/lstm_427/zeros:output:0Esequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_142/lstm_427/lstm_cell_130/addAddV26sequential_142/lstm_427/lstm_cell_130/MatMul:product:08sequential_142/lstm_427/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOpEsequential_142_lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_142/lstm_427/lstm_cell_130/BiasAddBiasAdd-sequential_142/lstm_427/lstm_cell_130/add:z:0Dsequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_142/lstm_427/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_142/lstm_427/lstm_cell_130/splitSplit>sequential_142/lstm_427/lstm_cell_130/split/split_dim:output:06sequential_142/lstm_427/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_142/lstm_427/lstm_cell_130/SigmoidSigmoid4sequential_142/lstm_427/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_142/lstm_427/lstm_cell_130/Sigmoid_1Sigmoid4sequential_142/lstm_427/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_142/lstm_427/lstm_cell_130/mulMul3sequential_142/lstm_427/lstm_cell_130/Sigmoid_1:y:0(sequential_142/lstm_427/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_142/lstm_427/lstm_cell_130/ReluRelu4sequential_142/lstm_427/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_142/lstm_427/lstm_cell_130/mul_1Mul1sequential_142/lstm_427/lstm_cell_130/Sigmoid:y:08sequential_142/lstm_427/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_142/lstm_427/lstm_cell_130/add_1AddV2-sequential_142/lstm_427/lstm_cell_130/mul:z:0/sequential_142/lstm_427/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_142/lstm_427/lstm_cell_130/Sigmoid_2Sigmoid4sequential_142/lstm_427/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_142/lstm_427/lstm_cell_130/Relu_1Relu/sequential_142/lstm_427/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_142/lstm_427/lstm_cell_130/mul_2Mul3sequential_142/lstm_427/lstm_cell_130/Sigmoid_2:y:0:sequential_142/lstm_427/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_142/lstm_427/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_142/lstm_427/TensorArrayV2_1TensorListReserve>sequential_142/lstm_427/TensorArrayV2_1/element_shape:output:00sequential_142/lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_142/lstm_427/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_142/lstm_427/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_142/lstm_427/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_142/lstm_427/whileWhile3sequential_142/lstm_427/while/loop_counter:output:09sequential_142/lstm_427/while/maximum_iterations:output:0%sequential_142/lstm_427/time:output:00sequential_142/lstm_427/TensorArrayV2_1:handle:0&sequential_142/lstm_427/zeros:output:0(sequential_142/lstm_427/zeros_1:output:00sequential_142/lstm_427/strided_slice_1:output:0Osequential_142/lstm_427/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_142_lstm_427_lstm_cell_130_matmul_readvariableop_resourceFsequential_142_lstm_427_lstm_cell_130_matmul_1_readvariableop_resourceEsequential_142_lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
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
)sequential_142_lstm_427_while_body_792455*5
cond-R+
)sequential_142_lstm_427_while_cond_792454*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_142/lstm_427/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_142/lstm_427/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_142/lstm_427/while:output:3Qsequential_142/lstm_427/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_142/lstm_427/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_142/lstm_427/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_427/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_427/strided_slice_3StridedSliceCsequential_142/lstm_427/TensorArrayV2Stack/TensorListStack:tensor:06sequential_142/lstm_427/strided_slice_3/stack:output:08sequential_142/lstm_427/strided_slice_3/stack_1:output:08sequential_142/lstm_427/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_142/lstm_427/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_142/lstm_427/transpose_1	TransposeCsequential_142/lstm_427/TensorArrayV2Stack/TensorListStack:tensor:01sequential_142/lstm_427/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_142/lstm_427/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_142/lstm_428/ShapeShape'sequential_142/lstm_427/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_142/lstm_428/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_142/lstm_428/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_142/lstm_428/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_142/lstm_428/strided_sliceStridedSlice&sequential_142/lstm_428/Shape:output:04sequential_142/lstm_428/strided_slice/stack:output:06sequential_142/lstm_428/strided_slice/stack_1:output:06sequential_142/lstm_428/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_142/lstm_428/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_142/lstm_428/zeros/packedPack.sequential_142/lstm_428/strided_slice:output:0/sequential_142/lstm_428/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_142/lstm_428/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_428/zerosFill-sequential_142/lstm_428/zeros/packed:output:0,sequential_142/lstm_428/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_142/lstm_428/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_142/lstm_428/zeros_1/packedPack.sequential_142/lstm_428/strided_slice:output:01sequential_142/lstm_428/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_142/lstm_428/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_142/lstm_428/zeros_1Fill/sequential_142/lstm_428/zeros_1/packed:output:0.sequential_142/lstm_428/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_142/lstm_428/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_142/lstm_428/transpose	Transpose'sequential_142/lstm_427/transpose_1:y:0/sequential_142/lstm_428/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_142/lstm_428/Shape_1Shape%sequential_142/lstm_428/transpose:y:0*
T0*
_output_shapes
:w
-sequential_142/lstm_428/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_428/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_428/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_428/strided_slice_1StridedSlice(sequential_142/lstm_428/Shape_1:output:06sequential_142/lstm_428/strided_slice_1/stack:output:08sequential_142/lstm_428/strided_slice_1/stack_1:output:08sequential_142/lstm_428/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_142/lstm_428/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_142/lstm_428/TensorArrayV2TensorListReserve<sequential_142/lstm_428/TensorArrayV2/element_shape:output:00sequential_142/lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_142/lstm_428/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_142/lstm_428/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_142/lstm_428/transpose:y:0Vsequential_142/lstm_428/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_142/lstm_428/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_428/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_142/lstm_428/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_428/strided_slice_2StridedSlice%sequential_142/lstm_428/transpose:y:06sequential_142/lstm_428/strided_slice_2/stack:output:08sequential_142/lstm_428/strided_slice_2/stack_1:output:08sequential_142/lstm_428/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOpReadVariableOpDsequential_142_lstm_428_lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_142/lstm_428/lstm_cell_131/MatMulMatMul0sequential_142/lstm_428/strided_slice_2:output:0Csequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOpFsequential_142_lstm_428_lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_142/lstm_428/lstm_cell_131/MatMul_1MatMul&sequential_142/lstm_428/zeros:output:0Esequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_142/lstm_428/lstm_cell_131/addAddV26sequential_142/lstm_428/lstm_cell_131/MatMul:product:08sequential_142/lstm_428/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOpEsequential_142_lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_142/lstm_428/lstm_cell_131/BiasAddBiasAdd-sequential_142/lstm_428/lstm_cell_131/add:z:0Dsequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_142/lstm_428/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_142/lstm_428/lstm_cell_131/splitSplit>sequential_142/lstm_428/lstm_cell_131/split/split_dim:output:06sequential_142/lstm_428/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_142/lstm_428/lstm_cell_131/SigmoidSigmoid4sequential_142/lstm_428/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_142/lstm_428/lstm_cell_131/Sigmoid_1Sigmoid4sequential_142/lstm_428/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_142/lstm_428/lstm_cell_131/mulMul3sequential_142/lstm_428/lstm_cell_131/Sigmoid_1:y:0(sequential_142/lstm_428/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_142/lstm_428/lstm_cell_131/ReluRelu4sequential_142/lstm_428/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_142/lstm_428/lstm_cell_131/mul_1Mul1sequential_142/lstm_428/lstm_cell_131/Sigmoid:y:08sequential_142/lstm_428/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_142/lstm_428/lstm_cell_131/add_1AddV2-sequential_142/lstm_428/lstm_cell_131/mul:z:0/sequential_142/lstm_428/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_142/lstm_428/lstm_cell_131/Sigmoid_2Sigmoid4sequential_142/lstm_428/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_142/lstm_428/lstm_cell_131/Relu_1Relu/sequential_142/lstm_428/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_142/lstm_428/lstm_cell_131/mul_2Mul3sequential_142/lstm_428/lstm_cell_131/Sigmoid_2:y:0:sequential_142/lstm_428/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_142/lstm_428/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_142/lstm_428/TensorArrayV2_1TensorListReserve>sequential_142/lstm_428/TensorArrayV2_1/element_shape:output:00sequential_142/lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_142/lstm_428/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_142/lstm_428/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_142/lstm_428/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_142/lstm_428/whileWhile3sequential_142/lstm_428/while/loop_counter:output:09sequential_142/lstm_428/while/maximum_iterations:output:0%sequential_142/lstm_428/time:output:00sequential_142/lstm_428/TensorArrayV2_1:handle:0&sequential_142/lstm_428/zeros:output:0(sequential_142/lstm_428/zeros_1:output:00sequential_142/lstm_428/strided_slice_1:output:0Osequential_142/lstm_428/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_142_lstm_428_lstm_cell_131_matmul_readvariableop_resourceFsequential_142_lstm_428_lstm_cell_131_matmul_1_readvariableop_resourceEsequential_142_lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
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
)sequential_142_lstm_428_while_body_792594*5
cond-R+
)sequential_142_lstm_428_while_cond_792593*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_142/lstm_428/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_142/lstm_428/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_142/lstm_428/while:output:3Qsequential_142/lstm_428/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_142/lstm_428/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_142/lstm_428/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_142/lstm_428/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_142/lstm_428/strided_slice_3StridedSliceCsequential_142/lstm_428/TensorArrayV2Stack/TensorListStack:tensor:06sequential_142/lstm_428/strided_slice_3/stack:output:08sequential_142/lstm_428/strided_slice_3/stack_1:output:08sequential_142/lstm_428/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_142/lstm_428/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_142/lstm_428/transpose_1	TransposeCsequential_142/lstm_428/TensorArrayV2Stack/TensorListStack:tensor:01sequential_142/lstm_428/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_142/lstm_428/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_142/dense_142/MatMul/ReadVariableOpReadVariableOp7sequential_142_dense_142_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_142/dense_142/MatMulMatMul0sequential_142/lstm_428/strided_slice_3:output:06sequential_142/dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_142/dense_142/BiasAdd/ReadVariableOpReadVariableOp8sequential_142_dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_142/dense_142/BiasAddBiasAdd)sequential_142/dense_142/MatMul:product:07sequential_142/dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_142/dense_142/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_142/dense_142/BiasAdd/ReadVariableOp/^sequential_142/dense_142/MatMul/ReadVariableOp=^sequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp<^sequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOp>^sequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp^sequential_142/lstm_426/while=^sequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp<^sequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOp>^sequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp^sequential_142/lstm_427/while=^sequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp<^sequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOp>^sequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp^sequential_142/lstm_428/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_142/dense_142/BiasAdd/ReadVariableOp/sequential_142/dense_142/BiasAdd/ReadVariableOp2`
.sequential_142/dense_142/MatMul/ReadVariableOp.sequential_142/dense_142/MatMul/ReadVariableOp2|
<sequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp<sequential_142/lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp2z
;sequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOp;sequential_142/lstm_426/lstm_cell_129/MatMul/ReadVariableOp2~
=sequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp=sequential_142/lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp2>
sequential_142/lstm_426/whilesequential_142/lstm_426/while2|
<sequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp<sequential_142/lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp2z
;sequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOp;sequential_142/lstm_427/lstm_cell_130/MatMul/ReadVariableOp2~
=sequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp=sequential_142/lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp2>
sequential_142/lstm_427/whilesequential_142/lstm_427/while2|
<sequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp<sequential_142/lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp2z
;sequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOp;sequential_142/lstm_428/lstm_cell_131/MatMul/ReadVariableOp2~
=sequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp=sequential_142/lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp2>
sequential_142/lstm_428/whilesequential_142/lstm_428/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_426_input
?
?
while_cond_795954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_795954___redundant_placeholder04
0while_while_cond_795954___redundant_placeholder14
0while_while_cond_795954___redundant_placeholder24
0while_while_cond_795954___redundant_placeholder3
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
while_cond_793655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793655___redundant_placeholder04
0while_while_cond_793655___redundant_placeholder14
0while_while_cond_793655___redundant_placeholder24
0while_while_cond_793655___redundant_placeholder3
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_794729

inputs?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_794645*
condR
while_cond_794644*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_428_layer_call_and_return_conditional_losses_793725

inputs&
lstm_cell_131_793643:2(&
lstm_cell_131_793645:
("
lstm_cell_131_793647:(
identity??%lstm_cell_131/StatefulPartitionedCall?while;
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
%lstm_cell_131/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_131_793643lstm_cell_131_793645lstm_cell_131_793647*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793597n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_131_793643lstm_cell_131_793645lstm_cell_131_793647*
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
bodyR
while_body_793656*
condR
while_cond_793655*K
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
NoOpNoOp&^lstm_cell_131/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_131/StatefulPartitionedCall%lstm_cell_131/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_793305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793305___redundant_placeholder04
0while_while_cond_793305___redundant_placeholder14
0while_while_cond_793305___redundant_placeholder24
0while_while_cond_793305___redundant_placeholder3
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
while_body_797330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_793949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_142_layer_call_and_return_conditional_losses_797719

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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796468

inputs?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_796384*
condR
while_cond_796383*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_428_while_body_795762.
*lstm_428_while_lstm_428_while_loop_counter4
0lstm_428_while_lstm_428_while_maximum_iterations
lstm_428_while_placeholder 
lstm_428_while_placeholder_1 
lstm_428_while_placeholder_2 
lstm_428_while_placeholder_3-
)lstm_428_while_lstm_428_strided_slice_1_0i
elstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0:2(Q
?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(L
>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0:(
lstm_428_while_identity
lstm_428_while_identity_1
lstm_428_while_identity_2
lstm_428_while_identity_3
lstm_428_while_identity_4
lstm_428_while_identity_5+
'lstm_428_while_lstm_428_strided_slice_1g
clstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensorM
;lstm_428_while_lstm_cell_131_matmul_readvariableop_resource:2(O
=lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource:
(J
<lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource:(??3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp?2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp?4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp?
@lstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_428/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0lstm_428_while_placeholderIlstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_428/while/lstm_cell_131/MatMulMatMul9lstm_428/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_428/while/lstm_cell_131/MatMul_1MatMullstm_428_while_placeholder_2<lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_428/while/lstm_cell_131/addAddV2-lstm_428/while/lstm_cell_131/MatMul:product:0/lstm_428/while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_428/while/lstm_cell_131/BiasAddBiasAdd$lstm_428/while/lstm_cell_131/add:z:0;lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_428/while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_428/while/lstm_cell_131/splitSplit5lstm_428/while/lstm_cell_131/split/split_dim:output:0-lstm_428/while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_428/while/lstm_cell_131/SigmoidSigmoid+lstm_428/while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_428/while/lstm_cell_131/Sigmoid_1Sigmoid+lstm_428/while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_428/while/lstm_cell_131/mulMul*lstm_428/while/lstm_cell_131/Sigmoid_1:y:0lstm_428_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_428/while/lstm_cell_131/ReluRelu+lstm_428/while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/mul_1Mul(lstm_428/while/lstm_cell_131/Sigmoid:y:0/lstm_428/while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/add_1AddV2$lstm_428/while/lstm_cell_131/mul:z:0&lstm_428/while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_428/while/lstm_cell_131/Sigmoid_2Sigmoid+lstm_428/while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_428/while/lstm_cell_131/Relu_1Relu&lstm_428/while/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/mul_2Mul*lstm_428/while/lstm_cell_131/Sigmoid_2:y:01lstm_428/while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_428/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_428_while_placeholder_1lstm_428_while_placeholder&lstm_428/while/lstm_cell_131/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_428/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_428/while/addAddV2lstm_428_while_placeholderlstm_428/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_428/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_428/while/add_1AddV2*lstm_428_while_lstm_428_while_loop_counterlstm_428/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_428/while/IdentityIdentitylstm_428/while/add_1:z:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_1Identity0lstm_428_while_lstm_428_while_maximum_iterations^lstm_428/while/NoOp*
T0*
_output_shapes
: t
lstm_428/while/Identity_2Identitylstm_428/while/add:z:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_3IdentityClstm_428/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_4Identity&lstm_428/while/lstm_cell_131/mul_2:z:0^lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_428/while/Identity_5Identity&lstm_428/while/lstm_cell_131/add_1:z:0^lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_428/while/NoOpNoOp4^lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp3^lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp5^lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_428_while_identity lstm_428/while/Identity:output:0"?
lstm_428_while_identity_1"lstm_428/while/Identity_1:output:0"?
lstm_428_while_identity_2"lstm_428/while/Identity_2:output:0"?
lstm_428_while_identity_3"lstm_428/while/Identity_3:output:0"?
lstm_428_while_identity_4"lstm_428/while/Identity_4:output:0"?
lstm_428_while_identity_5"lstm_428/while/Identity_5:output:0"T
'lstm_428_while_lstm_428_strided_slice_1)lstm_428_while_lstm_428_strided_slice_1_0"~
<lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0"?
=lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0"|
;lstm_428_while_lstm_cell_131_matmul_readvariableop_resource=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0"?
clstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensorelstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp2h
2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp2l
4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_131_layer_call_fn_797932

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793451o
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
while_cond_794644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_794644___redundant_placeholder04
0while_while_cond_794644___redundant_placeholder14
0while_while_cond_794644___redundant_placeholder24
0while_while_cond_794644___redundant_placeholder3
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
while_body_797473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_792955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_792955___redundant_placeholder04
0while_while_cond_792955___redundant_placeholder14
0while_while_cond_792955___redundant_placeholder24
0while_while_cond_792955___redundant_placeholder3
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

lstm_427_while_body_795623.
*lstm_427_while_lstm_427_while_loop_counter4
0lstm_427_while_lstm_427_while_maximum_iterations
lstm_427_while_placeholder 
lstm_427_while_placeholder_1 
lstm_427_while_placeholder_2 
lstm_427_while_placeholder_3-
)lstm_427_while_lstm_427_strided_slice_1_0i
elstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0:	d?R
?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?M
>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
lstm_427_while_identity
lstm_427_while_identity_1
lstm_427_while_identity_2
lstm_427_while_identity_3
lstm_427_while_identity_4
lstm_427_while_identity_5+
'lstm_427_while_lstm_427_strided_slice_1g
clstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensorN
;lstm_427_while_lstm_cell_130_matmul_readvariableop_resource:	d?P
=lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource:	2?K
<lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource:	???3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp?2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp?4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp?
@lstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_427/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0lstm_427_while_placeholderIlstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_427/while/lstm_cell_130/MatMulMatMul9lstm_427/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_427/while/lstm_cell_130/MatMul_1MatMullstm_427_while_placeholder_2<lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_427/while/lstm_cell_130/addAddV2-lstm_427/while/lstm_cell_130/MatMul:product:0/lstm_427/while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_427/while/lstm_cell_130/BiasAddBiasAdd$lstm_427/while/lstm_cell_130/add:z:0;lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_427/while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_427/while/lstm_cell_130/splitSplit5lstm_427/while/lstm_cell_130/split/split_dim:output:0-lstm_427/while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_427/while/lstm_cell_130/SigmoidSigmoid+lstm_427/while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_427/while/lstm_cell_130/Sigmoid_1Sigmoid+lstm_427/while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_427/while/lstm_cell_130/mulMul*lstm_427/while/lstm_cell_130/Sigmoid_1:y:0lstm_427_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_427/while/lstm_cell_130/ReluRelu+lstm_427/while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/mul_1Mul(lstm_427/while/lstm_cell_130/Sigmoid:y:0/lstm_427/while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/add_1AddV2$lstm_427/while/lstm_cell_130/mul:z:0&lstm_427/while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_427/while/lstm_cell_130/Sigmoid_2Sigmoid+lstm_427/while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_427/while/lstm_cell_130/Relu_1Relu&lstm_427/while/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/mul_2Mul*lstm_427/while/lstm_cell_130/Sigmoid_2:y:01lstm_427/while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_427/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_427_while_placeholder_1lstm_427_while_placeholder&lstm_427/while/lstm_cell_130/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_427/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_427/while/addAddV2lstm_427_while_placeholderlstm_427/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_427/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_427/while/add_1AddV2*lstm_427_while_lstm_427_while_loop_counterlstm_427/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_427/while/IdentityIdentitylstm_427/while/add_1:z:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_1Identity0lstm_427_while_lstm_427_while_maximum_iterations^lstm_427/while/NoOp*
T0*
_output_shapes
: t
lstm_427/while/Identity_2Identitylstm_427/while/add:z:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_3IdentityClstm_427/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_4Identity&lstm_427/while/lstm_cell_130/mul_2:z:0^lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_427/while/Identity_5Identity&lstm_427/while/lstm_cell_130/add_1:z:0^lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_427/while/NoOpNoOp4^lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp3^lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp5^lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_427_while_identity lstm_427/while/Identity:output:0"?
lstm_427_while_identity_1"lstm_427/while/Identity_1:output:0"?
lstm_427_while_identity_2"lstm_427/while/Identity_2:output:0"?
lstm_427_while_identity_3"lstm_427/while/Identity_3:output:0"?
lstm_427_while_identity_4"lstm_427/while/Identity_4:output:0"?
lstm_427_while_identity_5"lstm_427/while/Identity_5:output:0"T
'lstm_427_while_lstm_427_strided_slice_1)lstm_427_while_lstm_427_strided_slice_1_0"~
<lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0"?
=lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0"|
;lstm_427_while_lstm_cell_130_matmul_readvariableop_resource=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0"?
clstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensorelstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp2h
2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp2l
4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_142_layer_call_fn_794971

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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794208o
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_794564

inputs?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_794480*
condR
while_cond_794479*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_427_layer_call_and_return_conditional_losses_796941

inputs?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_796857*
condR
while_cond_796856*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_796571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_131_layer_call_fn_797949

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793597o
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
??
?
"__inference__traced_restore_798286
file_prefix3
!assignvariableop_dense_142_kernel:
/
!assignvariableop_1_dense_142_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_426_lstm_cell_426_kernel:	?M
:assignvariableop_8_lstm_426_lstm_cell_426_recurrent_kernel:	d?=
.assignvariableop_9_lstm_426_lstm_cell_426_bias:	?D
1assignvariableop_10_lstm_427_lstm_cell_427_kernel:	d?N
;assignvariableop_11_lstm_427_lstm_cell_427_recurrent_kernel:	2?>
/assignvariableop_12_lstm_427_lstm_cell_427_bias:	?C
1assignvariableop_13_lstm_428_lstm_cell_428_kernel:2(M
;assignvariableop_14_lstm_428_lstm_cell_428_recurrent_kernel:
(=
/assignvariableop_15_lstm_428_lstm_cell_428_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_142_kernel_m:
7
)assignvariableop_19_adam_dense_142_bias_m:K
8assignvariableop_20_adam_lstm_426_lstm_cell_426_kernel_m:	?U
Bassignvariableop_21_adam_lstm_426_lstm_cell_426_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_426_lstm_cell_426_bias_m:	?K
8assignvariableop_23_adam_lstm_427_lstm_cell_427_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_427_lstm_cell_427_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_427_lstm_cell_427_bias_m:	?J
8assignvariableop_26_adam_lstm_428_lstm_cell_428_kernel_m:2(T
Bassignvariableop_27_adam_lstm_428_lstm_cell_428_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_428_lstm_cell_428_bias_m:(=
+assignvariableop_29_adam_dense_142_kernel_v:
7
)assignvariableop_30_adam_dense_142_bias_v:K
8assignvariableop_31_adam_lstm_426_lstm_cell_426_kernel_v:	?U
Bassignvariableop_32_adam_lstm_426_lstm_cell_426_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_426_lstm_cell_426_bias_v:	?K
8assignvariableop_34_adam_lstm_427_lstm_cell_427_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_427_lstm_cell_427_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_427_lstm_cell_427_bias_v:	?J
8assignvariableop_37_adam_lstm_428_lstm_cell_428_kernel_v:2(T
Bassignvariableop_38_adam_lstm_428_lstm_cell_428_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_428_lstm_cell_428_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_142_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_142_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_426_lstm_cell_426_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_426_lstm_cell_426_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_426_lstm_cell_426_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_427_lstm_cell_427_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_427_lstm_cell_427_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_427_lstm_cell_427_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_428_lstm_cell_428_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_428_lstm_cell_428_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_428_lstm_cell_428_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_142_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_142_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_426_lstm_cell_426_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_426_lstm_cell_426_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_426_lstm_cell_426_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_427_lstm_cell_427_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_427_lstm_cell_427_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_427_lstm_cell_427_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_428_lstm_cell_428_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_428_lstm_cell_428_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_428_lstm_cell_428_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_142_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_142_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_426_lstm_cell_426_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_426_lstm_cell_426_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_426_lstm_cell_426_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_427_lstm_cell_427_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_427_lstm_cell_427_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_427_lstm_cell_427_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_428_lstm_cell_428_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_428_lstm_cell_428_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_428_lstm_cell_428_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
/__inference_sequential_142_layer_call_fn_794998

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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794797o
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792897

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
?C
?

lstm_427_while_body_795196.
*lstm_427_while_lstm_427_while_loop_counter4
0lstm_427_while_lstm_427_while_maximum_iterations
lstm_427_while_placeholder 
lstm_427_while_placeholder_1 
lstm_427_while_placeholder_2 
lstm_427_while_placeholder_3-
)lstm_427_while_lstm_427_strided_slice_1_0i
elstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0:	d?R
?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?M
>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
lstm_427_while_identity
lstm_427_while_identity_1
lstm_427_while_identity_2
lstm_427_while_identity_3
lstm_427_while_identity_4
lstm_427_while_identity_5+
'lstm_427_while_lstm_427_strided_slice_1g
clstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensorN
;lstm_427_while_lstm_cell_130_matmul_readvariableop_resource:	d?P
=lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource:	2?K
<lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource:	???3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp?2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp?4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp?
@lstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_427/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0lstm_427_while_placeholderIlstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_427/while/lstm_cell_130/MatMulMatMul9lstm_427/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_427/while/lstm_cell_130/MatMul_1MatMullstm_427_while_placeholder_2<lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_427/while/lstm_cell_130/addAddV2-lstm_427/while/lstm_cell_130/MatMul:product:0/lstm_427/while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_427/while/lstm_cell_130/BiasAddBiasAdd$lstm_427/while/lstm_cell_130/add:z:0;lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_427/while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_427/while/lstm_cell_130/splitSplit5lstm_427/while/lstm_cell_130/split/split_dim:output:0-lstm_427/while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_427/while/lstm_cell_130/SigmoidSigmoid+lstm_427/while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_427/while/lstm_cell_130/Sigmoid_1Sigmoid+lstm_427/while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_427/while/lstm_cell_130/mulMul*lstm_427/while/lstm_cell_130/Sigmoid_1:y:0lstm_427_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_427/while/lstm_cell_130/ReluRelu+lstm_427/while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/mul_1Mul(lstm_427/while/lstm_cell_130/Sigmoid:y:0/lstm_427/while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/add_1AddV2$lstm_427/while/lstm_cell_130/mul:z:0&lstm_427/while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_427/while/lstm_cell_130/Sigmoid_2Sigmoid+lstm_427/while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_427/while/lstm_cell_130/Relu_1Relu&lstm_427/while/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_427/while/lstm_cell_130/mul_2Mul*lstm_427/while/lstm_cell_130/Sigmoid_2:y:01lstm_427/while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_427/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_427_while_placeholder_1lstm_427_while_placeholder&lstm_427/while/lstm_cell_130/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_427/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_427/while/addAddV2lstm_427_while_placeholderlstm_427/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_427/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_427/while/add_1AddV2*lstm_427_while_lstm_427_while_loop_counterlstm_427/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_427/while/IdentityIdentitylstm_427/while/add_1:z:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_1Identity0lstm_427_while_lstm_427_while_maximum_iterations^lstm_427/while/NoOp*
T0*
_output_shapes
: t
lstm_427/while/Identity_2Identitylstm_427/while/add:z:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_3IdentityClstm_427/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_427/while/NoOp*
T0*
_output_shapes
: ?
lstm_427/while/Identity_4Identity&lstm_427/while/lstm_cell_130/mul_2:z:0^lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_427/while/Identity_5Identity&lstm_427/while/lstm_cell_130/add_1:z:0^lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_427/while/NoOpNoOp4^lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp3^lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp5^lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_427_while_identity lstm_427/while/Identity:output:0"?
lstm_427_while_identity_1"lstm_427/while/Identity_1:output:0"?
lstm_427_while_identity_2"lstm_427/while/Identity_2:output:0"?
lstm_427_while_identity_3"lstm_427/while/Identity_3:output:0"?
lstm_427_while_identity_4"lstm_427/while/Identity_4:output:0"?
lstm_427_while_identity_5"lstm_427/while/Identity_5:output:0"T
'lstm_427_while_lstm_427_strided_slice_1)lstm_427_while_lstm_427_strided_slice_1_0"~
<lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource>lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0"?
=lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource?lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0"|
;lstm_427_while_lstm_cell_130_matmul_readvariableop_resource=lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0"?
clstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensorelstm_427_while_tensorarrayv2read_tensorlistgetitem_lstm_427_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp3lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp2h
2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp2lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp2l
4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp4lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793247

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
D__inference_lstm_427_layer_call_and_return_conditional_losses_796798
inputs_0?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_796714*
condR
while_cond_796713*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_426_layer_call_fn_795863
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_792834|
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797700

inputs>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_797616*
condR
while_cond_797615*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_797187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793451

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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792751

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
/__inference_sequential_142_layer_call_fn_794233
lstm_426_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_426_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794208o
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
_user_specified_namelstm_426_input
?
?
while_cond_794098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_794098___redundant_placeholder04
0while_while_cond_794098___redundant_placeholder14
0while_while_cond_794098___redundant_placeholder24
0while_while_cond_794098___redundant_placeholder3
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_793883

inputs?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_793799*
condR
while_cond_793798*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
while_body_792765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_129_792789_0:	?/
while_lstm_cell_129_792791_0:	d?+
while_lstm_cell_129_792793_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_129_792789:	?-
while_lstm_cell_129_792791:	d?)
while_lstm_cell_129_792793:	???+while/lstm_cell_129/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_129/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_129_792789_0while_lstm_cell_129_792791_0while_lstm_cell_129_792793_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792751?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_129/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_129/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_129/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_129_792789while_lstm_cell_129_792789_0":
while_lstm_cell_129_792791while_lstm_cell_129_792791_0":
while_lstm_cell_129_792793while_lstm_cell_129_792793_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_129/StatefulPartitionedCall+while/lstm_cell_129/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796182
inputs_0?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_796098*
condR
while_cond_796097*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_428_layer_call_fn_797128

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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794399o
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_798013

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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797915

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
lstm_427_while_cond_795195.
*lstm_427_while_lstm_427_while_loop_counter4
0lstm_427_while_lstm_427_while_maximum_iterations
lstm_427_while_placeholder 
lstm_427_while_placeholder_1 
lstm_427_while_placeholder_2 
lstm_427_while_placeholder_30
,lstm_427_while_less_lstm_427_strided_slice_1F
Blstm_427_while_lstm_427_while_cond_795195___redundant_placeholder0F
Blstm_427_while_lstm_427_while_cond_795195___redundant_placeholder1F
Blstm_427_while_lstm_427_while_cond_795195___redundant_placeholder2F
Blstm_427_while_lstm_427_while_cond_795195___redundant_placeholder3
lstm_427_while_identity
?
lstm_427/while/LessLesslstm_427_while_placeholder,lstm_427_while_less_lstm_427_strided_slice_1*
T0*
_output_shapes
: ]
lstm_427/while/IdentityIdentitylstm_427/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_427_while_identity lstm_427/while/Identity:output:0*(
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
lstm_428_while_cond_795761.
*lstm_428_while_lstm_428_while_loop_counter4
0lstm_428_while_lstm_428_while_maximum_iterations
lstm_428_while_placeholder 
lstm_428_while_placeholder_1 
lstm_428_while_placeholder_2 
lstm_428_while_placeholder_30
,lstm_428_while_less_lstm_428_strided_slice_1F
Blstm_428_while_lstm_428_while_cond_795761___redundant_placeholder0F
Blstm_428_while_lstm_428_while_cond_795761___redundant_placeholder1F
Blstm_428_while_lstm_428_while_cond_795761___redundant_placeholder2F
Blstm_428_while_lstm_428_while_cond_795761___redundant_placeholder3
lstm_428_while_identity
?
lstm_428/while/LessLesslstm_428_while_placeholder,lstm_428_while_less_lstm_428_strided_slice_1*
T0*
_output_shapes
: ]
lstm_428/while/IdentityIdentitylstm_428/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_428_while_identity lstm_428/while/Identity:output:0*(
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

lstm_428_while_body_795335.
*lstm_428_while_lstm_428_while_loop_counter4
0lstm_428_while_lstm_428_while_maximum_iterations
lstm_428_while_placeholder 
lstm_428_while_placeholder_1 
lstm_428_while_placeholder_2 
lstm_428_while_placeholder_3-
)lstm_428_while_lstm_428_strided_slice_1_0i
elstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0:2(Q
?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(L
>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0:(
lstm_428_while_identity
lstm_428_while_identity_1
lstm_428_while_identity_2
lstm_428_while_identity_3
lstm_428_while_identity_4
lstm_428_while_identity_5+
'lstm_428_while_lstm_428_strided_slice_1g
clstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensorM
;lstm_428_while_lstm_cell_131_matmul_readvariableop_resource:2(O
=lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource:
(J
<lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource:(??3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp?2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp?4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp?
@lstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_428/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0lstm_428_while_placeholderIlstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_428/while/lstm_cell_131/MatMulMatMul9lstm_428/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_428/while/lstm_cell_131/MatMul_1MatMullstm_428_while_placeholder_2<lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_428/while/lstm_cell_131/addAddV2-lstm_428/while/lstm_cell_131/MatMul:product:0/lstm_428/while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_428/while/lstm_cell_131/BiasAddBiasAdd$lstm_428/while/lstm_cell_131/add:z:0;lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_428/while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_428/while/lstm_cell_131/splitSplit5lstm_428/while/lstm_cell_131/split/split_dim:output:0-lstm_428/while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_428/while/lstm_cell_131/SigmoidSigmoid+lstm_428/while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_428/while/lstm_cell_131/Sigmoid_1Sigmoid+lstm_428/while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_428/while/lstm_cell_131/mulMul*lstm_428/while/lstm_cell_131/Sigmoid_1:y:0lstm_428_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_428/while/lstm_cell_131/ReluRelu+lstm_428/while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/mul_1Mul(lstm_428/while/lstm_cell_131/Sigmoid:y:0/lstm_428/while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/add_1AddV2$lstm_428/while/lstm_cell_131/mul:z:0&lstm_428/while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_428/while/lstm_cell_131/Sigmoid_2Sigmoid+lstm_428/while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_428/while/lstm_cell_131/Relu_1Relu&lstm_428/while/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_428/while/lstm_cell_131/mul_2Mul*lstm_428/while/lstm_cell_131/Sigmoid_2:y:01lstm_428/while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_428/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_428_while_placeholder_1lstm_428_while_placeholder&lstm_428/while/lstm_cell_131/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_428/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_428/while/addAddV2lstm_428_while_placeholderlstm_428/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_428/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_428/while/add_1AddV2*lstm_428_while_lstm_428_while_loop_counterlstm_428/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_428/while/IdentityIdentitylstm_428/while/add_1:z:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_1Identity0lstm_428_while_lstm_428_while_maximum_iterations^lstm_428/while/NoOp*
T0*
_output_shapes
: t
lstm_428/while/Identity_2Identitylstm_428/while/add:z:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_3IdentityClstm_428/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_428/while/NoOp*
T0*
_output_shapes
: ?
lstm_428/while/Identity_4Identity&lstm_428/while/lstm_cell_131/mul_2:z:0^lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_428/while/Identity_5Identity&lstm_428/while/lstm_cell_131/add_1:z:0^lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_428/while/NoOpNoOp4^lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp3^lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp5^lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_428_while_identity lstm_428/while/Identity:output:0"?
lstm_428_while_identity_1"lstm_428/while/Identity_1:output:0"?
lstm_428_while_identity_2"lstm_428/while/Identity_2:output:0"?
lstm_428_while_identity_3"lstm_428/while/Identity_3:output:0"?
lstm_428_while_identity_4"lstm_428/while/Identity_4:output:0"?
lstm_428_while_identity_5"lstm_428/while/Identity_5:output:0"T
'lstm_428_while_lstm_428_strided_slice_1)lstm_428_while_lstm_428_strided_slice_1_0"~
<lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource>lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0"?
=lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource?lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0"|
;lstm_428_while_lstm_cell_131_matmul_readvariableop_resource=lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0"?
clstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensorelstm_428_while_tensorarrayv2read_tensorlistgetitem_lstm_428_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp3lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp2h
2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp2lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp2l
4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp4lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_426_layer_call_fn_795885

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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_793883s
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
?
)__inference_lstm_428_layer_call_fn_797106
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_793725o
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_794399

inputs>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_794315*
condR
while_cond_794314*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_427_layer_call_fn_796479
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_793184|
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
)__inference_lstm_427_layer_call_fn_796512

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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794564s
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797414
inputs_0>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_797330*
condR
while_cond_797329*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?T
?
)sequential_142_lstm_427_while_body_792455L
Hsequential_142_lstm_427_while_sequential_142_lstm_427_while_loop_counterR
Nsequential_142_lstm_427_while_sequential_142_lstm_427_while_maximum_iterations-
)sequential_142_lstm_427_while_placeholder/
+sequential_142_lstm_427_while_placeholder_1/
+sequential_142_lstm_427_while_placeholder_2/
+sequential_142_lstm_427_while_placeholder_3K
Gsequential_142_lstm_427_while_sequential_142_lstm_427_strided_slice_1_0?
?sequential_142_lstm_427_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_427_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_142_lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0:	d?a
Nsequential_142_lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?\
Msequential_142_lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0:	?*
&sequential_142_lstm_427_while_identity,
(sequential_142_lstm_427_while_identity_1,
(sequential_142_lstm_427_while_identity_2,
(sequential_142_lstm_427_while_identity_3,
(sequential_142_lstm_427_while_identity_4,
(sequential_142_lstm_427_while_identity_5I
Esequential_142_lstm_427_while_sequential_142_lstm_427_strided_slice_1?
?sequential_142_lstm_427_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_427_tensorarrayunstack_tensorlistfromtensor]
Jsequential_142_lstm_427_while_lstm_cell_130_matmul_readvariableop_resource:	d?_
Lsequential_142_lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource:	2?Z
Ksequential_142_lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource:	???Bsequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp?Asequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp?Csequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp?
Osequential_142/lstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_142/lstm_427/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_142_lstm_427_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_427_tensorarrayunstack_tensorlistfromtensor_0)sequential_142_lstm_427_while_placeholderXsequential_142/lstm_427/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOpLsequential_142_lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_142/lstm_427/while/lstm_cell_130/MatMulMatMulHsequential_142/lstm_427/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOpNsequential_142_lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_142/lstm_427/while/lstm_cell_130/MatMul_1MatMul+sequential_142_lstm_427_while_placeholder_2Ksequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_142/lstm_427/while/lstm_cell_130/addAddV2<sequential_142/lstm_427/while/lstm_cell_130/MatMul:product:0>sequential_142/lstm_427/while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOpMsequential_142_lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_142/lstm_427/while/lstm_cell_130/BiasAddBiasAdd3sequential_142/lstm_427/while/lstm_cell_130/add:z:0Jsequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_142/lstm_427/while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_142/lstm_427/while/lstm_cell_130/splitSplitDsequential_142/lstm_427/while/lstm_cell_130/split/split_dim:output:0<sequential_142/lstm_427/while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_142/lstm_427/while/lstm_cell_130/SigmoidSigmoid:sequential_142/lstm_427/while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_142/lstm_427/while/lstm_cell_130/Sigmoid_1Sigmoid:sequential_142/lstm_427/while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_142/lstm_427/while/lstm_cell_130/mulMul9sequential_142/lstm_427/while/lstm_cell_130/Sigmoid_1:y:0+sequential_142_lstm_427_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_142/lstm_427/while/lstm_cell_130/ReluRelu:sequential_142/lstm_427/while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_142/lstm_427/while/lstm_cell_130/mul_1Mul7sequential_142/lstm_427/while/lstm_cell_130/Sigmoid:y:0>sequential_142/lstm_427/while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_142/lstm_427/while/lstm_cell_130/add_1AddV23sequential_142/lstm_427/while/lstm_cell_130/mul:z:05sequential_142/lstm_427/while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_142/lstm_427/while/lstm_cell_130/Sigmoid_2Sigmoid:sequential_142/lstm_427/while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_142/lstm_427/while/lstm_cell_130/Relu_1Relu5sequential_142/lstm_427/while/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_142/lstm_427/while/lstm_cell_130/mul_2Mul9sequential_142/lstm_427/while/lstm_cell_130/Sigmoid_2:y:0@sequential_142/lstm_427/while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_142/lstm_427/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_142_lstm_427_while_placeholder_1)sequential_142_lstm_427_while_placeholder5sequential_142/lstm_427/while/lstm_cell_130/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_142/lstm_427/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_142/lstm_427/while/addAddV2)sequential_142_lstm_427_while_placeholder,sequential_142/lstm_427/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_142/lstm_427/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_142/lstm_427/while/add_1AddV2Hsequential_142_lstm_427_while_sequential_142_lstm_427_while_loop_counter.sequential_142/lstm_427/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_142/lstm_427/while/IdentityIdentity'sequential_142/lstm_427/while/add_1:z:0#^sequential_142/lstm_427/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_427/while/Identity_1IdentityNsequential_142_lstm_427_while_sequential_142_lstm_427_while_maximum_iterations#^sequential_142/lstm_427/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_427/while/Identity_2Identity%sequential_142/lstm_427/while/add:z:0#^sequential_142/lstm_427/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_427/while/Identity_3IdentityRsequential_142/lstm_427/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_142/lstm_427/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_427/while/Identity_4Identity5sequential_142/lstm_427/while/lstm_cell_130/mul_2:z:0#^sequential_142/lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_142/lstm_427/while/Identity_5Identity5sequential_142/lstm_427/while/lstm_cell_130/add_1:z:0#^sequential_142/lstm_427/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_142/lstm_427/while/NoOpNoOpC^sequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOpB^sequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOpD^sequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_142_lstm_427_while_identity/sequential_142/lstm_427/while/Identity:output:0"]
(sequential_142_lstm_427_while_identity_11sequential_142/lstm_427/while/Identity_1:output:0"]
(sequential_142_lstm_427_while_identity_21sequential_142/lstm_427/while/Identity_2:output:0"]
(sequential_142_lstm_427_while_identity_31sequential_142/lstm_427/while/Identity_3:output:0"]
(sequential_142_lstm_427_while_identity_41sequential_142/lstm_427/while/Identity_4:output:0"]
(sequential_142_lstm_427_while_identity_51sequential_142/lstm_427/while/Identity_5:output:0"?
Ksequential_142_lstm_427_while_lstm_cell_130_biasadd_readvariableop_resourceMsequential_142_lstm_427_while_lstm_cell_130_biasadd_readvariableop_resource_0"?
Lsequential_142_lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resourceNsequential_142_lstm_427_while_lstm_cell_130_matmul_1_readvariableop_resource_0"?
Jsequential_142_lstm_427_while_lstm_cell_130_matmul_readvariableop_resourceLsequential_142_lstm_427_while_lstm_cell_130_matmul_readvariableop_resource_0"?
Esequential_142_lstm_427_while_sequential_142_lstm_427_strided_slice_1Gsequential_142_lstm_427_while_sequential_142_lstm_427_strided_slice_1_0"?
?sequential_142_lstm_427_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_427_tensorarrayunstack_tensorlistfromtensor?sequential_142_lstm_427_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_427_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOpBsequential_142/lstm_427/while/lstm_cell_130/BiasAdd/ReadVariableOp2?
Asequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOpAsequential_142/lstm_427/while/lstm_cell_130/MatMul/ReadVariableOp2?
Csequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOpCsequential_142/lstm_427/while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_797616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
)sequential_142_lstm_428_while_body_792594L
Hsequential_142_lstm_428_while_sequential_142_lstm_428_while_loop_counterR
Nsequential_142_lstm_428_while_sequential_142_lstm_428_while_maximum_iterations-
)sequential_142_lstm_428_while_placeholder/
+sequential_142_lstm_428_while_placeholder_1/
+sequential_142_lstm_428_while_placeholder_2/
+sequential_142_lstm_428_while_placeholder_3K
Gsequential_142_lstm_428_while_sequential_142_lstm_428_strided_slice_1_0?
?sequential_142_lstm_428_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_428_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_142_lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0:2(`
Nsequential_142_lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0:
([
Msequential_142_lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0:(*
&sequential_142_lstm_428_while_identity,
(sequential_142_lstm_428_while_identity_1,
(sequential_142_lstm_428_while_identity_2,
(sequential_142_lstm_428_while_identity_3,
(sequential_142_lstm_428_while_identity_4,
(sequential_142_lstm_428_while_identity_5I
Esequential_142_lstm_428_while_sequential_142_lstm_428_strided_slice_1?
?sequential_142_lstm_428_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_428_tensorarrayunstack_tensorlistfromtensor\
Jsequential_142_lstm_428_while_lstm_cell_131_matmul_readvariableop_resource:2(^
Lsequential_142_lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource:
(Y
Ksequential_142_lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource:(??Bsequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp?Asequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp?Csequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp?
Osequential_142/lstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_142/lstm_428/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_142_lstm_428_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_428_tensorarrayunstack_tensorlistfromtensor_0)sequential_142_lstm_428_while_placeholderXsequential_142/lstm_428/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOpLsequential_142_lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_142/lstm_428/while/lstm_cell_131/MatMulMatMulHsequential_142/lstm_428/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOpNsequential_142_lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_142/lstm_428/while/lstm_cell_131/MatMul_1MatMul+sequential_142_lstm_428_while_placeholder_2Ksequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_142/lstm_428/while/lstm_cell_131/addAddV2<sequential_142/lstm_428/while/lstm_cell_131/MatMul:product:0>sequential_142/lstm_428/while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOpMsequential_142_lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_142/lstm_428/while/lstm_cell_131/BiasAddBiasAdd3sequential_142/lstm_428/while/lstm_cell_131/add:z:0Jsequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_142/lstm_428/while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_142/lstm_428/while/lstm_cell_131/splitSplitDsequential_142/lstm_428/while/lstm_cell_131/split/split_dim:output:0<sequential_142/lstm_428/while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_142/lstm_428/while/lstm_cell_131/SigmoidSigmoid:sequential_142/lstm_428/while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_142/lstm_428/while/lstm_cell_131/Sigmoid_1Sigmoid:sequential_142/lstm_428/while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_142/lstm_428/while/lstm_cell_131/mulMul9sequential_142/lstm_428/while/lstm_cell_131/Sigmoid_1:y:0+sequential_142_lstm_428_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_142/lstm_428/while/lstm_cell_131/ReluRelu:sequential_142/lstm_428/while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_142/lstm_428/while/lstm_cell_131/mul_1Mul7sequential_142/lstm_428/while/lstm_cell_131/Sigmoid:y:0>sequential_142/lstm_428/while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_142/lstm_428/while/lstm_cell_131/add_1AddV23sequential_142/lstm_428/while/lstm_cell_131/mul:z:05sequential_142/lstm_428/while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_142/lstm_428/while/lstm_cell_131/Sigmoid_2Sigmoid:sequential_142/lstm_428/while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_142/lstm_428/while/lstm_cell_131/Relu_1Relu5sequential_142/lstm_428/while/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_142/lstm_428/while/lstm_cell_131/mul_2Mul9sequential_142/lstm_428/while/lstm_cell_131/Sigmoid_2:y:0@sequential_142/lstm_428/while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_142/lstm_428/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_142_lstm_428_while_placeholder_1)sequential_142_lstm_428_while_placeholder5sequential_142/lstm_428/while/lstm_cell_131/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_142/lstm_428/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_142/lstm_428/while/addAddV2)sequential_142_lstm_428_while_placeholder,sequential_142/lstm_428/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_142/lstm_428/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_142/lstm_428/while/add_1AddV2Hsequential_142_lstm_428_while_sequential_142_lstm_428_while_loop_counter.sequential_142/lstm_428/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_142/lstm_428/while/IdentityIdentity'sequential_142/lstm_428/while/add_1:z:0#^sequential_142/lstm_428/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_428/while/Identity_1IdentityNsequential_142_lstm_428_while_sequential_142_lstm_428_while_maximum_iterations#^sequential_142/lstm_428/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_428/while/Identity_2Identity%sequential_142/lstm_428/while/add:z:0#^sequential_142/lstm_428/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_428/while/Identity_3IdentityRsequential_142/lstm_428/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_142/lstm_428/while/NoOp*
T0*
_output_shapes
: ?
(sequential_142/lstm_428/while/Identity_4Identity5sequential_142/lstm_428/while/lstm_cell_131/mul_2:z:0#^sequential_142/lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_142/lstm_428/while/Identity_5Identity5sequential_142/lstm_428/while/lstm_cell_131/add_1:z:0#^sequential_142/lstm_428/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_142/lstm_428/while/NoOpNoOpC^sequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOpB^sequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOpD^sequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_142_lstm_428_while_identity/sequential_142/lstm_428/while/Identity:output:0"]
(sequential_142_lstm_428_while_identity_11sequential_142/lstm_428/while/Identity_1:output:0"]
(sequential_142_lstm_428_while_identity_21sequential_142/lstm_428/while/Identity_2:output:0"]
(sequential_142_lstm_428_while_identity_31sequential_142/lstm_428/while/Identity_3:output:0"]
(sequential_142_lstm_428_while_identity_41sequential_142/lstm_428/while/Identity_4:output:0"]
(sequential_142_lstm_428_while_identity_51sequential_142/lstm_428/while/Identity_5:output:0"?
Ksequential_142_lstm_428_while_lstm_cell_131_biasadd_readvariableop_resourceMsequential_142_lstm_428_while_lstm_cell_131_biasadd_readvariableop_resource_0"?
Lsequential_142_lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resourceNsequential_142_lstm_428_while_lstm_cell_131_matmul_1_readvariableop_resource_0"?
Jsequential_142_lstm_428_while_lstm_cell_131_matmul_readvariableop_resourceLsequential_142_lstm_428_while_lstm_cell_131_matmul_readvariableop_resource_0"?
Esequential_142_lstm_428_while_sequential_142_lstm_428_strided_slice_1Gsequential_142_lstm_428_while_sequential_142_lstm_428_strided_slice_1_0"?
?sequential_142_lstm_428_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_428_tensorarrayunstack_tensorlistfromtensor?sequential_142_lstm_428_while_tensorarrayv2read_tensorlistgetitem_sequential_142_lstm_428_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOpBsequential_142/lstm_428/while/lstm_cell_131/BiasAdd/ReadVariableOp2?
Asequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOpAsequential_142/lstm_428/while/lstm_cell_131/MatMul/ReadVariableOp2?
Csequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOpCsequential_142/lstm_428/while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_794183

inputs>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_794099*
condR
while_cond_794098*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_797000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_130_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_130_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_130_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_130_matmul_readvariableop_resource:	d?G
4while_lstm_cell_130_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_130_biasadd_readvariableop_resource:	???*while/lstm_cell_130/BiasAdd/ReadVariableOp?)while/lstm_cell_130/MatMul/ReadVariableOp?+while/lstm_cell_130/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_130_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_130/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_130_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_130/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_130/addAddV2$while/lstm_cell_130/MatMul:product:0&while/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_130_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_130/BiasAddBiasAddwhile/lstm_cell_130/add:z:02while/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_130/splitSplit,while/lstm_cell_130/split/split_dim:output:0$while/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_130/SigmoidSigmoid"while/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_1Sigmoid"while/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mulMul!while/lstm_cell_130/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_130/ReluRelu"while/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_1Mulwhile/lstm_cell_130/Sigmoid:y:0&while/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/add_1AddV2while/lstm_cell_130/mul:z:0while/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_130/Sigmoid_2Sigmoid"while/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_130/Relu_1Reluwhile/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_130/mul_2Mul!while/lstm_cell_130/Sigmoid_2:y:0(while/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_130/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_130/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_130/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_130/BiasAdd/ReadVariableOp*^while/lstm_cell_130/MatMul/ReadVariableOp,^while/lstm_cell_130/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_130_biasadd_readvariableop_resource5while_lstm_cell_130_biasadd_readvariableop_resource_0"n
4while_lstm_cell_130_matmul_1_readvariableop_resource6while_lstm_cell_130_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_130_matmul_readvariableop_resource4while_lstm_cell_130_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_130/BiasAdd/ReadVariableOp*while/lstm_cell_130/BiasAdd/ReadVariableOp2V
)while/lstm_cell_130/MatMul/ReadVariableOp)while/lstm_cell_130/MatMul/ReadVariableOp2Z
+while/lstm_cell_130/MatMul_1/ReadVariableOp+while/lstm_cell_130/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_796384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_797981

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
while_cond_794314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_794314___redundant_placeholder04
0while_while_cond_794314___redundant_placeholder14
0while_while_cond_794314___redundant_placeholder24
0while_while_cond_794314___redundant_placeholder3
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
)sequential_142_lstm_428_while_cond_792593L
Hsequential_142_lstm_428_while_sequential_142_lstm_428_while_loop_counterR
Nsequential_142_lstm_428_while_sequential_142_lstm_428_while_maximum_iterations-
)sequential_142_lstm_428_while_placeholder/
+sequential_142_lstm_428_while_placeholder_1/
+sequential_142_lstm_428_while_placeholder_2/
+sequential_142_lstm_428_while_placeholder_3N
Jsequential_142_lstm_428_while_less_sequential_142_lstm_428_strided_slice_1d
`sequential_142_lstm_428_while_sequential_142_lstm_428_while_cond_792593___redundant_placeholder0d
`sequential_142_lstm_428_while_sequential_142_lstm_428_while_cond_792593___redundant_placeholder1d
`sequential_142_lstm_428_while_sequential_142_lstm_428_while_cond_792593___redundant_placeholder2d
`sequential_142_lstm_428_while_sequential_142_lstm_428_while_cond_792593___redundant_placeholder3*
&sequential_142_lstm_428_while_identity
?
"sequential_142/lstm_428/while/LessLess)sequential_142_lstm_428_while_placeholderJsequential_142_lstm_428_while_less_sequential_142_lstm_428_strided_slice_1*
T0*
_output_shapes
: {
&sequential_142/lstm_428/while/IdentityIdentity&sequential_142/lstm_428/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_142_lstm_428_while_identity/sequential_142/lstm_428/while/Identity:output:0*(
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_796655
inputs_0?
,lstm_cell_130_matmul_readvariableop_resource:	d?A
.lstm_cell_130_matmul_1_readvariableop_resource:	2?<
-lstm_cell_130_biasadd_readvariableop_resource:	?
identity??$lstm_cell_130/BiasAdd/ReadVariableOp?#lstm_cell_130/MatMul/ReadVariableOp?%lstm_cell_130/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_130/MatMul/ReadVariableOpReadVariableOp,lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_130/MatMulMatMulstrided_slice_2:output:0+lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_130/MatMul_1MatMulzeros:output:0-lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_130/addAddV2lstm_cell_130/MatMul:product:0 lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_130/BiasAddBiasAddlstm_cell_130/add:z:0,lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_130/splitSplit&lstm_cell_130/split/split_dim:output:0lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_130/SigmoidSigmoidlstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_1Sigmoidlstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_130/mulMullstm_cell_130/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_130/ReluRelulstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_1Mullstm_cell_130/Sigmoid:y:0 lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_130/add_1AddV2lstm_cell_130/mul:z:0lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_130/Sigmoid_2Sigmoidlstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_130/Relu_1Relulstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_130/mul_2Mullstm_cell_130/Sigmoid_2:y:0"lstm_cell_130/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_130_matmul_readvariableop_resource.lstm_cell_130_matmul_1_readvariableop_resource-lstm_cell_130_biasadd_readvariableop_resource*
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
bodyR
while_body_796571*
condR
while_cond_796570*K
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
NoOpNoOp%^lstm_cell_130/BiasAdd/ReadVariableOp$^lstm_cell_130/MatMul/ReadVariableOp&^lstm_cell_130/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_130/BiasAdd/ReadVariableOp$lstm_cell_130/BiasAdd/ReadVariableOp2J
#lstm_cell_130/MatMul/ReadVariableOp#lstm_cell_130/MatMul/ReadVariableOp2N
%lstm_cell_130/MatMul_1/ReadVariableOp%lstm_cell_130/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_793799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_129_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_129_matmul_readvariableop_resource:	?G
4while_lstm_cell_129_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_129_biasadd_readvariableop_resource:	???*while/lstm_cell_129/BiasAdd/ReadVariableOp?)while/lstm_cell_129/MatMul/ReadVariableOp?+while/lstm_cell_129/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_129/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_129/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_129/addAddV2$while/lstm_cell_129/MatMul:product:0&while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_129/BiasAddBiasAddwhile/lstm_cell_129/add:z:02while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_129/splitSplit,while/lstm_cell_129/split/split_dim:output:0$while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_129/SigmoidSigmoid"while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_1Sigmoid"while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mulMul!while/lstm_cell_129/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_129/ReluRelu"while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_1Mulwhile/lstm_cell_129/Sigmoid:y:0&while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/add_1AddV2while/lstm_cell_129/mul:z:0while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_129/Sigmoid_2Sigmoid"while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_129/Relu_1Reluwhile/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_129/mul_2Mul!while/lstm_cell_129/Sigmoid_2:y:0(while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_129/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_129/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_129/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_129/BiasAdd/ReadVariableOp*^while/lstm_cell_129/MatMul/ReadVariableOp,^while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_129_biasadd_readvariableop_resource5while_lstm_cell_129_biasadd_readvariableop_resource_0"n
4while_lstm_cell_129_matmul_1_readvariableop_resource6while_lstm_cell_129_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_129_matmul_readvariableop_resource4while_lstm_cell_129_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_129/BiasAdd/ReadVariableOp*while/lstm_cell_129/BiasAdd/ReadVariableOp2V
)while/lstm_cell_129/MatMul/ReadVariableOp)while/lstm_cell_129/MatMul/ReadVariableOp2Z
+while/lstm_cell_129/MatMul_1/ReadVariableOp+while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_427_while_cond_795622.
*lstm_427_while_lstm_427_while_loop_counter4
0lstm_427_while_lstm_427_while_maximum_iterations
lstm_427_while_placeholder 
lstm_427_while_placeholder_1 
lstm_427_while_placeholder_2 
lstm_427_while_placeholder_30
,lstm_427_while_less_lstm_427_strided_slice_1F
Blstm_427_while_lstm_427_while_cond_795622___redundant_placeholder0F
Blstm_427_while_lstm_427_while_cond_795622___redundant_placeholder1F
Blstm_427_while_lstm_427_while_cond_795622___redundant_placeholder2F
Blstm_427_while_lstm_427_while_cond_795622___redundant_placeholder3
lstm_427_while_identity
?
lstm_427/while/LessLesslstm_427_while_placeholder,lstm_427_while_less_lstm_427_strided_slice_1*
T0*
_output_shapes
: ]
lstm_427/while/IdentityIdentitylstm_427/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_427_while_identity lstm_427/while/Identity:output:0*(
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
?"
?
while_body_792956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_129_792980_0:	?/
while_lstm_cell_129_792982_0:	d?+
while_lstm_cell_129_792984_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_129_792980:	?-
while_lstm_cell_129_792982:	d?)
while_lstm_cell_129_792984:	???+while/lstm_cell_129/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_129/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_129_792980_0while_lstm_cell_129_792982_0while_lstm_cell_129_792984_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_792897?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_129/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_129/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_129/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_129_792980while_lstm_cell_129_792980_0":
while_lstm_cell_129_792982while_lstm_cell_129_792982_0":
while_lstm_cell_129_792984while_lstm_cell_129_792984_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_129/StatefulPartitionedCall+while/lstm_cell_129/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_426_while_cond_795483.
*lstm_426_while_lstm_426_while_loop_counter4
0lstm_426_while_lstm_426_while_maximum_iterations
lstm_426_while_placeholder 
lstm_426_while_placeholder_1 
lstm_426_while_placeholder_2 
lstm_426_while_placeholder_30
,lstm_426_while_less_lstm_426_strided_slice_1F
Blstm_426_while_lstm_426_while_cond_795483___redundant_placeholder0F
Blstm_426_while_lstm_426_while_cond_795483___redundant_placeholder1F
Blstm_426_while_lstm_426_while_cond_795483___redundant_placeholder2F
Blstm_426_while_lstm_426_while_cond_795483___redundant_placeholder3
lstm_426_while_identity
?
lstm_426/while/LessLesslstm_426_while_placeholder,lstm_426_while_less_lstm_426_strided_slice_1*
T0*
_output_shapes
: ]
lstm_426/while/IdentityIdentitylstm_426/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_426_while_identity lstm_426/while/Identity:output:0*(
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
while_cond_796097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796097___redundant_placeholder04
0while_while_cond_796097___redundant_placeholder14
0while_while_cond_796097___redundant_placeholder24
0while_while_cond_796097___redundant_placeholder3
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
while_cond_797329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_797329___redundant_placeholder04
0while_while_cond_797329___redundant_placeholder14
0while_while_cond_797329___redundant_placeholder24
0while_while_cond_797329___redundant_placeholder3
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
)__inference_lstm_427_layer_call_fn_796501

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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794033s
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
while_cond_796856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796856___redundant_placeholder04
0while_while_cond_796856___redundant_placeholder14
0while_while_cond_796856___redundant_placeholder24
0while_while_cond_796856___redundant_placeholder3
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
$__inference_signature_wrapper_794944
lstm_426_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_426_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? **
f%R#
!__inference__wrapped_model_792684o
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
_user_specified_namelstm_426_input
?
?
)sequential_142_lstm_427_while_cond_792454L
Hsequential_142_lstm_427_while_sequential_142_lstm_427_while_loop_counterR
Nsequential_142_lstm_427_while_sequential_142_lstm_427_while_maximum_iterations-
)sequential_142_lstm_427_while_placeholder/
+sequential_142_lstm_427_while_placeholder_1/
+sequential_142_lstm_427_while_placeholder_2/
+sequential_142_lstm_427_while_placeholder_3N
Jsequential_142_lstm_427_while_less_sequential_142_lstm_427_strided_slice_1d
`sequential_142_lstm_427_while_sequential_142_lstm_427_while_cond_792454___redundant_placeholder0d
`sequential_142_lstm_427_while_sequential_142_lstm_427_while_cond_792454___redundant_placeholder1d
`sequential_142_lstm_427_while_sequential_142_lstm_427_while_cond_792454___redundant_placeholder2d
`sequential_142_lstm_427_while_sequential_142_lstm_427_while_cond_792454___redundant_placeholder3*
&sequential_142_lstm_427_while_identity
?
"sequential_142/lstm_427/while/LessLess)sequential_142_lstm_427_while_placeholderJsequential_142_lstm_427_while_less_sequential_142_lstm_427_strided_slice_1*
T0*
_output_shapes
: {
&sequential_142/lstm_427/while/IdentityIdentity&sequential_142/lstm_427/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_142_lstm_427_while_identity/sequential_142/lstm_427/while/Identity:output:0*(
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_793184

inputs'
lstm_cell_130_793102:	d?'
lstm_cell_130_793104:	2?#
lstm_cell_130_793106:	?
identity??%lstm_cell_130/StatefulPartitionedCall?while;
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
%lstm_cell_130/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_130_793102lstm_cell_130_793104lstm_cell_130_793106*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793101n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_130_793102lstm_cell_130_793104lstm_cell_130_793106*
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
bodyR
while_body_793115*
condR
while_cond_793114*K
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
NoOpNoOp&^lstm_cell_130/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_130/StatefulPartitionedCall%lstm_cell_130/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
D__inference_lstm_427_layer_call_and_return_conditional_losses_793375

inputs'
lstm_cell_130_793293:	d?'
lstm_cell_130_793295:	2?#
lstm_cell_130_793297:	?
identity??%lstm_cell_130/StatefulPartitionedCall?while;
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
%lstm_cell_130/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_130_793293lstm_cell_130_793295lstm_cell_130_793297*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793247n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_130_793293lstm_cell_130_793295lstm_cell_130_793297*
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
bodyR
while_body_793306*
condR
while_cond_793305*K
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
NoOpNoOp&^lstm_cell_130/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_130/StatefulPartitionedCall%lstm_cell_130/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_428_layer_call_and_return_conditional_losses_797557

inputs>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_797473*
condR
while_cond_797472*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_426_while_body_795484.
*lstm_426_while_lstm_426_while_loop_counter4
0lstm_426_while_lstm_426_while_maximum_iterations
lstm_426_while_placeholder 
lstm_426_while_placeholder_1 
lstm_426_while_placeholder_2 
lstm_426_while_placeholder_3-
)lstm_426_while_lstm_426_strided_slice_1_0i
elstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0:	?R
?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0:	d?M
>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0:	?
lstm_426_while_identity
lstm_426_while_identity_1
lstm_426_while_identity_2
lstm_426_while_identity_3
lstm_426_while_identity_4
lstm_426_while_identity_5+
'lstm_426_while_lstm_426_strided_slice_1g
clstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensorN
;lstm_426_while_lstm_cell_129_matmul_readvariableop_resource:	?P
=lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource:	d?K
<lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource:	???3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp?2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp?4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp?
@lstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_426/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0lstm_426_while_placeholderIlstm_426/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_426/while/lstm_cell_129/MatMulMatMul9lstm_426/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_426/while/lstm_cell_129/MatMul_1MatMullstm_426_while_placeholder_2<lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_426/while/lstm_cell_129/addAddV2-lstm_426/while/lstm_cell_129/MatMul:product:0/lstm_426/while/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_426/while/lstm_cell_129/BiasAddBiasAdd$lstm_426/while/lstm_cell_129/add:z:0;lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_426/while/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_426/while/lstm_cell_129/splitSplit5lstm_426/while/lstm_cell_129/split/split_dim:output:0-lstm_426/while/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_426/while/lstm_cell_129/SigmoidSigmoid+lstm_426/while/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_426/while/lstm_cell_129/Sigmoid_1Sigmoid+lstm_426/while/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_426/while/lstm_cell_129/mulMul*lstm_426/while/lstm_cell_129/Sigmoid_1:y:0lstm_426_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_426/while/lstm_cell_129/ReluRelu+lstm_426/while/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/mul_1Mul(lstm_426/while/lstm_cell_129/Sigmoid:y:0/lstm_426/while/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/add_1AddV2$lstm_426/while/lstm_cell_129/mul:z:0&lstm_426/while/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_426/while/lstm_cell_129/Sigmoid_2Sigmoid+lstm_426/while/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_426/while/lstm_cell_129/Relu_1Relu&lstm_426/while/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_426/while/lstm_cell_129/mul_2Mul*lstm_426/while/lstm_cell_129/Sigmoid_2:y:01lstm_426/while/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_426/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_426_while_placeholder_1lstm_426_while_placeholder&lstm_426/while/lstm_cell_129/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_426/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_426/while/addAddV2lstm_426_while_placeholderlstm_426/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_426/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_426/while/add_1AddV2*lstm_426_while_lstm_426_while_loop_counterlstm_426/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_426/while/IdentityIdentitylstm_426/while/add_1:z:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_1Identity0lstm_426_while_lstm_426_while_maximum_iterations^lstm_426/while/NoOp*
T0*
_output_shapes
: t
lstm_426/while/Identity_2Identitylstm_426/while/add:z:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_3IdentityClstm_426/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_426/while/NoOp*
T0*
_output_shapes
: ?
lstm_426/while/Identity_4Identity&lstm_426/while/lstm_cell_129/mul_2:z:0^lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_426/while/Identity_5Identity&lstm_426/while/lstm_cell_129/add_1:z:0^lstm_426/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_426/while/NoOpNoOp4^lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp3^lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp5^lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_426_while_identity lstm_426/while/Identity:output:0"?
lstm_426_while_identity_1"lstm_426/while/Identity_1:output:0"?
lstm_426_while_identity_2"lstm_426/while/Identity_2:output:0"?
lstm_426_while_identity_3"lstm_426/while/Identity_3:output:0"?
lstm_426_while_identity_4"lstm_426/while/Identity_4:output:0"?
lstm_426_while_identity_5"lstm_426/while/Identity_5:output:0"T
'lstm_426_while_lstm_426_strided_slice_1)lstm_426_while_lstm_426_strided_slice_1_0"~
<lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource>lstm_426_while_lstm_cell_129_biasadd_readvariableop_resource_0"?
=lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource?lstm_426_while_lstm_cell_129_matmul_1_readvariableop_resource_0"|
;lstm_426_while_lstm_cell_129_matmul_readvariableop_resource=lstm_426_while_lstm_cell_129_matmul_readvariableop_resource_0"?
clstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensorelstm_426_while_tensorarrayv2read_tensorlistgetitem_lstm_426_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp3lstm_426/while/lstm_cell_129/BiasAdd/ReadVariableOp2h
2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp2lstm_426/while/lstm_cell_129/MatMul/ReadVariableOp2l
4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp4lstm_426/while/lstm_cell_129/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_793114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793114___redundant_placeholder04
0while_while_cond_793114___redundant_placeholder14
0while_while_cond_793114___redundant_placeholder24
0while_while_cond_793114___redundant_placeholder3
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793101

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
while_cond_796713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796713___redundant_placeholder04
0while_while_cond_796713___redundant_placeholder14
0while_while_cond_796713___redundant_placeholder24
0while_while_cond_796713___redundant_placeholder3
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794909
lstm_426_input"
lstm_426_794882:	?"
lstm_426_794884:	d?
lstm_426_794886:	?"
lstm_427_794889:	d?"
lstm_427_794891:	2?
lstm_427_794893:	?!
lstm_428_794896:2(!
lstm_428_794898:
(
lstm_428_794900:("
dense_142_794903:

dense_142_794905:
identity??!dense_142/StatefulPartitionedCall? lstm_426/StatefulPartitionedCall? lstm_427/StatefulPartitionedCall? lstm_428/StatefulPartitionedCall?
 lstm_426/StatefulPartitionedCallStatefulPartitionedCalllstm_426_inputlstm_426_794882lstm_426_794884lstm_426_794886*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_426_layer_call_and_return_conditional_losses_794729?
 lstm_427/StatefulPartitionedCallStatefulPartitionedCall)lstm_426/StatefulPartitionedCall:output:0lstm_427_794889lstm_427_794891lstm_427_794893*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_427_layer_call_and_return_conditional_losses_794564?
 lstm_428/StatefulPartitionedCallStatefulPartitionedCall)lstm_427/StatefulPartitionedCall:output:0lstm_428_794896lstm_428_794898lstm_428_794900*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_428_layer_call_and_return_conditional_losses_794399?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_428/StatefulPartitionedCall:output:0dense_142_794903dense_142_794905*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_794201y
IdentityIdentity*dense_142/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_142/StatefulPartitionedCall!^lstm_426/StatefulPartitionedCall!^lstm_427/StatefulPartitionedCall!^lstm_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2D
 lstm_426/StatefulPartitionedCall lstm_426/StatefulPartitionedCall2D
 lstm_427/StatefulPartitionedCall lstm_427/StatefulPartitionedCall2D
 lstm_428/StatefulPartitionedCall lstm_428/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_426_input
?"
?
while_body_793656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_131_793680_0:2(.
while_lstm_cell_131_793682_0:
(*
while_lstm_cell_131_793684_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_131_793680:2(,
while_lstm_cell_131_793682:
((
while_lstm_cell_131_793684:(??+while/lstm_cell_131/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_131/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_131_793680_0while_lstm_cell_131_793682_0while_lstm_cell_131_793684_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793597?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_131/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_131/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_131/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_131/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_131_793680while_lstm_cell_131_793680_0":
while_lstm_cell_131_793682while_lstm_cell_131_793682_0":
while_lstm_cell_131_793684while_lstm_cell_131_793684_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_131/StatefulPartitionedCall+while/lstm_cell_131/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797883

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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796039
inputs_0?
,lstm_cell_129_matmul_readvariableop_resource:	?A
.lstm_cell_129_matmul_1_readvariableop_resource:	d?<
-lstm_cell_129_biasadd_readvariableop_resource:	?
identity??$lstm_cell_129/BiasAdd/ReadVariableOp?#lstm_cell_129/MatMul/ReadVariableOp?%lstm_cell_129/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_129/MatMul/ReadVariableOpReadVariableOp,lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_129/MatMulMatMulstrided_slice_2:output:0+lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_129/MatMul_1MatMulzeros:output:0-lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_129/addAddV2lstm_cell_129/MatMul:product:0 lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_129/BiasAddBiasAddlstm_cell_129/add:z:0,lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_129/splitSplit&lstm_cell_129/split/split_dim:output:0lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_129/SigmoidSigmoidlstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_1Sigmoidlstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_129/mulMullstm_cell_129/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_129/ReluRelulstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_1Mullstm_cell_129/Sigmoid:y:0 lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_129/add_1AddV2lstm_cell_129/mul:z:0lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_129/Sigmoid_2Sigmoidlstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_129/Relu_1Relulstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_129/mul_2Mullstm_cell_129/Sigmoid_2:y:0"lstm_cell_129/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_129_matmul_readvariableop_resource.lstm_cell_129_matmul_1_readvariableop_resource-lstm_cell_129_biasadd_readvariableop_resource*
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
bodyR
while_body_795955*
condR
while_cond_795954*K
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
NoOpNoOp%^lstm_cell_129/BiasAdd/ReadVariableOp$^lstm_cell_129/MatMul/ReadVariableOp&^lstm_cell_129/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_129/BiasAdd/ReadVariableOp$lstm_cell_129/BiasAdd/ReadVariableOp2J
#lstm_cell_129/MatMul/ReadVariableOp#lstm_cell_129/MatMul/ReadVariableOp2N
%lstm_cell_129/MatMul_1/ReadVariableOp%lstm_cell_129/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?"
?
while_body_793465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_131_793489_0:2(.
while_lstm_cell_131_793491_0:
(*
while_lstm_cell_131_793493_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_131_793489:2(,
while_lstm_cell_131_793491:
((
while_lstm_cell_131_793493:(??+while/lstm_cell_131/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_131/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_131_793489_0while_lstm_cell_131_793491_0while_lstm_cell_131_793493_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_793451?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_131/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_131/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_131/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_131/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_131_793489while_lstm_cell_131_793489_0":
while_lstm_cell_131_793491while_lstm_cell_131_793491_0":
while_lstm_cell_131_793493while_lstm_cell_131_793493_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_131/StatefulPartitionedCall+while/lstm_cell_131/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_793464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_793464___redundant_placeholder04
0while_while_cond_793464___redundant_placeholder14
0while_while_cond_793464___redundant_placeholder24
0while_while_cond_793464___redundant_placeholder3
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
?"
?
while_body_793115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_130_793139_0:	d?/
while_lstm_cell_130_793141_0:	2?+
while_lstm_cell_130_793143_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_130_793139:	d?-
while_lstm_cell_130_793141:	2?)
while_lstm_cell_130_793143:	???+while/lstm_cell_130/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_130/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_130_793139_0while_lstm_cell_130_793141_0while_lstm_cell_130_793143_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_793101?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_130/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_130/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_130/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_130/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_130_793139while_lstm_cell_130_793139_0":
while_lstm_cell_130_793141while_lstm_cell_130_793141_0":
while_lstm_cell_130_793143while_lstm_cell_130_793143_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_130/StatefulPartitionedCall+while/lstm_cell_130/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_795852

inputsH
5lstm_426_lstm_cell_129_matmul_readvariableop_resource:	?J
7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource:	d?E
6lstm_426_lstm_cell_129_biasadd_readvariableop_resource:	?H
5lstm_427_lstm_cell_130_matmul_readvariableop_resource:	d?J
7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource:	2?E
6lstm_427_lstm_cell_130_biasadd_readvariableop_resource:	?G
5lstm_428_lstm_cell_131_matmul_readvariableop_resource:2(I
7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource:
(D
6lstm_428_lstm_cell_131_biasadd_readvariableop_resource:(:
(dense_142_matmul_readvariableop_resource:
7
)dense_142_biasadd_readvariableop_resource:
identity?? dense_142/BiasAdd/ReadVariableOp?dense_142/MatMul/ReadVariableOp?-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp?,lstm_426/lstm_cell_129/MatMul/ReadVariableOp?.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp?lstm_426/while?-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp?,lstm_427/lstm_cell_130/MatMul/ReadVariableOp?.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp?lstm_427/while?-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp?,lstm_428/lstm_cell_131/MatMul/ReadVariableOp?.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp?lstm_428/whileD
lstm_426/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_sliceStridedSlicelstm_426/Shape:output:0%lstm_426/strided_slice/stack:output:0'lstm_426/strided_slice/stack_1:output:0'lstm_426/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_426/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_426/zeros/packedPacklstm_426/strided_slice:output:0 lstm_426/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_426/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_426/zerosFilllstm_426/zeros/packed:output:0lstm_426/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_426/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_426/zeros_1/packedPacklstm_426/strided_slice:output:0"lstm_426/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_426/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_426/zeros_1Fill lstm_426/zeros_1/packed:output:0lstm_426/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_426/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_426/transpose	Transposeinputs lstm_426/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_426/Shape_1Shapelstm_426/transpose:y:0*
T0*
_output_shapes
:h
lstm_426/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_426/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_1StridedSlicelstm_426/Shape_1:output:0'lstm_426/strided_slice_1/stack:output:0)lstm_426/strided_slice_1/stack_1:output:0)lstm_426/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_426/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_426/TensorArrayV2TensorListReserve-lstm_426/TensorArrayV2/element_shape:output:0!lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_426/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_426/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_426/transpose:y:0Glstm_426/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_426/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_426/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_2StridedSlicelstm_426/transpose:y:0'lstm_426/strided_slice_2/stack:output:0)lstm_426/strided_slice_2/stack_1:output:0)lstm_426/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_426/lstm_cell_129/MatMul/ReadVariableOpReadVariableOp5lstm_426_lstm_cell_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_426/lstm_cell_129/MatMulMatMul!lstm_426/strided_slice_2:output:04lstm_426/lstm_cell_129/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOpReadVariableOp7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_426/lstm_cell_129/MatMul_1MatMullstm_426/zeros:output:06lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_426/lstm_cell_129/addAddV2'lstm_426/lstm_cell_129/MatMul:product:0)lstm_426/lstm_cell_129/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOpReadVariableOp6lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_426/lstm_cell_129/BiasAddBiasAddlstm_426/lstm_cell_129/add:z:05lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_426/lstm_cell_129/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_426/lstm_cell_129/splitSplit/lstm_426/lstm_cell_129/split/split_dim:output:0'lstm_426/lstm_cell_129/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_426/lstm_cell_129/SigmoidSigmoid%lstm_426/lstm_cell_129/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_426/lstm_cell_129/Sigmoid_1Sigmoid%lstm_426/lstm_cell_129/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mulMul$lstm_426/lstm_cell_129/Sigmoid_1:y:0lstm_426/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_426/lstm_cell_129/ReluRelu%lstm_426/lstm_cell_129/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mul_1Mul"lstm_426/lstm_cell_129/Sigmoid:y:0)lstm_426/lstm_cell_129/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/add_1AddV2lstm_426/lstm_cell_129/mul:z:0 lstm_426/lstm_cell_129/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_426/lstm_cell_129/Sigmoid_2Sigmoid%lstm_426/lstm_cell_129/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_426/lstm_cell_129/Relu_1Relu lstm_426/lstm_cell_129/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_426/lstm_cell_129/mul_2Mul$lstm_426/lstm_cell_129/Sigmoid_2:y:0+lstm_426/lstm_cell_129/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_426/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_426/TensorArrayV2_1TensorListReserve/lstm_426/TensorArrayV2_1/element_shape:output:0!lstm_426/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_426/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_426/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_426/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_426/whileWhile$lstm_426/while/loop_counter:output:0*lstm_426/while/maximum_iterations:output:0lstm_426/time:output:0!lstm_426/TensorArrayV2_1:handle:0lstm_426/zeros:output:0lstm_426/zeros_1:output:0!lstm_426/strided_slice_1:output:0@lstm_426/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_426_lstm_cell_129_matmul_readvariableop_resource7lstm_426_lstm_cell_129_matmul_1_readvariableop_resource6lstm_426_lstm_cell_129_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_426_while_body_795484*&
condR
lstm_426_while_cond_795483*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_426/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_426/TensorArrayV2Stack/TensorListStackTensorListStacklstm_426/while:output:3Blstm_426/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_426/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_426/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_426/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_426/strided_slice_3StridedSlice4lstm_426/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_426/strided_slice_3/stack:output:0)lstm_426/strided_slice_3/stack_1:output:0)lstm_426/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_426/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_426/transpose_1	Transpose4lstm_426/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_426/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_426/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_427/ShapeShapelstm_426/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_sliceStridedSlicelstm_427/Shape:output:0%lstm_427/strided_slice/stack:output:0'lstm_427/strided_slice/stack_1:output:0'lstm_427/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_427/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_427/zeros/packedPacklstm_427/strided_slice:output:0 lstm_427/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_427/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_427/zerosFilllstm_427/zeros/packed:output:0lstm_427/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_427/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_427/zeros_1/packedPacklstm_427/strided_slice:output:0"lstm_427/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_427/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_427/zeros_1Fill lstm_427/zeros_1/packed:output:0lstm_427/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_427/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_427/transpose	Transposelstm_426/transpose_1:y:0 lstm_427/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_427/Shape_1Shapelstm_427/transpose:y:0*
T0*
_output_shapes
:h
lstm_427/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_427/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_1StridedSlicelstm_427/Shape_1:output:0'lstm_427/strided_slice_1/stack:output:0)lstm_427/strided_slice_1/stack_1:output:0)lstm_427/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_427/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_427/TensorArrayV2TensorListReserve-lstm_427/TensorArrayV2/element_shape:output:0!lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_427/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_427/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_427/transpose:y:0Glstm_427/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_427/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_427/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_2StridedSlicelstm_427/transpose:y:0'lstm_427/strided_slice_2/stack:output:0)lstm_427/strided_slice_2/stack_1:output:0)lstm_427/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_427/lstm_cell_130/MatMul/ReadVariableOpReadVariableOp5lstm_427_lstm_cell_130_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_427/lstm_cell_130/MatMulMatMul!lstm_427/strided_slice_2:output:04lstm_427/lstm_cell_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOpReadVariableOp7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_427/lstm_cell_130/MatMul_1MatMullstm_427/zeros:output:06lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_427/lstm_cell_130/addAddV2'lstm_427/lstm_cell_130/MatMul:product:0)lstm_427/lstm_cell_130/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOpReadVariableOp6lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_427/lstm_cell_130/BiasAddBiasAddlstm_427/lstm_cell_130/add:z:05lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_427/lstm_cell_130/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_427/lstm_cell_130/splitSplit/lstm_427/lstm_cell_130/split/split_dim:output:0'lstm_427/lstm_cell_130/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_427/lstm_cell_130/SigmoidSigmoid%lstm_427/lstm_cell_130/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_427/lstm_cell_130/Sigmoid_1Sigmoid%lstm_427/lstm_cell_130/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mulMul$lstm_427/lstm_cell_130/Sigmoid_1:y:0lstm_427/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_427/lstm_cell_130/ReluRelu%lstm_427/lstm_cell_130/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mul_1Mul"lstm_427/lstm_cell_130/Sigmoid:y:0)lstm_427/lstm_cell_130/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/add_1AddV2lstm_427/lstm_cell_130/mul:z:0 lstm_427/lstm_cell_130/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_427/lstm_cell_130/Sigmoid_2Sigmoid%lstm_427/lstm_cell_130/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_427/lstm_cell_130/Relu_1Relu lstm_427/lstm_cell_130/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_427/lstm_cell_130/mul_2Mul$lstm_427/lstm_cell_130/Sigmoid_2:y:0+lstm_427/lstm_cell_130/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_427/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_427/TensorArrayV2_1TensorListReserve/lstm_427/TensorArrayV2_1/element_shape:output:0!lstm_427/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_427/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_427/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_427/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_427/whileWhile$lstm_427/while/loop_counter:output:0*lstm_427/while/maximum_iterations:output:0lstm_427/time:output:0!lstm_427/TensorArrayV2_1:handle:0lstm_427/zeros:output:0lstm_427/zeros_1:output:0!lstm_427/strided_slice_1:output:0@lstm_427/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_427_lstm_cell_130_matmul_readvariableop_resource7lstm_427_lstm_cell_130_matmul_1_readvariableop_resource6lstm_427_lstm_cell_130_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_427_while_body_795623*&
condR
lstm_427_while_cond_795622*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_427/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_427/TensorArrayV2Stack/TensorListStackTensorListStacklstm_427/while:output:3Blstm_427/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_427/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_427/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_427/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_427/strided_slice_3StridedSlice4lstm_427/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_427/strided_slice_3/stack:output:0)lstm_427/strided_slice_3/stack_1:output:0)lstm_427/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_427/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_427/transpose_1	Transpose4lstm_427/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_427/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_427/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_428/ShapeShapelstm_427/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_428/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_428/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_428/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_sliceStridedSlicelstm_428/Shape:output:0%lstm_428/strided_slice/stack:output:0'lstm_428/strided_slice/stack_1:output:0'lstm_428/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_428/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_428/zeros/packedPacklstm_428/strided_slice:output:0 lstm_428/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_428/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_428/zerosFilllstm_428/zeros/packed:output:0lstm_428/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_428/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_428/zeros_1/packedPacklstm_428/strided_slice:output:0"lstm_428/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_428/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_428/zeros_1Fill lstm_428/zeros_1/packed:output:0lstm_428/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_428/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_428/transpose	Transposelstm_427/transpose_1:y:0 lstm_428/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_428/Shape_1Shapelstm_428/transpose:y:0*
T0*
_output_shapes
:h
lstm_428/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_428/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_1StridedSlicelstm_428/Shape_1:output:0'lstm_428/strided_slice_1/stack:output:0)lstm_428/strided_slice_1/stack_1:output:0)lstm_428/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_428/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_428/TensorArrayV2TensorListReserve-lstm_428/TensorArrayV2/element_shape:output:0!lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_428/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_428/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_428/transpose:y:0Glstm_428/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_428/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_428/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_2StridedSlicelstm_428/transpose:y:0'lstm_428/strided_slice_2/stack:output:0)lstm_428/strided_slice_2/stack_1:output:0)lstm_428/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_428/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp5lstm_428_lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_428/lstm_cell_131/MatMulMatMul!lstm_428/strided_slice_2:output:04lstm_428/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_428/lstm_cell_131/MatMul_1MatMullstm_428/zeros:output:06lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_428/lstm_cell_131/addAddV2'lstm_428/lstm_cell_131/MatMul:product:0)lstm_428/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp6lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_428/lstm_cell_131/BiasAddBiasAddlstm_428/lstm_cell_131/add:z:05lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_428/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_428/lstm_cell_131/splitSplit/lstm_428/lstm_cell_131/split/split_dim:output:0'lstm_428/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_428/lstm_cell_131/SigmoidSigmoid%lstm_428/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_428/lstm_cell_131/Sigmoid_1Sigmoid%lstm_428/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mulMul$lstm_428/lstm_cell_131/Sigmoid_1:y:0lstm_428/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_428/lstm_cell_131/ReluRelu%lstm_428/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mul_1Mul"lstm_428/lstm_cell_131/Sigmoid:y:0)lstm_428/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/add_1AddV2lstm_428/lstm_cell_131/mul:z:0 lstm_428/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_428/lstm_cell_131/Sigmoid_2Sigmoid%lstm_428/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_428/lstm_cell_131/Relu_1Relu lstm_428/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_428/lstm_cell_131/mul_2Mul$lstm_428/lstm_cell_131/Sigmoid_2:y:0+lstm_428/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_428/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_428/TensorArrayV2_1TensorListReserve/lstm_428/TensorArrayV2_1/element_shape:output:0!lstm_428/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_428/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_428/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_428/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_428/whileWhile$lstm_428/while/loop_counter:output:0*lstm_428/while/maximum_iterations:output:0lstm_428/time:output:0!lstm_428/TensorArrayV2_1:handle:0lstm_428/zeros:output:0lstm_428/zeros_1:output:0!lstm_428/strided_slice_1:output:0@lstm_428/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_428_lstm_cell_131_matmul_readvariableop_resource7lstm_428_lstm_cell_131_matmul_1_readvariableop_resource6lstm_428_lstm_cell_131_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_428_while_body_795762*&
condR
lstm_428_while_cond_795761*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_428/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_428/TensorArrayV2Stack/TensorListStackTensorListStacklstm_428/while:output:3Blstm_428/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_428/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_428/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_428/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_428/strided_slice_3StridedSlice4lstm_428/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_428/strided_slice_3/stack:output:0)lstm_428/strided_slice_3/stack_1:output:0)lstm_428/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_428/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_428/transpose_1	Transpose4lstm_428/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_428/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_428/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_142/MatMulMatMul!lstm_428/strided_slice_3:output:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_142/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp.^lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp-^lstm_426/lstm_cell_129/MatMul/ReadVariableOp/^lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp^lstm_426/while.^lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp-^lstm_427/lstm_cell_130/MatMul/ReadVariableOp/^lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp^lstm_427/while.^lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp-^lstm_428/lstm_cell_131/MatMul/ReadVariableOp/^lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp^lstm_428/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2^
-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp-lstm_426/lstm_cell_129/BiasAdd/ReadVariableOp2\
,lstm_426/lstm_cell_129/MatMul/ReadVariableOp,lstm_426/lstm_cell_129/MatMul/ReadVariableOp2`
.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp.lstm_426/lstm_cell_129/MatMul_1/ReadVariableOp2 
lstm_426/whilelstm_426/while2^
-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp-lstm_427/lstm_cell_130/BiasAdd/ReadVariableOp2\
,lstm_427/lstm_cell_130/MatMul/ReadVariableOp,lstm_427/lstm_cell_130/MatMul/ReadVariableOp2`
.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp.lstm_427/lstm_cell_130/MatMul_1/ReadVariableOp2 
lstm_427/whilelstm_427/while2^
-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp-lstm_428/lstm_cell_131/BiasAdd/ReadVariableOp2\
,lstm_428/lstm_cell_131/MatMul/ReadVariableOp,lstm_428/lstm_cell_131/MatMul/ReadVariableOp2`
.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp.lstm_428/lstm_cell_131/MatMul_1/ReadVariableOp2 
lstm_428/whilelstm_428/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_794315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_131_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_131_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_131_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_131_matmul_readvariableop_resource:2(F
4while_lstm_cell_131_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_131_biasadd_readvariableop_resource:(??*while/lstm_cell_131/BiasAdd/ReadVariableOp?)while/lstm_cell_131/MatMul/ReadVariableOp?+while/lstm_cell_131/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_131/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_131_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_131/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_131_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_131/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_131/addAddV2$while/lstm_cell_131/MatMul:product:0&while/lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_131_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_131/BiasAddBiasAddwhile/lstm_cell_131/add:z:02while/lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_131/splitSplit,while/lstm_cell_131/split/split_dim:output:0$while/lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_131/SigmoidSigmoid"while/lstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_1Sigmoid"while/lstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mulMul!while/lstm_cell_131/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_131/ReluRelu"while/lstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_1Mulwhile/lstm_cell_131/Sigmoid:y:0&while/lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/add_1AddV2while/lstm_cell_131/mul:z:0while/lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_131/Sigmoid_2Sigmoid"while/lstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_131/Relu_1Reluwhile/lstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_131/mul_2Mul!while/lstm_cell_131/Sigmoid_2:y:0(while/lstm_cell_131/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_131/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_131/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_131/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_131/BiasAdd/ReadVariableOp*^while/lstm_cell_131/MatMul/ReadVariableOp,^while/lstm_cell_131/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_131_biasadd_readvariableop_resource5while_lstm_cell_131_biasadd_readvariableop_resource_0"n
4while_lstm_cell_131_matmul_1_readvariableop_resource6while_lstm_cell_131_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_131_matmul_readvariableop_resource4while_lstm_cell_131_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_131/BiasAdd/ReadVariableOp*while/lstm_cell_131/BiasAdd/ReadVariableOp2V
)while/lstm_cell_131/MatMul/ReadVariableOp)while/lstm_cell_131/MatMul/ReadVariableOp2Z
+while/lstm_cell_131/MatMul_1/ReadVariableOp+while/lstm_cell_131/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797271
inputs_0>
,lstm_cell_131_matmul_readvariableop_resource:2(@
.lstm_cell_131_matmul_1_readvariableop_resource:
(;
-lstm_cell_131_biasadd_readvariableop_resource:(
identity??$lstm_cell_131/BiasAdd/ReadVariableOp?#lstm_cell_131/MatMul/ReadVariableOp?%lstm_cell_131/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_131/MatMul/ReadVariableOpReadVariableOp,lstm_cell_131_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_131/MatMulMatMulstrided_slice_2:output:0+lstm_cell_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_131/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_131_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_131/MatMul_1MatMulzeros:output:0-lstm_cell_131/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_131/addAddV2lstm_cell_131/MatMul:product:0 lstm_cell_131/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_131/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_131_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_131/BiasAddBiasAddlstm_cell_131/add:z:0,lstm_cell_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_131/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_131/splitSplit&lstm_cell_131/split/split_dim:output:0lstm_cell_131/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_131/SigmoidSigmoidlstm_cell_131/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_1Sigmoidlstm_cell_131/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_131/mulMullstm_cell_131/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_131/ReluRelulstm_cell_131/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_1Mullstm_cell_131/Sigmoid:y:0 lstm_cell_131/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_131/add_1AddV2lstm_cell_131/mul:z:0lstm_cell_131/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_131/Sigmoid_2Sigmoidlstm_cell_131/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_131/Relu_1Relulstm_cell_131/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_131/mul_2Mullstm_cell_131/Sigmoid_2:y:0"lstm_cell_131/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_131_matmul_readvariableop_resource.lstm_cell_131_matmul_1_readvariableop_resource-lstm_cell_131_biasadd_readvariableop_resource*
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
bodyR
while_body_797187*
condR
while_cond_797186*K
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
NoOpNoOp%^lstm_cell_131/BiasAdd/ReadVariableOp$^lstm_cell_131/MatMul/ReadVariableOp&^lstm_cell_131/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_131/BiasAdd/ReadVariableOp$lstm_cell_131/BiasAdd/ReadVariableOp2J
#lstm_cell_131/MatMul/ReadVariableOp#lstm_cell_131/MatMul/ReadVariableOp2N
%lstm_cell_131/MatMul_1/ReadVariableOp%lstm_cell_131/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_796383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_796383___redundant_placeholder04
0while_while_cond_796383___redundant_placeholder14
0while_while_cond_796383___redundant_placeholder24
0while_while_cond_796383___redundant_placeholder3
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
lstm_426_input;
 serving_default_lstm_426_input:0?????????=
	dense_1420
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
": 
2dense_142/kernel
:2dense_142/bias
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
0:.	?2lstm_426/lstm_cell_426/kernel
::8	d?2'lstm_426/lstm_cell_426/recurrent_kernel
*:(?2lstm_426/lstm_cell_426/bias
0:.	d?2lstm_427/lstm_cell_427/kernel
::8	2?2'lstm_427/lstm_cell_427/recurrent_kernel
*:(?2lstm_427/lstm_cell_427/bias
/:-2(2lstm_428/lstm_cell_428/kernel
9:7
(2'lstm_428/lstm_cell_428/recurrent_kernel
):'(2lstm_428/lstm_cell_428/bias
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
':%
2Adam/dense_142/kernel/m
!:2Adam/dense_142/bias/m
5:3	?2$Adam/lstm_426/lstm_cell_426/kernel/m
?:=	d?2.Adam/lstm_426/lstm_cell_426/recurrent_kernel/m
/:-?2"Adam/lstm_426/lstm_cell_426/bias/m
5:3	d?2$Adam/lstm_427/lstm_cell_427/kernel/m
?:=	2?2.Adam/lstm_427/lstm_cell_427/recurrent_kernel/m
/:-?2"Adam/lstm_427/lstm_cell_427/bias/m
4:22(2$Adam/lstm_428/lstm_cell_428/kernel/m
>:<
(2.Adam/lstm_428/lstm_cell_428/recurrent_kernel/m
.:,(2"Adam/lstm_428/lstm_cell_428/bias/m
':%
2Adam/dense_142/kernel/v
!:2Adam/dense_142/bias/v
5:3	?2$Adam/lstm_426/lstm_cell_426/kernel/v
?:=	d?2.Adam/lstm_426/lstm_cell_426/recurrent_kernel/v
/:-?2"Adam/lstm_426/lstm_cell_426/bias/v
5:3	d?2$Adam/lstm_427/lstm_cell_427/kernel/v
?:=	2?2.Adam/lstm_427/lstm_cell_427/recurrent_kernel/v
/:-?2"Adam/lstm_427/lstm_cell_427/bias/v
4:22(2$Adam/lstm_428/lstm_cell_428/kernel/v
>:<
(2.Adam/lstm_428/lstm_cell_428/recurrent_kernel/v
.:,(2"Adam/lstm_428/lstm_cell_428/bias/v
?2?
/__inference_sequential_142_layer_call_fn_794233
/__inference_sequential_142_layer_call_fn_794971
/__inference_sequential_142_layer_call_fn_794998
/__inference_sequential_142_layer_call_fn_794849?
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_795425
J__inference_sequential_142_layer_call_and_return_conditional_losses_795852
J__inference_sequential_142_layer_call_and_return_conditional_losses_794879
J__inference_sequential_142_layer_call_and_return_conditional_losses_794909?
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
!__inference__wrapped_model_792684lstm_426_input"?
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
)__inference_lstm_426_layer_call_fn_795863
)__inference_lstm_426_layer_call_fn_795874
)__inference_lstm_426_layer_call_fn_795885
)__inference_lstm_426_layer_call_fn_795896?
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796039
D__inference_lstm_426_layer_call_and_return_conditional_losses_796182
D__inference_lstm_426_layer_call_and_return_conditional_losses_796325
D__inference_lstm_426_layer_call_and_return_conditional_losses_796468?
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
)__inference_lstm_427_layer_call_fn_796479
)__inference_lstm_427_layer_call_fn_796490
)__inference_lstm_427_layer_call_fn_796501
)__inference_lstm_427_layer_call_fn_796512?
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_796655
D__inference_lstm_427_layer_call_and_return_conditional_losses_796798
D__inference_lstm_427_layer_call_and_return_conditional_losses_796941
D__inference_lstm_427_layer_call_and_return_conditional_losses_797084?
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
)__inference_lstm_428_layer_call_fn_797095
)__inference_lstm_428_layer_call_fn_797106
)__inference_lstm_428_layer_call_fn_797117
)__inference_lstm_428_layer_call_fn_797128?
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797271
D__inference_lstm_428_layer_call_and_return_conditional_losses_797414
D__inference_lstm_428_layer_call_and_return_conditional_losses_797557
D__inference_lstm_428_layer_call_and_return_conditional_losses_797700?
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
*__inference_dense_142_layer_call_fn_797709?
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
E__inference_dense_142_layer_call_and_return_conditional_losses_797719?
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
$__inference_signature_wrapper_794944lstm_426_input"?
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
.__inference_lstm_cell_129_layer_call_fn_797736
.__inference_lstm_cell_129_layer_call_fn_797753?
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797785
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797817?
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
.__inference_lstm_cell_130_layer_call_fn_797834
.__inference_lstm_cell_130_layer_call_fn_797851?
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797883
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797915?
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
.__inference_lstm_cell_131_layer_call_fn_797932
.__inference_lstm_cell_131_layer_call_fn_797949?
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_797981
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_798013?
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
!__inference__wrapped_model_792684?-./012345!";?8
1?.
,?)
lstm_426_input?????????
? "5?2
0
	dense_142#? 
	dense_142??????????
E__inference_dense_142_layer_call_and_return_conditional_losses_797719\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_142_layer_call_fn_797709O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_426_layer_call_and_return_conditional_losses_796039?-./O?L
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796182?-./O?L
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796325q-./??<
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
D__inference_lstm_426_layer_call_and_return_conditional_losses_796468q-./??<
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
)__inference_lstm_426_layer_call_fn_795863}-./O?L
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
)__inference_lstm_426_layer_call_fn_795874}-./O?L
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
)__inference_lstm_426_layer_call_fn_795885d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_426_layer_call_fn_795896d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_427_layer_call_and_return_conditional_losses_796655?012O?L
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_796798?012O?L
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_796941q012??<
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
D__inference_lstm_427_layer_call_and_return_conditional_losses_797084q012??<
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
)__inference_lstm_427_layer_call_fn_796479}012O?L
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
)__inference_lstm_427_layer_call_fn_796490}012O?L
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
)__inference_lstm_427_layer_call_fn_796501d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_427_layer_call_fn_796512d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_428_layer_call_and_return_conditional_losses_797271}345O?L
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797414}345O?L
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797557m345??<
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
D__inference_lstm_428_layer_call_and_return_conditional_losses_797700m345??<
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
)__inference_lstm_428_layer_call_fn_797095p345O?L
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
)__inference_lstm_428_layer_call_fn_797106p345O?L
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
)__inference_lstm_428_layer_call_fn_797117`345??<
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
)__inference_lstm_428_layer_call_fn_797128`345??<
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797785?-./??}
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
I__inference_lstm_cell_129_layer_call_and_return_conditional_losses_797817?-./??}
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
.__inference_lstm_cell_129_layer_call_fn_797736?-./??}
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
.__inference_lstm_cell_129_layer_call_fn_797753?-./??}
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797883?012??}
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
I__inference_lstm_cell_130_layer_call_and_return_conditional_losses_797915?012??}
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
.__inference_lstm_cell_130_layer_call_fn_797834?012??}
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
.__inference_lstm_cell_130_layer_call_fn_797851?012??}
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_797981?345??}
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
I__inference_lstm_cell_131_layer_call_and_return_conditional_losses_798013?345??}
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
.__inference_lstm_cell_131_layer_call_fn_797932?345??}
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
.__inference_lstm_cell_131_layer_call_fn_797949?345??}
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_794879y-./012345!"C?@
9?6
,?)
lstm_426_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_142_layer_call_and_return_conditional_losses_794909y-./012345!"C?@
9?6
,?)
lstm_426_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_142_layer_call_and_return_conditional_losses_795425q-./012345!";?8
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
J__inference_sequential_142_layer_call_and_return_conditional_losses_795852q-./012345!";?8
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
/__inference_sequential_142_layer_call_fn_794233l-./012345!"C?@
9?6
,?)
lstm_426_input?????????
p 

 
? "???????????
/__inference_sequential_142_layer_call_fn_794849l-./012345!"C?@
9?6
,?)
lstm_426_input?????????
p

 
? "???????????
/__inference_sequential_142_layer_call_fn_794971d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_142_layer_call_fn_794998d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_794944?-./012345!"M?J
? 
C?@
>
lstm_426_input,?)
lstm_426_input?????????"5?2
0
	dense_142#? 
	dense_142?????????