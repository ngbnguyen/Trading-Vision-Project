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
|
dense_252/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_252/kernel
u
$dense_252/kernel/Read/ReadVariableOpReadVariableOpdense_252/kernel*
_output_shapes

:
*
dtype0
t
dense_252/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_252/bias
m
"dense_252/bias/Read/ReadVariableOpReadVariableOpdense_252/bias*
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
lstm_756/lstm_cell_756/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_756/lstm_cell_756/kernel
?
1lstm_756/lstm_cell_756/kernel/Read/ReadVariableOpReadVariableOplstm_756/lstm_cell_756/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_756/lstm_cell_756/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_756/lstm_cell_756/recurrent_kernel
?
;lstm_756/lstm_cell_756/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_756/lstm_cell_756/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_756/lstm_cell_756/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_756/lstm_cell_756/bias
?
/lstm_756/lstm_cell_756/bias/Read/ReadVariableOpReadVariableOplstm_756/lstm_cell_756/bias*
_output_shapes	
:?*
dtype0
?
lstm_757/lstm_cell_757/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_757/lstm_cell_757/kernel
?
1lstm_757/lstm_cell_757/kernel/Read/ReadVariableOpReadVariableOplstm_757/lstm_cell_757/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_757/lstm_cell_757/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_757/lstm_cell_757/recurrent_kernel
?
;lstm_757/lstm_cell_757/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_757/lstm_cell_757/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_757/lstm_cell_757/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_757/lstm_cell_757/bias
?
/lstm_757/lstm_cell_757/bias/Read/ReadVariableOpReadVariableOplstm_757/lstm_cell_757/bias*
_output_shapes	
:?*
dtype0
?
lstm_758/lstm_cell_758/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_758/lstm_cell_758/kernel
?
1lstm_758/lstm_cell_758/kernel/Read/ReadVariableOpReadVariableOplstm_758/lstm_cell_758/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_758/lstm_cell_758/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_758/lstm_cell_758/recurrent_kernel
?
;lstm_758/lstm_cell_758/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_758/lstm_cell_758/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_758/lstm_cell_758/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_758/lstm_cell_758/bias
?
/lstm_758/lstm_cell_758/bias/Read/ReadVariableOpReadVariableOplstm_758/lstm_cell_758/bias*
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
Adam/dense_252/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_252/kernel/m
?
+Adam/dense_252/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_252/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_252/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_252/bias/m
{
)Adam/dense_252/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_252/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_756/lstm_cell_756/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_756/lstm_cell_756/kernel/m
?
8Adam/lstm_756/lstm_cell_756/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_756/lstm_cell_756/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_756/lstm_cell_756/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_756/lstm_cell_756/recurrent_kernel/m
?
BAdam/lstm_756/lstm_cell_756/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_756/lstm_cell_756/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_756/lstm_cell_756/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_756/lstm_cell_756/bias/m
?
6Adam/lstm_756/lstm_cell_756/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_756/lstm_cell_756/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_757/lstm_cell_757/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_757/lstm_cell_757/kernel/m
?
8Adam/lstm_757/lstm_cell_757/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_757/lstm_cell_757/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_757/lstm_cell_757/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_757/lstm_cell_757/recurrent_kernel/m
?
BAdam/lstm_757/lstm_cell_757/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_757/lstm_cell_757/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_757/lstm_cell_757/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_757/lstm_cell_757/bias/m
?
6Adam/lstm_757/lstm_cell_757/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_757/lstm_cell_757/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_758/lstm_cell_758/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_758/lstm_cell_758/kernel/m
?
8Adam/lstm_758/lstm_cell_758/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_758/lstm_cell_758/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_758/lstm_cell_758/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_758/lstm_cell_758/recurrent_kernel/m
?
BAdam/lstm_758/lstm_cell_758/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_758/lstm_cell_758/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_758/lstm_cell_758/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_758/lstm_cell_758/bias/m
?
6Adam/lstm_758/lstm_cell_758/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_758/lstm_cell_758/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_252/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_252/kernel/v
?
+Adam/dense_252/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_252/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_252/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_252/bias/v
{
)Adam/dense_252/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_252/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_756/lstm_cell_756/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_756/lstm_cell_756/kernel/v
?
8Adam/lstm_756/lstm_cell_756/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_756/lstm_cell_756/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_756/lstm_cell_756/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_756/lstm_cell_756/recurrent_kernel/v
?
BAdam/lstm_756/lstm_cell_756/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_756/lstm_cell_756/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_756/lstm_cell_756/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_756/lstm_cell_756/bias/v
?
6Adam/lstm_756/lstm_cell_756/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_756/lstm_cell_756/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_757/lstm_cell_757/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_757/lstm_cell_757/kernel/v
?
8Adam/lstm_757/lstm_cell_757/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_757/lstm_cell_757/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_757/lstm_cell_757/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_757/lstm_cell_757/recurrent_kernel/v
?
BAdam/lstm_757/lstm_cell_757/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_757/lstm_cell_757/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_757/lstm_cell_757/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_757/lstm_cell_757/bias/v
?
6Adam/lstm_757/lstm_cell_757/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_757/lstm_cell_757/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_758/lstm_cell_758/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_758/lstm_cell_758/kernel/v
?
8Adam/lstm_758/lstm_cell_758/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_758/lstm_cell_758/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_758/lstm_cell_758/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_758/lstm_cell_758/recurrent_kernel/v
?
BAdam/lstm_758/lstm_cell_758/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_758/lstm_cell_758/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_758/lstm_cell_758/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_758/lstm_cell_758/bias/v
?
6Adam/lstm_758/lstm_cell_758/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_758/lstm_cell_758/bias/v*
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
VARIABLE_VALUEdense_252/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_252/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_756/lstm_cell_756/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_756/lstm_cell_756/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_756/lstm_cell_756/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_757/lstm_cell_757/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_757/lstm_cell_757/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_757/lstm_cell_757/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_758/lstm_cell_758/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_758/lstm_cell_758/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_758/lstm_cell_758/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_252/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_252/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_756/lstm_cell_756/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_756/lstm_cell_756/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_756/lstm_cell_756/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_757/lstm_cell_757/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_757/lstm_cell_757/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_757/lstm_cell_757/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_758/lstm_cell_758/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_758/lstm_cell_758/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_758/lstm_cell_758/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_252/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_252/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_756/lstm_cell_756/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_756/lstm_cell_756/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_756/lstm_cell_756/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_757/lstm_cell_757/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_757/lstm_cell_757/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_757/lstm_cell_757/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_758/lstm_cell_758/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_758/lstm_cell_758/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_758/lstm_cell_758/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_756_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_756_inputlstm_756/lstm_cell_756/kernel'lstm_756/lstm_cell_756/recurrent_kernellstm_756/lstm_cell_756/biaslstm_757/lstm_cell_757/kernel'lstm_757/lstm_cell_757/recurrent_kernellstm_757/lstm_cell_757/biaslstm_758/lstm_cell_758/kernel'lstm_758/lstm_cell_758/recurrent_kernellstm_758/lstm_cell_758/biasdense_252/kerneldense_252/bias*
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
%__inference_signature_wrapper_3953464
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_252/kernel/Read/ReadVariableOp"dense_252/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_756/lstm_cell_756/kernel/Read/ReadVariableOp;lstm_756/lstm_cell_756/recurrent_kernel/Read/ReadVariableOp/lstm_756/lstm_cell_756/bias/Read/ReadVariableOp1lstm_757/lstm_cell_757/kernel/Read/ReadVariableOp;lstm_757/lstm_cell_757/recurrent_kernel/Read/ReadVariableOp/lstm_757/lstm_cell_757/bias/Read/ReadVariableOp1lstm_758/lstm_cell_758/kernel/Read/ReadVariableOp;lstm_758/lstm_cell_758/recurrent_kernel/Read/ReadVariableOp/lstm_758/lstm_cell_758/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_252/kernel/m/Read/ReadVariableOp)Adam/dense_252/bias/m/Read/ReadVariableOp8Adam/lstm_756/lstm_cell_756/kernel/m/Read/ReadVariableOpBAdam/lstm_756/lstm_cell_756/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_756/lstm_cell_756/bias/m/Read/ReadVariableOp8Adam/lstm_757/lstm_cell_757/kernel/m/Read/ReadVariableOpBAdam/lstm_757/lstm_cell_757/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_757/lstm_cell_757/bias/m/Read/ReadVariableOp8Adam/lstm_758/lstm_cell_758/kernel/m/Read/ReadVariableOpBAdam/lstm_758/lstm_cell_758/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_758/lstm_cell_758/bias/m/Read/ReadVariableOp+Adam/dense_252/kernel/v/Read/ReadVariableOp)Adam/dense_252/bias/v/Read/ReadVariableOp8Adam/lstm_756/lstm_cell_756/kernel/v/Read/ReadVariableOpBAdam/lstm_756/lstm_cell_756/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_756/lstm_cell_756/bias/v/Read/ReadVariableOp8Adam/lstm_757/lstm_cell_757/kernel/v/Read/ReadVariableOpBAdam/lstm_757/lstm_cell_757/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_757/lstm_cell_757/bias/v/Read/ReadVariableOp8Adam/lstm_758/lstm_cell_758/kernel/v/Read/ReadVariableOpBAdam/lstm_758/lstm_cell_758/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_758/lstm_cell_758/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3956676
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_252/kerneldense_252/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_756/lstm_cell_756/kernel'lstm_756/lstm_cell_756/recurrent_kernellstm_756/lstm_cell_756/biaslstm_757/lstm_cell_757/kernel'lstm_757/lstm_cell_757/recurrent_kernellstm_757/lstm_cell_757/biaslstm_758/lstm_cell_758/kernel'lstm_758/lstm_cell_758/recurrent_kernellstm_758/lstm_cell_758/biastotalcountAdam/dense_252/kernel/mAdam/dense_252/bias/m$Adam/lstm_756/lstm_cell_756/kernel/m.Adam/lstm_756/lstm_cell_756/recurrent_kernel/m"Adam/lstm_756/lstm_cell_756/bias/m$Adam/lstm_757/lstm_cell_757/kernel/m.Adam/lstm_757/lstm_cell_757/recurrent_kernel/m"Adam/lstm_757/lstm_cell_757/bias/m$Adam/lstm_758/lstm_cell_758/kernel/m.Adam/lstm_758/lstm_cell_758/recurrent_kernel/m"Adam/lstm_758/lstm_cell_758/bias/mAdam/dense_252/kernel/vAdam/dense_252/bias/v$Adam/lstm_756/lstm_cell_756/kernel/v.Adam/lstm_756/lstm_cell_756/recurrent_kernel/v"Adam/lstm_756/lstm_cell_756/bias/v$Adam/lstm_757/lstm_cell_757/kernel/v.Adam/lstm_757/lstm_cell_757/recurrent_kernel/v"Adam/lstm_757/lstm_cell_757/bias/v$Adam/lstm_758/lstm_cell_758/kernel/v.Adam/lstm_758/lstm_cell_758/recurrent_kernel/v"Adam/lstm_758/lstm_cell_758/bias/v*4
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
#__inference__traced_restore_3956806??+
?
?
while_cond_3955090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955090___redundant_placeholder05
1while_while_cond_3955090___redundant_placeholder15
1while_while_cond_3955090___redundant_placeholder25
1while_while_cond_3955090___redundant_placeholder3
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955461

inputs?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3955377*
condR
while_cond_3955376*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955934
inputs_0>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3955850*
condR
while_cond_3955849*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_757_layer_call_and_return_conditional_losses_3953084

inputs?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3953000*
condR
while_cond_3952999*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3956136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953317

inputs#
lstm_756_3953290:	?#
lstm_756_3953292:	d?
lstm_756_3953294:	?#
lstm_757_3953297:	d?#
lstm_757_3953299:	2?
lstm_757_3953301:	?"
lstm_758_3953304:2("
lstm_758_3953306:
(
lstm_758_3953308:(#
dense_252_3953311:

dense_252_3953313:
identity??!dense_252/StatefulPartitionedCall? lstm_756/StatefulPartitionedCall? lstm_757/StatefulPartitionedCall? lstm_758/StatefulPartitionedCall?
 lstm_756/StatefulPartitionedCallStatefulPartitionedCallinputslstm_756_3953290lstm_756_3953292lstm_756_3953294*
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3953249?
 lstm_757/StatefulPartitionedCallStatefulPartitionedCall)lstm_756/StatefulPartitionedCall:output:0lstm_757_3953297lstm_757_3953299lstm_757_3953301*
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3953084?
 lstm_758/StatefulPartitionedCallStatefulPartitionedCall)lstm_757/StatefulPartitionedCall:output:0lstm_758_3953304lstm_758_3953306lstm_758_3953308*
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952919?
!dense_252/StatefulPartitionedCallStatefulPartitionedCall)lstm_758/StatefulPartitionedCall:output:0dense_252_3953311dense_252_3953313*
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
GPU 2J 8? *O
fJRH
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721y
IdentityIdentity*dense_252/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_252/StatefulPartitionedCall!^lstm_756/StatefulPartitionedCall!^lstm_757/StatefulPartitionedCall!^lstm_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_252/StatefulPartitionedCall!dense_252/StatefulPartitionedCall2D
 lstm_756/StatefulPartitionedCall lstm_756/StatefulPartitionedCall2D
 lstm_757/StatefulPartitionedCall lstm_757/StatefulPartitionedCall2D
 lstm_758/StatefulPartitionedCall lstm_758/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3953165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3952834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952834___redundant_placeholder05
1while_while_cond_3952834___redundant_placeholder15
1while_while_cond_3952834___redundant_placeholder25
1while_while_cond_3952834___redundant_placeholder3
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
while_cond_3951825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3951825___redundant_placeholder05
1while_while_cond_3951825___redundant_placeholder15
1while_while_cond_3951825___redundant_placeholder25
1while_while_cond_3951825___redundant_placeholder3
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
lstm_758_while_cond_3954281.
*lstm_758_while_lstm_758_while_loop_counter4
0lstm_758_while_lstm_758_while_maximum_iterations
lstm_758_while_placeholder 
lstm_758_while_placeholder_1 
lstm_758_while_placeholder_2 
lstm_758_while_placeholder_30
,lstm_758_while_less_lstm_758_strided_slice_1G
Clstm_758_while_lstm_758_while_cond_3954281___redundant_placeholder0G
Clstm_758_while_lstm_758_while_cond_3954281___redundant_placeholder1G
Clstm_758_while_lstm_758_while_cond_3954281___redundant_placeholder2G
Clstm_758_while_lstm_758_while_cond_3954281___redundant_placeholder3
lstm_758_while_identity
?
lstm_758/while/LessLesslstm_758_while_placeholder,lstm_758_while_less_lstm_758_strided_slice_1*
T0*
_output_shapes
: ]
lstm_758/while/IdentityIdentitylstm_758/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_758_while_identity lstm_758/while/Identity:output:0*(
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
%__inference_signature_wrapper_3953464
lstm_756_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_756_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3951204o
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
_user_specified_namelstm_756_input
?

?
lstm_758_while_cond_3953854.
*lstm_758_while_lstm_758_while_loop_counter4
0lstm_758_while_lstm_758_while_maximum_iterations
lstm_758_while_placeholder 
lstm_758_while_placeholder_1 
lstm_758_while_placeholder_2 
lstm_758_while_placeholder_30
,lstm_758_while_less_lstm_758_strided_slice_1G
Clstm_758_while_lstm_758_while_cond_3953854___redundant_placeholder0G
Clstm_758_while_lstm_758_while_cond_3953854___redundant_placeholder1G
Clstm_758_while_lstm_758_while_cond_3953854___redundant_placeholder2G
Clstm_758_while_lstm_758_while_cond_3953854___redundant_placeholder3
lstm_758_while_identity
?
lstm_758/while/LessLesslstm_758_while_placeholder,lstm_758_while_less_lstm_758_strided_slice_1*
T0*
_output_shapes
: ]
lstm_758/while/IdentityIdentitylstm_758/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_758_while_identity lstm_758/while/Identity:output:0*(
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
while_body_3955850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3952318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952318___redundant_placeholder05
1while_while_cond_3952318___redundant_placeholder15
1while_while_cond_3952318___redundant_placeholder25
1while_while_cond_3952318___redundant_placeholder3
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
while_body_3955520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955604

inputs?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3955520*
condR
while_cond_3955519*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_756_layer_call_and_return_conditional_losses_3952403

inputs?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3952319*
condR
while_cond_3952318*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3952468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952468___redundant_placeholder05
1while_while_cond_3952468___redundant_placeholder15
1while_while_cond_3952468___redundant_placeholder25
1while_while_cond_3952468___redundant_placeholder3
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
+__inference_dense_252_layer_call_fn_3956229

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
GPU 2J 8? *O
fJRH
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721o
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
?J
?
E__inference_lstm_756_layer_call_and_return_conditional_losses_3953249

inputs?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3953165*
condR
while_cond_3953164*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3954760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3954760___redundant_placeholder05
1while_while_cond_3954760___redundant_placeholder15
1while_while_cond_3954760___redundant_placeholder25
1while_while_cond_3954760___redundant_placeholder3
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
*__inference_lstm_758_layer_call_fn_3955637

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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952703o
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
while_body_3951635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_652_3951659_0:	d?0
while_lstm_cell_652_3951661_0:	2?,
while_lstm_cell_652_3951663_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_652_3951659:	d?.
while_lstm_cell_652_3951661:	2?*
while_lstm_cell_652_3951663:	???+while/lstm_cell_652/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_652/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_652_3951659_0while_lstm_cell_652_3951661_0while_lstm_cell_652_3951663_0*
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951621?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_652/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_652/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_652/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_652/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_652_3951659while_lstm_cell_652_3951659_0"<
while_lstm_cell_652_3951661while_lstm_cell_652_3951661_0"<
while_lstm_cell_652_3951663while_lstm_cell_652_3951663_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_652/StatefulPartitionedCall+while/lstm_cell_652/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_653_layer_call_fn_3956452

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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3951971o
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
while_body_3951826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_652_3951850_0:	d?0
while_lstm_cell_652_3951852_0:	2?,
while_lstm_cell_652_3951854_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_652_3951850:	d?.
while_lstm_cell_652_3951852:	2?*
while_lstm_cell_652_3951854:	???+while/lstm_cell_652/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_652/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_652_3951850_0while_lstm_cell_652_3951852_0while_lstm_cell_652_3951854_0*
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951767?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_652/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_652/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_652/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_652/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_652_3951850while_lstm_cell_652_3951850_0"<
while_lstm_cell_652_3951852while_lstm_cell_652_3951852_0"<
while_lstm_cell_652_3951854while_lstm_cell_652_3951854_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_652/StatefulPartitionedCall+while/lstm_cell_652/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3951204
lstm_756_inputW
Dsequential_252_lstm_756_lstm_cell_651_matmul_readvariableop_resource:	?Y
Fsequential_252_lstm_756_lstm_cell_651_matmul_1_readvariableop_resource:	d?T
Esequential_252_lstm_756_lstm_cell_651_biasadd_readvariableop_resource:	?W
Dsequential_252_lstm_757_lstm_cell_652_matmul_readvariableop_resource:	d?Y
Fsequential_252_lstm_757_lstm_cell_652_matmul_1_readvariableop_resource:	2?T
Esequential_252_lstm_757_lstm_cell_652_biasadd_readvariableop_resource:	?V
Dsequential_252_lstm_758_lstm_cell_653_matmul_readvariableop_resource:2(X
Fsequential_252_lstm_758_lstm_cell_653_matmul_1_readvariableop_resource:
(S
Esequential_252_lstm_758_lstm_cell_653_biasadd_readvariableop_resource:(I
7sequential_252_dense_252_matmul_readvariableop_resource:
F
8sequential_252_dense_252_biasadd_readvariableop_resource:
identity??/sequential_252/dense_252/BiasAdd/ReadVariableOp?.sequential_252/dense_252/MatMul/ReadVariableOp?<sequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp?;sequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOp?=sequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp?sequential_252/lstm_756/while?<sequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp?;sequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOp?=sequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp?sequential_252/lstm_757/while?<sequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp?;sequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOp?=sequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp?sequential_252/lstm_758/while[
sequential_252/lstm_756/ShapeShapelstm_756_input*
T0*
_output_shapes
:u
+sequential_252/lstm_756/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_252/lstm_756/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_252/lstm_756/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_252/lstm_756/strided_sliceStridedSlice&sequential_252/lstm_756/Shape:output:04sequential_252/lstm_756/strided_slice/stack:output:06sequential_252/lstm_756/strided_slice/stack_1:output:06sequential_252/lstm_756/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_252/lstm_756/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_252/lstm_756/zeros/packedPack.sequential_252/lstm_756/strided_slice:output:0/sequential_252/lstm_756/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_252/lstm_756/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_756/zerosFill-sequential_252/lstm_756/zeros/packed:output:0,sequential_252/lstm_756/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_252/lstm_756/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_252/lstm_756/zeros_1/packedPack.sequential_252/lstm_756/strided_slice:output:01sequential_252/lstm_756/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_252/lstm_756/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_756/zeros_1Fill/sequential_252/lstm_756/zeros_1/packed:output:0.sequential_252/lstm_756/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_252/lstm_756/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_252/lstm_756/transpose	Transposelstm_756_input/sequential_252/lstm_756/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_252/lstm_756/Shape_1Shape%sequential_252/lstm_756/transpose:y:0*
T0*
_output_shapes
:w
-sequential_252/lstm_756/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_756/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_756/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_756/strided_slice_1StridedSlice(sequential_252/lstm_756/Shape_1:output:06sequential_252/lstm_756/strided_slice_1/stack:output:08sequential_252/lstm_756/strided_slice_1/stack_1:output:08sequential_252/lstm_756/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_252/lstm_756/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_252/lstm_756/TensorArrayV2TensorListReserve<sequential_252/lstm_756/TensorArrayV2/element_shape:output:00sequential_252/lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_252/lstm_756/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_252/lstm_756/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_252/lstm_756/transpose:y:0Vsequential_252/lstm_756/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_252/lstm_756/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_756/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_756/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_756/strided_slice_2StridedSlice%sequential_252/lstm_756/transpose:y:06sequential_252/lstm_756/strided_slice_2/stack:output:08sequential_252/lstm_756/strided_slice_2/stack_1:output:08sequential_252/lstm_756/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOpReadVariableOpDsequential_252_lstm_756_lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_252/lstm_756/lstm_cell_651/MatMulMatMul0sequential_252/lstm_756/strided_slice_2:output:0Csequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOpFsequential_252_lstm_756_lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_252/lstm_756/lstm_cell_651/MatMul_1MatMul&sequential_252/lstm_756/zeros:output:0Esequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_252/lstm_756/lstm_cell_651/addAddV26sequential_252/lstm_756/lstm_cell_651/MatMul:product:08sequential_252/lstm_756/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOpEsequential_252_lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_252/lstm_756/lstm_cell_651/BiasAddBiasAdd-sequential_252/lstm_756/lstm_cell_651/add:z:0Dsequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_252/lstm_756/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_252/lstm_756/lstm_cell_651/splitSplit>sequential_252/lstm_756/lstm_cell_651/split/split_dim:output:06sequential_252/lstm_756/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_252/lstm_756/lstm_cell_651/SigmoidSigmoid4sequential_252/lstm_756/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_252/lstm_756/lstm_cell_651/Sigmoid_1Sigmoid4sequential_252/lstm_756/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_252/lstm_756/lstm_cell_651/mulMul3sequential_252/lstm_756/lstm_cell_651/Sigmoid_1:y:0(sequential_252/lstm_756/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_252/lstm_756/lstm_cell_651/ReluRelu4sequential_252/lstm_756/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_252/lstm_756/lstm_cell_651/mul_1Mul1sequential_252/lstm_756/lstm_cell_651/Sigmoid:y:08sequential_252/lstm_756/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_252/lstm_756/lstm_cell_651/add_1AddV2-sequential_252/lstm_756/lstm_cell_651/mul:z:0/sequential_252/lstm_756/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_252/lstm_756/lstm_cell_651/Sigmoid_2Sigmoid4sequential_252/lstm_756/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_252/lstm_756/lstm_cell_651/Relu_1Relu/sequential_252/lstm_756/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_252/lstm_756/lstm_cell_651/mul_2Mul3sequential_252/lstm_756/lstm_cell_651/Sigmoid_2:y:0:sequential_252/lstm_756/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_252/lstm_756/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_252/lstm_756/TensorArrayV2_1TensorListReserve>sequential_252/lstm_756/TensorArrayV2_1/element_shape:output:00sequential_252/lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_252/lstm_756/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_252/lstm_756/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_252/lstm_756/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_252/lstm_756/whileWhile3sequential_252/lstm_756/while/loop_counter:output:09sequential_252/lstm_756/while/maximum_iterations:output:0%sequential_252/lstm_756/time:output:00sequential_252/lstm_756/TensorArrayV2_1:handle:0&sequential_252/lstm_756/zeros:output:0(sequential_252/lstm_756/zeros_1:output:00sequential_252/lstm_756/strided_slice_1:output:0Osequential_252/lstm_756/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_252_lstm_756_lstm_cell_651_matmul_readvariableop_resourceFsequential_252_lstm_756_lstm_cell_651_matmul_1_readvariableop_resourceEsequential_252_lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_252_lstm_756_while_body_3950836*6
cond.R,
*sequential_252_lstm_756_while_cond_3950835*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_252/lstm_756/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_252/lstm_756/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_252/lstm_756/while:output:3Qsequential_252/lstm_756/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_252/lstm_756/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_252/lstm_756/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_756/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_756/strided_slice_3StridedSliceCsequential_252/lstm_756/TensorArrayV2Stack/TensorListStack:tensor:06sequential_252/lstm_756/strided_slice_3/stack:output:08sequential_252/lstm_756/strided_slice_3/stack_1:output:08sequential_252/lstm_756/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_252/lstm_756/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_252/lstm_756/transpose_1	TransposeCsequential_252/lstm_756/TensorArrayV2Stack/TensorListStack:tensor:01sequential_252/lstm_756/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_252/lstm_756/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_252/lstm_757/ShapeShape'sequential_252/lstm_756/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_252/lstm_757/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_252/lstm_757/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_252/lstm_757/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_252/lstm_757/strided_sliceStridedSlice&sequential_252/lstm_757/Shape:output:04sequential_252/lstm_757/strided_slice/stack:output:06sequential_252/lstm_757/strided_slice/stack_1:output:06sequential_252/lstm_757/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_252/lstm_757/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_252/lstm_757/zeros/packedPack.sequential_252/lstm_757/strided_slice:output:0/sequential_252/lstm_757/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_252/lstm_757/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_757/zerosFill-sequential_252/lstm_757/zeros/packed:output:0,sequential_252/lstm_757/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_252/lstm_757/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_252/lstm_757/zeros_1/packedPack.sequential_252/lstm_757/strided_slice:output:01sequential_252/lstm_757/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_252/lstm_757/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_757/zeros_1Fill/sequential_252/lstm_757/zeros_1/packed:output:0.sequential_252/lstm_757/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_252/lstm_757/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_252/lstm_757/transpose	Transpose'sequential_252/lstm_756/transpose_1:y:0/sequential_252/lstm_757/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_252/lstm_757/Shape_1Shape%sequential_252/lstm_757/transpose:y:0*
T0*
_output_shapes
:w
-sequential_252/lstm_757/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_757/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_757/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_757/strided_slice_1StridedSlice(sequential_252/lstm_757/Shape_1:output:06sequential_252/lstm_757/strided_slice_1/stack:output:08sequential_252/lstm_757/strided_slice_1/stack_1:output:08sequential_252/lstm_757/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_252/lstm_757/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_252/lstm_757/TensorArrayV2TensorListReserve<sequential_252/lstm_757/TensorArrayV2/element_shape:output:00sequential_252/lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_252/lstm_757/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_252/lstm_757/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_252/lstm_757/transpose:y:0Vsequential_252/lstm_757/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_252/lstm_757/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_757/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_757/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_757/strided_slice_2StridedSlice%sequential_252/lstm_757/transpose:y:06sequential_252/lstm_757/strided_slice_2/stack:output:08sequential_252/lstm_757/strided_slice_2/stack_1:output:08sequential_252/lstm_757/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOpReadVariableOpDsequential_252_lstm_757_lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_252/lstm_757/lstm_cell_652/MatMulMatMul0sequential_252/lstm_757/strided_slice_2:output:0Csequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOpFsequential_252_lstm_757_lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_252/lstm_757/lstm_cell_652/MatMul_1MatMul&sequential_252/lstm_757/zeros:output:0Esequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_252/lstm_757/lstm_cell_652/addAddV26sequential_252/lstm_757/lstm_cell_652/MatMul:product:08sequential_252/lstm_757/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOpEsequential_252_lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_252/lstm_757/lstm_cell_652/BiasAddBiasAdd-sequential_252/lstm_757/lstm_cell_652/add:z:0Dsequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_252/lstm_757/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_252/lstm_757/lstm_cell_652/splitSplit>sequential_252/lstm_757/lstm_cell_652/split/split_dim:output:06sequential_252/lstm_757/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_252/lstm_757/lstm_cell_652/SigmoidSigmoid4sequential_252/lstm_757/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_252/lstm_757/lstm_cell_652/Sigmoid_1Sigmoid4sequential_252/lstm_757/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_252/lstm_757/lstm_cell_652/mulMul3sequential_252/lstm_757/lstm_cell_652/Sigmoid_1:y:0(sequential_252/lstm_757/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_252/lstm_757/lstm_cell_652/ReluRelu4sequential_252/lstm_757/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_252/lstm_757/lstm_cell_652/mul_1Mul1sequential_252/lstm_757/lstm_cell_652/Sigmoid:y:08sequential_252/lstm_757/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_252/lstm_757/lstm_cell_652/add_1AddV2-sequential_252/lstm_757/lstm_cell_652/mul:z:0/sequential_252/lstm_757/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_252/lstm_757/lstm_cell_652/Sigmoid_2Sigmoid4sequential_252/lstm_757/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_252/lstm_757/lstm_cell_652/Relu_1Relu/sequential_252/lstm_757/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_252/lstm_757/lstm_cell_652/mul_2Mul3sequential_252/lstm_757/lstm_cell_652/Sigmoid_2:y:0:sequential_252/lstm_757/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_252/lstm_757/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_252/lstm_757/TensorArrayV2_1TensorListReserve>sequential_252/lstm_757/TensorArrayV2_1/element_shape:output:00sequential_252/lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_252/lstm_757/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_252/lstm_757/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_252/lstm_757/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_252/lstm_757/whileWhile3sequential_252/lstm_757/while/loop_counter:output:09sequential_252/lstm_757/while/maximum_iterations:output:0%sequential_252/lstm_757/time:output:00sequential_252/lstm_757/TensorArrayV2_1:handle:0&sequential_252/lstm_757/zeros:output:0(sequential_252/lstm_757/zeros_1:output:00sequential_252/lstm_757/strided_slice_1:output:0Osequential_252/lstm_757/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_252_lstm_757_lstm_cell_652_matmul_readvariableop_resourceFsequential_252_lstm_757_lstm_cell_652_matmul_1_readvariableop_resourceEsequential_252_lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_252_lstm_757_while_body_3950975*6
cond.R,
*sequential_252_lstm_757_while_cond_3950974*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_252/lstm_757/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_252/lstm_757/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_252/lstm_757/while:output:3Qsequential_252/lstm_757/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_252/lstm_757/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_252/lstm_757/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_757/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_757/strided_slice_3StridedSliceCsequential_252/lstm_757/TensorArrayV2Stack/TensorListStack:tensor:06sequential_252/lstm_757/strided_slice_3/stack:output:08sequential_252/lstm_757/strided_slice_3/stack_1:output:08sequential_252/lstm_757/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_252/lstm_757/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_252/lstm_757/transpose_1	TransposeCsequential_252/lstm_757/TensorArrayV2Stack/TensorListStack:tensor:01sequential_252/lstm_757/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_252/lstm_757/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_252/lstm_758/ShapeShape'sequential_252/lstm_757/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_252/lstm_758/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_252/lstm_758/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_252/lstm_758/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_252/lstm_758/strided_sliceStridedSlice&sequential_252/lstm_758/Shape:output:04sequential_252/lstm_758/strided_slice/stack:output:06sequential_252/lstm_758/strided_slice/stack_1:output:06sequential_252/lstm_758/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_252/lstm_758/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_252/lstm_758/zeros/packedPack.sequential_252/lstm_758/strided_slice:output:0/sequential_252/lstm_758/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_252/lstm_758/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_758/zerosFill-sequential_252/lstm_758/zeros/packed:output:0,sequential_252/lstm_758/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_252/lstm_758/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_252/lstm_758/zeros_1/packedPack.sequential_252/lstm_758/strided_slice:output:01sequential_252/lstm_758/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_252/lstm_758/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_252/lstm_758/zeros_1Fill/sequential_252/lstm_758/zeros_1/packed:output:0.sequential_252/lstm_758/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_252/lstm_758/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_252/lstm_758/transpose	Transpose'sequential_252/lstm_757/transpose_1:y:0/sequential_252/lstm_758/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_252/lstm_758/Shape_1Shape%sequential_252/lstm_758/transpose:y:0*
T0*
_output_shapes
:w
-sequential_252/lstm_758/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_758/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_758/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_758/strided_slice_1StridedSlice(sequential_252/lstm_758/Shape_1:output:06sequential_252/lstm_758/strided_slice_1/stack:output:08sequential_252/lstm_758/strided_slice_1/stack_1:output:08sequential_252/lstm_758/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_252/lstm_758/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_252/lstm_758/TensorArrayV2TensorListReserve<sequential_252/lstm_758/TensorArrayV2/element_shape:output:00sequential_252/lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_252/lstm_758/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_252/lstm_758/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_252/lstm_758/transpose:y:0Vsequential_252/lstm_758/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_252/lstm_758/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_758/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_252/lstm_758/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_758/strided_slice_2StridedSlice%sequential_252/lstm_758/transpose:y:06sequential_252/lstm_758/strided_slice_2/stack:output:08sequential_252/lstm_758/strided_slice_2/stack_1:output:08sequential_252/lstm_758/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOpReadVariableOpDsequential_252_lstm_758_lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_252/lstm_758/lstm_cell_653/MatMulMatMul0sequential_252/lstm_758/strided_slice_2:output:0Csequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOpFsequential_252_lstm_758_lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_252/lstm_758/lstm_cell_653/MatMul_1MatMul&sequential_252/lstm_758/zeros:output:0Esequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_252/lstm_758/lstm_cell_653/addAddV26sequential_252/lstm_758/lstm_cell_653/MatMul:product:08sequential_252/lstm_758/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOpEsequential_252_lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_252/lstm_758/lstm_cell_653/BiasAddBiasAdd-sequential_252/lstm_758/lstm_cell_653/add:z:0Dsequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_252/lstm_758/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_252/lstm_758/lstm_cell_653/splitSplit>sequential_252/lstm_758/lstm_cell_653/split/split_dim:output:06sequential_252/lstm_758/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_252/lstm_758/lstm_cell_653/SigmoidSigmoid4sequential_252/lstm_758/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_252/lstm_758/lstm_cell_653/Sigmoid_1Sigmoid4sequential_252/lstm_758/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_252/lstm_758/lstm_cell_653/mulMul3sequential_252/lstm_758/lstm_cell_653/Sigmoid_1:y:0(sequential_252/lstm_758/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_252/lstm_758/lstm_cell_653/ReluRelu4sequential_252/lstm_758/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_252/lstm_758/lstm_cell_653/mul_1Mul1sequential_252/lstm_758/lstm_cell_653/Sigmoid:y:08sequential_252/lstm_758/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_252/lstm_758/lstm_cell_653/add_1AddV2-sequential_252/lstm_758/lstm_cell_653/mul:z:0/sequential_252/lstm_758/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_252/lstm_758/lstm_cell_653/Sigmoid_2Sigmoid4sequential_252/lstm_758/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_252/lstm_758/lstm_cell_653/Relu_1Relu/sequential_252/lstm_758/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_252/lstm_758/lstm_cell_653/mul_2Mul3sequential_252/lstm_758/lstm_cell_653/Sigmoid_2:y:0:sequential_252/lstm_758/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_252/lstm_758/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_252/lstm_758/TensorArrayV2_1TensorListReserve>sequential_252/lstm_758/TensorArrayV2_1/element_shape:output:00sequential_252/lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_252/lstm_758/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_252/lstm_758/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_252/lstm_758/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_252/lstm_758/whileWhile3sequential_252/lstm_758/while/loop_counter:output:09sequential_252/lstm_758/while/maximum_iterations:output:0%sequential_252/lstm_758/time:output:00sequential_252/lstm_758/TensorArrayV2_1:handle:0&sequential_252/lstm_758/zeros:output:0(sequential_252/lstm_758/zeros_1:output:00sequential_252/lstm_758/strided_slice_1:output:0Osequential_252/lstm_758/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_252_lstm_758_lstm_cell_653_matmul_readvariableop_resourceFsequential_252_lstm_758_lstm_cell_653_matmul_1_readvariableop_resourceEsequential_252_lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_252_lstm_758_while_body_3951114*6
cond.R,
*sequential_252_lstm_758_while_cond_3951113*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_252/lstm_758/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_252/lstm_758/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_252/lstm_758/while:output:3Qsequential_252/lstm_758/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_252/lstm_758/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_252/lstm_758/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_252/lstm_758/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_252/lstm_758/strided_slice_3StridedSliceCsequential_252/lstm_758/TensorArrayV2Stack/TensorListStack:tensor:06sequential_252/lstm_758/strided_slice_3/stack:output:08sequential_252/lstm_758/strided_slice_3/stack_1:output:08sequential_252/lstm_758/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_252/lstm_758/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_252/lstm_758/transpose_1	TransposeCsequential_252/lstm_758/TensorArrayV2Stack/TensorListStack:tensor:01sequential_252/lstm_758/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_252/lstm_758/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_252/dense_252/MatMul/ReadVariableOpReadVariableOp7sequential_252_dense_252_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_252/dense_252/MatMulMatMul0sequential_252/lstm_758/strided_slice_3:output:06sequential_252/dense_252/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_252/dense_252/BiasAdd/ReadVariableOpReadVariableOp8sequential_252_dense_252_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_252/dense_252/BiasAddBiasAdd)sequential_252/dense_252/MatMul:product:07sequential_252/dense_252/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_252/dense_252/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_252/dense_252/BiasAdd/ReadVariableOp/^sequential_252/dense_252/MatMul/ReadVariableOp=^sequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp<^sequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOp>^sequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp^sequential_252/lstm_756/while=^sequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp<^sequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOp>^sequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp^sequential_252/lstm_757/while=^sequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp<^sequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOp>^sequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp^sequential_252/lstm_758/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_252/dense_252/BiasAdd/ReadVariableOp/sequential_252/dense_252/BiasAdd/ReadVariableOp2`
.sequential_252/dense_252/MatMul/ReadVariableOp.sequential_252/dense_252/MatMul/ReadVariableOp2|
<sequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp<sequential_252/lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp2z
;sequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOp;sequential_252/lstm_756/lstm_cell_651/MatMul/ReadVariableOp2~
=sequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp=sequential_252/lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp2>
sequential_252/lstm_756/whilesequential_252/lstm_756/while2|
<sequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp<sequential_252/lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp2z
;sequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOp;sequential_252/lstm_757/lstm_cell_652/MatMul/ReadVariableOp2~
=sequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp=sequential_252/lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp2>
sequential_252/lstm_757/whilesequential_252/lstm_757/while2|
<sequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp<sequential_252/lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp2z
;sequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOp;sequential_252/lstm_758/lstm_cell_653/MatMul/ReadVariableOp2~
=sequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp=sequential_252/lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp2>
sequential_252/lstm_758/whilesequential_252/lstm_758/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_756_input
?J
?
E__inference_lstm_757_layer_call_and_return_conditional_losses_3952553

inputs?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3952469*
condR
while_cond_3952468*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_252_lstm_758_while_cond_3951113L
Hsequential_252_lstm_758_while_sequential_252_lstm_758_while_loop_counterR
Nsequential_252_lstm_758_while_sequential_252_lstm_758_while_maximum_iterations-
)sequential_252_lstm_758_while_placeholder/
+sequential_252_lstm_758_while_placeholder_1/
+sequential_252_lstm_758_while_placeholder_2/
+sequential_252_lstm_758_while_placeholder_3N
Jsequential_252_lstm_758_while_less_sequential_252_lstm_758_strided_slice_1e
asequential_252_lstm_758_while_sequential_252_lstm_758_while_cond_3951113___redundant_placeholder0e
asequential_252_lstm_758_while_sequential_252_lstm_758_while_cond_3951113___redundant_placeholder1e
asequential_252_lstm_758_while_sequential_252_lstm_758_while_cond_3951113___redundant_placeholder2e
asequential_252_lstm_758_while_sequential_252_lstm_758_while_cond_3951113___redundant_placeholder3*
&sequential_252_lstm_758_while_identity
?
"sequential_252/lstm_758/while/LessLess)sequential_252_lstm_758_while_placeholderJsequential_252_lstm_758_while_less_sequential_252_lstm_758_strided_slice_1*
T0*
_output_shapes
: {
&sequential_252/lstm_758/while/IdentityIdentity&sequential_252/lstm_758/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_252_lstm_758_while_identity/sequential_252/lstm_758/while/Identity:output:0*(
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952919

inputs>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3952835*
condR
while_cond_3952834*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_252_lstm_757_while_body_3950975L
Hsequential_252_lstm_757_while_sequential_252_lstm_757_while_loop_counterR
Nsequential_252_lstm_757_while_sequential_252_lstm_757_while_maximum_iterations-
)sequential_252_lstm_757_while_placeholder/
+sequential_252_lstm_757_while_placeholder_1/
+sequential_252_lstm_757_while_placeholder_2/
+sequential_252_lstm_757_while_placeholder_3K
Gsequential_252_lstm_757_while_sequential_252_lstm_757_strided_slice_1_0?
?sequential_252_lstm_757_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_757_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_252_lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0:	d?a
Nsequential_252_lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?\
Msequential_252_lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0:	?*
&sequential_252_lstm_757_while_identity,
(sequential_252_lstm_757_while_identity_1,
(sequential_252_lstm_757_while_identity_2,
(sequential_252_lstm_757_while_identity_3,
(sequential_252_lstm_757_while_identity_4,
(sequential_252_lstm_757_while_identity_5I
Esequential_252_lstm_757_while_sequential_252_lstm_757_strided_slice_1?
?sequential_252_lstm_757_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_757_tensorarrayunstack_tensorlistfromtensor]
Jsequential_252_lstm_757_while_lstm_cell_652_matmul_readvariableop_resource:	d?_
Lsequential_252_lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource:	2?Z
Ksequential_252_lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource:	???Bsequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp?Asequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp?Csequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp?
Osequential_252/lstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_252/lstm_757/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_252_lstm_757_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_757_tensorarrayunstack_tensorlistfromtensor_0)sequential_252_lstm_757_while_placeholderXsequential_252/lstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOpLsequential_252_lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_252/lstm_757/while/lstm_cell_652/MatMulMatMulHsequential_252/lstm_757/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOpNsequential_252_lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_252/lstm_757/while/lstm_cell_652/MatMul_1MatMul+sequential_252_lstm_757_while_placeholder_2Ksequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_252/lstm_757/while/lstm_cell_652/addAddV2<sequential_252/lstm_757/while/lstm_cell_652/MatMul:product:0>sequential_252/lstm_757/while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOpMsequential_252_lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_252/lstm_757/while/lstm_cell_652/BiasAddBiasAdd3sequential_252/lstm_757/while/lstm_cell_652/add:z:0Jsequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_252/lstm_757/while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_252/lstm_757/while/lstm_cell_652/splitSplitDsequential_252/lstm_757/while/lstm_cell_652/split/split_dim:output:0<sequential_252/lstm_757/while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_252/lstm_757/while/lstm_cell_652/SigmoidSigmoid:sequential_252/lstm_757/while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_252/lstm_757/while/lstm_cell_652/Sigmoid_1Sigmoid:sequential_252/lstm_757/while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_252/lstm_757/while/lstm_cell_652/mulMul9sequential_252/lstm_757/while/lstm_cell_652/Sigmoid_1:y:0+sequential_252_lstm_757_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_252/lstm_757/while/lstm_cell_652/ReluRelu:sequential_252/lstm_757/while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_252/lstm_757/while/lstm_cell_652/mul_1Mul7sequential_252/lstm_757/while/lstm_cell_652/Sigmoid:y:0>sequential_252/lstm_757/while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_252/lstm_757/while/lstm_cell_652/add_1AddV23sequential_252/lstm_757/while/lstm_cell_652/mul:z:05sequential_252/lstm_757/while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_252/lstm_757/while/lstm_cell_652/Sigmoid_2Sigmoid:sequential_252/lstm_757/while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_252/lstm_757/while/lstm_cell_652/Relu_1Relu5sequential_252/lstm_757/while/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_252/lstm_757/while/lstm_cell_652/mul_2Mul9sequential_252/lstm_757/while/lstm_cell_652/Sigmoid_2:y:0@sequential_252/lstm_757/while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_252/lstm_757/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_252_lstm_757_while_placeholder_1)sequential_252_lstm_757_while_placeholder5sequential_252/lstm_757/while/lstm_cell_652/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_252/lstm_757/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_252/lstm_757/while/addAddV2)sequential_252_lstm_757_while_placeholder,sequential_252/lstm_757/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_252/lstm_757/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_252/lstm_757/while/add_1AddV2Hsequential_252_lstm_757_while_sequential_252_lstm_757_while_loop_counter.sequential_252/lstm_757/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_252/lstm_757/while/IdentityIdentity'sequential_252/lstm_757/while/add_1:z:0#^sequential_252/lstm_757/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_757/while/Identity_1IdentityNsequential_252_lstm_757_while_sequential_252_lstm_757_while_maximum_iterations#^sequential_252/lstm_757/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_757/while/Identity_2Identity%sequential_252/lstm_757/while/add:z:0#^sequential_252/lstm_757/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_757/while/Identity_3IdentityRsequential_252/lstm_757/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_252/lstm_757/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_757/while/Identity_4Identity5sequential_252/lstm_757/while/lstm_cell_652/mul_2:z:0#^sequential_252/lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_252/lstm_757/while/Identity_5Identity5sequential_252/lstm_757/while/lstm_cell_652/add_1:z:0#^sequential_252/lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_252/lstm_757/while/NoOpNoOpC^sequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOpB^sequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOpD^sequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_252_lstm_757_while_identity/sequential_252/lstm_757/while/Identity:output:0"]
(sequential_252_lstm_757_while_identity_11sequential_252/lstm_757/while/Identity_1:output:0"]
(sequential_252_lstm_757_while_identity_21sequential_252/lstm_757/while/Identity_2:output:0"]
(sequential_252_lstm_757_while_identity_31sequential_252/lstm_757/while/Identity_3:output:0"]
(sequential_252_lstm_757_while_identity_41sequential_252/lstm_757/while/Identity_4:output:0"]
(sequential_252_lstm_757_while_identity_51sequential_252/lstm_757/while/Identity_5:output:0"?
Ksequential_252_lstm_757_while_lstm_cell_652_biasadd_readvariableop_resourceMsequential_252_lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0"?
Lsequential_252_lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resourceNsequential_252_lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0"?
Jsequential_252_lstm_757_while_lstm_cell_652_matmul_readvariableop_resourceLsequential_252_lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0"?
Esequential_252_lstm_757_while_sequential_252_lstm_757_strided_slice_1Gsequential_252_lstm_757_while_sequential_252_lstm_757_strided_slice_1_0"?
?sequential_252_lstm_757_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_757_tensorarrayunstack_tensorlistfromtensor?sequential_252_lstm_757_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_757_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOpBsequential_252/lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp2?
Asequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOpAsequential_252/lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp2?
Csequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOpCsequential_252/lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3953164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3953164___redundant_placeholder05
1while_while_cond_3953164___redundant_placeholder15
1while_while_cond_3953164___redundant_placeholder25
1while_while_cond_3953164___redundant_placeholder3
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
?W
?
 __inference__traced_save_3956676
file_prefix/
+savev2_dense_252_kernel_read_readvariableop-
)savev2_dense_252_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_756_lstm_cell_756_kernel_read_readvariableopF
Bsavev2_lstm_756_lstm_cell_756_recurrent_kernel_read_readvariableop:
6savev2_lstm_756_lstm_cell_756_bias_read_readvariableop<
8savev2_lstm_757_lstm_cell_757_kernel_read_readvariableopF
Bsavev2_lstm_757_lstm_cell_757_recurrent_kernel_read_readvariableop:
6savev2_lstm_757_lstm_cell_757_bias_read_readvariableop<
8savev2_lstm_758_lstm_cell_758_kernel_read_readvariableopF
Bsavev2_lstm_758_lstm_cell_758_recurrent_kernel_read_readvariableop:
6savev2_lstm_758_lstm_cell_758_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_252_kernel_m_read_readvariableop4
0savev2_adam_dense_252_bias_m_read_readvariableopC
?savev2_adam_lstm_756_lstm_cell_756_kernel_m_read_readvariableopM
Isavev2_adam_lstm_756_lstm_cell_756_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_756_lstm_cell_756_bias_m_read_readvariableopC
?savev2_adam_lstm_757_lstm_cell_757_kernel_m_read_readvariableopM
Isavev2_adam_lstm_757_lstm_cell_757_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_757_lstm_cell_757_bias_m_read_readvariableopC
?savev2_adam_lstm_758_lstm_cell_758_kernel_m_read_readvariableopM
Isavev2_adam_lstm_758_lstm_cell_758_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_758_lstm_cell_758_bias_m_read_readvariableop6
2savev2_adam_dense_252_kernel_v_read_readvariableop4
0savev2_adam_dense_252_bias_v_read_readvariableopC
?savev2_adam_lstm_756_lstm_cell_756_kernel_v_read_readvariableopM
Isavev2_adam_lstm_756_lstm_cell_756_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_756_lstm_cell_756_bias_v_read_readvariableopC
?savev2_adam_lstm_757_lstm_cell_757_kernel_v_read_readvariableopM
Isavev2_adam_lstm_757_lstm_cell_757_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_757_lstm_cell_757_bias_v_read_readvariableopC
?savev2_adam_lstm_758_lstm_cell_758_kernel_v_read_readvariableopM
Isavev2_adam_lstm_758_lstm_cell_758_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_758_lstm_cell_758_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_252_kernel_read_readvariableop)savev2_dense_252_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_756_lstm_cell_756_kernel_read_readvariableopBsavev2_lstm_756_lstm_cell_756_recurrent_kernel_read_readvariableop6savev2_lstm_756_lstm_cell_756_bias_read_readvariableop8savev2_lstm_757_lstm_cell_757_kernel_read_readvariableopBsavev2_lstm_757_lstm_cell_757_recurrent_kernel_read_readvariableop6savev2_lstm_757_lstm_cell_757_bias_read_readvariableop8savev2_lstm_758_lstm_cell_758_kernel_read_readvariableopBsavev2_lstm_758_lstm_cell_758_recurrent_kernel_read_readvariableop6savev2_lstm_758_lstm_cell_758_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_252_kernel_m_read_readvariableop0savev2_adam_dense_252_bias_m_read_readvariableop?savev2_adam_lstm_756_lstm_cell_756_kernel_m_read_readvariableopIsavev2_adam_lstm_756_lstm_cell_756_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_756_lstm_cell_756_bias_m_read_readvariableop?savev2_adam_lstm_757_lstm_cell_757_kernel_m_read_readvariableopIsavev2_adam_lstm_757_lstm_cell_757_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_757_lstm_cell_757_bias_m_read_readvariableop?savev2_adam_lstm_758_lstm_cell_758_kernel_m_read_readvariableopIsavev2_adam_lstm_758_lstm_cell_758_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_758_lstm_cell_758_bias_m_read_readvariableop2savev2_adam_dense_252_kernel_v_read_readvariableop0savev2_adam_dense_252_bias_v_read_readvariableop?savev2_adam_lstm_756_lstm_cell_756_kernel_v_read_readvariableopIsavev2_adam_lstm_756_lstm_cell_756_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_756_lstm_cell_756_bias_v_read_readvariableop?savev2_adam_lstm_757_lstm_cell_757_kernel_v_read_readvariableopIsavev2_adam_lstm_757_lstm_cell_757_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_757_lstm_cell_757_bias_v_read_readvariableop?savev2_adam_lstm_758_lstm_cell_758_kernel_v_read_readvariableopIsavev2_adam_lstm_758_lstm_cell_758_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_758_lstm_cell_758_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?

?
lstm_757_while_cond_3953715.
*lstm_757_while_lstm_757_while_loop_counter4
0lstm_757_while_lstm_757_while_maximum_iterations
lstm_757_while_placeholder 
lstm_757_while_placeholder_1 
lstm_757_while_placeholder_2 
lstm_757_while_placeholder_30
,lstm_757_while_less_lstm_757_strided_slice_1G
Clstm_757_while_lstm_757_while_cond_3953715___redundant_placeholder0G
Clstm_757_while_lstm_757_while_cond_3953715___redundant_placeholder1G
Clstm_757_while_lstm_757_while_cond_3953715___redundant_placeholder2G
Clstm_757_while_lstm_757_while_cond_3953715___redundant_placeholder3
lstm_757_while_identity
?
lstm_757/while/LessLesslstm_757_while_placeholder,lstm_757_while_less_lstm_757_strided_slice_1*
T0*
_output_shapes
: ]
lstm_757/while/IdentityIdentitylstm_757/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_757_while_identity lstm_757/while/Identity:output:0*(
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3951545

inputs(
lstm_cell_651_3951463:	?(
lstm_cell_651_3951465:	d?$
lstm_cell_651_3951467:	?
identity??%lstm_cell_651/StatefulPartitionedCall?while;
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
%lstm_cell_651/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_651_3951463lstm_cell_651_3951465lstm_cell_651_3951467*
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951417n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_651_3951463lstm_cell_651_3951465lstm_cell_651_3951467*
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
while_body_3951476*
condR
while_cond_3951475*K
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
NoOpNoOp&^lstm_cell_651/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_651/StatefulPartitionedCall%lstm_cell_651/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_651_layer_call_fn_3956256

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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951271o
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
?
?
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956435

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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954559
inputs_0?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3954475*
condR
while_cond_3954474*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952703

inputs>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3952619*
condR
while_cond_3952618*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955318
inputs_0?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3955234*
condR
while_cond_3955233*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953399
lstm_756_input#
lstm_756_3953372:	?#
lstm_756_3953374:	d?
lstm_756_3953376:	?#
lstm_757_3953379:	d?#
lstm_757_3953381:	2?
lstm_757_3953383:	?"
lstm_758_3953386:2("
lstm_758_3953388:
(
lstm_758_3953390:(#
dense_252_3953393:

dense_252_3953395:
identity??!dense_252/StatefulPartitionedCall? lstm_756/StatefulPartitionedCall? lstm_757/StatefulPartitionedCall? lstm_758/StatefulPartitionedCall?
 lstm_756/StatefulPartitionedCallStatefulPartitionedCalllstm_756_inputlstm_756_3953372lstm_756_3953374lstm_756_3953376*
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3952403?
 lstm_757/StatefulPartitionedCallStatefulPartitionedCall)lstm_756/StatefulPartitionedCall:output:0lstm_757_3953379lstm_757_3953381lstm_757_3953383*
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3952553?
 lstm_758/StatefulPartitionedCallStatefulPartitionedCall)lstm_757/StatefulPartitionedCall:output:0lstm_758_3953386lstm_758_3953388lstm_758_3953390*
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952703?
!dense_252/StatefulPartitionedCallStatefulPartitionedCall)lstm_758/StatefulPartitionedCall:output:0dense_252_3953393dense_252_3953395*
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
GPU 2J 8? *O
fJRH
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721y
IdentityIdentity*dense_252/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_252/StatefulPartitionedCall!^lstm_756/StatefulPartitionedCall!^lstm_757/StatefulPartitionedCall!^lstm_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_252/StatefulPartitionedCall!dense_252/StatefulPartitionedCall2D
 lstm_756/StatefulPartitionedCall lstm_756/StatefulPartitionedCall2D
 lstm_757/StatefulPartitionedCall lstm_757/StatefulPartitionedCall2D
 lstm_758/StatefulPartitionedCall lstm_758/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_756_input
?
?
*__inference_lstm_758_layer_call_fn_3955648

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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952919o
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952054

inputs'
lstm_cell_653_3951972:2('
lstm_cell_653_3951974:
(#
lstm_cell_653_3951976:(
identity??%lstm_cell_653/StatefulPartitionedCall?while;
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
%lstm_cell_653/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_653_3951972lstm_cell_653_3951974lstm_cell_653_3951976*
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3951971n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_653_3951972lstm_cell_653_3951974lstm_cell_653_3951976*
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
while_body_3951985*
condR
while_cond_3951984*K
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
NoOpNoOp&^lstm_cell_653/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_653/StatefulPartitionedCall%lstm_cell_653/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3951971

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
while_body_3955377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3955706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955706___redundant_placeholder05
1while_while_cond_3955706___redundant_placeholder15
1while_while_cond_3955706___redundant_placeholder25
1while_while_cond_3955706___redundant_placeholder3
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

lstm_757_while_body_3954143.
*lstm_757_while_lstm_757_while_loop_counter4
0lstm_757_while_lstm_757_while_maximum_iterations
lstm_757_while_placeholder 
lstm_757_while_placeholder_1 
lstm_757_while_placeholder_2 
lstm_757_while_placeholder_3-
)lstm_757_while_lstm_757_strided_slice_1_0i
elstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0:	d?R
?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?M
>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
lstm_757_while_identity
lstm_757_while_identity_1
lstm_757_while_identity_2
lstm_757_while_identity_3
lstm_757_while_identity_4
lstm_757_while_identity_5+
'lstm_757_while_lstm_757_strided_slice_1g
clstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensorN
;lstm_757_while_lstm_cell_652_matmul_readvariableop_resource:	d?P
=lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource:	2?K
<lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource:	???3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp?2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp?4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp?
@lstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_757/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0lstm_757_while_placeholderIlstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_757/while/lstm_cell_652/MatMulMatMul9lstm_757/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_757/while/lstm_cell_652/MatMul_1MatMullstm_757_while_placeholder_2<lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_757/while/lstm_cell_652/addAddV2-lstm_757/while/lstm_cell_652/MatMul:product:0/lstm_757/while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_757/while/lstm_cell_652/BiasAddBiasAdd$lstm_757/while/lstm_cell_652/add:z:0;lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_757/while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_757/while/lstm_cell_652/splitSplit5lstm_757/while/lstm_cell_652/split/split_dim:output:0-lstm_757/while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_757/while/lstm_cell_652/SigmoidSigmoid+lstm_757/while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_757/while/lstm_cell_652/Sigmoid_1Sigmoid+lstm_757/while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_757/while/lstm_cell_652/mulMul*lstm_757/while/lstm_cell_652/Sigmoid_1:y:0lstm_757_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_757/while/lstm_cell_652/ReluRelu+lstm_757/while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/mul_1Mul(lstm_757/while/lstm_cell_652/Sigmoid:y:0/lstm_757/while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/add_1AddV2$lstm_757/while/lstm_cell_652/mul:z:0&lstm_757/while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_757/while/lstm_cell_652/Sigmoid_2Sigmoid+lstm_757/while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_757/while/lstm_cell_652/Relu_1Relu&lstm_757/while/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/mul_2Mul*lstm_757/while/lstm_cell_652/Sigmoid_2:y:01lstm_757/while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_757/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_757_while_placeholder_1lstm_757_while_placeholder&lstm_757/while/lstm_cell_652/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_757/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_757/while/addAddV2lstm_757_while_placeholderlstm_757/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_757/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_757/while/add_1AddV2*lstm_757_while_lstm_757_while_loop_counterlstm_757/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_757/while/IdentityIdentitylstm_757/while/add_1:z:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_1Identity0lstm_757_while_lstm_757_while_maximum_iterations^lstm_757/while/NoOp*
T0*
_output_shapes
: t
lstm_757/while/Identity_2Identitylstm_757/while/add:z:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_3IdentityClstm_757/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_4Identity&lstm_757/while/lstm_cell_652/mul_2:z:0^lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_757/while/Identity_5Identity&lstm_757/while/lstm_cell_652/add_1:z:0^lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_757/while/NoOpNoOp4^lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp3^lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp5^lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_757_while_identity lstm_757/while/Identity:output:0"?
lstm_757_while_identity_1"lstm_757/while/Identity_1:output:0"?
lstm_757_while_identity_2"lstm_757/while/Identity_2:output:0"?
lstm_757_while_identity_3"lstm_757/while/Identity_3:output:0"?
lstm_757_while_identity_4"lstm_757/while/Identity_4:output:0"?
lstm_757_while_identity_5"lstm_757/while/Identity_5:output:0"T
'lstm_757_while_lstm_757_strided_slice_1)lstm_757_while_lstm_757_strided_slice_1_0"~
<lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0"?
=lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0"|
;lstm_757_while_lstm_cell_652_matmul_readvariableop_resource=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0"?
clstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensorelstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp2h
2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp2l
4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_757_while_cond_3954142.
*lstm_757_while_lstm_757_while_loop_counter4
0lstm_757_while_lstm_757_while_maximum_iterations
lstm_757_while_placeholder 
lstm_757_while_placeholder_1 
lstm_757_while_placeholder_2 
lstm_757_while_placeholder_30
,lstm_757_while_less_lstm_757_strided_slice_1G
Clstm_757_while_lstm_757_while_cond_3954142___redundant_placeholder0G
Clstm_757_while_lstm_757_while_cond_3954142___redundant_placeholder1G
Clstm_757_while_lstm_757_while_cond_3954142___redundant_placeholder2G
Clstm_757_while_lstm_757_while_cond_3954142___redundant_placeholder3
lstm_757_while_identity
?
lstm_757/while/LessLesslstm_757_while_placeholder,lstm_757_while_less_lstm_757_strided_slice_1*
T0*
_output_shapes
: ]
lstm_757/while/IdentityIdentitylstm_757/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_757_while_identity lstm_757/while/Identity:output:0*(
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
while_body_3955993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956077

inputs>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3955993*
condR
while_cond_3955992*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3951476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_651_3951500_0:	?0
while_lstm_cell_651_3951502_0:	d?,
while_lstm_cell_651_3951504_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_651_3951500:	?.
while_lstm_cell_651_3951502:	d?*
while_lstm_cell_651_3951504:	???+while/lstm_cell_651/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_651/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_651_3951500_0while_lstm_cell_651_3951502_0while_lstm_cell_651_3951504_0*
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951417?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_651/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_651/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_651/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_651/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_651_3951500while_lstm_cell_651_3951500_0"<
while_lstm_cell_651_3951502while_lstm_cell_651_3951502_0"<
while_lstm_cell_651_3951504while_lstm_cell_651_3951504_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_651/StatefulPartitionedCall+while/lstm_cell_651/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3955992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955992___redundant_placeholder05
1while_while_cond_3955992___redundant_placeholder15
1while_while_cond_3955992___redundant_placeholder25
1while_while_cond_3955992___redundant_placeholder3
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956501

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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951271

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
while_body_3955234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3955707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3952728

inputs#
lstm_756_3952404:	?#
lstm_756_3952406:	d?
lstm_756_3952408:	?#
lstm_757_3952554:	d?#
lstm_757_3952556:	2?
lstm_757_3952558:	?"
lstm_758_3952704:2("
lstm_758_3952706:
(
lstm_758_3952708:(#
dense_252_3952722:

dense_252_3952724:
identity??!dense_252/StatefulPartitionedCall? lstm_756/StatefulPartitionedCall? lstm_757/StatefulPartitionedCall? lstm_758/StatefulPartitionedCall?
 lstm_756/StatefulPartitionedCallStatefulPartitionedCallinputslstm_756_3952404lstm_756_3952406lstm_756_3952408*
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3952403?
 lstm_757/StatefulPartitionedCallStatefulPartitionedCall)lstm_756/StatefulPartitionedCall:output:0lstm_757_3952554lstm_757_3952556lstm_757_3952558*
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3952553?
 lstm_758/StatefulPartitionedCallStatefulPartitionedCall)lstm_757/StatefulPartitionedCall:output:0lstm_758_3952704lstm_758_3952706lstm_758_3952708*
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952703?
!dense_252/StatefulPartitionedCallStatefulPartitionedCall)lstm_758/StatefulPartitionedCall:output:0dense_252_3952722dense_252_3952724*
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
GPU 2J 8? *O
fJRH
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721y
IdentityIdentity*dense_252/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_252/StatefulPartitionedCall!^lstm_756/StatefulPartitionedCall!^lstm_757/StatefulPartitionedCall!^lstm_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_252/StatefulPartitionedCall!dense_252/StatefulPartitionedCall2D
 lstm_756/StatefulPartitionedCall lstm_756/StatefulPartitionedCall2D
 lstm_757/StatefulPartitionedCall lstm_757/StatefulPartitionedCall2D
 lstm_758/StatefulPartitionedCall lstm_758/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_651_layer_call_fn_3956273

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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951417o
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
while_cond_3952618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952618___redundant_placeholder05
1while_while_cond_3952618___redundant_placeholder15
1while_while_cond_3952618___redundant_placeholder25
1while_while_cond_3952618___redundant_placeholder3
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
while_body_3953000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_652_layer_call_fn_3956371

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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951767o
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
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953429
lstm_756_input#
lstm_756_3953402:	?#
lstm_756_3953404:	d?
lstm_756_3953406:	?#
lstm_757_3953409:	d?#
lstm_757_3953411:	2?
lstm_757_3953413:	?"
lstm_758_3953416:2("
lstm_758_3953418:
(
lstm_758_3953420:(#
dense_252_3953423:

dense_252_3953425:
identity??!dense_252/StatefulPartitionedCall? lstm_756/StatefulPartitionedCall? lstm_757/StatefulPartitionedCall? lstm_758/StatefulPartitionedCall?
 lstm_756/StatefulPartitionedCallStatefulPartitionedCalllstm_756_inputlstm_756_3953402lstm_756_3953404lstm_756_3953406*
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3953249?
 lstm_757/StatefulPartitionedCallStatefulPartitionedCall)lstm_756/StatefulPartitionedCall:output:0lstm_757_3953409lstm_757_3953411lstm_757_3953413*
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3953084?
 lstm_758/StatefulPartitionedCallStatefulPartitionedCall)lstm_757/StatefulPartitionedCall:output:0lstm_758_3953416lstm_758_3953418lstm_758_3953420*
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952919?
!dense_252/StatefulPartitionedCallStatefulPartitionedCall)lstm_758/StatefulPartitionedCall:output:0dense_252_3953423dense_252_3953425*
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
GPU 2J 8? *O
fJRH
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721y
IdentityIdentity*dense_252/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_252/StatefulPartitionedCall!^lstm_756/StatefulPartitionedCall!^lstm_757/StatefulPartitionedCall!^lstm_758/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_252/StatefulPartitionedCall!dense_252/StatefulPartitionedCall2D
 lstm_756/StatefulPartitionedCall lstm_756/StatefulPartitionedCall2D
 lstm_757/StatefulPartitionedCall lstm_757/StatefulPartitionedCall2D
 lstm_758/StatefulPartitionedCall lstm_758/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_756_input
??
?
#__inference__traced_restore_3956806
file_prefix3
!assignvariableop_dense_252_kernel:
/
!assignvariableop_1_dense_252_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_756_lstm_cell_756_kernel:	?M
:assignvariableop_8_lstm_756_lstm_cell_756_recurrent_kernel:	d?=
.assignvariableop_9_lstm_756_lstm_cell_756_bias:	?D
1assignvariableop_10_lstm_757_lstm_cell_757_kernel:	d?N
;assignvariableop_11_lstm_757_lstm_cell_757_recurrent_kernel:	2?>
/assignvariableop_12_lstm_757_lstm_cell_757_bias:	?C
1assignvariableop_13_lstm_758_lstm_cell_758_kernel:2(M
;assignvariableop_14_lstm_758_lstm_cell_758_recurrent_kernel:
(=
/assignvariableop_15_lstm_758_lstm_cell_758_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_252_kernel_m:
7
)assignvariableop_19_adam_dense_252_bias_m:K
8assignvariableop_20_adam_lstm_756_lstm_cell_756_kernel_m:	?U
Bassignvariableop_21_adam_lstm_756_lstm_cell_756_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_756_lstm_cell_756_bias_m:	?K
8assignvariableop_23_adam_lstm_757_lstm_cell_757_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_757_lstm_cell_757_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_757_lstm_cell_757_bias_m:	?J
8assignvariableop_26_adam_lstm_758_lstm_cell_758_kernel_m:2(T
Bassignvariableop_27_adam_lstm_758_lstm_cell_758_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_758_lstm_cell_758_bias_m:(=
+assignvariableop_29_adam_dense_252_kernel_v:
7
)assignvariableop_30_adam_dense_252_bias_v:K
8assignvariableop_31_adam_lstm_756_lstm_cell_756_kernel_v:	?U
Bassignvariableop_32_adam_lstm_756_lstm_cell_756_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_756_lstm_cell_756_bias_v:	?K
8assignvariableop_34_adam_lstm_757_lstm_cell_757_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_757_lstm_cell_757_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_757_lstm_cell_757_bias_v:	?J
8assignvariableop_37_adam_lstm_758_lstm_cell_758_kernel_v:2(T
Bassignvariableop_38_adam_lstm_758_lstm_cell_758_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_758_lstm_cell_758_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_252_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_252_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_756_lstm_cell_756_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_756_lstm_cell_756_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_756_lstm_cell_756_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_757_lstm_cell_757_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_757_lstm_cell_757_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_757_lstm_cell_757_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_758_lstm_cell_758_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_758_lstm_cell_758_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_758_lstm_cell_758_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_252_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_252_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_756_lstm_cell_756_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_756_lstm_cell_756_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_756_lstm_cell_756_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_757_lstm_cell_757_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_757_lstm_cell_757_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_757_lstm_cell_757_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_758_lstm_cell_758_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_758_lstm_cell_758_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_758_lstm_cell_758_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_252_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_252_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_756_lstm_cell_756_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_756_lstm_cell_756_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_756_lstm_cell_756_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_757_lstm_cell_757_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_757_lstm_cell_757_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_757_lstm_cell_757_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_758_lstm_cell_758_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_758_lstm_cell_758_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_758_lstm_cell_758_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954988

inputs?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3954904*
condR
while_cond_3954903*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951767

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
while_cond_3956135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3956135___redundant_placeholder05
1while_while_cond_3956135___redundant_placeholder15
1while_while_cond_3956135___redundant_placeholder25
1while_while_cond_3956135___redundant_placeholder3
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
while_cond_3955849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955849___redundant_placeholder05
1while_while_cond_3955849___redundant_placeholder15
1while_while_cond_3955849___redundant_placeholder25
1while_while_cond_3955849___redundant_placeholder3
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954702
inputs_0?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3954618*
condR
while_cond_3954617*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_757_layer_call_fn_3955010
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3951895|
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

?
0__inference_sequential_252_layer_call_fn_3952753
lstm_756_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_756_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_252_layer_call_and_return_conditional_losses_3952728o
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
_user_specified_namelstm_756_input
?
?
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956305

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
while_cond_3954903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3954903___redundant_placeholder05
1while_while_cond_3954903___redundant_placeholder15
1while_while_cond_3954903___redundant_placeholder25
1while_while_cond_3954903___redundant_placeholder3
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
*__inference_lstm_758_layer_call_fn_3955615
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952054o
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
?C
?

lstm_758_while_body_3954282.
*lstm_758_while_lstm_758_while_loop_counter4
0lstm_758_while_lstm_758_while_maximum_iterations
lstm_758_while_placeholder 
lstm_758_while_placeholder_1 
lstm_758_while_placeholder_2 
lstm_758_while_placeholder_3-
)lstm_758_while_lstm_758_strided_slice_1_0i
elstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0:2(Q
?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(L
>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0:(
lstm_758_while_identity
lstm_758_while_identity_1
lstm_758_while_identity_2
lstm_758_while_identity_3
lstm_758_while_identity_4
lstm_758_while_identity_5+
'lstm_758_while_lstm_758_strided_slice_1g
clstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensorM
;lstm_758_while_lstm_cell_653_matmul_readvariableop_resource:2(O
=lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource:
(J
<lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource:(??3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp?2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp?4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp?
@lstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_758/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0lstm_758_while_placeholderIlstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_758/while/lstm_cell_653/MatMulMatMul9lstm_758/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_758/while/lstm_cell_653/MatMul_1MatMullstm_758_while_placeholder_2<lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_758/while/lstm_cell_653/addAddV2-lstm_758/while/lstm_cell_653/MatMul:product:0/lstm_758/while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_758/while/lstm_cell_653/BiasAddBiasAdd$lstm_758/while/lstm_cell_653/add:z:0;lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_758/while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_758/while/lstm_cell_653/splitSplit5lstm_758/while/lstm_cell_653/split/split_dim:output:0-lstm_758/while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_758/while/lstm_cell_653/SigmoidSigmoid+lstm_758/while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_758/while/lstm_cell_653/Sigmoid_1Sigmoid+lstm_758/while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_758/while/lstm_cell_653/mulMul*lstm_758/while/lstm_cell_653/Sigmoid_1:y:0lstm_758_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_758/while/lstm_cell_653/ReluRelu+lstm_758/while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/mul_1Mul(lstm_758/while/lstm_cell_653/Sigmoid:y:0/lstm_758/while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/add_1AddV2$lstm_758/while/lstm_cell_653/mul:z:0&lstm_758/while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_758/while/lstm_cell_653/Sigmoid_2Sigmoid+lstm_758/while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_758/while/lstm_cell_653/Relu_1Relu&lstm_758/while/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/mul_2Mul*lstm_758/while/lstm_cell_653/Sigmoid_2:y:01lstm_758/while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_758/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_758_while_placeholder_1lstm_758_while_placeholder&lstm_758/while/lstm_cell_653/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_758/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_758/while/addAddV2lstm_758_while_placeholderlstm_758/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_758/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_758/while/add_1AddV2*lstm_758_while_lstm_758_while_loop_counterlstm_758/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_758/while/IdentityIdentitylstm_758/while/add_1:z:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_1Identity0lstm_758_while_lstm_758_while_maximum_iterations^lstm_758/while/NoOp*
T0*
_output_shapes
: t
lstm_758/while/Identity_2Identitylstm_758/while/add:z:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_3IdentityClstm_758/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_4Identity&lstm_758/while/lstm_cell_653/mul_2:z:0^lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_758/while/Identity_5Identity&lstm_758/while/lstm_cell_653/add_1:z:0^lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_758/while/NoOpNoOp4^lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp3^lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp5^lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_758_while_identity lstm_758/while/Identity:output:0"?
lstm_758_while_identity_1"lstm_758/while/Identity_1:output:0"?
lstm_758_while_identity_2"lstm_758/while/Identity_2:output:0"?
lstm_758_while_identity_3"lstm_758/while/Identity_3:output:0"?
lstm_758_while_identity_4"lstm_758/while/Identity_4:output:0"?
lstm_758_while_identity_5"lstm_758/while/Identity_5:output:0"T
'lstm_758_while_lstm_758_strided_slice_1)lstm_758_while_lstm_758_strided_slice_1_0"~
<lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0"?
=lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0"|
;lstm_758_while_lstm_cell_653_matmul_readvariableop_resource=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0"?
clstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensorelstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp2h
2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp2l
4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3955376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955376___redundant_placeholder05
1while_while_cond_3955376___redundant_placeholder15
1while_while_cond_3955376___redundant_placeholder25
1while_while_cond_3955376___redundant_placeholder3
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
*__inference_lstm_756_layer_call_fn_3954394
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3951545|
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954845

inputs?
,lstm_cell_651_matmul_readvariableop_resource:	?A
.lstm_cell_651_matmul_1_readvariableop_resource:	d?<
-lstm_cell_651_biasadd_readvariableop_resource:	?
identity??$lstm_cell_651/BiasAdd/ReadVariableOp?#lstm_cell_651/MatMul/ReadVariableOp?%lstm_cell_651/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_651/MatMul/ReadVariableOpReadVariableOp,lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_651/MatMulMatMulstrided_slice_2:output:0+lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_651/MatMul_1MatMulzeros:output:0-lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_651/addAddV2lstm_cell_651/MatMul:product:0 lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_651/BiasAddBiasAddlstm_cell_651/add:z:0,lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_651/splitSplit&lstm_cell_651/split/split_dim:output:0lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_651/SigmoidSigmoidlstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_1Sigmoidlstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_651/mulMullstm_cell_651/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_651/ReluRelulstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_1Mullstm_cell_651/Sigmoid:y:0 lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_651/add_1AddV2lstm_cell_651/mul:z:0lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_651/Sigmoid_2Sigmoidlstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_651/Relu_1Relulstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_651/mul_2Mullstm_cell_651/Sigmoid_2:y:0"lstm_cell_651/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_651_matmul_readvariableop_resource.lstm_cell_651_matmul_1_readvariableop_resource-lstm_cell_651_biasadd_readvariableop_resource*
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
while_body_3954761*
condR
while_cond_3954760*K
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
NoOpNoOp%^lstm_cell_651/BiasAdd/ReadVariableOp$^lstm_cell_651/MatMul/ReadVariableOp&^lstm_cell_651/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_651/BiasAdd/ReadVariableOp$lstm_cell_651/BiasAdd/ReadVariableOp2J
#lstm_cell_651/MatMul/ReadVariableOp#lstm_cell_651/MatMul/ReadVariableOp2N
%lstm_cell_651/MatMul_1/ReadVariableOp%lstm_cell_651/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3954904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_252_layer_call_and_return_conditional_losses_3952721

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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956220

inputs>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3956136*
condR
while_cond_3956135*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951621

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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3951895

inputs(
lstm_cell_652_3951813:	d?(
lstm_cell_652_3951815:	2?$
lstm_cell_652_3951817:	?
identity??%lstm_cell_652/StatefulPartitionedCall?while;
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
%lstm_cell_652/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_652_3951813lstm_cell_652_3951815lstm_cell_652_3951817*
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951767n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_652_3951813lstm_cell_652_3951815lstm_cell_652_3951817*
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
while_body_3951826*
condR
while_cond_3951825*K
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
NoOpNoOp&^lstm_cell_652/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_652/StatefulPartitionedCall%lstm_cell_652/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953945

inputsH
5lstm_756_lstm_cell_651_matmul_readvariableop_resource:	?J
7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource:	d?E
6lstm_756_lstm_cell_651_biasadd_readvariableop_resource:	?H
5lstm_757_lstm_cell_652_matmul_readvariableop_resource:	d?J
7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource:	2?E
6lstm_757_lstm_cell_652_biasadd_readvariableop_resource:	?G
5lstm_758_lstm_cell_653_matmul_readvariableop_resource:2(I
7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource:
(D
6lstm_758_lstm_cell_653_biasadd_readvariableop_resource:(:
(dense_252_matmul_readvariableop_resource:
7
)dense_252_biasadd_readvariableop_resource:
identity?? dense_252/BiasAdd/ReadVariableOp?dense_252/MatMul/ReadVariableOp?-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp?,lstm_756/lstm_cell_651/MatMul/ReadVariableOp?.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp?lstm_756/while?-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp?,lstm_757/lstm_cell_652/MatMul/ReadVariableOp?.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp?lstm_757/while?-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp?,lstm_758/lstm_cell_653/MatMul/ReadVariableOp?.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp?lstm_758/whileD
lstm_756/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_756/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_756/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_756/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_sliceStridedSlicelstm_756/Shape:output:0%lstm_756/strided_slice/stack:output:0'lstm_756/strided_slice/stack_1:output:0'lstm_756/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_756/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_756/zeros/packedPacklstm_756/strided_slice:output:0 lstm_756/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_756/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_756/zerosFilllstm_756/zeros/packed:output:0lstm_756/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_756/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_756/zeros_1/packedPacklstm_756/strided_slice:output:0"lstm_756/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_756/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_756/zeros_1Fill lstm_756/zeros_1/packed:output:0lstm_756/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_756/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_756/transpose	Transposeinputs lstm_756/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_756/Shape_1Shapelstm_756/transpose:y:0*
T0*
_output_shapes
:h
lstm_756/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_756/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_1StridedSlicelstm_756/Shape_1:output:0'lstm_756/strided_slice_1/stack:output:0)lstm_756/strided_slice_1/stack_1:output:0)lstm_756/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_756/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_756/TensorArrayV2TensorListReserve-lstm_756/TensorArrayV2/element_shape:output:0!lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_756/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_756/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_756/transpose:y:0Glstm_756/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_756/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_756/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_2StridedSlicelstm_756/transpose:y:0'lstm_756/strided_slice_2/stack:output:0)lstm_756/strided_slice_2/stack_1:output:0)lstm_756/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_756/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp5lstm_756_lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_756/lstm_cell_651/MatMulMatMul!lstm_756/strided_slice_2:output:04lstm_756/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_756/lstm_cell_651/MatMul_1MatMullstm_756/zeros:output:06lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_756/lstm_cell_651/addAddV2'lstm_756/lstm_cell_651/MatMul:product:0)lstm_756/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp6lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_756/lstm_cell_651/BiasAddBiasAddlstm_756/lstm_cell_651/add:z:05lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_756/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_756/lstm_cell_651/splitSplit/lstm_756/lstm_cell_651/split/split_dim:output:0'lstm_756/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_756/lstm_cell_651/SigmoidSigmoid%lstm_756/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_756/lstm_cell_651/Sigmoid_1Sigmoid%lstm_756/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mulMul$lstm_756/lstm_cell_651/Sigmoid_1:y:0lstm_756/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_756/lstm_cell_651/ReluRelu%lstm_756/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mul_1Mul"lstm_756/lstm_cell_651/Sigmoid:y:0)lstm_756/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/add_1AddV2lstm_756/lstm_cell_651/mul:z:0 lstm_756/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_756/lstm_cell_651/Sigmoid_2Sigmoid%lstm_756/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_756/lstm_cell_651/Relu_1Relu lstm_756/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mul_2Mul$lstm_756/lstm_cell_651/Sigmoid_2:y:0+lstm_756/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_756/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_756/TensorArrayV2_1TensorListReserve/lstm_756/TensorArrayV2_1/element_shape:output:0!lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_756/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_756/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_756/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_756/whileWhile$lstm_756/while/loop_counter:output:0*lstm_756/while/maximum_iterations:output:0lstm_756/time:output:0!lstm_756/TensorArrayV2_1:handle:0lstm_756/zeros:output:0lstm_756/zeros_1:output:0!lstm_756/strided_slice_1:output:0@lstm_756/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_756_lstm_cell_651_matmul_readvariableop_resource7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource6lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
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
lstm_756_while_body_3953577*'
condR
lstm_756_while_cond_3953576*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_756/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_756/TensorArrayV2Stack/TensorListStackTensorListStacklstm_756/while:output:3Blstm_756/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_756/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_756/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_3StridedSlice4lstm_756/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_756/strided_slice_3/stack:output:0)lstm_756/strided_slice_3/stack_1:output:0)lstm_756/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_756/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_756/transpose_1	Transpose4lstm_756/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_756/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_756/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_757/ShapeShapelstm_756/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_757/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_757/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_757/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_sliceStridedSlicelstm_757/Shape:output:0%lstm_757/strided_slice/stack:output:0'lstm_757/strided_slice/stack_1:output:0'lstm_757/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_757/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_757/zeros/packedPacklstm_757/strided_slice:output:0 lstm_757/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_757/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_757/zerosFilllstm_757/zeros/packed:output:0lstm_757/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_757/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_757/zeros_1/packedPacklstm_757/strided_slice:output:0"lstm_757/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_757/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_757/zeros_1Fill lstm_757/zeros_1/packed:output:0lstm_757/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_757/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_757/transpose	Transposelstm_756/transpose_1:y:0 lstm_757/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_757/Shape_1Shapelstm_757/transpose:y:0*
T0*
_output_shapes
:h
lstm_757/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_757/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_1StridedSlicelstm_757/Shape_1:output:0'lstm_757/strided_slice_1/stack:output:0)lstm_757/strided_slice_1/stack_1:output:0)lstm_757/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_757/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_757/TensorArrayV2TensorListReserve-lstm_757/TensorArrayV2/element_shape:output:0!lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_757/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_757/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_757/transpose:y:0Glstm_757/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_757/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_757/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_2StridedSlicelstm_757/transpose:y:0'lstm_757/strided_slice_2/stack:output:0)lstm_757/strided_slice_2/stack_1:output:0)lstm_757/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_757/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp5lstm_757_lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_757/lstm_cell_652/MatMulMatMul!lstm_757/strided_slice_2:output:04lstm_757/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_757/lstm_cell_652/MatMul_1MatMullstm_757/zeros:output:06lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_757/lstm_cell_652/addAddV2'lstm_757/lstm_cell_652/MatMul:product:0)lstm_757/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp6lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_757/lstm_cell_652/BiasAddBiasAddlstm_757/lstm_cell_652/add:z:05lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_757/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_757/lstm_cell_652/splitSplit/lstm_757/lstm_cell_652/split/split_dim:output:0'lstm_757/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_757/lstm_cell_652/SigmoidSigmoid%lstm_757/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_757/lstm_cell_652/Sigmoid_1Sigmoid%lstm_757/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mulMul$lstm_757/lstm_cell_652/Sigmoid_1:y:0lstm_757/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_757/lstm_cell_652/ReluRelu%lstm_757/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mul_1Mul"lstm_757/lstm_cell_652/Sigmoid:y:0)lstm_757/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/add_1AddV2lstm_757/lstm_cell_652/mul:z:0 lstm_757/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_757/lstm_cell_652/Sigmoid_2Sigmoid%lstm_757/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_757/lstm_cell_652/Relu_1Relu lstm_757/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mul_2Mul$lstm_757/lstm_cell_652/Sigmoid_2:y:0+lstm_757/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_757/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_757/TensorArrayV2_1TensorListReserve/lstm_757/TensorArrayV2_1/element_shape:output:0!lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_757/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_757/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_757/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_757/whileWhile$lstm_757/while/loop_counter:output:0*lstm_757/while/maximum_iterations:output:0lstm_757/time:output:0!lstm_757/TensorArrayV2_1:handle:0lstm_757/zeros:output:0lstm_757/zeros_1:output:0!lstm_757/strided_slice_1:output:0@lstm_757/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_757_lstm_cell_652_matmul_readvariableop_resource7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource6lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
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
lstm_757_while_body_3953716*'
condR
lstm_757_while_cond_3953715*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_757/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_757/TensorArrayV2Stack/TensorListStackTensorListStacklstm_757/while:output:3Blstm_757/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_757/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_757/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_3StridedSlice4lstm_757/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_757/strided_slice_3/stack:output:0)lstm_757/strided_slice_3/stack_1:output:0)lstm_757/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_757/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_757/transpose_1	Transpose4lstm_757/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_757/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_757/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_758/ShapeShapelstm_757/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_758/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_758/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_758/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_sliceStridedSlicelstm_758/Shape:output:0%lstm_758/strided_slice/stack:output:0'lstm_758/strided_slice/stack_1:output:0'lstm_758/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_758/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_758/zeros/packedPacklstm_758/strided_slice:output:0 lstm_758/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_758/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_758/zerosFilllstm_758/zeros/packed:output:0lstm_758/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_758/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_758/zeros_1/packedPacklstm_758/strided_slice:output:0"lstm_758/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_758/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_758/zeros_1Fill lstm_758/zeros_1/packed:output:0lstm_758/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_758/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_758/transpose	Transposelstm_757/transpose_1:y:0 lstm_758/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_758/Shape_1Shapelstm_758/transpose:y:0*
T0*
_output_shapes
:h
lstm_758/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_758/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_1StridedSlicelstm_758/Shape_1:output:0'lstm_758/strided_slice_1/stack:output:0)lstm_758/strided_slice_1/stack_1:output:0)lstm_758/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_758/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_758/TensorArrayV2TensorListReserve-lstm_758/TensorArrayV2/element_shape:output:0!lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_758/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_758/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_758/transpose:y:0Glstm_758/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_758/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_758/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_2StridedSlicelstm_758/transpose:y:0'lstm_758/strided_slice_2/stack:output:0)lstm_758/strided_slice_2/stack_1:output:0)lstm_758/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_758/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp5lstm_758_lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_758/lstm_cell_653/MatMulMatMul!lstm_758/strided_slice_2:output:04lstm_758/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_758/lstm_cell_653/MatMul_1MatMullstm_758/zeros:output:06lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_758/lstm_cell_653/addAddV2'lstm_758/lstm_cell_653/MatMul:product:0)lstm_758/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp6lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_758/lstm_cell_653/BiasAddBiasAddlstm_758/lstm_cell_653/add:z:05lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_758/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_758/lstm_cell_653/splitSplit/lstm_758/lstm_cell_653/split/split_dim:output:0'lstm_758/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_758/lstm_cell_653/SigmoidSigmoid%lstm_758/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_758/lstm_cell_653/Sigmoid_1Sigmoid%lstm_758/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mulMul$lstm_758/lstm_cell_653/Sigmoid_1:y:0lstm_758/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_758/lstm_cell_653/ReluRelu%lstm_758/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mul_1Mul"lstm_758/lstm_cell_653/Sigmoid:y:0)lstm_758/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/add_1AddV2lstm_758/lstm_cell_653/mul:z:0 lstm_758/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_758/lstm_cell_653/Sigmoid_2Sigmoid%lstm_758/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_758/lstm_cell_653/Relu_1Relu lstm_758/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mul_2Mul$lstm_758/lstm_cell_653/Sigmoid_2:y:0+lstm_758/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_758/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_758/TensorArrayV2_1TensorListReserve/lstm_758/TensorArrayV2_1/element_shape:output:0!lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_758/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_758/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_758/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_758/whileWhile$lstm_758/while/loop_counter:output:0*lstm_758/while/maximum_iterations:output:0lstm_758/time:output:0!lstm_758/TensorArrayV2_1:handle:0lstm_758/zeros:output:0lstm_758/zeros_1:output:0!lstm_758/strided_slice_1:output:0@lstm_758/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_758_lstm_cell_653_matmul_readvariableop_resource7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource6lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
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
lstm_758_while_body_3953855*'
condR
lstm_758_while_cond_3953854*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_758/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_758/TensorArrayV2Stack/TensorListStackTensorListStacklstm_758/while:output:3Blstm_758/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_758/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_758/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_3StridedSlice4lstm_758/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_758/strided_slice_3/stack:output:0)lstm_758/strided_slice_3/stack_1:output:0)lstm_758/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_758/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_758/transpose_1	Transpose4lstm_758/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_758/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_758/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_252/MatMul/ReadVariableOpReadVariableOp(dense_252_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_252/MatMulMatMul!lstm_758/strided_slice_3:output:0'dense_252/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_252/BiasAdd/ReadVariableOpReadVariableOp)dense_252_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_252/BiasAddBiasAdddense_252/MatMul:product:0(dense_252/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_252/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_252/BiasAdd/ReadVariableOp ^dense_252/MatMul/ReadVariableOp.^lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp-^lstm_756/lstm_cell_651/MatMul/ReadVariableOp/^lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp^lstm_756/while.^lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp-^lstm_757/lstm_cell_652/MatMul/ReadVariableOp/^lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp^lstm_757/while.^lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp-^lstm_758/lstm_cell_653/MatMul/ReadVariableOp/^lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp^lstm_758/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_252/BiasAdd/ReadVariableOp dense_252/BiasAdd/ReadVariableOp2B
dense_252/MatMul/ReadVariableOpdense_252/MatMul/ReadVariableOp2^
-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp2\
,lstm_756/lstm_cell_651/MatMul/ReadVariableOp,lstm_756/lstm_cell_651/MatMul/ReadVariableOp2`
.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp2 
lstm_756/whilelstm_756/while2^
-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp2\
,lstm_757/lstm_cell_652/MatMul/ReadVariableOp,lstm_757/lstm_cell_652/MatMul/ReadVariableOp2`
.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp2 
lstm_757/whilelstm_757/while2^
-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp2\
,lstm_758/lstm_cell_653/MatMul/ReadVariableOp,lstm_758/lstm_cell_653/MatMul/ReadVariableOp2`
.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp2 
lstm_758/whilelstm_758/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3951475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3951475___redundant_placeholder05
1while_while_cond_3951475___redundant_placeholder15
1while_while_cond_3951475___redundant_placeholder25
1while_while_cond_3951475___redundant_placeholder3
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
while_cond_3951634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3951634___redundant_placeholder05
1while_while_cond_3951634___redundant_placeholder15
1while_while_cond_3951634___redundant_placeholder25
1while_while_cond_3951634___redundant_placeholder3
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
while_cond_3954474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3954474___redundant_placeholder05
1while_while_cond_3954474___redundant_placeholder15
1while_while_cond_3954474___redundant_placeholder25
1while_while_cond_3954474___redundant_placeholder3
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955791
inputs_0>
,lstm_cell_653_matmul_readvariableop_resource:2(@
.lstm_cell_653_matmul_1_readvariableop_resource:
(;
-lstm_cell_653_biasadd_readvariableop_resource:(
identity??$lstm_cell_653/BiasAdd/ReadVariableOp?#lstm_cell_653/MatMul/ReadVariableOp?%lstm_cell_653/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_653/MatMul/ReadVariableOpReadVariableOp,lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_653/MatMulMatMulstrided_slice_2:output:0+lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_653/MatMul_1MatMulzeros:output:0-lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_653/addAddV2lstm_cell_653/MatMul:product:0 lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_653/BiasAddBiasAddlstm_cell_653/add:z:0,lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_653/splitSplit&lstm_cell_653/split/split_dim:output:0lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_653/SigmoidSigmoidlstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_1Sigmoidlstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_653/mulMullstm_cell_653/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_653/ReluRelulstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_1Mullstm_cell_653/Sigmoid:y:0 lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_653/add_1AddV2lstm_cell_653/mul:z:0lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_653/Sigmoid_2Sigmoidlstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_653/Relu_1Relulstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_653/mul_2Mullstm_cell_653/Sigmoid_2:y:0"lstm_cell_653/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_653_matmul_readvariableop_resource.lstm_cell_653_matmul_1_readvariableop_resource-lstm_cell_653_biasadd_readvariableop_resource*
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
while_body_3955707*
condR
while_cond_3955706*K
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
NoOpNoOp%^lstm_cell_653/BiasAdd/ReadVariableOp$^lstm_cell_653/MatMul/ReadVariableOp&^lstm_cell_653/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_653/BiasAdd/ReadVariableOp$lstm_cell_653/BiasAdd/ReadVariableOp2J
#lstm_cell_653/MatMul/ReadVariableOp#lstm_cell_653/MatMul/ReadVariableOp2N
%lstm_cell_653/MatMul_1/ReadVariableOp%lstm_cell_653/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956337

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
*__inference_lstm_757_layer_call_fn_3955021

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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3952553s
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
while_cond_3955233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955233___redundant_placeholder05
1while_while_cond_3955233___redundant_placeholder15
1while_while_cond_3955233___redundant_placeholder25
1while_while_cond_3955233___redundant_placeholder3
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
while_body_3951985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_653_3952009_0:2(/
while_lstm_cell_653_3952011_0:
(+
while_lstm_cell_653_3952013_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_653_3952009:2(-
while_lstm_cell_653_3952011:
()
while_lstm_cell_653_3952013:(??+while/lstm_cell_653/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_653/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_653_3952009_0while_lstm_cell_653_3952011_0while_lstm_cell_653_3952013_0*
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3951971?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_653/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_653/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_653/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_653/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_653_3952009while_lstm_cell_653_3952009_0"<
while_lstm_cell_653_3952011while_lstm_cell_653_3952011_0"<
while_lstm_cell_653_3952013while_lstm_cell_653_3952013_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_653/StatefulPartitionedCall+while/lstm_cell_653/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3952469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3951284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3951284___redundant_placeholder05
1while_while_cond_3951284___redundant_placeholder15
1while_while_cond_3951284___redundant_placeholder25
1while_while_cond_3951284___redundant_placeholder3
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3952117

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
*sequential_252_lstm_756_while_cond_3950835L
Hsequential_252_lstm_756_while_sequential_252_lstm_756_while_loop_counterR
Nsequential_252_lstm_756_while_sequential_252_lstm_756_while_maximum_iterations-
)sequential_252_lstm_756_while_placeholder/
+sequential_252_lstm_756_while_placeholder_1/
+sequential_252_lstm_756_while_placeholder_2/
+sequential_252_lstm_756_while_placeholder_3N
Jsequential_252_lstm_756_while_less_sequential_252_lstm_756_strided_slice_1e
asequential_252_lstm_756_while_sequential_252_lstm_756_while_cond_3950835___redundant_placeholder0e
asequential_252_lstm_756_while_sequential_252_lstm_756_while_cond_3950835___redundant_placeholder1e
asequential_252_lstm_756_while_sequential_252_lstm_756_while_cond_3950835___redundant_placeholder2e
asequential_252_lstm_756_while_sequential_252_lstm_756_while_cond_3950835___redundant_placeholder3*
&sequential_252_lstm_756_while_identity
?
"sequential_252/lstm_756/while/LessLess)sequential_252_lstm_756_while_placeholderJsequential_252_lstm_756_while_less_sequential_252_lstm_756_strided_slice_1*
T0*
_output_shapes
: {
&sequential_252/lstm_756/while/IdentityIdentity&sequential_252/lstm_756/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_252_lstm_756_while_identity/sequential_252/lstm_756/while/Identity:output:0*(
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
while_body_3951285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_651_3951309_0:	?0
while_lstm_cell_651_3951311_0:	d?,
while_lstm_cell_651_3951313_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_651_3951309:	?.
while_lstm_cell_651_3951311:	d?*
while_lstm_cell_651_3951313:	???+while/lstm_cell_651/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_651/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_651_3951309_0while_lstm_cell_651_3951311_0while_lstm_cell_651_3951313_0*
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951271?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_651/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_651/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_651/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_651/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_651_3951309while_lstm_cell_651_3951309_0"<
while_lstm_cell_651_3951311while_lstm_cell_651_3951311_0"<
while_lstm_cell_651_3951313while_lstm_cell_651_3951313_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_651/StatefulPartitionedCall+while/lstm_cell_651/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3954761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3954475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_252_lstm_756_while_body_3950836L
Hsequential_252_lstm_756_while_sequential_252_lstm_756_while_loop_counterR
Nsequential_252_lstm_756_while_sequential_252_lstm_756_while_maximum_iterations-
)sequential_252_lstm_756_while_placeholder/
+sequential_252_lstm_756_while_placeholder_1/
+sequential_252_lstm_756_while_placeholder_2/
+sequential_252_lstm_756_while_placeholder_3K
Gsequential_252_lstm_756_while_sequential_252_lstm_756_strided_slice_1_0?
?sequential_252_lstm_756_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_756_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_252_lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0:	?a
Nsequential_252_lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?\
Msequential_252_lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0:	?*
&sequential_252_lstm_756_while_identity,
(sequential_252_lstm_756_while_identity_1,
(sequential_252_lstm_756_while_identity_2,
(sequential_252_lstm_756_while_identity_3,
(sequential_252_lstm_756_while_identity_4,
(sequential_252_lstm_756_while_identity_5I
Esequential_252_lstm_756_while_sequential_252_lstm_756_strided_slice_1?
?sequential_252_lstm_756_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_756_tensorarrayunstack_tensorlistfromtensor]
Jsequential_252_lstm_756_while_lstm_cell_651_matmul_readvariableop_resource:	?_
Lsequential_252_lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource:	d?Z
Ksequential_252_lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource:	???Bsequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp?Asequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp?Csequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp?
Osequential_252/lstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_252/lstm_756/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_252_lstm_756_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_756_tensorarrayunstack_tensorlistfromtensor_0)sequential_252_lstm_756_while_placeholderXsequential_252/lstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOpLsequential_252_lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_252/lstm_756/while/lstm_cell_651/MatMulMatMulHsequential_252/lstm_756/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOpNsequential_252_lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_252/lstm_756/while/lstm_cell_651/MatMul_1MatMul+sequential_252_lstm_756_while_placeholder_2Ksequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_252/lstm_756/while/lstm_cell_651/addAddV2<sequential_252/lstm_756/while/lstm_cell_651/MatMul:product:0>sequential_252/lstm_756/while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOpMsequential_252_lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_252/lstm_756/while/lstm_cell_651/BiasAddBiasAdd3sequential_252/lstm_756/while/lstm_cell_651/add:z:0Jsequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_252/lstm_756/while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_252/lstm_756/while/lstm_cell_651/splitSplitDsequential_252/lstm_756/while/lstm_cell_651/split/split_dim:output:0<sequential_252/lstm_756/while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_252/lstm_756/while/lstm_cell_651/SigmoidSigmoid:sequential_252/lstm_756/while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_252/lstm_756/while/lstm_cell_651/Sigmoid_1Sigmoid:sequential_252/lstm_756/while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_252/lstm_756/while/lstm_cell_651/mulMul9sequential_252/lstm_756/while/lstm_cell_651/Sigmoid_1:y:0+sequential_252_lstm_756_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_252/lstm_756/while/lstm_cell_651/ReluRelu:sequential_252/lstm_756/while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_252/lstm_756/while/lstm_cell_651/mul_1Mul7sequential_252/lstm_756/while/lstm_cell_651/Sigmoid:y:0>sequential_252/lstm_756/while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_252/lstm_756/while/lstm_cell_651/add_1AddV23sequential_252/lstm_756/while/lstm_cell_651/mul:z:05sequential_252/lstm_756/while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_252/lstm_756/while/lstm_cell_651/Sigmoid_2Sigmoid:sequential_252/lstm_756/while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_252/lstm_756/while/lstm_cell_651/Relu_1Relu5sequential_252/lstm_756/while/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_252/lstm_756/while/lstm_cell_651/mul_2Mul9sequential_252/lstm_756/while/lstm_cell_651/Sigmoid_2:y:0@sequential_252/lstm_756/while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_252/lstm_756/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_252_lstm_756_while_placeholder_1)sequential_252_lstm_756_while_placeholder5sequential_252/lstm_756/while/lstm_cell_651/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_252/lstm_756/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_252/lstm_756/while/addAddV2)sequential_252_lstm_756_while_placeholder,sequential_252/lstm_756/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_252/lstm_756/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_252/lstm_756/while/add_1AddV2Hsequential_252_lstm_756_while_sequential_252_lstm_756_while_loop_counter.sequential_252/lstm_756/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_252/lstm_756/while/IdentityIdentity'sequential_252/lstm_756/while/add_1:z:0#^sequential_252/lstm_756/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_756/while/Identity_1IdentityNsequential_252_lstm_756_while_sequential_252_lstm_756_while_maximum_iterations#^sequential_252/lstm_756/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_756/while/Identity_2Identity%sequential_252/lstm_756/while/add:z:0#^sequential_252/lstm_756/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_756/while/Identity_3IdentityRsequential_252/lstm_756/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_252/lstm_756/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_756/while/Identity_4Identity5sequential_252/lstm_756/while/lstm_cell_651/mul_2:z:0#^sequential_252/lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_252/lstm_756/while/Identity_5Identity5sequential_252/lstm_756/while/lstm_cell_651/add_1:z:0#^sequential_252/lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_252/lstm_756/while/NoOpNoOpC^sequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOpB^sequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOpD^sequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_252_lstm_756_while_identity/sequential_252/lstm_756/while/Identity:output:0"]
(sequential_252_lstm_756_while_identity_11sequential_252/lstm_756/while/Identity_1:output:0"]
(sequential_252_lstm_756_while_identity_21sequential_252/lstm_756/while/Identity_2:output:0"]
(sequential_252_lstm_756_while_identity_31sequential_252/lstm_756/while/Identity_3:output:0"]
(sequential_252_lstm_756_while_identity_41sequential_252/lstm_756/while/Identity_4:output:0"]
(sequential_252_lstm_756_while_identity_51sequential_252/lstm_756/while/Identity_5:output:0"?
Ksequential_252_lstm_756_while_lstm_cell_651_biasadd_readvariableop_resourceMsequential_252_lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0"?
Lsequential_252_lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resourceNsequential_252_lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0"?
Jsequential_252_lstm_756_while_lstm_cell_651_matmul_readvariableop_resourceLsequential_252_lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0"?
Esequential_252_lstm_756_while_sequential_252_lstm_756_strided_slice_1Gsequential_252_lstm_756_while_sequential_252_lstm_756_strided_slice_1_0"?
?sequential_252_lstm_756_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_756_tensorarrayunstack_tensorlistfromtensor?sequential_252_lstm_756_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_756_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOpBsequential_252/lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp2?
Asequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOpAsequential_252/lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp2?
Csequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOpCsequential_252/lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_756_while_cond_3954003.
*lstm_756_while_lstm_756_while_loop_counter4
0lstm_756_while_lstm_756_while_maximum_iterations
lstm_756_while_placeholder 
lstm_756_while_placeholder_1 
lstm_756_while_placeholder_2 
lstm_756_while_placeholder_30
,lstm_756_while_less_lstm_756_strided_slice_1G
Clstm_756_while_lstm_756_while_cond_3954003___redundant_placeholder0G
Clstm_756_while_lstm_756_while_cond_3954003___redundant_placeholder1G
Clstm_756_while_lstm_756_while_cond_3954003___redundant_placeholder2G
Clstm_756_while_lstm_756_while_cond_3954003___redundant_placeholder3
lstm_756_while_identity
?
lstm_756/while/LessLesslstm_756_while_placeholder,lstm_756_while_less_lstm_756_strided_slice_1*
T0*
_output_shapes
: ]
lstm_756/while/IdentityIdentitylstm_756/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_756_while_identity lstm_756/while/Identity:output:0*(
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
/__inference_lstm_cell_652_layer_call_fn_3956354

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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951621o
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
?C
?

lstm_756_while_body_3954004.
*lstm_756_while_lstm_756_while_loop_counter4
0lstm_756_while_lstm_756_while_maximum_iterations
lstm_756_while_placeholder 
lstm_756_while_placeholder_1 
lstm_756_while_placeholder_2 
lstm_756_while_placeholder_3-
)lstm_756_while_lstm_756_strided_slice_1_0i
elstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0:	?R
?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?M
>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
lstm_756_while_identity
lstm_756_while_identity_1
lstm_756_while_identity_2
lstm_756_while_identity_3
lstm_756_while_identity_4
lstm_756_while_identity_5+
'lstm_756_while_lstm_756_strided_slice_1g
clstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensorN
;lstm_756_while_lstm_cell_651_matmul_readvariableop_resource:	?P
=lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource:	d?K
<lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource:	???3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp?2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp?4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp?
@lstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_756/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0lstm_756_while_placeholderIlstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_756/while/lstm_cell_651/MatMulMatMul9lstm_756/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_756/while/lstm_cell_651/MatMul_1MatMullstm_756_while_placeholder_2<lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_756/while/lstm_cell_651/addAddV2-lstm_756/while/lstm_cell_651/MatMul:product:0/lstm_756/while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_756/while/lstm_cell_651/BiasAddBiasAdd$lstm_756/while/lstm_cell_651/add:z:0;lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_756/while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_756/while/lstm_cell_651/splitSplit5lstm_756/while/lstm_cell_651/split/split_dim:output:0-lstm_756/while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_756/while/lstm_cell_651/SigmoidSigmoid+lstm_756/while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_756/while/lstm_cell_651/Sigmoid_1Sigmoid+lstm_756/while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_756/while/lstm_cell_651/mulMul*lstm_756/while/lstm_cell_651/Sigmoid_1:y:0lstm_756_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_756/while/lstm_cell_651/ReluRelu+lstm_756/while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/mul_1Mul(lstm_756/while/lstm_cell_651/Sigmoid:y:0/lstm_756/while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/add_1AddV2$lstm_756/while/lstm_cell_651/mul:z:0&lstm_756/while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_756/while/lstm_cell_651/Sigmoid_2Sigmoid+lstm_756/while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_756/while/lstm_cell_651/Relu_1Relu&lstm_756/while/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/mul_2Mul*lstm_756/while/lstm_cell_651/Sigmoid_2:y:01lstm_756/while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_756/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_756_while_placeholder_1lstm_756_while_placeholder&lstm_756/while/lstm_cell_651/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_756/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_756/while/addAddV2lstm_756_while_placeholderlstm_756/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_756/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_756/while/add_1AddV2*lstm_756_while_lstm_756_while_loop_counterlstm_756/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_756/while/IdentityIdentitylstm_756/while/add_1:z:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_1Identity0lstm_756_while_lstm_756_while_maximum_iterations^lstm_756/while/NoOp*
T0*
_output_shapes
: t
lstm_756/while/Identity_2Identitylstm_756/while/add:z:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_3IdentityClstm_756/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_4Identity&lstm_756/while/lstm_cell_651/mul_2:z:0^lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_756/while/Identity_5Identity&lstm_756/while/lstm_cell_651/add_1:z:0^lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_756/while/NoOpNoOp4^lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp3^lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp5^lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_756_while_identity lstm_756/while/Identity:output:0"?
lstm_756_while_identity_1"lstm_756/while/Identity_1:output:0"?
lstm_756_while_identity_2"lstm_756/while/Identity_2:output:0"?
lstm_756_while_identity_3"lstm_756/while/Identity_3:output:0"?
lstm_756_while_identity_4"lstm_756/while/Identity_4:output:0"?
lstm_756_while_identity_5"lstm_756/while/Identity_5:output:0"T
'lstm_756_while_lstm_756_strided_slice_1)lstm_756_while_lstm_756_strided_slice_1_0"~
<lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0"?
=lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0"|
;lstm_756_while_lstm_cell_651_matmul_readvariableop_resource=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0"?
clstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensorelstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp2h
2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp2l
4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_756_layer_call_fn_3954416

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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3953249s
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
?K
?
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955175
inputs_0?
,lstm_cell_652_matmul_readvariableop_resource:	d?A
.lstm_cell_652_matmul_1_readvariableop_resource:	2?<
-lstm_cell_652_biasadd_readvariableop_resource:	?
identity??$lstm_cell_652/BiasAdd/ReadVariableOp?#lstm_cell_652/MatMul/ReadVariableOp?%lstm_cell_652/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_652/MatMul/ReadVariableOpReadVariableOp,lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_652/MatMulMatMulstrided_slice_2:output:0+lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_652/MatMul_1MatMulzeros:output:0-lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_652/addAddV2lstm_cell_652/MatMul:product:0 lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_652/BiasAddBiasAddlstm_cell_652/add:z:0,lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_652/splitSplit&lstm_cell_652/split/split_dim:output:0lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_652/SigmoidSigmoidlstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_1Sigmoidlstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_652/mulMullstm_cell_652/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_652/ReluRelulstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_1Mullstm_cell_652/Sigmoid:y:0 lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_652/add_1AddV2lstm_cell_652/mul:z:0lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_652/Sigmoid_2Sigmoidlstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_652/Relu_1Relulstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_652/mul_2Mullstm_cell_652/Sigmoid_2:y:0"lstm_cell_652/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_652_matmul_readvariableop_resource.lstm_cell_652_matmul_1_readvariableop_resource-lstm_cell_652_biasadd_readvariableop_resource*
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
while_body_3955091*
condR
while_cond_3955090*K
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
NoOpNoOp%^lstm_cell_652/BiasAdd/ReadVariableOp$^lstm_cell_652/MatMul/ReadVariableOp&^lstm_cell_652/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_652/BiasAdd/ReadVariableOp$lstm_cell_652/BiasAdd/ReadVariableOp2J
#lstm_cell_652/MatMul/ReadVariableOp#lstm_cell_652/MatMul/ReadVariableOp2N
%lstm_cell_652/MatMul_1/ReadVariableOp%lstm_cell_652/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_757_layer_call_fn_3955032

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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3953084s
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
F__inference_dense_252_layer_call_and_return_conditional_losses_3956239

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
/__inference_lstm_cell_653_layer_call_fn_3956469

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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3952117o
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956533

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
while_body_3954618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3952619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_758_while_body_3953855.
*lstm_758_while_lstm_758_while_loop_counter4
0lstm_758_while_lstm_758_while_maximum_iterations
lstm_758_while_placeholder 
lstm_758_while_placeholder_1 
lstm_758_while_placeholder_2 
lstm_758_while_placeholder_3-
)lstm_758_while_lstm_758_strided_slice_1_0i
elstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0:2(Q
?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(L
>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0:(
lstm_758_while_identity
lstm_758_while_identity_1
lstm_758_while_identity_2
lstm_758_while_identity_3
lstm_758_while_identity_4
lstm_758_while_identity_5+
'lstm_758_while_lstm_758_strided_slice_1g
clstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensorM
;lstm_758_while_lstm_cell_653_matmul_readvariableop_resource:2(O
=lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource:
(J
<lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource:(??3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp?2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp?4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp?
@lstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_758/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0lstm_758_while_placeholderIlstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_758/while/lstm_cell_653/MatMulMatMul9lstm_758/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_758/while/lstm_cell_653/MatMul_1MatMullstm_758_while_placeholder_2<lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_758/while/lstm_cell_653/addAddV2-lstm_758/while/lstm_cell_653/MatMul:product:0/lstm_758/while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_758/while/lstm_cell_653/BiasAddBiasAdd$lstm_758/while/lstm_cell_653/add:z:0;lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_758/while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_758/while/lstm_cell_653/splitSplit5lstm_758/while/lstm_cell_653/split/split_dim:output:0-lstm_758/while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_758/while/lstm_cell_653/SigmoidSigmoid+lstm_758/while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_758/while/lstm_cell_653/Sigmoid_1Sigmoid+lstm_758/while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_758/while/lstm_cell_653/mulMul*lstm_758/while/lstm_cell_653/Sigmoid_1:y:0lstm_758_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_758/while/lstm_cell_653/ReluRelu+lstm_758/while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/mul_1Mul(lstm_758/while/lstm_cell_653/Sigmoid:y:0/lstm_758/while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/add_1AddV2$lstm_758/while/lstm_cell_653/mul:z:0&lstm_758/while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_758/while/lstm_cell_653/Sigmoid_2Sigmoid+lstm_758/while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_758/while/lstm_cell_653/Relu_1Relu&lstm_758/while/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_758/while/lstm_cell_653/mul_2Mul*lstm_758/while/lstm_cell_653/Sigmoid_2:y:01lstm_758/while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_758/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_758_while_placeholder_1lstm_758_while_placeholder&lstm_758/while/lstm_cell_653/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_758/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_758/while/addAddV2lstm_758_while_placeholderlstm_758/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_758/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_758/while/add_1AddV2*lstm_758_while_lstm_758_while_loop_counterlstm_758/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_758/while/IdentityIdentitylstm_758/while/add_1:z:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_1Identity0lstm_758_while_lstm_758_while_maximum_iterations^lstm_758/while/NoOp*
T0*
_output_shapes
: t
lstm_758/while/Identity_2Identitylstm_758/while/add:z:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_3IdentityClstm_758/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_758/while/NoOp*
T0*
_output_shapes
: ?
lstm_758/while/Identity_4Identity&lstm_758/while/lstm_cell_653/mul_2:z:0^lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_758/while/Identity_5Identity&lstm_758/while/lstm_cell_653/add_1:z:0^lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_758/while/NoOpNoOp4^lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp3^lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp5^lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_758_while_identity lstm_758/while/Identity:output:0"?
lstm_758_while_identity_1"lstm_758/while/Identity_1:output:0"?
lstm_758_while_identity_2"lstm_758/while/Identity_2:output:0"?
lstm_758_while_identity_3"lstm_758/while/Identity_3:output:0"?
lstm_758_while_identity_4"lstm_758/while/Identity_4:output:0"?
lstm_758_while_identity_5"lstm_758/while/Identity_5:output:0"T
'lstm_758_while_lstm_758_strided_slice_1)lstm_758_while_lstm_758_strided_slice_1_0"~
<lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource>lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0"?
=lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource?lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0"|
;lstm_758_while_lstm_cell_653_matmul_readvariableop_resource=lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0"?
clstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensorelstm_758_while_tensorarrayv2read_tensorlistgetitem_lstm_758_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp3lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp2h
2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp2lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp2l
4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp4lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_252_lstm_758_while_body_3951114L
Hsequential_252_lstm_758_while_sequential_252_lstm_758_while_loop_counterR
Nsequential_252_lstm_758_while_sequential_252_lstm_758_while_maximum_iterations-
)sequential_252_lstm_758_while_placeholder/
+sequential_252_lstm_758_while_placeholder_1/
+sequential_252_lstm_758_while_placeholder_2/
+sequential_252_lstm_758_while_placeholder_3K
Gsequential_252_lstm_758_while_sequential_252_lstm_758_strided_slice_1_0?
?sequential_252_lstm_758_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_758_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_252_lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0:2(`
Nsequential_252_lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0:
([
Msequential_252_lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0:(*
&sequential_252_lstm_758_while_identity,
(sequential_252_lstm_758_while_identity_1,
(sequential_252_lstm_758_while_identity_2,
(sequential_252_lstm_758_while_identity_3,
(sequential_252_lstm_758_while_identity_4,
(sequential_252_lstm_758_while_identity_5I
Esequential_252_lstm_758_while_sequential_252_lstm_758_strided_slice_1?
?sequential_252_lstm_758_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_758_tensorarrayunstack_tensorlistfromtensor\
Jsequential_252_lstm_758_while_lstm_cell_653_matmul_readvariableop_resource:2(^
Lsequential_252_lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource:
(Y
Ksequential_252_lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource:(??Bsequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp?Asequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp?Csequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp?
Osequential_252/lstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_252/lstm_758/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_252_lstm_758_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_758_tensorarrayunstack_tensorlistfromtensor_0)sequential_252_lstm_758_while_placeholderXsequential_252/lstm_758/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOpLsequential_252_lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_252/lstm_758/while/lstm_cell_653/MatMulMatMulHsequential_252/lstm_758/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOpNsequential_252_lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_252/lstm_758/while/lstm_cell_653/MatMul_1MatMul+sequential_252_lstm_758_while_placeholder_2Ksequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_252/lstm_758/while/lstm_cell_653/addAddV2<sequential_252/lstm_758/while/lstm_cell_653/MatMul:product:0>sequential_252/lstm_758/while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOpMsequential_252_lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_252/lstm_758/while/lstm_cell_653/BiasAddBiasAdd3sequential_252/lstm_758/while/lstm_cell_653/add:z:0Jsequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_252/lstm_758/while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_252/lstm_758/while/lstm_cell_653/splitSplitDsequential_252/lstm_758/while/lstm_cell_653/split/split_dim:output:0<sequential_252/lstm_758/while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_252/lstm_758/while/lstm_cell_653/SigmoidSigmoid:sequential_252/lstm_758/while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_252/lstm_758/while/lstm_cell_653/Sigmoid_1Sigmoid:sequential_252/lstm_758/while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_252/lstm_758/while/lstm_cell_653/mulMul9sequential_252/lstm_758/while/lstm_cell_653/Sigmoid_1:y:0+sequential_252_lstm_758_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_252/lstm_758/while/lstm_cell_653/ReluRelu:sequential_252/lstm_758/while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_252/lstm_758/while/lstm_cell_653/mul_1Mul7sequential_252/lstm_758/while/lstm_cell_653/Sigmoid:y:0>sequential_252/lstm_758/while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_252/lstm_758/while/lstm_cell_653/add_1AddV23sequential_252/lstm_758/while/lstm_cell_653/mul:z:05sequential_252/lstm_758/while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_252/lstm_758/while/lstm_cell_653/Sigmoid_2Sigmoid:sequential_252/lstm_758/while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_252/lstm_758/while/lstm_cell_653/Relu_1Relu5sequential_252/lstm_758/while/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_252/lstm_758/while/lstm_cell_653/mul_2Mul9sequential_252/lstm_758/while/lstm_cell_653/Sigmoid_2:y:0@sequential_252/lstm_758/while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_252/lstm_758/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_252_lstm_758_while_placeholder_1)sequential_252_lstm_758_while_placeholder5sequential_252/lstm_758/while/lstm_cell_653/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_252/lstm_758/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_252/lstm_758/while/addAddV2)sequential_252_lstm_758_while_placeholder,sequential_252/lstm_758/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_252/lstm_758/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_252/lstm_758/while/add_1AddV2Hsequential_252_lstm_758_while_sequential_252_lstm_758_while_loop_counter.sequential_252/lstm_758/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_252/lstm_758/while/IdentityIdentity'sequential_252/lstm_758/while/add_1:z:0#^sequential_252/lstm_758/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_758/while/Identity_1IdentityNsequential_252_lstm_758_while_sequential_252_lstm_758_while_maximum_iterations#^sequential_252/lstm_758/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_758/while/Identity_2Identity%sequential_252/lstm_758/while/add:z:0#^sequential_252/lstm_758/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_758/while/Identity_3IdentityRsequential_252/lstm_758/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_252/lstm_758/while/NoOp*
T0*
_output_shapes
: ?
(sequential_252/lstm_758/while/Identity_4Identity5sequential_252/lstm_758/while/lstm_cell_653/mul_2:z:0#^sequential_252/lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_252/lstm_758/while/Identity_5Identity5sequential_252/lstm_758/while/lstm_cell_653/add_1:z:0#^sequential_252/lstm_758/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_252/lstm_758/while/NoOpNoOpC^sequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOpB^sequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOpD^sequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_252_lstm_758_while_identity/sequential_252/lstm_758/while/Identity:output:0"]
(sequential_252_lstm_758_while_identity_11sequential_252/lstm_758/while/Identity_1:output:0"]
(sequential_252_lstm_758_while_identity_21sequential_252/lstm_758/while/Identity_2:output:0"]
(sequential_252_lstm_758_while_identity_31sequential_252/lstm_758/while/Identity_3:output:0"]
(sequential_252_lstm_758_while_identity_41sequential_252/lstm_758/while/Identity_4:output:0"]
(sequential_252_lstm_758_while_identity_51sequential_252/lstm_758/while/Identity_5:output:0"?
Ksequential_252_lstm_758_while_lstm_cell_653_biasadd_readvariableop_resourceMsequential_252_lstm_758_while_lstm_cell_653_biasadd_readvariableop_resource_0"?
Lsequential_252_lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resourceNsequential_252_lstm_758_while_lstm_cell_653_matmul_1_readvariableop_resource_0"?
Jsequential_252_lstm_758_while_lstm_cell_653_matmul_readvariableop_resourceLsequential_252_lstm_758_while_lstm_cell_653_matmul_readvariableop_resource_0"?
Esequential_252_lstm_758_while_sequential_252_lstm_758_strided_slice_1Gsequential_252_lstm_758_while_sequential_252_lstm_758_strided_slice_1_0"?
?sequential_252_lstm_758_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_758_tensorarrayunstack_tensorlistfromtensor?sequential_252_lstm_758_while_tensorarrayv2read_tensorlistgetitem_sequential_252_lstm_758_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOpBsequential_252/lstm_758/while/lstm_cell_653/BiasAdd/ReadVariableOp2?
Asequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOpAsequential_252/lstm_758/while/lstm_cell_653/MatMul/ReadVariableOp2?
Csequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOpCsequential_252/lstm_758/while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951417

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
0__inference_sequential_252_layer_call_fn_3953518

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
GPU 2J 8? *T
fORM
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953317o
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
while_cond_3955519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3955519___redundant_placeholder05
1while_while_cond_3955519___redundant_placeholder15
1while_while_cond_3955519___redundant_placeholder25
1while_while_cond_3955519___redundant_placeholder3
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
0__inference_sequential_252_layer_call_fn_3953491

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
GPU 2J 8? *T
fORM
K__inference_sequential_252_layer_call_and_return_conditional_losses_3952728o
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
while_body_3952835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_653_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_653_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_653_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_653_matmul_readvariableop_resource:2(F
4while_lstm_cell_653_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_653_biasadd_readvariableop_resource:(??*while/lstm_cell_653/BiasAdd/ReadVariableOp?)while/lstm_cell_653/MatMul/ReadVariableOp?+while/lstm_cell_653/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_653_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_653/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_653_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_653/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_653/addAddV2$while/lstm_cell_653/MatMul:product:0&while/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_653_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_653/BiasAddBiasAddwhile/lstm_cell_653/add:z:02while/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_653/splitSplit,while/lstm_cell_653/split/split_dim:output:0$while/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_653/SigmoidSigmoid"while/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_1Sigmoid"while/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mulMul!while/lstm_cell_653/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_653/ReluRelu"while/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_1Mulwhile/lstm_cell_653/Sigmoid:y:0&while/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/add_1AddV2while/lstm_cell_653/mul:z:0while/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_653/Sigmoid_2Sigmoid"while/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_653/Relu_1Reluwhile/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_653/mul_2Mul!while/lstm_cell_653/Sigmoid_2:y:0(while/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_653/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_653/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_653/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_653/BiasAdd/ReadVariableOp*^while/lstm_cell_653/MatMul/ReadVariableOp,^while/lstm_cell_653/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_653_biasadd_readvariableop_resource5while_lstm_cell_653_biasadd_readvariableop_resource_0"n
4while_lstm_cell_653_matmul_1_readvariableop_resource6while_lstm_cell_653_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_653_matmul_readvariableop_resource4while_lstm_cell_653_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_653/BiasAdd/ReadVariableOp*while/lstm_cell_653/BiasAdd/ReadVariableOp2V
)while/lstm_cell_653/MatMul/ReadVariableOp)while/lstm_cell_653/MatMul/ReadVariableOp2Z
+while/lstm_cell_653/MatMul_1/ReadVariableOp+while/lstm_cell_653/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3951984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3951984___redundant_placeholder05
1while_while_cond_3951984___redundant_placeholder15
1while_while_cond_3951984___redundant_placeholder25
1while_while_cond_3951984___redundant_placeholder3
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
*sequential_252_lstm_757_while_cond_3950974L
Hsequential_252_lstm_757_while_sequential_252_lstm_757_while_loop_counterR
Nsequential_252_lstm_757_while_sequential_252_lstm_757_while_maximum_iterations-
)sequential_252_lstm_757_while_placeholder/
+sequential_252_lstm_757_while_placeholder_1/
+sequential_252_lstm_757_while_placeholder_2/
+sequential_252_lstm_757_while_placeholder_3N
Jsequential_252_lstm_757_while_less_sequential_252_lstm_757_strided_slice_1e
asequential_252_lstm_757_while_sequential_252_lstm_757_while_cond_3950974___redundant_placeholder0e
asequential_252_lstm_757_while_sequential_252_lstm_757_while_cond_3950974___redundant_placeholder1e
asequential_252_lstm_757_while_sequential_252_lstm_757_while_cond_3950974___redundant_placeholder2e
asequential_252_lstm_757_while_sequential_252_lstm_757_while_cond_3950974___redundant_placeholder3*
&sequential_252_lstm_757_while_identity
?
"sequential_252/lstm_757/while/LessLess)sequential_252_lstm_757_while_placeholderJsequential_252_lstm_757_while_less_sequential_252_lstm_757_strided_slice_1*
T0*
_output_shapes
: {
&sequential_252/lstm_757/while/IdentityIdentity&sequential_252/lstm_757/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_252_lstm_757_while_identity/sequential_252/lstm_757/while/Identity:output:0*(
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3951354

inputs(
lstm_cell_651_3951272:	?(
lstm_cell_651_3951274:	d?$
lstm_cell_651_3951276:	?
identity??%lstm_cell_651/StatefulPartitionedCall?while;
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
%lstm_cell_651/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_651_3951272lstm_cell_651_3951274lstm_cell_651_3951276*
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3951271n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_651_3951272lstm_cell_651_3951274lstm_cell_651_3951276*
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
while_body_3951285*
condR
while_cond_3951284*K
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
NoOpNoOp&^lstm_cell_651/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_651/StatefulPartitionedCall%lstm_cell_651/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_252_layer_call_fn_3953369
lstm_756_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_756_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953317o
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
_user_specified_namelstm_756_input
?
?
*__inference_lstm_757_layer_call_fn_3954999
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3951704|
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956403

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
*__inference_lstm_758_layer_call_fn_3955626
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952245o
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
?
E__inference_lstm_758_layer_call_and_return_conditional_losses_3952245

inputs'
lstm_cell_653_3952163:2('
lstm_cell_653_3952165:
(#
lstm_cell_653_3952167:(
identity??%lstm_cell_653/StatefulPartitionedCall?while;
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
%lstm_cell_653/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_653_3952163lstm_cell_653_3952165lstm_cell_653_3952167*
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3952117n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_653_3952163lstm_cell_653_3952165lstm_cell_653_3952167*
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
while_body_3952176*
condR
while_cond_3952175*K
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
NoOpNoOp&^lstm_cell_653/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_653/StatefulPartitionedCall%lstm_cell_653/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_756_layer_call_fn_3954383
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3951354|
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
?
*__inference_lstm_756_layer_call_fn_3954405

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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3952403s
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
while_cond_3954617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3954617___redundant_placeholder05
1while_while_cond_3954617___redundant_placeholder15
1while_while_cond_3954617___redundant_placeholder25
1while_while_cond_3954617___redundant_placeholder3
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
while_body_3952176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_653_3952200_0:2(/
while_lstm_cell_653_3952202_0:
(+
while_lstm_cell_653_3952204_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_653_3952200:2(-
while_lstm_cell_653_3952202:
()
while_lstm_cell_653_3952204:(??+while/lstm_cell_653/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_653/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_653_3952200_0while_lstm_cell_653_3952202_0while_lstm_cell_653_3952204_0*
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3952117?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_653/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_653/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_653/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_653/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_653_3952200while_lstm_cell_653_3952200_0"<
while_lstm_cell_653_3952202while_lstm_cell_653_3952202_0"<
while_lstm_cell_653_3952204while_lstm_cell_653_3952204_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_653/StatefulPartitionedCall+while/lstm_cell_653/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3952175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952175___redundant_placeholder05
1while_while_cond_3952175___redundant_placeholder15
1while_while_cond_3952175___redundant_placeholder25
1while_while_cond_3952175___redundant_placeholder3
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

lstm_757_while_body_3953716.
*lstm_757_while_lstm_757_while_loop_counter4
0lstm_757_while_lstm_757_while_maximum_iterations
lstm_757_while_placeholder 
lstm_757_while_placeholder_1 
lstm_757_while_placeholder_2 
lstm_757_while_placeholder_3-
)lstm_757_while_lstm_757_strided_slice_1_0i
elstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0:	d?R
?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?M
>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
lstm_757_while_identity
lstm_757_while_identity_1
lstm_757_while_identity_2
lstm_757_while_identity_3
lstm_757_while_identity_4
lstm_757_while_identity_5+
'lstm_757_while_lstm_757_strided_slice_1g
clstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensorN
;lstm_757_while_lstm_cell_652_matmul_readvariableop_resource:	d?P
=lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource:	2?K
<lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource:	???3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp?2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp?4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp?
@lstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_757/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0lstm_757_while_placeholderIlstm_757/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_757/while/lstm_cell_652/MatMulMatMul9lstm_757/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_757/while/lstm_cell_652/MatMul_1MatMullstm_757_while_placeholder_2<lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_757/while/lstm_cell_652/addAddV2-lstm_757/while/lstm_cell_652/MatMul:product:0/lstm_757/while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_757/while/lstm_cell_652/BiasAddBiasAdd$lstm_757/while/lstm_cell_652/add:z:0;lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_757/while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_757/while/lstm_cell_652/splitSplit5lstm_757/while/lstm_cell_652/split/split_dim:output:0-lstm_757/while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_757/while/lstm_cell_652/SigmoidSigmoid+lstm_757/while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_757/while/lstm_cell_652/Sigmoid_1Sigmoid+lstm_757/while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_757/while/lstm_cell_652/mulMul*lstm_757/while/lstm_cell_652/Sigmoid_1:y:0lstm_757_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_757/while/lstm_cell_652/ReluRelu+lstm_757/while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/mul_1Mul(lstm_757/while/lstm_cell_652/Sigmoid:y:0/lstm_757/while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/add_1AddV2$lstm_757/while/lstm_cell_652/mul:z:0&lstm_757/while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_757/while/lstm_cell_652/Sigmoid_2Sigmoid+lstm_757/while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_757/while/lstm_cell_652/Relu_1Relu&lstm_757/while/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_757/while/lstm_cell_652/mul_2Mul*lstm_757/while/lstm_cell_652/Sigmoid_2:y:01lstm_757/while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_757/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_757_while_placeholder_1lstm_757_while_placeholder&lstm_757/while/lstm_cell_652/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_757/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_757/while/addAddV2lstm_757_while_placeholderlstm_757/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_757/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_757/while/add_1AddV2*lstm_757_while_lstm_757_while_loop_counterlstm_757/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_757/while/IdentityIdentitylstm_757/while/add_1:z:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_1Identity0lstm_757_while_lstm_757_while_maximum_iterations^lstm_757/while/NoOp*
T0*
_output_shapes
: t
lstm_757/while/Identity_2Identitylstm_757/while/add:z:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_3IdentityClstm_757/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_757/while/NoOp*
T0*
_output_shapes
: ?
lstm_757/while/Identity_4Identity&lstm_757/while/lstm_cell_652/mul_2:z:0^lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_757/while/Identity_5Identity&lstm_757/while/lstm_cell_652/add_1:z:0^lstm_757/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_757/while/NoOpNoOp4^lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp3^lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp5^lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_757_while_identity lstm_757/while/Identity:output:0"?
lstm_757_while_identity_1"lstm_757/while/Identity_1:output:0"?
lstm_757_while_identity_2"lstm_757/while/Identity_2:output:0"?
lstm_757_while_identity_3"lstm_757/while/Identity_3:output:0"?
lstm_757_while_identity_4"lstm_757/while/Identity_4:output:0"?
lstm_757_while_identity_5"lstm_757/while/Identity_5:output:0"T
'lstm_757_while_lstm_757_strided_slice_1)lstm_757_while_lstm_757_strided_slice_1_0"~
<lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource>lstm_757_while_lstm_cell_652_biasadd_readvariableop_resource_0"?
=lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource?lstm_757_while_lstm_cell_652_matmul_1_readvariableop_resource_0"|
;lstm_757_while_lstm_cell_652_matmul_readvariableop_resource=lstm_757_while_lstm_cell_652_matmul_readvariableop_resource_0"?
clstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensorelstm_757_while_tensorarrayv2read_tensorlistgetitem_lstm_757_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp3lstm_757/while/lstm_cell_652/BiasAdd/ReadVariableOp2h
2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp2lstm_757/while/lstm_cell_652/MatMul/ReadVariableOp2l
4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp4lstm_757/while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3951704

inputs(
lstm_cell_652_3951622:	d?(
lstm_cell_652_3951624:	2?$
lstm_cell_652_3951626:	?
identity??%lstm_cell_652/StatefulPartitionedCall?while;
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
%lstm_cell_652/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_652_3951622lstm_cell_652_3951624lstm_cell_652_3951626*
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3951621n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_652_3951622lstm_cell_652_3951624lstm_cell_652_3951626*
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
while_body_3951635*
condR
while_cond_3951634*K
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
NoOpNoOp&^lstm_cell_652/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_652/StatefulPartitionedCall%lstm_cell_652/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3952319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_651_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_651_matmul_readvariableop_resource:	?G
4while_lstm_cell_651_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_651_biasadd_readvariableop_resource:	???*while/lstm_cell_651/BiasAdd/ReadVariableOp?)while/lstm_cell_651/MatMul/ReadVariableOp?+while/lstm_cell_651/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_651/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_651/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_651/addAddV2$while/lstm_cell_651/MatMul:product:0&while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_651/BiasAddBiasAddwhile/lstm_cell_651/add:z:02while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_651/splitSplit,while/lstm_cell_651/split/split_dim:output:0$while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_651/SigmoidSigmoid"while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_1Sigmoid"while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mulMul!while/lstm_cell_651/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_651/ReluRelu"while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_1Mulwhile/lstm_cell_651/Sigmoid:y:0&while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/add_1AddV2while/lstm_cell_651/mul:z:0while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_651/Sigmoid_2Sigmoid"while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_651/Relu_1Reluwhile/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_651/mul_2Mul!while/lstm_cell_651/Sigmoid_2:y:0(while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_651/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_651/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_651/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_651/BiasAdd/ReadVariableOp*^while/lstm_cell_651/MatMul/ReadVariableOp,^while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_651_biasadd_readvariableop_resource5while_lstm_cell_651_biasadd_readvariableop_resource_0"n
4while_lstm_cell_651_matmul_1_readvariableop_resource6while_lstm_cell_651_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_651_matmul_readvariableop_resource4while_lstm_cell_651_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_651/BiasAdd/ReadVariableOp*while/lstm_cell_651/BiasAdd/ReadVariableOp2V
)while/lstm_cell_651/MatMul/ReadVariableOp)while/lstm_cell_651/MatMul/ReadVariableOp2Z
+while/lstm_cell_651/MatMul_1/ReadVariableOp+while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_756_while_cond_3953576.
*lstm_756_while_lstm_756_while_loop_counter4
0lstm_756_while_lstm_756_while_maximum_iterations
lstm_756_while_placeholder 
lstm_756_while_placeholder_1 
lstm_756_while_placeholder_2 
lstm_756_while_placeholder_30
,lstm_756_while_less_lstm_756_strided_slice_1G
Clstm_756_while_lstm_756_while_cond_3953576___redundant_placeholder0G
Clstm_756_while_lstm_756_while_cond_3953576___redundant_placeholder1G
Clstm_756_while_lstm_756_while_cond_3953576___redundant_placeholder2G
Clstm_756_while_lstm_756_while_cond_3953576___redundant_placeholder3
lstm_756_while_identity
?
lstm_756/while/LessLesslstm_756_while_placeholder,lstm_756_while_less_lstm_756_strided_slice_1*
T0*
_output_shapes
: ]
lstm_756/while/IdentityIdentitylstm_756/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_756_while_identity lstm_756/while/Identity:output:0*(
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

lstm_756_while_body_3953577.
*lstm_756_while_lstm_756_while_loop_counter4
0lstm_756_while_lstm_756_while_maximum_iterations
lstm_756_while_placeholder 
lstm_756_while_placeholder_1 
lstm_756_while_placeholder_2 
lstm_756_while_placeholder_3-
)lstm_756_while_lstm_756_strided_slice_1_0i
elstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0:	?R
?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0:	d?M
>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0:	?
lstm_756_while_identity
lstm_756_while_identity_1
lstm_756_while_identity_2
lstm_756_while_identity_3
lstm_756_while_identity_4
lstm_756_while_identity_5+
'lstm_756_while_lstm_756_strided_slice_1g
clstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensorN
;lstm_756_while_lstm_cell_651_matmul_readvariableop_resource:	?P
=lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource:	d?K
<lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource:	???3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp?2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp?4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp?
@lstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_756/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0lstm_756_while_placeholderIlstm_756/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_756/while/lstm_cell_651/MatMulMatMul9lstm_756/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_756/while/lstm_cell_651/MatMul_1MatMullstm_756_while_placeholder_2<lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_756/while/lstm_cell_651/addAddV2-lstm_756/while/lstm_cell_651/MatMul:product:0/lstm_756/while/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_756/while/lstm_cell_651/BiasAddBiasAdd$lstm_756/while/lstm_cell_651/add:z:0;lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_756/while/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_756/while/lstm_cell_651/splitSplit5lstm_756/while/lstm_cell_651/split/split_dim:output:0-lstm_756/while/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_756/while/lstm_cell_651/SigmoidSigmoid+lstm_756/while/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_756/while/lstm_cell_651/Sigmoid_1Sigmoid+lstm_756/while/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_756/while/lstm_cell_651/mulMul*lstm_756/while/lstm_cell_651/Sigmoid_1:y:0lstm_756_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_756/while/lstm_cell_651/ReluRelu+lstm_756/while/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/mul_1Mul(lstm_756/while/lstm_cell_651/Sigmoid:y:0/lstm_756/while/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/add_1AddV2$lstm_756/while/lstm_cell_651/mul:z:0&lstm_756/while/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_756/while/lstm_cell_651/Sigmoid_2Sigmoid+lstm_756/while/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_756/while/lstm_cell_651/Relu_1Relu&lstm_756/while/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_756/while/lstm_cell_651/mul_2Mul*lstm_756/while/lstm_cell_651/Sigmoid_2:y:01lstm_756/while/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_756/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_756_while_placeholder_1lstm_756_while_placeholder&lstm_756/while/lstm_cell_651/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_756/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_756/while/addAddV2lstm_756_while_placeholderlstm_756/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_756/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_756/while/add_1AddV2*lstm_756_while_lstm_756_while_loop_counterlstm_756/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_756/while/IdentityIdentitylstm_756/while/add_1:z:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_1Identity0lstm_756_while_lstm_756_while_maximum_iterations^lstm_756/while/NoOp*
T0*
_output_shapes
: t
lstm_756/while/Identity_2Identitylstm_756/while/add:z:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_3IdentityClstm_756/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_756/while/NoOp*
T0*
_output_shapes
: ?
lstm_756/while/Identity_4Identity&lstm_756/while/lstm_cell_651/mul_2:z:0^lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_756/while/Identity_5Identity&lstm_756/while/lstm_cell_651/add_1:z:0^lstm_756/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_756/while/NoOpNoOp4^lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp3^lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp5^lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_756_while_identity lstm_756/while/Identity:output:0"?
lstm_756_while_identity_1"lstm_756/while/Identity_1:output:0"?
lstm_756_while_identity_2"lstm_756/while/Identity_2:output:0"?
lstm_756_while_identity_3"lstm_756/while/Identity_3:output:0"?
lstm_756_while_identity_4"lstm_756/while/Identity_4:output:0"?
lstm_756_while_identity_5"lstm_756/while/Identity_5:output:0"T
'lstm_756_while_lstm_756_strided_slice_1)lstm_756_while_lstm_756_strided_slice_1_0"~
<lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource>lstm_756_while_lstm_cell_651_biasadd_readvariableop_resource_0"?
=lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource?lstm_756_while_lstm_cell_651_matmul_1_readvariableop_resource_0"|
;lstm_756_while_lstm_cell_651_matmul_readvariableop_resource=lstm_756_while_lstm_cell_651_matmul_readvariableop_resource_0"?
clstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensorelstm_756_while_tensorarrayv2read_tensorlistgetitem_lstm_756_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp3lstm_756/while/lstm_cell_651/BiasAdd/ReadVariableOp2h
2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp2lstm_756/while/lstm_cell_651/MatMul/ReadVariableOp2l
4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp4lstm_756/while/lstm_cell_651/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3952999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3952999___redundant_placeholder05
1while_while_cond_3952999___redundant_placeholder15
1while_while_cond_3952999___redundant_placeholder25
1while_while_cond_3952999___redundant_placeholder3
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
??
?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3954372

inputsH
5lstm_756_lstm_cell_651_matmul_readvariableop_resource:	?J
7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource:	d?E
6lstm_756_lstm_cell_651_biasadd_readvariableop_resource:	?H
5lstm_757_lstm_cell_652_matmul_readvariableop_resource:	d?J
7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource:	2?E
6lstm_757_lstm_cell_652_biasadd_readvariableop_resource:	?G
5lstm_758_lstm_cell_653_matmul_readvariableop_resource:2(I
7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource:
(D
6lstm_758_lstm_cell_653_biasadd_readvariableop_resource:(:
(dense_252_matmul_readvariableop_resource:
7
)dense_252_biasadd_readvariableop_resource:
identity?? dense_252/BiasAdd/ReadVariableOp?dense_252/MatMul/ReadVariableOp?-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp?,lstm_756/lstm_cell_651/MatMul/ReadVariableOp?.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp?lstm_756/while?-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp?,lstm_757/lstm_cell_652/MatMul/ReadVariableOp?.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp?lstm_757/while?-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp?,lstm_758/lstm_cell_653/MatMul/ReadVariableOp?.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp?lstm_758/whileD
lstm_756/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_756/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_756/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_756/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_sliceStridedSlicelstm_756/Shape:output:0%lstm_756/strided_slice/stack:output:0'lstm_756/strided_slice/stack_1:output:0'lstm_756/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_756/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_756/zeros/packedPacklstm_756/strided_slice:output:0 lstm_756/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_756/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_756/zerosFilllstm_756/zeros/packed:output:0lstm_756/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_756/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_756/zeros_1/packedPacklstm_756/strided_slice:output:0"lstm_756/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_756/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_756/zeros_1Fill lstm_756/zeros_1/packed:output:0lstm_756/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_756/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_756/transpose	Transposeinputs lstm_756/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_756/Shape_1Shapelstm_756/transpose:y:0*
T0*
_output_shapes
:h
lstm_756/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_756/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_1StridedSlicelstm_756/Shape_1:output:0'lstm_756/strided_slice_1/stack:output:0)lstm_756/strided_slice_1/stack_1:output:0)lstm_756/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_756/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_756/TensorArrayV2TensorListReserve-lstm_756/TensorArrayV2/element_shape:output:0!lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_756/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_756/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_756/transpose:y:0Glstm_756/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_756/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_756/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_2StridedSlicelstm_756/transpose:y:0'lstm_756/strided_slice_2/stack:output:0)lstm_756/strided_slice_2/stack_1:output:0)lstm_756/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_756/lstm_cell_651/MatMul/ReadVariableOpReadVariableOp5lstm_756_lstm_cell_651_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_756/lstm_cell_651/MatMulMatMul!lstm_756/strided_slice_2:output:04lstm_756/lstm_cell_651/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOpReadVariableOp7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_756/lstm_cell_651/MatMul_1MatMullstm_756/zeros:output:06lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_756/lstm_cell_651/addAddV2'lstm_756/lstm_cell_651/MatMul:product:0)lstm_756/lstm_cell_651/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOpReadVariableOp6lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_756/lstm_cell_651/BiasAddBiasAddlstm_756/lstm_cell_651/add:z:05lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_756/lstm_cell_651/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_756/lstm_cell_651/splitSplit/lstm_756/lstm_cell_651/split/split_dim:output:0'lstm_756/lstm_cell_651/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_756/lstm_cell_651/SigmoidSigmoid%lstm_756/lstm_cell_651/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_756/lstm_cell_651/Sigmoid_1Sigmoid%lstm_756/lstm_cell_651/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mulMul$lstm_756/lstm_cell_651/Sigmoid_1:y:0lstm_756/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_756/lstm_cell_651/ReluRelu%lstm_756/lstm_cell_651/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mul_1Mul"lstm_756/lstm_cell_651/Sigmoid:y:0)lstm_756/lstm_cell_651/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/add_1AddV2lstm_756/lstm_cell_651/mul:z:0 lstm_756/lstm_cell_651/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_756/lstm_cell_651/Sigmoid_2Sigmoid%lstm_756/lstm_cell_651/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_756/lstm_cell_651/Relu_1Relu lstm_756/lstm_cell_651/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_756/lstm_cell_651/mul_2Mul$lstm_756/lstm_cell_651/Sigmoid_2:y:0+lstm_756/lstm_cell_651/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_756/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_756/TensorArrayV2_1TensorListReserve/lstm_756/TensorArrayV2_1/element_shape:output:0!lstm_756/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_756/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_756/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_756/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_756/whileWhile$lstm_756/while/loop_counter:output:0*lstm_756/while/maximum_iterations:output:0lstm_756/time:output:0!lstm_756/TensorArrayV2_1:handle:0lstm_756/zeros:output:0lstm_756/zeros_1:output:0!lstm_756/strided_slice_1:output:0@lstm_756/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_756_lstm_cell_651_matmul_readvariableop_resource7lstm_756_lstm_cell_651_matmul_1_readvariableop_resource6lstm_756_lstm_cell_651_biasadd_readvariableop_resource*
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
lstm_756_while_body_3954004*'
condR
lstm_756_while_cond_3954003*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_756/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_756/TensorArrayV2Stack/TensorListStackTensorListStacklstm_756/while:output:3Blstm_756/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_756/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_756/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_756/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_756/strided_slice_3StridedSlice4lstm_756/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_756/strided_slice_3/stack:output:0)lstm_756/strided_slice_3/stack_1:output:0)lstm_756/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_756/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_756/transpose_1	Transpose4lstm_756/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_756/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_756/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_757/ShapeShapelstm_756/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_757/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_757/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_757/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_sliceStridedSlicelstm_757/Shape:output:0%lstm_757/strided_slice/stack:output:0'lstm_757/strided_slice/stack_1:output:0'lstm_757/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_757/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_757/zeros/packedPacklstm_757/strided_slice:output:0 lstm_757/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_757/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_757/zerosFilllstm_757/zeros/packed:output:0lstm_757/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_757/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_757/zeros_1/packedPacklstm_757/strided_slice:output:0"lstm_757/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_757/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_757/zeros_1Fill lstm_757/zeros_1/packed:output:0lstm_757/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_757/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_757/transpose	Transposelstm_756/transpose_1:y:0 lstm_757/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_757/Shape_1Shapelstm_757/transpose:y:0*
T0*
_output_shapes
:h
lstm_757/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_757/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_1StridedSlicelstm_757/Shape_1:output:0'lstm_757/strided_slice_1/stack:output:0)lstm_757/strided_slice_1/stack_1:output:0)lstm_757/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_757/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_757/TensorArrayV2TensorListReserve-lstm_757/TensorArrayV2/element_shape:output:0!lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_757/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_757/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_757/transpose:y:0Glstm_757/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_757/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_757/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_2StridedSlicelstm_757/transpose:y:0'lstm_757/strided_slice_2/stack:output:0)lstm_757/strided_slice_2/stack_1:output:0)lstm_757/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_757/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp5lstm_757_lstm_cell_652_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_757/lstm_cell_652/MatMulMatMul!lstm_757/strided_slice_2:output:04lstm_757/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_757/lstm_cell_652/MatMul_1MatMullstm_757/zeros:output:06lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_757/lstm_cell_652/addAddV2'lstm_757/lstm_cell_652/MatMul:product:0)lstm_757/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp6lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_757/lstm_cell_652/BiasAddBiasAddlstm_757/lstm_cell_652/add:z:05lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_757/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_757/lstm_cell_652/splitSplit/lstm_757/lstm_cell_652/split/split_dim:output:0'lstm_757/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_757/lstm_cell_652/SigmoidSigmoid%lstm_757/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_757/lstm_cell_652/Sigmoid_1Sigmoid%lstm_757/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mulMul$lstm_757/lstm_cell_652/Sigmoid_1:y:0lstm_757/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_757/lstm_cell_652/ReluRelu%lstm_757/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mul_1Mul"lstm_757/lstm_cell_652/Sigmoid:y:0)lstm_757/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/add_1AddV2lstm_757/lstm_cell_652/mul:z:0 lstm_757/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_757/lstm_cell_652/Sigmoid_2Sigmoid%lstm_757/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_757/lstm_cell_652/Relu_1Relu lstm_757/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_757/lstm_cell_652/mul_2Mul$lstm_757/lstm_cell_652/Sigmoid_2:y:0+lstm_757/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_757/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_757/TensorArrayV2_1TensorListReserve/lstm_757/TensorArrayV2_1/element_shape:output:0!lstm_757/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_757/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_757/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_757/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_757/whileWhile$lstm_757/while/loop_counter:output:0*lstm_757/while/maximum_iterations:output:0lstm_757/time:output:0!lstm_757/TensorArrayV2_1:handle:0lstm_757/zeros:output:0lstm_757/zeros_1:output:0!lstm_757/strided_slice_1:output:0@lstm_757/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_757_lstm_cell_652_matmul_readvariableop_resource7lstm_757_lstm_cell_652_matmul_1_readvariableop_resource6lstm_757_lstm_cell_652_biasadd_readvariableop_resource*
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
lstm_757_while_body_3954143*'
condR
lstm_757_while_cond_3954142*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_757/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_757/TensorArrayV2Stack/TensorListStackTensorListStacklstm_757/while:output:3Blstm_757/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_757/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_757/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_757/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_757/strided_slice_3StridedSlice4lstm_757/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_757/strided_slice_3/stack:output:0)lstm_757/strided_slice_3/stack_1:output:0)lstm_757/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_757/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_757/transpose_1	Transpose4lstm_757/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_757/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_757/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_758/ShapeShapelstm_757/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_758/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_758/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_758/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_sliceStridedSlicelstm_758/Shape:output:0%lstm_758/strided_slice/stack:output:0'lstm_758/strided_slice/stack_1:output:0'lstm_758/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_758/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_758/zeros/packedPacklstm_758/strided_slice:output:0 lstm_758/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_758/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_758/zerosFilllstm_758/zeros/packed:output:0lstm_758/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_758/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_758/zeros_1/packedPacklstm_758/strided_slice:output:0"lstm_758/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_758/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_758/zeros_1Fill lstm_758/zeros_1/packed:output:0lstm_758/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_758/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_758/transpose	Transposelstm_757/transpose_1:y:0 lstm_758/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_758/Shape_1Shapelstm_758/transpose:y:0*
T0*
_output_shapes
:h
lstm_758/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_758/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_1StridedSlicelstm_758/Shape_1:output:0'lstm_758/strided_slice_1/stack:output:0)lstm_758/strided_slice_1/stack_1:output:0)lstm_758/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_758/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_758/TensorArrayV2TensorListReserve-lstm_758/TensorArrayV2/element_shape:output:0!lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_758/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_758/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_758/transpose:y:0Glstm_758/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_758/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_758/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_2StridedSlicelstm_758/transpose:y:0'lstm_758/strided_slice_2/stack:output:0)lstm_758/strided_slice_2/stack_1:output:0)lstm_758/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_758/lstm_cell_653/MatMul/ReadVariableOpReadVariableOp5lstm_758_lstm_cell_653_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_758/lstm_cell_653/MatMulMatMul!lstm_758/strided_slice_2:output:04lstm_758/lstm_cell_653/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOpReadVariableOp7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_758/lstm_cell_653/MatMul_1MatMullstm_758/zeros:output:06lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_758/lstm_cell_653/addAddV2'lstm_758/lstm_cell_653/MatMul:product:0)lstm_758/lstm_cell_653/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOpReadVariableOp6lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_758/lstm_cell_653/BiasAddBiasAddlstm_758/lstm_cell_653/add:z:05lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_758/lstm_cell_653/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_758/lstm_cell_653/splitSplit/lstm_758/lstm_cell_653/split/split_dim:output:0'lstm_758/lstm_cell_653/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_758/lstm_cell_653/SigmoidSigmoid%lstm_758/lstm_cell_653/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_758/lstm_cell_653/Sigmoid_1Sigmoid%lstm_758/lstm_cell_653/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mulMul$lstm_758/lstm_cell_653/Sigmoid_1:y:0lstm_758/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_758/lstm_cell_653/ReluRelu%lstm_758/lstm_cell_653/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mul_1Mul"lstm_758/lstm_cell_653/Sigmoid:y:0)lstm_758/lstm_cell_653/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/add_1AddV2lstm_758/lstm_cell_653/mul:z:0 lstm_758/lstm_cell_653/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_758/lstm_cell_653/Sigmoid_2Sigmoid%lstm_758/lstm_cell_653/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_758/lstm_cell_653/Relu_1Relu lstm_758/lstm_cell_653/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_758/lstm_cell_653/mul_2Mul$lstm_758/lstm_cell_653/Sigmoid_2:y:0+lstm_758/lstm_cell_653/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_758/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_758/TensorArrayV2_1TensorListReserve/lstm_758/TensorArrayV2_1/element_shape:output:0!lstm_758/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_758/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_758/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_758/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_758/whileWhile$lstm_758/while/loop_counter:output:0*lstm_758/while/maximum_iterations:output:0lstm_758/time:output:0!lstm_758/TensorArrayV2_1:handle:0lstm_758/zeros:output:0lstm_758/zeros_1:output:0!lstm_758/strided_slice_1:output:0@lstm_758/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_758_lstm_cell_653_matmul_readvariableop_resource7lstm_758_lstm_cell_653_matmul_1_readvariableop_resource6lstm_758_lstm_cell_653_biasadd_readvariableop_resource*
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
lstm_758_while_body_3954282*'
condR
lstm_758_while_cond_3954281*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_758/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_758/TensorArrayV2Stack/TensorListStackTensorListStacklstm_758/while:output:3Blstm_758/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_758/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_758/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_758/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_758/strided_slice_3StridedSlice4lstm_758/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_758/strided_slice_3/stack:output:0)lstm_758/strided_slice_3/stack_1:output:0)lstm_758/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_758/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_758/transpose_1	Transpose4lstm_758/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_758/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_758/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_252/MatMul/ReadVariableOpReadVariableOp(dense_252_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_252/MatMulMatMul!lstm_758/strided_slice_3:output:0'dense_252/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_252/BiasAdd/ReadVariableOpReadVariableOp)dense_252_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_252/BiasAddBiasAdddense_252/MatMul:product:0(dense_252/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_252/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_252/BiasAdd/ReadVariableOp ^dense_252/MatMul/ReadVariableOp.^lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp-^lstm_756/lstm_cell_651/MatMul/ReadVariableOp/^lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp^lstm_756/while.^lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp-^lstm_757/lstm_cell_652/MatMul/ReadVariableOp/^lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp^lstm_757/while.^lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp-^lstm_758/lstm_cell_653/MatMul/ReadVariableOp/^lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp^lstm_758/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_252/BiasAdd/ReadVariableOp dense_252/BiasAdd/ReadVariableOp2B
dense_252/MatMul/ReadVariableOpdense_252/MatMul/ReadVariableOp2^
-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp-lstm_756/lstm_cell_651/BiasAdd/ReadVariableOp2\
,lstm_756/lstm_cell_651/MatMul/ReadVariableOp,lstm_756/lstm_cell_651/MatMul/ReadVariableOp2`
.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp.lstm_756/lstm_cell_651/MatMul_1/ReadVariableOp2 
lstm_756/whilelstm_756/while2^
-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp-lstm_757/lstm_cell_652/BiasAdd/ReadVariableOp2\
,lstm_757/lstm_cell_652/MatMul/ReadVariableOp,lstm_757/lstm_cell_652/MatMul/ReadVariableOp2`
.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp.lstm_757/lstm_cell_652/MatMul_1/ReadVariableOp2 
lstm_757/whilelstm_757/while2^
-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp-lstm_758/lstm_cell_653/BiasAdd/ReadVariableOp2\
,lstm_758/lstm_cell_653/MatMul/ReadVariableOp,lstm_758/lstm_cell_653/MatMul/ReadVariableOp2`
.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp.lstm_758/lstm_cell_653/MatMul_1/ReadVariableOp2 
lstm_758/whilelstm_758/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3955091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_652_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_652_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_652_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_652_matmul_readvariableop_resource:	d?G
4while_lstm_cell_652_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_652_biasadd_readvariableop_resource:	???*while/lstm_cell_652/BiasAdd/ReadVariableOp?)while/lstm_cell_652/MatMul/ReadVariableOp?+while/lstm_cell_652/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_652/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_652_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_652/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_652/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_652/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_652_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_652/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_652/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_652/addAddV2$while/lstm_cell_652/MatMul:product:0&while/lstm_cell_652/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_652/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_652_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_652/BiasAddBiasAddwhile/lstm_cell_652/add:z:02while/lstm_cell_652/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_652/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_652/splitSplit,while/lstm_cell_652/split/split_dim:output:0$while/lstm_cell_652/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_652/SigmoidSigmoid"while/lstm_cell_652/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_1Sigmoid"while/lstm_cell_652/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mulMul!while/lstm_cell_652/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_652/ReluRelu"while/lstm_cell_652/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_1Mulwhile/lstm_cell_652/Sigmoid:y:0&while/lstm_cell_652/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/add_1AddV2while/lstm_cell_652/mul:z:0while/lstm_cell_652/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_652/Sigmoid_2Sigmoid"while/lstm_cell_652/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_652/Relu_1Reluwhile/lstm_cell_652/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_652/mul_2Mul!while/lstm_cell_652/Sigmoid_2:y:0(while/lstm_cell_652/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_652/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_652/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_652/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_652/BiasAdd/ReadVariableOp*^while/lstm_cell_652/MatMul/ReadVariableOp,^while/lstm_cell_652/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_652_biasadd_readvariableop_resource5while_lstm_cell_652_biasadd_readvariableop_resource_0"n
4while_lstm_cell_652_matmul_1_readvariableop_resource6while_lstm_cell_652_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_652_matmul_readvariableop_resource4while_lstm_cell_652_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_652/BiasAdd/ReadVariableOp*while/lstm_cell_652/BiasAdd/ReadVariableOp2V
)while/lstm_cell_652/MatMul/ReadVariableOp)while/lstm_cell_652/MatMul/ReadVariableOp2Z
+while/lstm_cell_652/MatMul_1/ReadVariableOp+while/lstm_cell_652/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_756_input;
 serving_default_lstm_756_input:0?????????=
	dense_2520
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
2dense_252/kernel
:2dense_252/bias
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
0:.	?2lstm_756/lstm_cell_756/kernel
::8	d?2'lstm_756/lstm_cell_756/recurrent_kernel
*:(?2lstm_756/lstm_cell_756/bias
0:.	d?2lstm_757/lstm_cell_757/kernel
::8	2?2'lstm_757/lstm_cell_757/recurrent_kernel
*:(?2lstm_757/lstm_cell_757/bias
/:-2(2lstm_758/lstm_cell_758/kernel
9:7
(2'lstm_758/lstm_cell_758/recurrent_kernel
):'(2lstm_758/lstm_cell_758/bias
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
2Adam/dense_252/kernel/m
!:2Adam/dense_252/bias/m
5:3	?2$Adam/lstm_756/lstm_cell_756/kernel/m
?:=	d?2.Adam/lstm_756/lstm_cell_756/recurrent_kernel/m
/:-?2"Adam/lstm_756/lstm_cell_756/bias/m
5:3	d?2$Adam/lstm_757/lstm_cell_757/kernel/m
?:=	2?2.Adam/lstm_757/lstm_cell_757/recurrent_kernel/m
/:-?2"Adam/lstm_757/lstm_cell_757/bias/m
4:22(2$Adam/lstm_758/lstm_cell_758/kernel/m
>:<
(2.Adam/lstm_758/lstm_cell_758/recurrent_kernel/m
.:,(2"Adam/lstm_758/lstm_cell_758/bias/m
':%
2Adam/dense_252/kernel/v
!:2Adam/dense_252/bias/v
5:3	?2$Adam/lstm_756/lstm_cell_756/kernel/v
?:=	d?2.Adam/lstm_756/lstm_cell_756/recurrent_kernel/v
/:-?2"Adam/lstm_756/lstm_cell_756/bias/v
5:3	d?2$Adam/lstm_757/lstm_cell_757/kernel/v
?:=	2?2.Adam/lstm_757/lstm_cell_757/recurrent_kernel/v
/:-?2"Adam/lstm_757/lstm_cell_757/bias/v
4:22(2$Adam/lstm_758/lstm_cell_758/kernel/v
>:<
(2.Adam/lstm_758/lstm_cell_758/recurrent_kernel/v
.:,(2"Adam/lstm_758/lstm_cell_758/bias/v
?2?
0__inference_sequential_252_layer_call_fn_3952753
0__inference_sequential_252_layer_call_fn_3953491
0__inference_sequential_252_layer_call_fn_3953518
0__inference_sequential_252_layer_call_fn_3953369?
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
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953945
K__inference_sequential_252_layer_call_and_return_conditional_losses_3954372
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953399
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953429?
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
"__inference__wrapped_model_3951204lstm_756_input"?
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
*__inference_lstm_756_layer_call_fn_3954383
*__inference_lstm_756_layer_call_fn_3954394
*__inference_lstm_756_layer_call_fn_3954405
*__inference_lstm_756_layer_call_fn_3954416?
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954559
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954702
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954845
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954988?
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
*__inference_lstm_757_layer_call_fn_3954999
*__inference_lstm_757_layer_call_fn_3955010
*__inference_lstm_757_layer_call_fn_3955021
*__inference_lstm_757_layer_call_fn_3955032?
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955175
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955318
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955461
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955604?
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
*__inference_lstm_758_layer_call_fn_3955615
*__inference_lstm_758_layer_call_fn_3955626
*__inference_lstm_758_layer_call_fn_3955637
*__inference_lstm_758_layer_call_fn_3955648?
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955791
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955934
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956077
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956220?
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
+__inference_dense_252_layer_call_fn_3956229?
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
F__inference_dense_252_layer_call_and_return_conditional_losses_3956239?
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
%__inference_signature_wrapper_3953464lstm_756_input"?
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
/__inference_lstm_cell_651_layer_call_fn_3956256
/__inference_lstm_cell_651_layer_call_fn_3956273?
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956305
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956337?
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
/__inference_lstm_cell_652_layer_call_fn_3956354
/__inference_lstm_cell_652_layer_call_fn_3956371?
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956403
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956435?
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
/__inference_lstm_cell_653_layer_call_fn_3956452
/__inference_lstm_cell_653_layer_call_fn_3956469?
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956501
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956533?
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
"__inference__wrapped_model_3951204?-./012345!";?8
1?.
,?)
lstm_756_input?????????
? "5?2
0
	dense_252#? 
	dense_252??????????
F__inference_dense_252_layer_call_and_return_conditional_losses_3956239\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_252_layer_call_fn_3956229O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954559?-./O?L
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954702?-./O?L
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954845q-./??<
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
E__inference_lstm_756_layer_call_and_return_conditional_losses_3954988q-./??<
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
*__inference_lstm_756_layer_call_fn_3954383}-./O?L
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
*__inference_lstm_756_layer_call_fn_3954394}-./O?L
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
*__inference_lstm_756_layer_call_fn_3954405d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_756_layer_call_fn_3954416d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955175?012O?L
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955318?012O?L
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955461q012??<
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
E__inference_lstm_757_layer_call_and_return_conditional_losses_3955604q012??<
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
*__inference_lstm_757_layer_call_fn_3954999}012O?L
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
*__inference_lstm_757_layer_call_fn_3955010}012O?L
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
*__inference_lstm_757_layer_call_fn_3955021d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_757_layer_call_fn_3955032d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955791}345O?L
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3955934}345O?L
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956077m345??<
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
E__inference_lstm_758_layer_call_and_return_conditional_losses_3956220m345??<
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
*__inference_lstm_758_layer_call_fn_3955615p345O?L
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
*__inference_lstm_758_layer_call_fn_3955626p345O?L
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
*__inference_lstm_758_layer_call_fn_3955637`345??<
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
*__inference_lstm_758_layer_call_fn_3955648`345??<
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956305?-./??}
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
J__inference_lstm_cell_651_layer_call_and_return_conditional_losses_3956337?-./??}
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
/__inference_lstm_cell_651_layer_call_fn_3956256?-./??}
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
/__inference_lstm_cell_651_layer_call_fn_3956273?-./??}
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956403?012??}
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
J__inference_lstm_cell_652_layer_call_and_return_conditional_losses_3956435?012??}
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
/__inference_lstm_cell_652_layer_call_fn_3956354?012??}
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
/__inference_lstm_cell_652_layer_call_fn_3956371?012??}
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956501?345??}
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
J__inference_lstm_cell_653_layer_call_and_return_conditional_losses_3956533?345??}
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
/__inference_lstm_cell_653_layer_call_fn_3956452?345??}
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
/__inference_lstm_cell_653_layer_call_fn_3956469?345??}
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
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953399y-./012345!"C?@
9?6
,?)
lstm_756_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953429y-./012345!"C?@
9?6
,?)
lstm_756_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_252_layer_call_and_return_conditional_losses_3953945q-./012345!";?8
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
K__inference_sequential_252_layer_call_and_return_conditional_losses_3954372q-./012345!";?8
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
0__inference_sequential_252_layer_call_fn_3952753l-./012345!"C?@
9?6
,?)
lstm_756_input?????????
p 

 
? "???????????
0__inference_sequential_252_layer_call_fn_3953369l-./012345!"C?@
9?6
,?)
lstm_756_input?????????
p

 
? "???????????
0__inference_sequential_252_layer_call_fn_3953491d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_252_layer_call_fn_3953518d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3953464?-./012345!"M?J
? 
C?@
>
lstm_756_input,?)
lstm_756_input?????????"5?2
0
	dense_252#? 
	dense_252?????????