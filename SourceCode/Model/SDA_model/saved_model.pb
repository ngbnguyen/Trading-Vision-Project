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
dense_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_172/kernel
u
$dense_172/kernel/Read/ReadVariableOpReadVariableOpdense_172/kernel*
_output_shapes

:
*
dtype0
t
dense_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_172/bias
m
"dense_172/bias/Read/ReadVariableOpReadVariableOpdense_172/bias*
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
lstm_516/lstm_cell_516/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_516/lstm_cell_516/kernel
?
1lstm_516/lstm_cell_516/kernel/Read/ReadVariableOpReadVariableOplstm_516/lstm_cell_516/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_516/lstm_cell_516/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_516/lstm_cell_516/recurrent_kernel
?
;lstm_516/lstm_cell_516/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_516/lstm_cell_516/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_516/lstm_cell_516/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_516/lstm_cell_516/bias
?
/lstm_516/lstm_cell_516/bias/Read/ReadVariableOpReadVariableOplstm_516/lstm_cell_516/bias*
_output_shapes	
:?*
dtype0
?
lstm_517/lstm_cell_517/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_517/lstm_cell_517/kernel
?
1lstm_517/lstm_cell_517/kernel/Read/ReadVariableOpReadVariableOplstm_517/lstm_cell_517/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_517/lstm_cell_517/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_517/lstm_cell_517/recurrent_kernel
?
;lstm_517/lstm_cell_517/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_517/lstm_cell_517/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_517/lstm_cell_517/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_517/lstm_cell_517/bias
?
/lstm_517/lstm_cell_517/bias/Read/ReadVariableOpReadVariableOplstm_517/lstm_cell_517/bias*
_output_shapes	
:?*
dtype0
?
lstm_518/lstm_cell_518/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_518/lstm_cell_518/kernel
?
1lstm_518/lstm_cell_518/kernel/Read/ReadVariableOpReadVariableOplstm_518/lstm_cell_518/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_518/lstm_cell_518/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_518/lstm_cell_518/recurrent_kernel
?
;lstm_518/lstm_cell_518/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_518/lstm_cell_518/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_518/lstm_cell_518/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_518/lstm_cell_518/bias
?
/lstm_518/lstm_cell_518/bias/Read/ReadVariableOpReadVariableOplstm_518/lstm_cell_518/bias*
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
Adam/dense_172/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_172/kernel/m
?
+Adam/dense_172/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_172/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_172/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_172/bias/m
{
)Adam/dense_172/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_172/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_516/lstm_cell_516/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_516/lstm_cell_516/kernel/m
?
8Adam/lstm_516/lstm_cell_516/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_516/lstm_cell_516/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_516/lstm_cell_516/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_516/lstm_cell_516/recurrent_kernel/m
?
BAdam/lstm_516/lstm_cell_516/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_516/lstm_cell_516/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_516/lstm_cell_516/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_516/lstm_cell_516/bias/m
?
6Adam/lstm_516/lstm_cell_516/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_516/lstm_cell_516/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_517/lstm_cell_517/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_517/lstm_cell_517/kernel/m
?
8Adam/lstm_517/lstm_cell_517/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_517/lstm_cell_517/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_517/lstm_cell_517/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_517/lstm_cell_517/recurrent_kernel/m
?
BAdam/lstm_517/lstm_cell_517/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_517/lstm_cell_517/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_517/lstm_cell_517/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_517/lstm_cell_517/bias/m
?
6Adam/lstm_517/lstm_cell_517/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_517/lstm_cell_517/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_518/lstm_cell_518/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_518/lstm_cell_518/kernel/m
?
8Adam/lstm_518/lstm_cell_518/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_518/lstm_cell_518/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_518/lstm_cell_518/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_518/lstm_cell_518/recurrent_kernel/m
?
BAdam/lstm_518/lstm_cell_518/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_518/lstm_cell_518/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_518/lstm_cell_518/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_518/lstm_cell_518/bias/m
?
6Adam/lstm_518/lstm_cell_518/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_518/lstm_cell_518/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_172/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_172/kernel/v
?
+Adam/dense_172/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_172/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_172/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_172/bias/v
{
)Adam/dense_172/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_172/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_516/lstm_cell_516/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_516/lstm_cell_516/kernel/v
?
8Adam/lstm_516/lstm_cell_516/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_516/lstm_cell_516/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_516/lstm_cell_516/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_516/lstm_cell_516/recurrent_kernel/v
?
BAdam/lstm_516/lstm_cell_516/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_516/lstm_cell_516/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_516/lstm_cell_516/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_516/lstm_cell_516/bias/v
?
6Adam/lstm_516/lstm_cell_516/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_516/lstm_cell_516/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_517/lstm_cell_517/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_517/lstm_cell_517/kernel/v
?
8Adam/lstm_517/lstm_cell_517/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_517/lstm_cell_517/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_517/lstm_cell_517/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_517/lstm_cell_517/recurrent_kernel/v
?
BAdam/lstm_517/lstm_cell_517/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_517/lstm_cell_517/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_517/lstm_cell_517/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_517/lstm_cell_517/bias/v
?
6Adam/lstm_517/lstm_cell_517/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_517/lstm_cell_517/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_518/lstm_cell_518/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_518/lstm_cell_518/kernel/v
?
8Adam/lstm_518/lstm_cell_518/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_518/lstm_cell_518/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_518/lstm_cell_518/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_518/lstm_cell_518/recurrent_kernel/v
?
BAdam/lstm_518/lstm_cell_518/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_518/lstm_cell_518/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_518/lstm_cell_518/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_518/lstm_cell_518/bias/v
?
6Adam/lstm_518/lstm_cell_518/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_518/lstm_cell_518/bias/v*
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
VARIABLE_VALUEdense_172/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_172/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_516/lstm_cell_516/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_516/lstm_cell_516/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_516/lstm_cell_516/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_517/lstm_cell_517/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_517/lstm_cell_517/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_517/lstm_cell_517/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_518/lstm_cell_518/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_518/lstm_cell_518/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_518/lstm_cell_518/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_172/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_172/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_516/lstm_cell_516/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_516/lstm_cell_516/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_516/lstm_cell_516/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_517/lstm_cell_517/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_517/lstm_cell_517/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_517/lstm_cell_517/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_518/lstm_cell_518/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_518/lstm_cell_518/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_518/lstm_cell_518/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_172/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_172/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_516/lstm_cell_516/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_516/lstm_cell_516/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_516/lstm_cell_516/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_517/lstm_cell_517/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_517/lstm_cell_517/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_517/lstm_cell_517/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_518/lstm_cell_518/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_518/lstm_cell_518/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_518/lstm_cell_518/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_516_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_516_inputlstm_516/lstm_cell_516/kernel'lstm_516/lstm_cell_516/recurrent_kernellstm_516/lstm_cell_516/biaslstm_517/lstm_cell_517/kernel'lstm_517/lstm_cell_517/recurrent_kernellstm_517/lstm_cell_517/biaslstm_518/lstm_cell_518/kernel'lstm_518/lstm_cell_518/recurrent_kernellstm_518/lstm_cell_518/biasdense_172/kerneldense_172/bias*
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
$__inference_signature_wrapper_921947
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_172/kernel/Read/ReadVariableOp"dense_172/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_516/lstm_cell_516/kernel/Read/ReadVariableOp;lstm_516/lstm_cell_516/recurrent_kernel/Read/ReadVariableOp/lstm_516/lstm_cell_516/bias/Read/ReadVariableOp1lstm_517/lstm_cell_517/kernel/Read/ReadVariableOp;lstm_517/lstm_cell_517/recurrent_kernel/Read/ReadVariableOp/lstm_517/lstm_cell_517/bias/Read/ReadVariableOp1lstm_518/lstm_cell_518/kernel/Read/ReadVariableOp;lstm_518/lstm_cell_518/recurrent_kernel/Read/ReadVariableOp/lstm_518/lstm_cell_518/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_172/kernel/m/Read/ReadVariableOp)Adam/dense_172/bias/m/Read/ReadVariableOp8Adam/lstm_516/lstm_cell_516/kernel/m/Read/ReadVariableOpBAdam/lstm_516/lstm_cell_516/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_516/lstm_cell_516/bias/m/Read/ReadVariableOp8Adam/lstm_517/lstm_cell_517/kernel/m/Read/ReadVariableOpBAdam/lstm_517/lstm_cell_517/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_517/lstm_cell_517/bias/m/Read/ReadVariableOp8Adam/lstm_518/lstm_cell_518/kernel/m/Read/ReadVariableOpBAdam/lstm_518/lstm_cell_518/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_518/lstm_cell_518/bias/m/Read/ReadVariableOp+Adam/dense_172/kernel/v/Read/ReadVariableOp)Adam/dense_172/bias/v/Read/ReadVariableOp8Adam/lstm_516/lstm_cell_516/kernel/v/Read/ReadVariableOpBAdam/lstm_516/lstm_cell_516/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_516/lstm_cell_516/bias/v/Read/ReadVariableOp8Adam/lstm_517/lstm_cell_517/kernel/v/Read/ReadVariableOpBAdam/lstm_517/lstm_cell_517/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_517/lstm_cell_517/bias/v/Read/ReadVariableOp8Adam/lstm_518/lstm_cell_518/kernel/v/Read/ReadVariableOpBAdam/lstm_518/lstm_cell_518/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_518/lstm_cell_518/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_925159
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_172/kerneldense_172/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_516/lstm_cell_516/kernel'lstm_516/lstm_cell_516/recurrent_kernellstm_516/lstm_cell_516/biaslstm_517/lstm_cell_517/kernel'lstm_517/lstm_cell_517/recurrent_kernellstm_517/lstm_cell_517/biaslstm_518/lstm_cell_518/kernel'lstm_518/lstm_cell_518/recurrent_kernellstm_518/lstm_cell_518/biastotalcountAdam/dense_172/kernel/mAdam/dense_172/bias/m$Adam/lstm_516/lstm_cell_516/kernel/m.Adam/lstm_516/lstm_cell_516/recurrent_kernel/m"Adam/lstm_516/lstm_cell_516/bias/m$Adam/lstm_517/lstm_cell_517/kernel/m.Adam/lstm_517/lstm_cell_517/recurrent_kernel/m"Adam/lstm_517/lstm_cell_517/bias/m$Adam/lstm_518/lstm_cell_518/kernel/m.Adam/lstm_518/lstm_cell_518/recurrent_kernel/m"Adam/lstm_518/lstm_cell_518/bias/mAdam/dense_172/kernel/vAdam/dense_172/bias/v$Adam/lstm_516/lstm_cell_516/kernel/v.Adam/lstm_516/lstm_cell_516/recurrent_kernel/v"Adam/lstm_516/lstm_cell_516/bias/v$Adam/lstm_517/lstm_cell_517/kernel/v.Adam/lstm_517/lstm_cell_517/recurrent_kernel/v"Adam/lstm_517/lstm_cell_517/bias/v$Adam/lstm_518/lstm_cell_518/kernel/v.Adam/lstm_518/lstm_cell_518/recurrent_kernel/v"Adam/lstm_518/lstm_cell_518/bias/v*4
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
"__inference__traced_restore_925289??+
?
?
.__inference_lstm_cell_152_layer_call_fn_924935

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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920454o
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923185
inputs_0?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_923101*
condR
while_cond_923100*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_172_layer_call_and_return_conditional_losses_921800

inputs"
lstm_516_921773:	?"
lstm_516_921775:	d?
lstm_516_921777:	?"
lstm_517_921780:	d?"
lstm_517_921782:	2?
lstm_517_921784:	?!
lstm_518_921787:2(!
lstm_518_921789:
(
lstm_518_921791:("
dense_172_921794:

dense_172_921796:
identity??!dense_172/StatefulPartitionedCall? lstm_516/StatefulPartitionedCall? lstm_517/StatefulPartitionedCall? lstm_518/StatefulPartitionedCall?
 lstm_516/StatefulPartitionedCallStatefulPartitionedCallinputslstm_516_921773lstm_516_921775lstm_516_921777*
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_921732?
 lstm_517/StatefulPartitionedCallStatefulPartitionedCall)lstm_516/StatefulPartitionedCall:output:0lstm_517_921780lstm_517_921782lstm_517_921784*
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921567?
 lstm_518/StatefulPartitionedCallStatefulPartitionedCall)lstm_517/StatefulPartitionedCall:output:0lstm_518_921787lstm_518_921789lstm_518_921791*
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921402?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_518/StatefulPartitionedCall:output:0dense_172_921794dense_172_921796*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204y
IdentityIdentity*dense_172/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_172/StatefulPartitionedCall!^lstm_516/StatefulPartitionedCall!^lstm_517/StatefulPartitionedCall!^lstm_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2D
 lstm_516/StatefulPartitionedCall lstm_516/StatefulPartitionedCall2D
 lstm_517/StatefulPartitionedCall lstm_517/StatefulPartitionedCall2D
 lstm_518/StatefulPartitionedCall lstm_518/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924918

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
while_body_924333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204

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
while_body_923244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_517_layer_call_fn_923493
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_920378|
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
while_body_921102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_923243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923243___redundant_placeholder04
0while_while_cond_923243___redundant_placeholder14
0while_while_cond_923243___redundant_placeholder24
0while_while_cond_923243___redundant_placeholder3
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

?
$__inference_signature_wrapper_921947
lstm_516_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_516_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_919687o
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
_user_specified_namelstm_516_input
?T
?
)sequential_172_lstm_517_while_body_919458L
Hsequential_172_lstm_517_while_sequential_172_lstm_517_while_loop_counterR
Nsequential_172_lstm_517_while_sequential_172_lstm_517_while_maximum_iterations-
)sequential_172_lstm_517_while_placeholder/
+sequential_172_lstm_517_while_placeholder_1/
+sequential_172_lstm_517_while_placeholder_2/
+sequential_172_lstm_517_while_placeholder_3K
Gsequential_172_lstm_517_while_sequential_172_lstm_517_strided_slice_1_0?
?sequential_172_lstm_517_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_517_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_172_lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0:	d?a
Nsequential_172_lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?\
Msequential_172_lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0:	?*
&sequential_172_lstm_517_while_identity,
(sequential_172_lstm_517_while_identity_1,
(sequential_172_lstm_517_while_identity_2,
(sequential_172_lstm_517_while_identity_3,
(sequential_172_lstm_517_while_identity_4,
(sequential_172_lstm_517_while_identity_5I
Esequential_172_lstm_517_while_sequential_172_lstm_517_strided_slice_1?
?sequential_172_lstm_517_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_517_tensorarrayunstack_tensorlistfromtensor]
Jsequential_172_lstm_517_while_lstm_cell_151_matmul_readvariableop_resource:	d?_
Lsequential_172_lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource:	2?Z
Ksequential_172_lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource:	???Bsequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp?Asequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp?Csequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp?
Osequential_172/lstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_172/lstm_517/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_172_lstm_517_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_517_tensorarrayunstack_tensorlistfromtensor_0)sequential_172_lstm_517_while_placeholderXsequential_172/lstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOpLsequential_172_lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_172/lstm_517/while/lstm_cell_151/MatMulMatMulHsequential_172/lstm_517/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOpNsequential_172_lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_172/lstm_517/while/lstm_cell_151/MatMul_1MatMul+sequential_172_lstm_517_while_placeholder_2Ksequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_172/lstm_517/while/lstm_cell_151/addAddV2<sequential_172/lstm_517/while/lstm_cell_151/MatMul:product:0>sequential_172/lstm_517/while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOpMsequential_172_lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_172/lstm_517/while/lstm_cell_151/BiasAddBiasAdd3sequential_172/lstm_517/while/lstm_cell_151/add:z:0Jsequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_172/lstm_517/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_172/lstm_517/while/lstm_cell_151/splitSplitDsequential_172/lstm_517/while/lstm_cell_151/split/split_dim:output:0<sequential_172/lstm_517/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_172/lstm_517/while/lstm_cell_151/SigmoidSigmoid:sequential_172/lstm_517/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_172/lstm_517/while/lstm_cell_151/Sigmoid_1Sigmoid:sequential_172/lstm_517/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_172/lstm_517/while/lstm_cell_151/mulMul9sequential_172/lstm_517/while/lstm_cell_151/Sigmoid_1:y:0+sequential_172_lstm_517_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_172/lstm_517/while/lstm_cell_151/ReluRelu:sequential_172/lstm_517/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_172/lstm_517/while/lstm_cell_151/mul_1Mul7sequential_172/lstm_517/while/lstm_cell_151/Sigmoid:y:0>sequential_172/lstm_517/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_172/lstm_517/while/lstm_cell_151/add_1AddV23sequential_172/lstm_517/while/lstm_cell_151/mul:z:05sequential_172/lstm_517/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_172/lstm_517/while/lstm_cell_151/Sigmoid_2Sigmoid:sequential_172/lstm_517/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_172/lstm_517/while/lstm_cell_151/Relu_1Relu5sequential_172/lstm_517/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_172/lstm_517/while/lstm_cell_151/mul_2Mul9sequential_172/lstm_517/while/lstm_cell_151/Sigmoid_2:y:0@sequential_172/lstm_517/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_172/lstm_517/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_172_lstm_517_while_placeholder_1)sequential_172_lstm_517_while_placeholder5sequential_172/lstm_517/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_172/lstm_517/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_172/lstm_517/while/addAddV2)sequential_172_lstm_517_while_placeholder,sequential_172/lstm_517/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_172/lstm_517/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_172/lstm_517/while/add_1AddV2Hsequential_172_lstm_517_while_sequential_172_lstm_517_while_loop_counter.sequential_172/lstm_517/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_172/lstm_517/while/IdentityIdentity'sequential_172/lstm_517/while/add_1:z:0#^sequential_172/lstm_517/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_517/while/Identity_1IdentityNsequential_172_lstm_517_while_sequential_172_lstm_517_while_maximum_iterations#^sequential_172/lstm_517/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_517/while/Identity_2Identity%sequential_172/lstm_517/while/add:z:0#^sequential_172/lstm_517/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_517/while/Identity_3IdentityRsequential_172/lstm_517/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_172/lstm_517/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_517/while/Identity_4Identity5sequential_172/lstm_517/while/lstm_cell_151/mul_2:z:0#^sequential_172/lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_172/lstm_517/while/Identity_5Identity5sequential_172/lstm_517/while/lstm_cell_151/add_1:z:0#^sequential_172/lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_172/lstm_517/while/NoOpNoOpC^sequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOpB^sequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOpD^sequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_172_lstm_517_while_identity/sequential_172/lstm_517/while/Identity:output:0"]
(sequential_172_lstm_517_while_identity_11sequential_172/lstm_517/while/Identity_1:output:0"]
(sequential_172_lstm_517_while_identity_21sequential_172/lstm_517/while/Identity_2:output:0"]
(sequential_172_lstm_517_while_identity_31sequential_172/lstm_517/while/Identity_3:output:0"]
(sequential_172_lstm_517_while_identity_41sequential_172/lstm_517/while/Identity_4:output:0"]
(sequential_172_lstm_517_while_identity_51sequential_172/lstm_517/while/Identity_5:output:0"?
Ksequential_172_lstm_517_while_lstm_cell_151_biasadd_readvariableop_resourceMsequential_172_lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0"?
Lsequential_172_lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resourceNsequential_172_lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0"?
Jsequential_172_lstm_517_while_lstm_cell_151_matmul_readvariableop_resourceLsequential_172_lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0"?
Esequential_172_lstm_517_while_sequential_172_lstm_517_strided_slice_1Gsequential_172_lstm_517_while_sequential_172_lstm_517_strided_slice_1_0"?
?sequential_172_lstm_517_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_517_tensorarrayunstack_tensorlistfromtensor?sequential_172_lstm_517_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_517_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOpBsequential_172/lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp2?
Asequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOpAsequential_172/lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp2?
Csequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOpCsequential_172/lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_517_while_cond_922198.
*lstm_517_while_lstm_517_while_loop_counter4
0lstm_517_while_lstm_517_while_maximum_iterations
lstm_517_while_placeholder 
lstm_517_while_placeholder_1 
lstm_517_while_placeholder_2 
lstm_517_while_placeholder_30
,lstm_517_while_less_lstm_517_strided_slice_1F
Blstm_517_while_lstm_517_while_cond_922198___redundant_placeholder0F
Blstm_517_while_lstm_517_while_cond_922198___redundant_placeholder1F
Blstm_517_while_lstm_517_while_cond_922198___redundant_placeholder2F
Blstm_517_while_lstm_517_while_cond_922198___redundant_placeholder3
lstm_517_while_identity
?
lstm_517/while/LessLesslstm_517_while_placeholder,lstm_517_while_less_lstm_517_strided_slice_1*
T0*
_output_shapes
: ]
lstm_517/while/IdentityIdentitylstm_517/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_517_while_identity lstm_517/while/Identity:output:0*(
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
while_body_920118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_151_920142_0:	d?/
while_lstm_cell_151_920144_0:	2?+
while_lstm_cell_151_920146_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_151_920142:	d?-
while_lstm_cell_151_920144:	2?)
while_lstm_cell_151_920146:	???+while/lstm_cell_151/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_151_920142_0while_lstm_cell_151_920144_0while_lstm_cell_151_920146_0*
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920104?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_151/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_151/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_151/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_151/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_151_920142while_lstm_cell_151_920142_0":
while_lstm_cell_151_920144while_lstm_cell_151_920144_0":
while_lstm_cell_151_920146while_lstm_cell_151_920146_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_151/StatefulPartitionedCall+while/lstm_cell_151/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921912
lstm_516_input"
lstm_516_921885:	?"
lstm_516_921887:	d?
lstm_516_921889:	?"
lstm_517_921892:	d?"
lstm_517_921894:	2?
lstm_517_921896:	?!
lstm_518_921899:2(!
lstm_518_921901:
(
lstm_518_921903:("
dense_172_921906:

dense_172_921908:
identity??!dense_172/StatefulPartitionedCall? lstm_516/StatefulPartitionedCall? lstm_517/StatefulPartitionedCall? lstm_518/StatefulPartitionedCall?
 lstm_516/StatefulPartitionedCallStatefulPartitionedCalllstm_516_inputlstm_516_921885lstm_516_921887lstm_516_921889*
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_921732?
 lstm_517/StatefulPartitionedCallStatefulPartitionedCall)lstm_516/StatefulPartitionedCall:output:0lstm_517_921892lstm_517_921894lstm_517_921896*
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921567?
 lstm_518/StatefulPartitionedCallStatefulPartitionedCall)lstm_517/StatefulPartitionedCall:output:0lstm_518_921899lstm_518_921901lstm_518_921903*
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921402?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_518/StatefulPartitionedCall:output:0dense_172_921906dense_172_921908*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204y
IdentityIdentity*dense_172/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_172/StatefulPartitionedCall!^lstm_516/StatefulPartitionedCall!^lstm_517/StatefulPartitionedCall!^lstm_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2D
 lstm_516/StatefulPartitionedCall lstm_516/StatefulPartitionedCall2D
 lstm_517/StatefulPartitionedCall lstm_517/StatefulPartitionedCall2D
 lstm_518/StatefulPartitionedCall lstm_518/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_516_input
?8
?
D__inference_lstm_518_layer_call_and_return_conditional_losses_920728

inputs&
lstm_cell_152_920646:2(&
lstm_cell_152_920648:
("
lstm_cell_152_920650:(
identity??%lstm_cell_152/StatefulPartitionedCall?while;
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
%lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_152_920646lstm_cell_152_920648lstm_cell_152_920650*
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920600n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_152_920646lstm_cell_152_920648lstm_cell_152_920650*
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
while_body_920659*
condR
while_cond_920658*K
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
NoOpNoOp&^lstm_cell_152/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_152/StatefulPartitionedCall%lstm_cell_152/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_151_layer_call_fn_924837

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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920104o
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920250

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
.__inference_lstm_cell_150_layer_call_fn_924756

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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919900o
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
??
?
J__inference_sequential_172_layer_call_and_return_conditional_losses_922855

inputsH
5lstm_516_lstm_cell_150_matmul_readvariableop_resource:	?J
7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource:	d?E
6lstm_516_lstm_cell_150_biasadd_readvariableop_resource:	?H
5lstm_517_lstm_cell_151_matmul_readvariableop_resource:	d?J
7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource:	2?E
6lstm_517_lstm_cell_151_biasadd_readvariableop_resource:	?G
5lstm_518_lstm_cell_152_matmul_readvariableop_resource:2(I
7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource:
(D
6lstm_518_lstm_cell_152_biasadd_readvariableop_resource:(:
(dense_172_matmul_readvariableop_resource:
7
)dense_172_biasadd_readvariableop_resource:
identity?? dense_172/BiasAdd/ReadVariableOp?dense_172/MatMul/ReadVariableOp?-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp?,lstm_516/lstm_cell_150/MatMul/ReadVariableOp?.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp?lstm_516/while?-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp?,lstm_517/lstm_cell_151/MatMul/ReadVariableOp?.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp?lstm_517/while?-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp?,lstm_518/lstm_cell_152/MatMul/ReadVariableOp?.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp?lstm_518/whileD
lstm_516/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_516/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_516/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_516/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_sliceStridedSlicelstm_516/Shape:output:0%lstm_516/strided_slice/stack:output:0'lstm_516/strided_slice/stack_1:output:0'lstm_516/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_516/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_516/zeros/packedPacklstm_516/strided_slice:output:0 lstm_516/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_516/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_516/zerosFilllstm_516/zeros/packed:output:0lstm_516/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_516/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_516/zeros_1/packedPacklstm_516/strided_slice:output:0"lstm_516/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_516/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_516/zeros_1Fill lstm_516/zeros_1/packed:output:0lstm_516/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_516/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_516/transpose	Transposeinputs lstm_516/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_516/Shape_1Shapelstm_516/transpose:y:0*
T0*
_output_shapes
:h
lstm_516/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_516/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_1StridedSlicelstm_516/Shape_1:output:0'lstm_516/strided_slice_1/stack:output:0)lstm_516/strided_slice_1/stack_1:output:0)lstm_516/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_516/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_516/TensorArrayV2TensorListReserve-lstm_516/TensorArrayV2/element_shape:output:0!lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_516/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_516/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_516/transpose:y:0Glstm_516/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_516/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_516/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_2StridedSlicelstm_516/transpose:y:0'lstm_516/strided_slice_2/stack:output:0)lstm_516/strided_slice_2/stack_1:output:0)lstm_516/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_516/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp5lstm_516_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_516/lstm_cell_150/MatMulMatMul!lstm_516/strided_slice_2:output:04lstm_516/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_516/lstm_cell_150/MatMul_1MatMullstm_516/zeros:output:06lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_516/lstm_cell_150/addAddV2'lstm_516/lstm_cell_150/MatMul:product:0)lstm_516/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp6lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_516/lstm_cell_150/BiasAddBiasAddlstm_516/lstm_cell_150/add:z:05lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_516/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_516/lstm_cell_150/splitSplit/lstm_516/lstm_cell_150/split/split_dim:output:0'lstm_516/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_516/lstm_cell_150/SigmoidSigmoid%lstm_516/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_516/lstm_cell_150/Sigmoid_1Sigmoid%lstm_516/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mulMul$lstm_516/lstm_cell_150/Sigmoid_1:y:0lstm_516/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_516/lstm_cell_150/ReluRelu%lstm_516/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mul_1Mul"lstm_516/lstm_cell_150/Sigmoid:y:0)lstm_516/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/add_1AddV2lstm_516/lstm_cell_150/mul:z:0 lstm_516/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_516/lstm_cell_150/Sigmoid_2Sigmoid%lstm_516/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_516/lstm_cell_150/Relu_1Relu lstm_516/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mul_2Mul$lstm_516/lstm_cell_150/Sigmoid_2:y:0+lstm_516/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_516/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_516/TensorArrayV2_1TensorListReserve/lstm_516/TensorArrayV2_1/element_shape:output:0!lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_516/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_516/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_516/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_516/whileWhile$lstm_516/while/loop_counter:output:0*lstm_516/while/maximum_iterations:output:0lstm_516/time:output:0!lstm_516/TensorArrayV2_1:handle:0lstm_516/zeros:output:0lstm_516/zeros_1:output:0!lstm_516/strided_slice_1:output:0@lstm_516/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_516_lstm_cell_150_matmul_readvariableop_resource7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource6lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
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
lstm_516_while_body_922487*&
condR
lstm_516_while_cond_922486*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_516/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_516/TensorArrayV2Stack/TensorListStackTensorListStacklstm_516/while:output:3Blstm_516/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_516/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_516/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_3StridedSlice4lstm_516/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_516/strided_slice_3/stack:output:0)lstm_516/strided_slice_3/stack_1:output:0)lstm_516/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_516/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_516/transpose_1	Transpose4lstm_516/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_516/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_516/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_517/ShapeShapelstm_516/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_517/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_517/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_517/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_sliceStridedSlicelstm_517/Shape:output:0%lstm_517/strided_slice/stack:output:0'lstm_517/strided_slice/stack_1:output:0'lstm_517/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_517/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_517/zeros/packedPacklstm_517/strided_slice:output:0 lstm_517/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_517/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_517/zerosFilllstm_517/zeros/packed:output:0lstm_517/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_517/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_517/zeros_1/packedPacklstm_517/strided_slice:output:0"lstm_517/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_517/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_517/zeros_1Fill lstm_517/zeros_1/packed:output:0lstm_517/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_517/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_517/transpose	Transposelstm_516/transpose_1:y:0 lstm_517/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_517/Shape_1Shapelstm_517/transpose:y:0*
T0*
_output_shapes
:h
lstm_517/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_517/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_1StridedSlicelstm_517/Shape_1:output:0'lstm_517/strided_slice_1/stack:output:0)lstm_517/strided_slice_1/stack_1:output:0)lstm_517/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_517/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_517/TensorArrayV2TensorListReserve-lstm_517/TensorArrayV2/element_shape:output:0!lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_517/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_517/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_517/transpose:y:0Glstm_517/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_517/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_517/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_2StridedSlicelstm_517/transpose:y:0'lstm_517/strided_slice_2/stack:output:0)lstm_517/strided_slice_2/stack_1:output:0)lstm_517/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_517/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp5lstm_517_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_517/lstm_cell_151/MatMulMatMul!lstm_517/strided_slice_2:output:04lstm_517/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_517/lstm_cell_151/MatMul_1MatMullstm_517/zeros:output:06lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_517/lstm_cell_151/addAddV2'lstm_517/lstm_cell_151/MatMul:product:0)lstm_517/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp6lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_517/lstm_cell_151/BiasAddBiasAddlstm_517/lstm_cell_151/add:z:05lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_517/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_517/lstm_cell_151/splitSplit/lstm_517/lstm_cell_151/split/split_dim:output:0'lstm_517/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_517/lstm_cell_151/SigmoidSigmoid%lstm_517/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_517/lstm_cell_151/Sigmoid_1Sigmoid%lstm_517/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mulMul$lstm_517/lstm_cell_151/Sigmoid_1:y:0lstm_517/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_517/lstm_cell_151/ReluRelu%lstm_517/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mul_1Mul"lstm_517/lstm_cell_151/Sigmoid:y:0)lstm_517/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/add_1AddV2lstm_517/lstm_cell_151/mul:z:0 lstm_517/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_517/lstm_cell_151/Sigmoid_2Sigmoid%lstm_517/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_517/lstm_cell_151/Relu_1Relu lstm_517/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mul_2Mul$lstm_517/lstm_cell_151/Sigmoid_2:y:0+lstm_517/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_517/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_517/TensorArrayV2_1TensorListReserve/lstm_517/TensorArrayV2_1/element_shape:output:0!lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_517/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_517/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_517/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_517/whileWhile$lstm_517/while/loop_counter:output:0*lstm_517/while/maximum_iterations:output:0lstm_517/time:output:0!lstm_517/TensorArrayV2_1:handle:0lstm_517/zeros:output:0lstm_517/zeros_1:output:0!lstm_517/strided_slice_1:output:0@lstm_517/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_517_lstm_cell_151_matmul_readvariableop_resource7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource6lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
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
lstm_517_while_body_922626*&
condR
lstm_517_while_cond_922625*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_517/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_517/TensorArrayV2Stack/TensorListStackTensorListStacklstm_517/while:output:3Blstm_517/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_517/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_517/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_3StridedSlice4lstm_517/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_517/strided_slice_3/stack:output:0)lstm_517/strided_slice_3/stack_1:output:0)lstm_517/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_517/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_517/transpose_1	Transpose4lstm_517/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_517/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_517/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_518/ShapeShapelstm_517/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_518/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_518/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_518/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_sliceStridedSlicelstm_518/Shape:output:0%lstm_518/strided_slice/stack:output:0'lstm_518/strided_slice/stack_1:output:0'lstm_518/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_518/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_518/zeros/packedPacklstm_518/strided_slice:output:0 lstm_518/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_518/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_518/zerosFilllstm_518/zeros/packed:output:0lstm_518/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_518/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_518/zeros_1/packedPacklstm_518/strided_slice:output:0"lstm_518/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_518/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_518/zeros_1Fill lstm_518/zeros_1/packed:output:0lstm_518/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_518/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_518/transpose	Transposelstm_517/transpose_1:y:0 lstm_518/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_518/Shape_1Shapelstm_518/transpose:y:0*
T0*
_output_shapes
:h
lstm_518/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_518/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_1StridedSlicelstm_518/Shape_1:output:0'lstm_518/strided_slice_1/stack:output:0)lstm_518/strided_slice_1/stack_1:output:0)lstm_518/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_518/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_518/TensorArrayV2TensorListReserve-lstm_518/TensorArrayV2/element_shape:output:0!lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_518/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_518/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_518/transpose:y:0Glstm_518/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_518/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_518/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_2StridedSlicelstm_518/transpose:y:0'lstm_518/strided_slice_2/stack:output:0)lstm_518/strided_slice_2/stack_1:output:0)lstm_518/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_518/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp5lstm_518_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_518/lstm_cell_152/MatMulMatMul!lstm_518/strided_slice_2:output:04lstm_518/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_518/lstm_cell_152/MatMul_1MatMullstm_518/zeros:output:06lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_518/lstm_cell_152/addAddV2'lstm_518/lstm_cell_152/MatMul:product:0)lstm_518/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp6lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_518/lstm_cell_152/BiasAddBiasAddlstm_518/lstm_cell_152/add:z:05lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_518/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_518/lstm_cell_152/splitSplit/lstm_518/lstm_cell_152/split/split_dim:output:0'lstm_518/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_518/lstm_cell_152/SigmoidSigmoid%lstm_518/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_518/lstm_cell_152/Sigmoid_1Sigmoid%lstm_518/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mulMul$lstm_518/lstm_cell_152/Sigmoid_1:y:0lstm_518/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_518/lstm_cell_152/ReluRelu%lstm_518/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mul_1Mul"lstm_518/lstm_cell_152/Sigmoid:y:0)lstm_518/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/add_1AddV2lstm_518/lstm_cell_152/mul:z:0 lstm_518/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_518/lstm_cell_152/Sigmoid_2Sigmoid%lstm_518/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_518/lstm_cell_152/Relu_1Relu lstm_518/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mul_2Mul$lstm_518/lstm_cell_152/Sigmoid_2:y:0+lstm_518/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_518/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_518/TensorArrayV2_1TensorListReserve/lstm_518/TensorArrayV2_1/element_shape:output:0!lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_518/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_518/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_518/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_518/whileWhile$lstm_518/while/loop_counter:output:0*lstm_518/while/maximum_iterations:output:0lstm_518/time:output:0!lstm_518/TensorArrayV2_1:handle:0lstm_518/zeros:output:0lstm_518/zeros_1:output:0!lstm_518/strided_slice_1:output:0@lstm_518/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_518_lstm_cell_152_matmul_readvariableop_resource7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource6lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
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
lstm_518_while_body_922765*&
condR
lstm_518_while_cond_922764*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_518/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_518/TensorArrayV2Stack/TensorListStackTensorListStacklstm_518/while:output:3Blstm_518/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_518/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_518/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_3StridedSlice4lstm_518/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_518/strided_slice_3/stack:output:0)lstm_518/strided_slice_3/stack_1:output:0)lstm_518/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_518/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_518/transpose_1	Transpose4lstm_518/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_518/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_518/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_172/MatMulMatMul!lstm_518/strided_slice_3:output:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_172/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp.^lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp-^lstm_516/lstm_cell_150/MatMul/ReadVariableOp/^lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp^lstm_516/while.^lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp-^lstm_517/lstm_cell_151/MatMul/ReadVariableOp/^lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp^lstm_517/while.^lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp-^lstm_518/lstm_cell_152/MatMul/ReadVariableOp/^lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp^lstm_518/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2^
-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp2\
,lstm_516/lstm_cell_150/MatMul/ReadVariableOp,lstm_516/lstm_cell_150/MatMul/ReadVariableOp2`
.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp2 
lstm_516/whilelstm_516/while2^
-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp2\
,lstm_517/lstm_cell_151/MatMul/ReadVariableOp,lstm_517/lstm_cell_151/MatMul/ReadVariableOp2`
.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp2 
lstm_517/whilelstm_517/while2^
-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp2\
,lstm_518/lstm_cell_152/MatMul/ReadVariableOp,lstm_518/lstm_cell_152/MatMul/ReadVariableOp2`
.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp2 
lstm_518/whilelstm_518/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_517_layer_call_and_return_conditional_losses_921036

inputs?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_920952*
condR
while_cond_920951*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_923574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923328

inputs?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_923244*
condR
while_cond_923243*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_516_layer_call_fn_922899

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
D__inference_lstm_516_layer_call_and_return_conditional_losses_921732s
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
lstm_518_while_cond_922764.
*lstm_518_while_lstm_518_while_loop_counter4
0lstm_518_while_lstm_518_while_maximum_iterations
lstm_518_while_placeholder 
lstm_518_while_placeholder_1 
lstm_518_while_placeholder_2 
lstm_518_while_placeholder_30
,lstm_518_while_less_lstm_518_strided_slice_1F
Blstm_518_while_lstm_518_while_cond_922764___redundant_placeholder0F
Blstm_518_while_lstm_518_while_cond_922764___redundant_placeholder1F
Blstm_518_while_lstm_518_while_cond_922764___redundant_placeholder2F
Blstm_518_while_lstm_518_while_cond_922764___redundant_placeholder3
lstm_518_while_identity
?
lstm_518/while/LessLesslstm_518_while_placeholder,lstm_518_while_less_lstm_518_strided_slice_1*
T0*
_output_shapes
: ]
lstm_518/while/IdentityIdentitylstm_518/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_518_while_identity lstm_518/while/Identity:output:0*(
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920600

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
?"
?
while_body_920468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_152_920492_0:2(.
while_lstm_cell_152_920494_0:
(*
while_lstm_cell_152_920496_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_152_920492:2(,
while_lstm_cell_152_920494:
((
while_lstm_cell_152_920496:(??+while/lstm_cell_152/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_152_920492_0while_lstm_cell_152_920494_0while_lstm_cell_152_920496_0*
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920454?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_152/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_152/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_152/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_152_920492while_lstm_cell_152_920492_0":
while_lstm_cell_152_920494while_lstm_cell_152_920494_0":
while_lstm_cell_152_920496while_lstm_cell_152_920496_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_152/StatefulPartitionedCall+while/lstm_cell_152/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_921318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_517_while_body_922199.
*lstm_517_while_lstm_517_while_loop_counter4
0lstm_517_while_lstm_517_while_maximum_iterations
lstm_517_while_placeholder 
lstm_517_while_placeholder_1 
lstm_517_while_placeholder_2 
lstm_517_while_placeholder_3-
)lstm_517_while_lstm_517_strided_slice_1_0i
elstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0:	d?R
?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?M
>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
lstm_517_while_identity
lstm_517_while_identity_1
lstm_517_while_identity_2
lstm_517_while_identity_3
lstm_517_while_identity_4
lstm_517_while_identity_5+
'lstm_517_while_lstm_517_strided_slice_1g
clstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensorN
;lstm_517_while_lstm_cell_151_matmul_readvariableop_resource:	d?P
=lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource:	2?K
<lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource:	???3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp?2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp?4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp?
@lstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_517/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0lstm_517_while_placeholderIlstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_517/while/lstm_cell_151/MatMulMatMul9lstm_517/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_517/while/lstm_cell_151/MatMul_1MatMullstm_517_while_placeholder_2<lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_517/while/lstm_cell_151/addAddV2-lstm_517/while/lstm_cell_151/MatMul:product:0/lstm_517/while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_517/while/lstm_cell_151/BiasAddBiasAdd$lstm_517/while/lstm_cell_151/add:z:0;lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_517/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_517/while/lstm_cell_151/splitSplit5lstm_517/while/lstm_cell_151/split/split_dim:output:0-lstm_517/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_517/while/lstm_cell_151/SigmoidSigmoid+lstm_517/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_517/while/lstm_cell_151/Sigmoid_1Sigmoid+lstm_517/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_517/while/lstm_cell_151/mulMul*lstm_517/while/lstm_cell_151/Sigmoid_1:y:0lstm_517_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_517/while/lstm_cell_151/ReluRelu+lstm_517/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/mul_1Mul(lstm_517/while/lstm_cell_151/Sigmoid:y:0/lstm_517/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/add_1AddV2$lstm_517/while/lstm_cell_151/mul:z:0&lstm_517/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_517/while/lstm_cell_151/Sigmoid_2Sigmoid+lstm_517/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_517/while/lstm_cell_151/Relu_1Relu&lstm_517/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/mul_2Mul*lstm_517/while/lstm_cell_151/Sigmoid_2:y:01lstm_517/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_517/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_517_while_placeholder_1lstm_517_while_placeholder&lstm_517/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_517/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_517/while/addAddV2lstm_517_while_placeholderlstm_517/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_517/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_517/while/add_1AddV2*lstm_517_while_lstm_517_while_loop_counterlstm_517/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_517/while/IdentityIdentitylstm_517/while/add_1:z:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_1Identity0lstm_517_while_lstm_517_while_maximum_iterations^lstm_517/while/NoOp*
T0*
_output_shapes
: t
lstm_517/while/Identity_2Identitylstm_517/while/add:z:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_3IdentityClstm_517/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_4Identity&lstm_517/while/lstm_cell_151/mul_2:z:0^lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_517/while/Identity_5Identity&lstm_517/while/lstm_cell_151/add_1:z:0^lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_517/while/NoOpNoOp4^lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp3^lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp5^lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_517_while_identity lstm_517/while/Identity:output:0"?
lstm_517_while_identity_1"lstm_517/while/Identity_1:output:0"?
lstm_517_while_identity_2"lstm_517/while/Identity_2:output:0"?
lstm_517_while_identity_3"lstm_517/while/Identity_3:output:0"?
lstm_517_while_identity_4"lstm_517/while/Identity_4:output:0"?
lstm_517_while_identity_5"lstm_517/while/Identity_5:output:0"T
'lstm_517_while_lstm_517_strided_slice_1)lstm_517_while_lstm_517_strided_slice_1_0"~
<lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0"?
=lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0"|
;lstm_517_while_lstm_cell_151_matmul_readvariableop_resource=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0"?
clstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensorelstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp2h
2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp2l
4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_920117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920117___redundant_placeholder04
0while_while_cond_920117___redundant_placeholder14
0while_while_cond_920117___redundant_placeholder24
0while_while_cond_920117___redundant_placeholder3
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
while_cond_923573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923573___redundant_placeholder04
0while_while_cond_923573___redundant_placeholder14
0while_while_cond_923573___redundant_placeholder24
0while_while_cond_923573___redundant_placeholder3
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
while_body_924476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_920658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920658___redundant_placeholder04
0while_while_cond_920658___redundant_placeholder14
0while_while_cond_920658___redundant_placeholder24
0while_while_cond_920658___redundant_placeholder3
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

lstm_516_while_body_922487.
*lstm_516_while_lstm_516_while_loop_counter4
0lstm_516_while_lstm_516_while_maximum_iterations
lstm_516_while_placeholder 
lstm_516_while_placeholder_1 
lstm_516_while_placeholder_2 
lstm_516_while_placeholder_3-
)lstm_516_while_lstm_516_strided_slice_1_0i
elstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0:	?R
?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?M
>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
lstm_516_while_identity
lstm_516_while_identity_1
lstm_516_while_identity_2
lstm_516_while_identity_3
lstm_516_while_identity_4
lstm_516_while_identity_5+
'lstm_516_while_lstm_516_strided_slice_1g
clstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensorN
;lstm_516_while_lstm_cell_150_matmul_readvariableop_resource:	?P
=lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource:	d?K
<lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource:	???3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp?2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp?4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp?
@lstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_516/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0lstm_516_while_placeholderIlstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_516/while/lstm_cell_150/MatMulMatMul9lstm_516/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_516/while/lstm_cell_150/MatMul_1MatMullstm_516_while_placeholder_2<lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_516/while/lstm_cell_150/addAddV2-lstm_516/while/lstm_cell_150/MatMul:product:0/lstm_516/while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_516/while/lstm_cell_150/BiasAddBiasAdd$lstm_516/while/lstm_cell_150/add:z:0;lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_516/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_516/while/lstm_cell_150/splitSplit5lstm_516/while/lstm_cell_150/split/split_dim:output:0-lstm_516/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_516/while/lstm_cell_150/SigmoidSigmoid+lstm_516/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_516/while/lstm_cell_150/Sigmoid_1Sigmoid+lstm_516/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_516/while/lstm_cell_150/mulMul*lstm_516/while/lstm_cell_150/Sigmoid_1:y:0lstm_516_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_516/while/lstm_cell_150/ReluRelu+lstm_516/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/mul_1Mul(lstm_516/while/lstm_cell_150/Sigmoid:y:0/lstm_516/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/add_1AddV2$lstm_516/while/lstm_cell_150/mul:z:0&lstm_516/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_516/while/lstm_cell_150/Sigmoid_2Sigmoid+lstm_516/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_516/while/lstm_cell_150/Relu_1Relu&lstm_516/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/mul_2Mul*lstm_516/while/lstm_cell_150/Sigmoid_2:y:01lstm_516/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_516/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_516_while_placeholder_1lstm_516_while_placeholder&lstm_516/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_516/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_516/while/addAddV2lstm_516_while_placeholderlstm_516/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_516/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_516/while/add_1AddV2*lstm_516_while_lstm_516_while_loop_counterlstm_516/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_516/while/IdentityIdentitylstm_516/while/add_1:z:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_1Identity0lstm_516_while_lstm_516_while_maximum_iterations^lstm_516/while/NoOp*
T0*
_output_shapes
: t
lstm_516/while/Identity_2Identitylstm_516/while/add:z:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_3IdentityClstm_516/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_4Identity&lstm_516/while/lstm_cell_150/mul_2:z:0^lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_516/while/Identity_5Identity&lstm_516/while/lstm_cell_150/add_1:z:0^lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_516/while/NoOpNoOp4^lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp3^lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp5^lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_516_while_identity lstm_516/while/Identity:output:0"?
lstm_516_while_identity_1"lstm_516/while/Identity_1:output:0"?
lstm_516_while_identity_2"lstm_516/while/Identity_2:output:0"?
lstm_516_while_identity_3"lstm_516/while/Identity_3:output:0"?
lstm_516_while_identity_4"lstm_516/while/Identity_4:output:0"?
lstm_516_while_identity_5"lstm_516/while/Identity_5:output:0"T
'lstm_516_while_lstm_516_strided_slice_1)lstm_516_while_lstm_516_strided_slice_1_0"~
<lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0"?
=lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0"|
;lstm_516_while_lstm_cell_150_matmul_readvariableop_resource=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0"?
clstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensorelstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp2h
2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp2l
4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921186

inputs>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_921102*
condR
while_cond_921101*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_517_layer_call_and_return_conditional_losses_923944

inputs?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_923860*
condR
while_cond_923859*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_172_layer_call_fn_921236
lstm_516_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_516_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921211o
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
_user_specified_namelstm_516_input
?8
?
while_body_922958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924274
inputs_0>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_924190*
condR
while_cond_924189*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_924984

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
.__inference_lstm_cell_151_layer_call_fn_924854

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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920250o
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919900

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
?T
?
)sequential_172_lstm_518_while_body_919597L
Hsequential_172_lstm_518_while_sequential_172_lstm_518_while_loop_counterR
Nsequential_172_lstm_518_while_sequential_172_lstm_518_while_maximum_iterations-
)sequential_172_lstm_518_while_placeholder/
+sequential_172_lstm_518_while_placeholder_1/
+sequential_172_lstm_518_while_placeholder_2/
+sequential_172_lstm_518_while_placeholder_3K
Gsequential_172_lstm_518_while_sequential_172_lstm_518_strided_slice_1_0?
?sequential_172_lstm_518_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_518_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_172_lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0:2(`
Nsequential_172_lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0:
([
Msequential_172_lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0:(*
&sequential_172_lstm_518_while_identity,
(sequential_172_lstm_518_while_identity_1,
(sequential_172_lstm_518_while_identity_2,
(sequential_172_lstm_518_while_identity_3,
(sequential_172_lstm_518_while_identity_4,
(sequential_172_lstm_518_while_identity_5I
Esequential_172_lstm_518_while_sequential_172_lstm_518_strided_slice_1?
?sequential_172_lstm_518_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_518_tensorarrayunstack_tensorlistfromtensor\
Jsequential_172_lstm_518_while_lstm_cell_152_matmul_readvariableop_resource:2(^
Lsequential_172_lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource:
(Y
Ksequential_172_lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource:(??Bsequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp?Asequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp?Csequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp?
Osequential_172/lstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_172/lstm_518/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_172_lstm_518_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_518_tensorarrayunstack_tensorlistfromtensor_0)sequential_172_lstm_518_while_placeholderXsequential_172/lstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOpLsequential_172_lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_172/lstm_518/while/lstm_cell_152/MatMulMatMulHsequential_172/lstm_518/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOpNsequential_172_lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_172/lstm_518/while/lstm_cell_152/MatMul_1MatMul+sequential_172_lstm_518_while_placeholder_2Ksequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_172/lstm_518/while/lstm_cell_152/addAddV2<sequential_172/lstm_518/while/lstm_cell_152/MatMul:product:0>sequential_172/lstm_518/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOpMsequential_172_lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_172/lstm_518/while/lstm_cell_152/BiasAddBiasAdd3sequential_172/lstm_518/while/lstm_cell_152/add:z:0Jsequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_172/lstm_518/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_172/lstm_518/while/lstm_cell_152/splitSplitDsequential_172/lstm_518/while/lstm_cell_152/split/split_dim:output:0<sequential_172/lstm_518/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_172/lstm_518/while/lstm_cell_152/SigmoidSigmoid:sequential_172/lstm_518/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_172/lstm_518/while/lstm_cell_152/Sigmoid_1Sigmoid:sequential_172/lstm_518/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_172/lstm_518/while/lstm_cell_152/mulMul9sequential_172/lstm_518/while/lstm_cell_152/Sigmoid_1:y:0+sequential_172_lstm_518_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_172/lstm_518/while/lstm_cell_152/ReluRelu:sequential_172/lstm_518/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_172/lstm_518/while/lstm_cell_152/mul_1Mul7sequential_172/lstm_518/while/lstm_cell_152/Sigmoid:y:0>sequential_172/lstm_518/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_172/lstm_518/while/lstm_cell_152/add_1AddV23sequential_172/lstm_518/while/lstm_cell_152/mul:z:05sequential_172/lstm_518/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_172/lstm_518/while/lstm_cell_152/Sigmoid_2Sigmoid:sequential_172/lstm_518/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_172/lstm_518/while/lstm_cell_152/Relu_1Relu5sequential_172/lstm_518/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_172/lstm_518/while/lstm_cell_152/mul_2Mul9sequential_172/lstm_518/while/lstm_cell_152/Sigmoid_2:y:0@sequential_172/lstm_518/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_172/lstm_518/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_172_lstm_518_while_placeholder_1)sequential_172_lstm_518_while_placeholder5sequential_172/lstm_518/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_172/lstm_518/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_172/lstm_518/while/addAddV2)sequential_172_lstm_518_while_placeholder,sequential_172/lstm_518/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_172/lstm_518/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_172/lstm_518/while/add_1AddV2Hsequential_172_lstm_518_while_sequential_172_lstm_518_while_loop_counter.sequential_172/lstm_518/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_172/lstm_518/while/IdentityIdentity'sequential_172/lstm_518/while/add_1:z:0#^sequential_172/lstm_518/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_518/while/Identity_1IdentityNsequential_172_lstm_518_while_sequential_172_lstm_518_while_maximum_iterations#^sequential_172/lstm_518/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_518/while/Identity_2Identity%sequential_172/lstm_518/while/add:z:0#^sequential_172/lstm_518/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_518/while/Identity_3IdentityRsequential_172/lstm_518/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_172/lstm_518/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_518/while/Identity_4Identity5sequential_172/lstm_518/while/lstm_cell_152/mul_2:z:0#^sequential_172/lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_172/lstm_518/while/Identity_5Identity5sequential_172/lstm_518/while/lstm_cell_152/add_1:z:0#^sequential_172/lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_172/lstm_518/while/NoOpNoOpC^sequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOpB^sequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOpD^sequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_172_lstm_518_while_identity/sequential_172/lstm_518/while/Identity:output:0"]
(sequential_172_lstm_518_while_identity_11sequential_172/lstm_518/while/Identity_1:output:0"]
(sequential_172_lstm_518_while_identity_21sequential_172/lstm_518/while/Identity_2:output:0"]
(sequential_172_lstm_518_while_identity_31sequential_172/lstm_518/while/Identity_3:output:0"]
(sequential_172_lstm_518_while_identity_41sequential_172/lstm_518/while/Identity_4:output:0"]
(sequential_172_lstm_518_while_identity_51sequential_172/lstm_518/while/Identity_5:output:0"?
Ksequential_172_lstm_518_while_lstm_cell_152_biasadd_readvariableop_resourceMsequential_172_lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0"?
Lsequential_172_lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resourceNsequential_172_lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0"?
Jsequential_172_lstm_518_while_lstm_cell_152_matmul_readvariableop_resourceLsequential_172_lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0"?
Esequential_172_lstm_518_while_sequential_172_lstm_518_strided_slice_1Gsequential_172_lstm_518_while_sequential_172_lstm_518_strided_slice_1_0"?
?sequential_172_lstm_518_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_518_tensorarrayunstack_tensorlistfromtensor?sequential_172_lstm_518_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_518_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOpBsequential_172/lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp2?
Asequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOpAsequential_172/lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp2?
Csequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOpCsequential_172/lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_172_lstm_516_while_body_919319L
Hsequential_172_lstm_516_while_sequential_172_lstm_516_while_loop_counterR
Nsequential_172_lstm_516_while_sequential_172_lstm_516_while_maximum_iterations-
)sequential_172_lstm_516_while_placeholder/
+sequential_172_lstm_516_while_placeholder_1/
+sequential_172_lstm_516_while_placeholder_2/
+sequential_172_lstm_516_while_placeholder_3K
Gsequential_172_lstm_516_while_sequential_172_lstm_516_strided_slice_1_0?
?sequential_172_lstm_516_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_516_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_172_lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0:	?a
Nsequential_172_lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?\
Msequential_172_lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0:	?*
&sequential_172_lstm_516_while_identity,
(sequential_172_lstm_516_while_identity_1,
(sequential_172_lstm_516_while_identity_2,
(sequential_172_lstm_516_while_identity_3,
(sequential_172_lstm_516_while_identity_4,
(sequential_172_lstm_516_while_identity_5I
Esequential_172_lstm_516_while_sequential_172_lstm_516_strided_slice_1?
?sequential_172_lstm_516_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_516_tensorarrayunstack_tensorlistfromtensor]
Jsequential_172_lstm_516_while_lstm_cell_150_matmul_readvariableop_resource:	?_
Lsequential_172_lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource:	d?Z
Ksequential_172_lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource:	???Bsequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp?Asequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp?Csequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp?
Osequential_172/lstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_172/lstm_516/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_172_lstm_516_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_516_tensorarrayunstack_tensorlistfromtensor_0)sequential_172_lstm_516_while_placeholderXsequential_172/lstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOpLsequential_172_lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_172/lstm_516/while/lstm_cell_150/MatMulMatMulHsequential_172/lstm_516/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOpNsequential_172_lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_172/lstm_516/while/lstm_cell_150/MatMul_1MatMul+sequential_172_lstm_516_while_placeholder_2Ksequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_172/lstm_516/while/lstm_cell_150/addAddV2<sequential_172/lstm_516/while/lstm_cell_150/MatMul:product:0>sequential_172/lstm_516/while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOpMsequential_172_lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_172/lstm_516/while/lstm_cell_150/BiasAddBiasAdd3sequential_172/lstm_516/while/lstm_cell_150/add:z:0Jsequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_172/lstm_516/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_172/lstm_516/while/lstm_cell_150/splitSplitDsequential_172/lstm_516/while/lstm_cell_150/split/split_dim:output:0<sequential_172/lstm_516/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_172/lstm_516/while/lstm_cell_150/SigmoidSigmoid:sequential_172/lstm_516/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_172/lstm_516/while/lstm_cell_150/Sigmoid_1Sigmoid:sequential_172/lstm_516/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_172/lstm_516/while/lstm_cell_150/mulMul9sequential_172/lstm_516/while/lstm_cell_150/Sigmoid_1:y:0+sequential_172_lstm_516_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_172/lstm_516/while/lstm_cell_150/ReluRelu:sequential_172/lstm_516/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_172/lstm_516/while/lstm_cell_150/mul_1Mul7sequential_172/lstm_516/while/lstm_cell_150/Sigmoid:y:0>sequential_172/lstm_516/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_172/lstm_516/while/lstm_cell_150/add_1AddV23sequential_172/lstm_516/while/lstm_cell_150/mul:z:05sequential_172/lstm_516/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_172/lstm_516/while/lstm_cell_150/Sigmoid_2Sigmoid:sequential_172/lstm_516/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_172/lstm_516/while/lstm_cell_150/Relu_1Relu5sequential_172/lstm_516/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_172/lstm_516/while/lstm_cell_150/mul_2Mul9sequential_172/lstm_516/while/lstm_cell_150/Sigmoid_2:y:0@sequential_172/lstm_516/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_172/lstm_516/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_172_lstm_516_while_placeholder_1)sequential_172_lstm_516_while_placeholder5sequential_172/lstm_516/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_172/lstm_516/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_172/lstm_516/while/addAddV2)sequential_172_lstm_516_while_placeholder,sequential_172/lstm_516/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_172/lstm_516/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_172/lstm_516/while/add_1AddV2Hsequential_172_lstm_516_while_sequential_172_lstm_516_while_loop_counter.sequential_172/lstm_516/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_172/lstm_516/while/IdentityIdentity'sequential_172/lstm_516/while/add_1:z:0#^sequential_172/lstm_516/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_516/while/Identity_1IdentityNsequential_172_lstm_516_while_sequential_172_lstm_516_while_maximum_iterations#^sequential_172/lstm_516/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_516/while/Identity_2Identity%sequential_172/lstm_516/while/add:z:0#^sequential_172/lstm_516/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_516/while/Identity_3IdentityRsequential_172/lstm_516/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_172/lstm_516/while/NoOp*
T0*
_output_shapes
: ?
(sequential_172/lstm_516/while/Identity_4Identity5sequential_172/lstm_516/while/lstm_cell_150/mul_2:z:0#^sequential_172/lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_172/lstm_516/while/Identity_5Identity5sequential_172/lstm_516/while/lstm_cell_150/add_1:z:0#^sequential_172/lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_172/lstm_516/while/NoOpNoOpC^sequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOpB^sequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOpD^sequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_172_lstm_516_while_identity/sequential_172/lstm_516/while/Identity:output:0"]
(sequential_172_lstm_516_while_identity_11sequential_172/lstm_516/while/Identity_1:output:0"]
(sequential_172_lstm_516_while_identity_21sequential_172/lstm_516/while/Identity_2:output:0"]
(sequential_172_lstm_516_while_identity_31sequential_172/lstm_516/while/Identity_3:output:0"]
(sequential_172_lstm_516_while_identity_41sequential_172/lstm_516/while/Identity_4:output:0"]
(sequential_172_lstm_516_while_identity_51sequential_172/lstm_516/while/Identity_5:output:0"?
Ksequential_172_lstm_516_while_lstm_cell_150_biasadd_readvariableop_resourceMsequential_172_lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0"?
Lsequential_172_lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resourceNsequential_172_lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0"?
Jsequential_172_lstm_516_while_lstm_cell_150_matmul_readvariableop_resourceLsequential_172_lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0"?
Esequential_172_lstm_516_while_sequential_172_lstm_516_strided_slice_1Gsequential_172_lstm_516_while_sequential_172_lstm_516_strided_slice_1_0"?
?sequential_172_lstm_516_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_516_tensorarrayunstack_tensorlistfromtensor?sequential_172_lstm_516_while_tensorarrayv2read_tensorlistgetitem_sequential_172_lstm_516_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOpBsequential_172/lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp2?
Asequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOpAsequential_172/lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp2?
Csequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOpCsequential_172/lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_924619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_920309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_151_920333_0:	d?/
while_lstm_cell_151_920335_0:	2?+
while_lstm_cell_151_920337_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_151_920333:	d?-
while_lstm_cell_151_920335:	2?)
while_lstm_cell_151_920337:	???+while/lstm_cell_151/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_151_920333_0while_lstm_cell_151_920335_0while_lstm_cell_151_920337_0*
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920250?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_151/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_151/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_151/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_151/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_151_920333while_lstm_cell_151_920333_0":
while_lstm_cell_151_920335while_lstm_cell_151_920335_0":
while_lstm_cell_151_920337while_lstm_cell_151_920337_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_151/StatefulPartitionedCall+while/lstm_cell_151/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_517_layer_call_fn_923504

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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921036s
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_923658
inputs_0?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_923574*
condR
while_cond_923573*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?	
?
E__inference_dense_172_layer_call_and_return_conditional_losses_924722

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
while_body_921483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920104

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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924886

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
?C
?

lstm_518_while_body_922338.
*lstm_518_while_lstm_518_while_loop_counter4
0lstm_518_while_lstm_518_while_maximum_iterations
lstm_518_while_placeholder 
lstm_518_while_placeholder_1 
lstm_518_while_placeholder_2 
lstm_518_while_placeholder_3-
)lstm_518_while_lstm_518_strided_slice_1_0i
elstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0:2(Q
?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(L
>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0:(
lstm_518_while_identity
lstm_518_while_identity_1
lstm_518_while_identity_2
lstm_518_while_identity_3
lstm_518_while_identity_4
lstm_518_while_identity_5+
'lstm_518_while_lstm_518_strided_slice_1g
clstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensorM
;lstm_518_while_lstm_cell_152_matmul_readvariableop_resource:2(O
=lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource:
(J
<lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource:(??3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp?2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp?4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp?
@lstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_518/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0lstm_518_while_placeholderIlstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_518/while/lstm_cell_152/MatMulMatMul9lstm_518/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_518/while/lstm_cell_152/MatMul_1MatMullstm_518_while_placeholder_2<lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_518/while/lstm_cell_152/addAddV2-lstm_518/while/lstm_cell_152/MatMul:product:0/lstm_518/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_518/while/lstm_cell_152/BiasAddBiasAdd$lstm_518/while/lstm_cell_152/add:z:0;lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_518/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_518/while/lstm_cell_152/splitSplit5lstm_518/while/lstm_cell_152/split/split_dim:output:0-lstm_518/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_518/while/lstm_cell_152/SigmoidSigmoid+lstm_518/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_518/while/lstm_cell_152/Sigmoid_1Sigmoid+lstm_518/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_518/while/lstm_cell_152/mulMul*lstm_518/while/lstm_cell_152/Sigmoid_1:y:0lstm_518_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_518/while/lstm_cell_152/ReluRelu+lstm_518/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/mul_1Mul(lstm_518/while/lstm_cell_152/Sigmoid:y:0/lstm_518/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/add_1AddV2$lstm_518/while/lstm_cell_152/mul:z:0&lstm_518/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_518/while/lstm_cell_152/Sigmoid_2Sigmoid+lstm_518/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_518/while/lstm_cell_152/Relu_1Relu&lstm_518/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/mul_2Mul*lstm_518/while/lstm_cell_152/Sigmoid_2:y:01lstm_518/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_518/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_518_while_placeholder_1lstm_518_while_placeholder&lstm_518/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_518/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_518/while/addAddV2lstm_518_while_placeholderlstm_518/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_518/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_518/while/add_1AddV2*lstm_518_while_lstm_518_while_loop_counterlstm_518/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_518/while/IdentityIdentitylstm_518/while/add_1:z:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_1Identity0lstm_518_while_lstm_518_while_maximum_iterations^lstm_518/while/NoOp*
T0*
_output_shapes
: t
lstm_518/while/Identity_2Identitylstm_518/while/add:z:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_3IdentityClstm_518/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_4Identity&lstm_518/while/lstm_cell_152/mul_2:z:0^lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_518/while/Identity_5Identity&lstm_518/while/lstm_cell_152/add_1:z:0^lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_518/while/NoOpNoOp4^lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp3^lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp5^lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_518_while_identity lstm_518/while/Identity:output:0"?
lstm_518_while_identity_1"lstm_518/while/Identity_1:output:0"?
lstm_518_while_identity_2"lstm_518/while/Identity_2:output:0"?
lstm_518_while_identity_3"lstm_518/while/Identity_3:output:0"?
lstm_518_while_identity_4"lstm_518/while/Identity_4:output:0"?
lstm_518_while_identity_5"lstm_518/while/Identity_5:output:0"T
'lstm_518_while_lstm_518_strided_slice_1)lstm_518_while_lstm_518_strided_slice_1_0"~
<lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0"?
=lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0"|
;lstm_518_while_lstm_cell_152_matmul_readvariableop_resource=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0"?
clstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensorelstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp2h
2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp2l
4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_518_while_body_922765.
*lstm_518_while_lstm_518_while_loop_counter4
0lstm_518_while_lstm_518_while_maximum_iterations
lstm_518_while_placeholder 
lstm_518_while_placeholder_1 
lstm_518_while_placeholder_2 
lstm_518_while_placeholder_3-
)lstm_518_while_lstm_518_strided_slice_1_0i
elstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0:2(Q
?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(L
>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0:(
lstm_518_while_identity
lstm_518_while_identity_1
lstm_518_while_identity_2
lstm_518_while_identity_3
lstm_518_while_identity_4
lstm_518_while_identity_5+
'lstm_518_while_lstm_518_strided_slice_1g
clstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensorM
;lstm_518_while_lstm_cell_152_matmul_readvariableop_resource:2(O
=lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource:
(J
<lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource:(??3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp?2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp?4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp?
@lstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_518/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0lstm_518_while_placeholderIlstm_518/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_518/while/lstm_cell_152/MatMulMatMul9lstm_518/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_518/while/lstm_cell_152/MatMul_1MatMullstm_518_while_placeholder_2<lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_518/while/lstm_cell_152/addAddV2-lstm_518/while/lstm_cell_152/MatMul:product:0/lstm_518/while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_518/while/lstm_cell_152/BiasAddBiasAdd$lstm_518/while/lstm_cell_152/add:z:0;lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_518/while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_518/while/lstm_cell_152/splitSplit5lstm_518/while/lstm_cell_152/split/split_dim:output:0-lstm_518/while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_518/while/lstm_cell_152/SigmoidSigmoid+lstm_518/while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_518/while/lstm_cell_152/Sigmoid_1Sigmoid+lstm_518/while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_518/while/lstm_cell_152/mulMul*lstm_518/while/lstm_cell_152/Sigmoid_1:y:0lstm_518_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_518/while/lstm_cell_152/ReluRelu+lstm_518/while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/mul_1Mul(lstm_518/while/lstm_cell_152/Sigmoid:y:0/lstm_518/while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/add_1AddV2$lstm_518/while/lstm_cell_152/mul:z:0&lstm_518/while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_518/while/lstm_cell_152/Sigmoid_2Sigmoid+lstm_518/while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_518/while/lstm_cell_152/Relu_1Relu&lstm_518/while/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_518/while/lstm_cell_152/mul_2Mul*lstm_518/while/lstm_cell_152/Sigmoid_2:y:01lstm_518/while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_518/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_518_while_placeholder_1lstm_518_while_placeholder&lstm_518/while/lstm_cell_152/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_518/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_518/while/addAddV2lstm_518_while_placeholderlstm_518/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_518/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_518/while/add_1AddV2*lstm_518_while_lstm_518_while_loop_counterlstm_518/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_518/while/IdentityIdentitylstm_518/while/add_1:z:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_1Identity0lstm_518_while_lstm_518_while_maximum_iterations^lstm_518/while/NoOp*
T0*
_output_shapes
: t
lstm_518/while/Identity_2Identitylstm_518/while/add:z:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_3IdentityClstm_518/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_518/while/NoOp*
T0*
_output_shapes
: ?
lstm_518/while/Identity_4Identity&lstm_518/while/lstm_cell_152/mul_2:z:0^lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_518/while/Identity_5Identity&lstm_518/while/lstm_cell_152/add_1:z:0^lstm_518/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_518/while/NoOpNoOp4^lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp3^lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp5^lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_518_while_identity lstm_518/while/Identity:output:0"?
lstm_518_while_identity_1"lstm_518/while/Identity_1:output:0"?
lstm_518_while_identity_2"lstm_518/while/Identity_2:output:0"?
lstm_518_while_identity_3"lstm_518/while/Identity_3:output:0"?
lstm_518_while_identity_4"lstm_518/while/Identity_4:output:0"?
lstm_518_while_identity_5"lstm_518/while/Identity_5:output:0"T
'lstm_518_while_lstm_518_strided_slice_1)lstm_518_while_lstm_518_strided_slice_1_0"~
<lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource>lstm_518_while_lstm_cell_152_biasadd_readvariableop_resource_0"?
=lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource?lstm_518_while_lstm_cell_152_matmul_1_readvariableop_resource_0"|
;lstm_518_while_lstm_cell_152_matmul_readvariableop_resource=lstm_518_while_lstm_cell_152_matmul_readvariableop_resource_0"?
clstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensorelstm_518_while_tensorarrayv2read_tensorlistgetitem_lstm_518_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp3lstm_518/while/lstm_cell_152/BiasAdd/ReadVariableOp2h
2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp2lstm_518/while/lstm_cell_152/MatMul/ReadVariableOp2l
4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp4lstm_518/while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_518_layer_call_fn_924098
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_920537o
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
?
)sequential_172_lstm_516_while_cond_919318L
Hsequential_172_lstm_516_while_sequential_172_lstm_516_while_loop_counterR
Nsequential_172_lstm_516_while_sequential_172_lstm_516_while_maximum_iterations-
)sequential_172_lstm_516_while_placeholder/
+sequential_172_lstm_516_while_placeholder_1/
+sequential_172_lstm_516_while_placeholder_2/
+sequential_172_lstm_516_while_placeholder_3N
Jsequential_172_lstm_516_while_less_sequential_172_lstm_516_strided_slice_1d
`sequential_172_lstm_516_while_sequential_172_lstm_516_while_cond_919318___redundant_placeholder0d
`sequential_172_lstm_516_while_sequential_172_lstm_516_while_cond_919318___redundant_placeholder1d
`sequential_172_lstm_516_while_sequential_172_lstm_516_while_cond_919318___redundant_placeholder2d
`sequential_172_lstm_516_while_sequential_172_lstm_516_while_cond_919318___redundant_placeholder3*
&sequential_172_lstm_516_while_identity
?
"sequential_172/lstm_516/while/LessLess)sequential_172_lstm_516_while_placeholderJsequential_172_lstm_516_while_less_sequential_172_lstm_516_strided_slice_1*
T0*
_output_shapes
: {
&sequential_172/lstm_516/while/IdentityIdentity&sequential_172/lstm_516/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_172_lstm_516_while_identity/sequential_172/lstm_516/while/Identity:output:0*(
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_920537

inputs&
lstm_cell_152_920455:2(&
lstm_cell_152_920457:
("
lstm_cell_152_920459:(
identity??%lstm_cell_152/StatefulPartitionedCall?while;
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
%lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_152_920455lstm_cell_152_920457lstm_cell_152_920459*
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920454n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_152_920455lstm_cell_152_920457lstm_cell_152_920459*
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
while_body_920468*
condR
while_cond_920467*K
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
NoOpNoOp&^lstm_cell_152/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_152/StatefulPartitionedCall%lstm_cell_152/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_dense_172_layer_call_fn_924712

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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204o
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921402

inputs>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_921318*
condR
while_cond_921317*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_152_layer_call_fn_924952

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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920600o
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
__inference__traced_save_925159
file_prefix/
+savev2_dense_172_kernel_read_readvariableop-
)savev2_dense_172_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_516_lstm_cell_516_kernel_read_readvariableopF
Bsavev2_lstm_516_lstm_cell_516_recurrent_kernel_read_readvariableop:
6savev2_lstm_516_lstm_cell_516_bias_read_readvariableop<
8savev2_lstm_517_lstm_cell_517_kernel_read_readvariableopF
Bsavev2_lstm_517_lstm_cell_517_recurrent_kernel_read_readvariableop:
6savev2_lstm_517_lstm_cell_517_bias_read_readvariableop<
8savev2_lstm_518_lstm_cell_518_kernel_read_readvariableopF
Bsavev2_lstm_518_lstm_cell_518_recurrent_kernel_read_readvariableop:
6savev2_lstm_518_lstm_cell_518_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_172_kernel_m_read_readvariableop4
0savev2_adam_dense_172_bias_m_read_readvariableopC
?savev2_adam_lstm_516_lstm_cell_516_kernel_m_read_readvariableopM
Isavev2_adam_lstm_516_lstm_cell_516_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_516_lstm_cell_516_bias_m_read_readvariableopC
?savev2_adam_lstm_517_lstm_cell_517_kernel_m_read_readvariableopM
Isavev2_adam_lstm_517_lstm_cell_517_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_517_lstm_cell_517_bias_m_read_readvariableopC
?savev2_adam_lstm_518_lstm_cell_518_kernel_m_read_readvariableopM
Isavev2_adam_lstm_518_lstm_cell_518_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_518_lstm_cell_518_bias_m_read_readvariableop6
2savev2_adam_dense_172_kernel_v_read_readvariableop4
0savev2_adam_dense_172_bias_v_read_readvariableopC
?savev2_adam_lstm_516_lstm_cell_516_kernel_v_read_readvariableopM
Isavev2_adam_lstm_516_lstm_cell_516_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_516_lstm_cell_516_bias_v_read_readvariableopC
?savev2_adam_lstm_517_lstm_cell_517_kernel_v_read_readvariableopM
Isavev2_adam_lstm_517_lstm_cell_517_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_517_lstm_cell_517_bias_v_read_readvariableopC
?savev2_adam_lstm_518_lstm_cell_518_kernel_v_read_readvariableopM
Isavev2_adam_lstm_518_lstm_cell_518_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_518_lstm_cell_518_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_172_kernel_read_readvariableop)savev2_dense_172_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_516_lstm_cell_516_kernel_read_readvariableopBsavev2_lstm_516_lstm_cell_516_recurrent_kernel_read_readvariableop6savev2_lstm_516_lstm_cell_516_bias_read_readvariableop8savev2_lstm_517_lstm_cell_517_kernel_read_readvariableopBsavev2_lstm_517_lstm_cell_517_recurrent_kernel_read_readvariableop6savev2_lstm_517_lstm_cell_517_bias_read_readvariableop8savev2_lstm_518_lstm_cell_518_kernel_read_readvariableopBsavev2_lstm_518_lstm_cell_518_recurrent_kernel_read_readvariableop6savev2_lstm_518_lstm_cell_518_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_172_kernel_m_read_readvariableop0savev2_adam_dense_172_bias_m_read_readvariableop?savev2_adam_lstm_516_lstm_cell_516_kernel_m_read_readvariableopIsavev2_adam_lstm_516_lstm_cell_516_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_516_lstm_cell_516_bias_m_read_readvariableop?savev2_adam_lstm_517_lstm_cell_517_kernel_m_read_readvariableopIsavev2_adam_lstm_517_lstm_cell_517_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_517_lstm_cell_517_bias_m_read_readvariableop?savev2_adam_lstm_518_lstm_cell_518_kernel_m_read_readvariableopIsavev2_adam_lstm_518_lstm_cell_518_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_518_lstm_cell_518_bias_m_read_readvariableop2savev2_adam_dense_172_kernel_v_read_readvariableop0savev2_adam_dense_172_bias_v_read_readvariableop?savev2_adam_lstm_516_lstm_cell_516_kernel_v_read_readvariableopIsavev2_adam_lstm_516_lstm_cell_516_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_516_lstm_cell_516_bias_v_read_readvariableop?savev2_adam_lstm_517_lstm_cell_517_kernel_v_read_readvariableopIsavev2_adam_lstm_517_lstm_cell_517_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_517_lstm_cell_517_bias_v_read_readvariableop?savev2_adam_lstm_518_lstm_cell_518_kernel_v_read_readvariableopIsavev2_adam_lstm_518_lstm_cell_518_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_518_lstm_cell_518_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
lstm_516_while_cond_922059.
*lstm_516_while_lstm_516_while_loop_counter4
0lstm_516_while_lstm_516_while_maximum_iterations
lstm_516_while_placeholder 
lstm_516_while_placeholder_1 
lstm_516_while_placeholder_2 
lstm_516_while_placeholder_30
,lstm_516_while_less_lstm_516_strided_slice_1F
Blstm_516_while_lstm_516_while_cond_922059___redundant_placeholder0F
Blstm_516_while_lstm_516_while_cond_922059___redundant_placeholder1F
Blstm_516_while_lstm_516_while_cond_922059___redundant_placeholder2F
Blstm_516_while_lstm_516_while_cond_922059___redundant_placeholder3
lstm_516_while_identity
?
lstm_516/while/LessLesslstm_516_while_placeholder,lstm_516_while_less_lstm_516_strided_slice_1*
T0*
_output_shapes
: ]
lstm_516/while/IdentityIdentitylstm_516/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_516_while_identity lstm_516/while/Identity:output:0*(
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
while_body_921648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_919837

inputs'
lstm_cell_150_919755:	?'
lstm_cell_150_919757:	d?#
lstm_cell_150_919759:	?
identity??%lstm_cell_150/StatefulPartitionedCall?while;
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
%lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_150_919755lstm_cell_150_919757lstm_cell_150_919759*
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919754n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_150_919755lstm_cell_150_919757lstm_cell_150_919759*
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
while_body_919768*
condR
while_cond_919767*K
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
NoOpNoOp&^lstm_cell_150/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_150/StatefulPartitionedCall%lstm_cell_150/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_172_layer_call_fn_921974

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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921211o
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919754

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
?K
?
D__inference_lstm_516_layer_call_and_return_conditional_losses_923042
inputs_0?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_922958*
condR
while_cond_922957*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_924189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924189___redundant_placeholder04
0while_while_cond_924189___redundant_placeholder14
0while_while_cond_924189___redundant_placeholder24
0while_while_cond_924189___redundant_placeholder3
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
??
?
"__inference__traced_restore_925289
file_prefix3
!assignvariableop_dense_172_kernel:
/
!assignvariableop_1_dense_172_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_516_lstm_cell_516_kernel:	?M
:assignvariableop_8_lstm_516_lstm_cell_516_recurrent_kernel:	d?=
.assignvariableop_9_lstm_516_lstm_cell_516_bias:	?D
1assignvariableop_10_lstm_517_lstm_cell_517_kernel:	d?N
;assignvariableop_11_lstm_517_lstm_cell_517_recurrent_kernel:	2?>
/assignvariableop_12_lstm_517_lstm_cell_517_bias:	?C
1assignvariableop_13_lstm_518_lstm_cell_518_kernel:2(M
;assignvariableop_14_lstm_518_lstm_cell_518_recurrent_kernel:
(=
/assignvariableop_15_lstm_518_lstm_cell_518_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_172_kernel_m:
7
)assignvariableop_19_adam_dense_172_bias_m:K
8assignvariableop_20_adam_lstm_516_lstm_cell_516_kernel_m:	?U
Bassignvariableop_21_adam_lstm_516_lstm_cell_516_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_516_lstm_cell_516_bias_m:	?K
8assignvariableop_23_adam_lstm_517_lstm_cell_517_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_517_lstm_cell_517_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_517_lstm_cell_517_bias_m:	?J
8assignvariableop_26_adam_lstm_518_lstm_cell_518_kernel_m:2(T
Bassignvariableop_27_adam_lstm_518_lstm_cell_518_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_518_lstm_cell_518_bias_m:(=
+assignvariableop_29_adam_dense_172_kernel_v:
7
)assignvariableop_30_adam_dense_172_bias_v:K
8assignvariableop_31_adam_lstm_516_lstm_cell_516_kernel_v:	?U
Bassignvariableop_32_adam_lstm_516_lstm_cell_516_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_516_lstm_cell_516_bias_v:	?K
8assignvariableop_34_adam_lstm_517_lstm_cell_517_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_517_lstm_cell_517_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_517_lstm_cell_517_bias_v:	?J
8assignvariableop_37_adam_lstm_518_lstm_cell_518_kernel_v:2(T
Bassignvariableop_38_adam_lstm_518_lstm_cell_518_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_518_lstm_cell_518_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_172_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_172_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_516_lstm_cell_516_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_516_lstm_cell_516_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_516_lstm_cell_516_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_517_lstm_cell_517_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_517_lstm_cell_517_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_517_lstm_cell_517_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_518_lstm_cell_518_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_518_lstm_cell_518_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_518_lstm_cell_518_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_172_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_172_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_516_lstm_cell_516_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_516_lstm_cell_516_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_516_lstm_cell_516_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_517_lstm_cell_517_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_517_lstm_cell_517_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_517_lstm_cell_517_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_518_lstm_cell_518_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_518_lstm_cell_518_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_518_lstm_cell_518_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_172_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_172_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_516_lstm_cell_516_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_516_lstm_cell_516_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_516_lstm_cell_516_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_517_lstm_cell_517_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_517_lstm_cell_517_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_517_lstm_cell_517_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_518_lstm_cell_518_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_518_lstm_cell_518_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_518_lstm_cell_518_bias_vIdentity_39:output:0"/device:CPU:0*
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924703

inputs>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_924619*
condR
while_cond_924618*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_920308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920308___redundant_placeholder04
0while_while_cond_920308___redundant_placeholder14
0while_while_cond_920308___redundant_placeholder24
0while_while_cond_920308___redundant_placeholder3
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
/__inference_sequential_172_layer_call_fn_921852
lstm_516_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_516_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921800o
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
_user_specified_namelstm_516_input
?
?
)__inference_lstm_518_layer_call_fn_924131

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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921402o
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
?"
?
while_body_919959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_150_919983_0:	?/
while_lstm_cell_150_919985_0:	d?+
while_lstm_cell_150_919987_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_150_919983:	?-
while_lstm_cell_150_919985:	d?)
while_lstm_cell_150_919987:	???+while/lstm_cell_150/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_150_919983_0while_lstm_cell_150_919985_0while_lstm_cell_150_919987_0*
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919900?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_150/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_150/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_150/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_150/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_150_919983while_lstm_cell_150_919983_0":
while_lstm_cell_150_919985while_lstm_cell_150_919985_0":
while_lstm_cell_150_919987while_lstm_cell_150_919987_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_150/StatefulPartitionedCall+while/lstm_cell_150/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_923386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923386___redundant_placeholder04
0while_while_cond_923386___redundant_placeholder14
0while_while_cond_923386___redundant_placeholder24
0while_while_cond_923386___redundant_placeholder3
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924560

inputs>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_924476*
condR
while_cond_924475*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_150_layer_call_fn_924739

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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919754o
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
while_cond_919767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_919767___redundant_placeholder04
0while_while_cond_919767___redundant_placeholder14
0while_while_cond_919767___redundant_placeholder24
0while_while_cond_919767___redundant_placeholder3
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921211

inputs"
lstm_516_920887:	?"
lstm_516_920889:	d?
lstm_516_920891:	?"
lstm_517_921037:	d?"
lstm_517_921039:	2?
lstm_517_921041:	?!
lstm_518_921187:2(!
lstm_518_921189:
(
lstm_518_921191:("
dense_172_921205:

dense_172_921207:
identity??!dense_172/StatefulPartitionedCall? lstm_516/StatefulPartitionedCall? lstm_517/StatefulPartitionedCall? lstm_518/StatefulPartitionedCall?
 lstm_516/StatefulPartitionedCallStatefulPartitionedCallinputslstm_516_920887lstm_516_920889lstm_516_920891*
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_920886?
 lstm_517/StatefulPartitionedCallStatefulPartitionedCall)lstm_516/StatefulPartitionedCall:output:0lstm_517_921037lstm_517_921039lstm_517_921041*
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921036?
 lstm_518/StatefulPartitionedCallStatefulPartitionedCall)lstm_517/StatefulPartitionedCall:output:0lstm_518_921187lstm_518_921189lstm_518_921191*
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921186?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_518/StatefulPartitionedCall:output:0dense_172_921205dense_172_921207*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204y
IdentityIdentity*dense_172/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_172/StatefulPartitionedCall!^lstm_516/StatefulPartitionedCall!^lstm_517/StatefulPartitionedCall!^lstm_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2D
 lstm_516/StatefulPartitionedCall lstm_516/StatefulPartitionedCall2D
 lstm_517/StatefulPartitionedCall lstm_517/StatefulPartitionedCall2D
 lstm_518/StatefulPartitionedCall lstm_518/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_517_layer_call_and_return_conditional_losses_924087

inputs?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_924003*
condR
while_cond_924002*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_920801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920801___redundant_placeholder04
0while_while_cond_920801___redundant_placeholder14
0while_while_cond_920801___redundant_placeholder24
0while_while_cond_920801___redundant_placeholder3
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_922428

inputsH
5lstm_516_lstm_cell_150_matmul_readvariableop_resource:	?J
7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource:	d?E
6lstm_516_lstm_cell_150_biasadd_readvariableop_resource:	?H
5lstm_517_lstm_cell_151_matmul_readvariableop_resource:	d?J
7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource:	2?E
6lstm_517_lstm_cell_151_biasadd_readvariableop_resource:	?G
5lstm_518_lstm_cell_152_matmul_readvariableop_resource:2(I
7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource:
(D
6lstm_518_lstm_cell_152_biasadd_readvariableop_resource:(:
(dense_172_matmul_readvariableop_resource:
7
)dense_172_biasadd_readvariableop_resource:
identity?? dense_172/BiasAdd/ReadVariableOp?dense_172/MatMul/ReadVariableOp?-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp?,lstm_516/lstm_cell_150/MatMul/ReadVariableOp?.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp?lstm_516/while?-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp?,lstm_517/lstm_cell_151/MatMul/ReadVariableOp?.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp?lstm_517/while?-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp?,lstm_518/lstm_cell_152/MatMul/ReadVariableOp?.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp?lstm_518/whileD
lstm_516/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_516/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_516/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_516/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_sliceStridedSlicelstm_516/Shape:output:0%lstm_516/strided_slice/stack:output:0'lstm_516/strided_slice/stack_1:output:0'lstm_516/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_516/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_516/zeros/packedPacklstm_516/strided_slice:output:0 lstm_516/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_516/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_516/zerosFilllstm_516/zeros/packed:output:0lstm_516/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_516/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_516/zeros_1/packedPacklstm_516/strided_slice:output:0"lstm_516/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_516/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_516/zeros_1Fill lstm_516/zeros_1/packed:output:0lstm_516/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_516/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_516/transpose	Transposeinputs lstm_516/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_516/Shape_1Shapelstm_516/transpose:y:0*
T0*
_output_shapes
:h
lstm_516/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_516/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_1StridedSlicelstm_516/Shape_1:output:0'lstm_516/strided_slice_1/stack:output:0)lstm_516/strided_slice_1/stack_1:output:0)lstm_516/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_516/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_516/TensorArrayV2TensorListReserve-lstm_516/TensorArrayV2/element_shape:output:0!lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_516/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_516/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_516/transpose:y:0Glstm_516/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_516/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_516/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_2StridedSlicelstm_516/transpose:y:0'lstm_516/strided_slice_2/stack:output:0)lstm_516/strided_slice_2/stack_1:output:0)lstm_516/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_516/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp5lstm_516_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_516/lstm_cell_150/MatMulMatMul!lstm_516/strided_slice_2:output:04lstm_516/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_516/lstm_cell_150/MatMul_1MatMullstm_516/zeros:output:06lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_516/lstm_cell_150/addAddV2'lstm_516/lstm_cell_150/MatMul:product:0)lstm_516/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp6lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_516/lstm_cell_150/BiasAddBiasAddlstm_516/lstm_cell_150/add:z:05lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_516/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_516/lstm_cell_150/splitSplit/lstm_516/lstm_cell_150/split/split_dim:output:0'lstm_516/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_516/lstm_cell_150/SigmoidSigmoid%lstm_516/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_516/lstm_cell_150/Sigmoid_1Sigmoid%lstm_516/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mulMul$lstm_516/lstm_cell_150/Sigmoid_1:y:0lstm_516/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_516/lstm_cell_150/ReluRelu%lstm_516/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mul_1Mul"lstm_516/lstm_cell_150/Sigmoid:y:0)lstm_516/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/add_1AddV2lstm_516/lstm_cell_150/mul:z:0 lstm_516/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_516/lstm_cell_150/Sigmoid_2Sigmoid%lstm_516/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_516/lstm_cell_150/Relu_1Relu lstm_516/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_516/lstm_cell_150/mul_2Mul$lstm_516/lstm_cell_150/Sigmoid_2:y:0+lstm_516/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_516/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_516/TensorArrayV2_1TensorListReserve/lstm_516/TensorArrayV2_1/element_shape:output:0!lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_516/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_516/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_516/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_516/whileWhile$lstm_516/while/loop_counter:output:0*lstm_516/while/maximum_iterations:output:0lstm_516/time:output:0!lstm_516/TensorArrayV2_1:handle:0lstm_516/zeros:output:0lstm_516/zeros_1:output:0!lstm_516/strided_slice_1:output:0@lstm_516/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_516_lstm_cell_150_matmul_readvariableop_resource7lstm_516_lstm_cell_150_matmul_1_readvariableop_resource6lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
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
lstm_516_while_body_922060*&
condR
lstm_516_while_cond_922059*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_516/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_516/TensorArrayV2Stack/TensorListStackTensorListStacklstm_516/while:output:3Blstm_516/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_516/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_516/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_516/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_516/strided_slice_3StridedSlice4lstm_516/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_516/strided_slice_3/stack:output:0)lstm_516/strided_slice_3/stack_1:output:0)lstm_516/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_516/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_516/transpose_1	Transpose4lstm_516/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_516/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_516/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_517/ShapeShapelstm_516/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_517/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_517/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_517/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_sliceStridedSlicelstm_517/Shape:output:0%lstm_517/strided_slice/stack:output:0'lstm_517/strided_slice/stack_1:output:0'lstm_517/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_517/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_517/zeros/packedPacklstm_517/strided_slice:output:0 lstm_517/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_517/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_517/zerosFilllstm_517/zeros/packed:output:0lstm_517/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_517/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_517/zeros_1/packedPacklstm_517/strided_slice:output:0"lstm_517/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_517/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_517/zeros_1Fill lstm_517/zeros_1/packed:output:0lstm_517/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_517/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_517/transpose	Transposelstm_516/transpose_1:y:0 lstm_517/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_517/Shape_1Shapelstm_517/transpose:y:0*
T0*
_output_shapes
:h
lstm_517/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_517/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_1StridedSlicelstm_517/Shape_1:output:0'lstm_517/strided_slice_1/stack:output:0)lstm_517/strided_slice_1/stack_1:output:0)lstm_517/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_517/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_517/TensorArrayV2TensorListReserve-lstm_517/TensorArrayV2/element_shape:output:0!lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_517/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_517/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_517/transpose:y:0Glstm_517/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_517/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_517/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_2StridedSlicelstm_517/transpose:y:0'lstm_517/strided_slice_2/stack:output:0)lstm_517/strided_slice_2/stack_1:output:0)lstm_517/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_517/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp5lstm_517_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_517/lstm_cell_151/MatMulMatMul!lstm_517/strided_slice_2:output:04lstm_517/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_517/lstm_cell_151/MatMul_1MatMullstm_517/zeros:output:06lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_517/lstm_cell_151/addAddV2'lstm_517/lstm_cell_151/MatMul:product:0)lstm_517/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp6lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_517/lstm_cell_151/BiasAddBiasAddlstm_517/lstm_cell_151/add:z:05lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_517/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_517/lstm_cell_151/splitSplit/lstm_517/lstm_cell_151/split/split_dim:output:0'lstm_517/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_517/lstm_cell_151/SigmoidSigmoid%lstm_517/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_517/lstm_cell_151/Sigmoid_1Sigmoid%lstm_517/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mulMul$lstm_517/lstm_cell_151/Sigmoid_1:y:0lstm_517/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_517/lstm_cell_151/ReluRelu%lstm_517/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mul_1Mul"lstm_517/lstm_cell_151/Sigmoid:y:0)lstm_517/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/add_1AddV2lstm_517/lstm_cell_151/mul:z:0 lstm_517/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_517/lstm_cell_151/Sigmoid_2Sigmoid%lstm_517/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_517/lstm_cell_151/Relu_1Relu lstm_517/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_517/lstm_cell_151/mul_2Mul$lstm_517/lstm_cell_151/Sigmoid_2:y:0+lstm_517/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_517/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_517/TensorArrayV2_1TensorListReserve/lstm_517/TensorArrayV2_1/element_shape:output:0!lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_517/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_517/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_517/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_517/whileWhile$lstm_517/while/loop_counter:output:0*lstm_517/while/maximum_iterations:output:0lstm_517/time:output:0!lstm_517/TensorArrayV2_1:handle:0lstm_517/zeros:output:0lstm_517/zeros_1:output:0!lstm_517/strided_slice_1:output:0@lstm_517/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_517_lstm_cell_151_matmul_readvariableop_resource7lstm_517_lstm_cell_151_matmul_1_readvariableop_resource6lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
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
lstm_517_while_body_922199*&
condR
lstm_517_while_cond_922198*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_517/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_517/TensorArrayV2Stack/TensorListStackTensorListStacklstm_517/while:output:3Blstm_517/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_517/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_517/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_517/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_517/strided_slice_3StridedSlice4lstm_517/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_517/strided_slice_3/stack:output:0)lstm_517/strided_slice_3/stack_1:output:0)lstm_517/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_517/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_517/transpose_1	Transpose4lstm_517/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_517/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_517/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_518/ShapeShapelstm_517/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_518/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_518/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_518/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_sliceStridedSlicelstm_518/Shape:output:0%lstm_518/strided_slice/stack:output:0'lstm_518/strided_slice/stack_1:output:0'lstm_518/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_518/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_518/zeros/packedPacklstm_518/strided_slice:output:0 lstm_518/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_518/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_518/zerosFilllstm_518/zeros/packed:output:0lstm_518/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_518/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_518/zeros_1/packedPacklstm_518/strided_slice:output:0"lstm_518/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_518/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_518/zeros_1Fill lstm_518/zeros_1/packed:output:0lstm_518/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_518/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_518/transpose	Transposelstm_517/transpose_1:y:0 lstm_518/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_518/Shape_1Shapelstm_518/transpose:y:0*
T0*
_output_shapes
:h
lstm_518/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_518/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_1StridedSlicelstm_518/Shape_1:output:0'lstm_518/strided_slice_1/stack:output:0)lstm_518/strided_slice_1/stack_1:output:0)lstm_518/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_518/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_518/TensorArrayV2TensorListReserve-lstm_518/TensorArrayV2/element_shape:output:0!lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_518/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_518/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_518/transpose:y:0Glstm_518/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_518/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_518/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_2StridedSlicelstm_518/transpose:y:0'lstm_518/strided_slice_2/stack:output:0)lstm_518/strided_slice_2/stack_1:output:0)lstm_518/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_518/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp5lstm_518_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_518/lstm_cell_152/MatMulMatMul!lstm_518/strided_slice_2:output:04lstm_518/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_518/lstm_cell_152/MatMul_1MatMullstm_518/zeros:output:06lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_518/lstm_cell_152/addAddV2'lstm_518/lstm_cell_152/MatMul:product:0)lstm_518/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp6lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_518/lstm_cell_152/BiasAddBiasAddlstm_518/lstm_cell_152/add:z:05lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_518/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_518/lstm_cell_152/splitSplit/lstm_518/lstm_cell_152/split/split_dim:output:0'lstm_518/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_518/lstm_cell_152/SigmoidSigmoid%lstm_518/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_518/lstm_cell_152/Sigmoid_1Sigmoid%lstm_518/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mulMul$lstm_518/lstm_cell_152/Sigmoid_1:y:0lstm_518/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_518/lstm_cell_152/ReluRelu%lstm_518/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mul_1Mul"lstm_518/lstm_cell_152/Sigmoid:y:0)lstm_518/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/add_1AddV2lstm_518/lstm_cell_152/mul:z:0 lstm_518/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_518/lstm_cell_152/Sigmoid_2Sigmoid%lstm_518/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_518/lstm_cell_152/Relu_1Relu lstm_518/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_518/lstm_cell_152/mul_2Mul$lstm_518/lstm_cell_152/Sigmoid_2:y:0+lstm_518/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_518/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_518/TensorArrayV2_1TensorListReserve/lstm_518/TensorArrayV2_1/element_shape:output:0!lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_518/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_518/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_518/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_518/whileWhile$lstm_518/while/loop_counter:output:0*lstm_518/while/maximum_iterations:output:0lstm_518/time:output:0!lstm_518/TensorArrayV2_1:handle:0lstm_518/zeros:output:0lstm_518/zeros_1:output:0!lstm_518/strided_slice_1:output:0@lstm_518/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_518_lstm_cell_152_matmul_readvariableop_resource7lstm_518_lstm_cell_152_matmul_1_readvariableop_resource6lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
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
lstm_518_while_body_922338*&
condR
lstm_518_while_cond_922337*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_518/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_518/TensorArrayV2Stack/TensorListStackTensorListStacklstm_518/while:output:3Blstm_518/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_518/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_518/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_518/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_518/strided_slice_3StridedSlice4lstm_518/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_518/strided_slice_3/stack:output:0)lstm_518/strided_slice_3/stack_1:output:0)lstm_518/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_518/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_518/transpose_1	Transpose4lstm_518/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_518/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_518/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_172/MatMulMatMul!lstm_518/strided_slice_3:output:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_172/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp.^lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp-^lstm_516/lstm_cell_150/MatMul/ReadVariableOp/^lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp^lstm_516/while.^lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp-^lstm_517/lstm_cell_151/MatMul/ReadVariableOp/^lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp^lstm_517/while.^lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp-^lstm_518/lstm_cell_152/MatMul/ReadVariableOp/^lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp^lstm_518/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2^
-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp-lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp2\
,lstm_516/lstm_cell_150/MatMul/ReadVariableOp,lstm_516/lstm_cell_150/MatMul/ReadVariableOp2`
.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp.lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp2 
lstm_516/whilelstm_516/while2^
-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp-lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp2\
,lstm_517/lstm_cell_151/MatMul/ReadVariableOp,lstm_517/lstm_cell_151/MatMul/ReadVariableOp2`
.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp.lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp2 
lstm_517/whilelstm_517/while2^
-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp-lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp2\
,lstm_518/lstm_cell_152/MatMul/ReadVariableOp,lstm_518/lstm_cell_152/MatMul/ReadVariableOp2`
.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp.lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp2 
lstm_518/whilelstm_518/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_517_layer_call_and_return_conditional_losses_920187

inputs'
lstm_cell_151_920105:	d?'
lstm_cell_151_920107:	2?#
lstm_cell_151_920109:	?
identity??%lstm_cell_151/StatefulPartitionedCall?while;
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
%lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_151_920105lstm_cell_151_920107lstm_cell_151_920109*
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920104n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_151_920105lstm_cell_151_920107lstm_cell_151_920109*
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
while_body_920118*
condR
while_cond_920117*K
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
NoOpNoOp&^lstm_cell_151/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_151/StatefulPartitionedCall%lstm_cell_151/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_924618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924618___redundant_placeholder04
0while_while_cond_924618___redundant_placeholder14
0while_while_cond_924618___redundant_placeholder24
0while_while_cond_924618___redundant_placeholder3
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
while_body_923101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_924003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_517_layer_call_fn_923482
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_920187|
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
lstm_518_while_cond_922337.
*lstm_518_while_lstm_518_while_loop_counter4
0lstm_518_while_lstm_518_while_maximum_iterations
lstm_518_while_placeholder 
lstm_518_while_placeholder_1 
lstm_518_while_placeholder_2 
lstm_518_while_placeholder_30
,lstm_518_while_less_lstm_518_strided_slice_1F
Blstm_518_while_lstm_518_while_cond_922337___redundant_placeholder0F
Blstm_518_while_lstm_518_while_cond_922337___redundant_placeholder1F
Blstm_518_while_lstm_518_while_cond_922337___redundant_placeholder2F
Blstm_518_while_lstm_518_while_cond_922337___redundant_placeholder3
lstm_518_while_identity
?
lstm_518/while/LessLesslstm_518_while_placeholder,lstm_518_while_less_lstm_518_strided_slice_1*
T0*
_output_shapes
: ]
lstm_518/while/IdentityIdentitylstm_518/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_518_while_identity lstm_518/while/Identity:output:0*(
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923471

inputs?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_923387*
condR
while_cond_923386*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_517_layer_call_and_return_conditional_losses_920378

inputs'
lstm_cell_151_920296:	d?'
lstm_cell_151_920298:	2?#
lstm_cell_151_920300:	?
identity??%lstm_cell_151/StatefulPartitionedCall?while;
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
%lstm_cell_151/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_151_920296lstm_cell_151_920298lstm_cell_151_920300*
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_920250n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_151_920296lstm_cell_151_920298lstm_cell_151_920300*
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
while_body_920309*
condR
while_cond_920308*K
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
NoOpNoOp&^lstm_cell_151/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_151/StatefulPartitionedCall%lstm_cell_151/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
)__inference_lstm_518_layer_call_fn_924109
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_920728o
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
while_cond_921317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_921317___redundant_placeholder04
0while_while_cond_921317___redundant_placeholder14
0while_while_cond_921317___redundant_placeholder24
0while_while_cond_921317___redundant_placeholder3
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

lstm_517_while_body_922626.
*lstm_517_while_lstm_517_while_loop_counter4
0lstm_517_while_lstm_517_while_maximum_iterations
lstm_517_while_placeholder 
lstm_517_while_placeholder_1 
lstm_517_while_placeholder_2 
lstm_517_while_placeholder_3-
)lstm_517_while_lstm_517_strided_slice_1_0i
elstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0:	d?R
?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?M
>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
lstm_517_while_identity
lstm_517_while_identity_1
lstm_517_while_identity_2
lstm_517_while_identity_3
lstm_517_while_identity_4
lstm_517_while_identity_5+
'lstm_517_while_lstm_517_strided_slice_1g
clstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensorN
;lstm_517_while_lstm_cell_151_matmul_readvariableop_resource:	d?P
=lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource:	2?K
<lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource:	???3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp?2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp?4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp?
@lstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_517/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0lstm_517_while_placeholderIlstm_517/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_517/while/lstm_cell_151/MatMulMatMul9lstm_517/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_517/while/lstm_cell_151/MatMul_1MatMullstm_517_while_placeholder_2<lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_517/while/lstm_cell_151/addAddV2-lstm_517/while/lstm_cell_151/MatMul:product:0/lstm_517/while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_517/while/lstm_cell_151/BiasAddBiasAdd$lstm_517/while/lstm_cell_151/add:z:0;lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_517/while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_517/while/lstm_cell_151/splitSplit5lstm_517/while/lstm_cell_151/split/split_dim:output:0-lstm_517/while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_517/while/lstm_cell_151/SigmoidSigmoid+lstm_517/while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_517/while/lstm_cell_151/Sigmoid_1Sigmoid+lstm_517/while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_517/while/lstm_cell_151/mulMul*lstm_517/while/lstm_cell_151/Sigmoid_1:y:0lstm_517_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_517/while/lstm_cell_151/ReluRelu+lstm_517/while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/mul_1Mul(lstm_517/while/lstm_cell_151/Sigmoid:y:0/lstm_517/while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/add_1AddV2$lstm_517/while/lstm_cell_151/mul:z:0&lstm_517/while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_517/while/lstm_cell_151/Sigmoid_2Sigmoid+lstm_517/while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_517/while/lstm_cell_151/Relu_1Relu&lstm_517/while/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_517/while/lstm_cell_151/mul_2Mul*lstm_517/while/lstm_cell_151/Sigmoid_2:y:01lstm_517/while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_517/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_517_while_placeholder_1lstm_517_while_placeholder&lstm_517/while/lstm_cell_151/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_517/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_517/while/addAddV2lstm_517_while_placeholderlstm_517/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_517/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_517/while/add_1AddV2*lstm_517_while_lstm_517_while_loop_counterlstm_517/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_517/while/IdentityIdentitylstm_517/while/add_1:z:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_1Identity0lstm_517_while_lstm_517_while_maximum_iterations^lstm_517/while/NoOp*
T0*
_output_shapes
: t
lstm_517/while/Identity_2Identitylstm_517/while/add:z:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_3IdentityClstm_517/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_517/while/NoOp*
T0*
_output_shapes
: ?
lstm_517/while/Identity_4Identity&lstm_517/while/lstm_cell_151/mul_2:z:0^lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_517/while/Identity_5Identity&lstm_517/while/lstm_cell_151/add_1:z:0^lstm_517/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_517/while/NoOpNoOp4^lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp3^lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp5^lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_517_while_identity lstm_517/while/Identity:output:0"?
lstm_517_while_identity_1"lstm_517/while/Identity_1:output:0"?
lstm_517_while_identity_2"lstm_517/while/Identity_2:output:0"?
lstm_517_while_identity_3"lstm_517/while/Identity_3:output:0"?
lstm_517_while_identity_4"lstm_517/while/Identity_4:output:0"?
lstm_517_while_identity_5"lstm_517/while/Identity_5:output:0"T
'lstm_517_while_lstm_517_strided_slice_1)lstm_517_while_lstm_517_strided_slice_1_0"~
<lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource>lstm_517_while_lstm_cell_151_biasadd_readvariableop_resource_0"?
=lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource?lstm_517_while_lstm_cell_151_matmul_1_readvariableop_resource_0"|
;lstm_517_while_lstm_cell_151_matmul_readvariableop_resource=lstm_517_while_lstm_cell_151_matmul_readvariableop_resource_0"?
clstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensorelstm_517_while_tensorarrayv2read_tensorlistgetitem_lstm_517_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp3lstm_517/while/lstm_cell_151/BiasAdd/ReadVariableOp2h
2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp2lstm_517/while/lstm_cell_151/MatMul/ReadVariableOp2l
4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp4lstm_517/while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921882
lstm_516_input"
lstm_516_921855:	?"
lstm_516_921857:	d?
lstm_516_921859:	?"
lstm_517_921862:	d?"
lstm_517_921864:	2?
lstm_517_921866:	?!
lstm_518_921869:2(!
lstm_518_921871:
(
lstm_518_921873:("
dense_172_921876:

dense_172_921878:
identity??!dense_172/StatefulPartitionedCall? lstm_516/StatefulPartitionedCall? lstm_517/StatefulPartitionedCall? lstm_518/StatefulPartitionedCall?
 lstm_516/StatefulPartitionedCallStatefulPartitionedCalllstm_516_inputlstm_516_921855lstm_516_921857lstm_516_921859*
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_920886?
 lstm_517/StatefulPartitionedCallStatefulPartitionedCall)lstm_516/StatefulPartitionedCall:output:0lstm_517_921862lstm_517_921864lstm_517_921866*
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921036?
 lstm_518/StatefulPartitionedCallStatefulPartitionedCall)lstm_517/StatefulPartitionedCall:output:0lstm_518_921869lstm_518_921871lstm_518_921873*
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921186?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall)lstm_518/StatefulPartitionedCall:output:0dense_172_921876dense_172_921878*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_921204y
IdentityIdentity*dense_172/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_172/StatefulPartitionedCall!^lstm_516/StatefulPartitionedCall!^lstm_517/StatefulPartitionedCall!^lstm_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2D
 lstm_516/StatefulPartitionedCall lstm_516/StatefulPartitionedCall2D
 lstm_517/StatefulPartitionedCall lstm_517/StatefulPartitionedCall2D
 lstm_518/StatefulPartitionedCall lstm_518/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_516_input
?
?
)__inference_lstm_516_layer_call_fn_922888

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
D__inference_lstm_516_layer_call_and_return_conditional_losses_920886s
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_923801
inputs_0?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_923717*
condR
while_cond_923716*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_925016

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
?
)sequential_172_lstm_517_while_cond_919457L
Hsequential_172_lstm_517_while_sequential_172_lstm_517_while_loop_counterR
Nsequential_172_lstm_517_while_sequential_172_lstm_517_while_maximum_iterations-
)sequential_172_lstm_517_while_placeholder/
+sequential_172_lstm_517_while_placeholder_1/
+sequential_172_lstm_517_while_placeholder_2/
+sequential_172_lstm_517_while_placeholder_3N
Jsequential_172_lstm_517_while_less_sequential_172_lstm_517_strided_slice_1d
`sequential_172_lstm_517_while_sequential_172_lstm_517_while_cond_919457___redundant_placeholder0d
`sequential_172_lstm_517_while_sequential_172_lstm_517_while_cond_919457___redundant_placeholder1d
`sequential_172_lstm_517_while_sequential_172_lstm_517_while_cond_919457___redundant_placeholder2d
`sequential_172_lstm_517_while_sequential_172_lstm_517_while_cond_919457___redundant_placeholder3*
&sequential_172_lstm_517_while_identity
?
"sequential_172/lstm_517/while/LessLess)sequential_172_lstm_517_while_placeholderJsequential_172_lstm_517_while_less_sequential_172_lstm_517_strided_slice_1*
T0*
_output_shapes
: {
&sequential_172/lstm_517/while/IdentityIdentity&sequential_172/lstm_517/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_172_lstm_517_while_identity/sequential_172/lstm_517/while/Identity:output:0*(
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
/__inference_sequential_172_layer_call_fn_922001

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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921800o
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
while_body_920802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_923717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920454

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
while_cond_922957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_922957___redundant_placeholder04
0while_while_cond_922957___redundant_placeholder14
0while_while_cond_922957___redundant_placeholder24
0while_while_cond_922957___redundant_placeholder3
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
while_body_923387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_150_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_150_matmul_readvariableop_resource:	?G
4while_lstm_cell_150_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_150_biasadd_readvariableop_resource:	???*while/lstm_cell_150/BiasAdd/ReadVariableOp?)while/lstm_cell_150/MatMul/ReadVariableOp?+while/lstm_cell_150/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_150/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_150/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_150/addAddV2$while/lstm_cell_150/MatMul:product:0&while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_150/BiasAddBiasAddwhile/lstm_cell_150/add:z:02while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_150/splitSplit,while/lstm_cell_150/split/split_dim:output:0$while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_150/SigmoidSigmoid"while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_1Sigmoid"while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mulMul!while/lstm_cell_150/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_150/ReluRelu"while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_1Mulwhile/lstm_cell_150/Sigmoid:y:0&while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/add_1AddV2while/lstm_cell_150/mul:z:0while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_150/Sigmoid_2Sigmoid"while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_150/Relu_1Reluwhile/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_150/mul_2Mul!while/lstm_cell_150/Sigmoid_2:y:0(while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_150/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_150/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_150/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_150/BiasAdd/ReadVariableOp*^while/lstm_cell_150/MatMul/ReadVariableOp,^while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_150_biasadd_readvariableop_resource5while_lstm_cell_150_biasadd_readvariableop_resource_0"n
4while_lstm_cell_150_matmul_1_readvariableop_resource6while_lstm_cell_150_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_150_matmul_readvariableop_resource4while_lstm_cell_150_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_150/BiasAdd/ReadVariableOp*while/lstm_cell_150/BiasAdd/ReadVariableOp2V
)while/lstm_cell_150/MatMul/ReadVariableOp)while/lstm_cell_150/MatMul/ReadVariableOp2Z
+while/lstm_cell_150/MatMul_1/ReadVariableOp+while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_923860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_920952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_151_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_151_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_151_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_151_matmul_readvariableop_resource:	d?G
4while_lstm_cell_151_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_151_biasadd_readvariableop_resource:	???*while/lstm_cell_151/BiasAdd/ReadVariableOp?)while/lstm_cell_151/MatMul/ReadVariableOp?+while/lstm_cell_151/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_151/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_151_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_151/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_151_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_151/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_151/addAddV2$while/lstm_cell_151/MatMul:product:0&while/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_151_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_151/BiasAddBiasAddwhile/lstm_cell_151/add:z:02while/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_151/splitSplit,while/lstm_cell_151/split/split_dim:output:0$while/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_151/SigmoidSigmoid"while/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_1Sigmoid"while/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mulMul!while/lstm_cell_151/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_151/ReluRelu"while/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_1Mulwhile/lstm_cell_151/Sigmoid:y:0&while/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/add_1AddV2while/lstm_cell_151/mul:z:0while/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_151/Sigmoid_2Sigmoid"while/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_151/Relu_1Reluwhile/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_151/mul_2Mul!while/lstm_cell_151/Sigmoid_2:y:0(while/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_151/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_151/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_151/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_151/BiasAdd/ReadVariableOp*^while/lstm_cell_151/MatMul/ReadVariableOp,^while/lstm_cell_151/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_151_biasadd_readvariableop_resource5while_lstm_cell_151_biasadd_readvariableop_resource_0"n
4while_lstm_cell_151_matmul_1_readvariableop_resource6while_lstm_cell_151_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_151_matmul_readvariableop_resource4while_lstm_cell_151_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_151/BiasAdd/ReadVariableOp*while/lstm_cell_151/BiasAdd/ReadVariableOp2V
)while/lstm_cell_151/MatMul/ReadVariableOp)while/lstm_cell_151/MatMul/ReadVariableOp2Z
+while/lstm_cell_151/MatMul_1/ReadVariableOp+while/lstm_cell_151/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_924002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924002___redundant_placeholder04
0while_while_cond_924002___redundant_placeholder14
0while_while_cond_924002___redundant_placeholder24
0while_while_cond_924002___redundant_placeholder3
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924788

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
?"
?
while_body_919768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_150_919792_0:	?/
while_lstm_cell_150_919794_0:	d?+
while_lstm_cell_150_919796_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_150_919792:	?-
while_lstm_cell_150_919794:	d?)
while_lstm_cell_150_919796:	???+while/lstm_cell_150/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_150_919792_0while_lstm_cell_150_919794_0while_lstm_cell_150_919796_0*
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919754?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_150/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_150/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_150/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_150/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_150_919792while_lstm_cell_150_919792_0":
while_lstm_cell_150_919794while_lstm_cell_150_919794_0":
while_lstm_cell_150_919796while_lstm_cell_150_919796_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_150/StatefulPartitionedCall+while/lstm_cell_150/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_920951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920951___redundant_placeholder04
0while_while_cond_920951___redundant_placeholder14
0while_while_cond_920951___redundant_placeholder24
0while_while_cond_920951___redundant_placeholder3
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
while_cond_924332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924332___redundant_placeholder04
0while_while_cond_924332___redundant_placeholder14
0while_while_cond_924332___redundant_placeholder24
0while_while_cond_924332___redundant_placeholder3
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
)sequential_172_lstm_518_while_cond_919596L
Hsequential_172_lstm_518_while_sequential_172_lstm_518_while_loop_counterR
Nsequential_172_lstm_518_while_sequential_172_lstm_518_while_maximum_iterations-
)sequential_172_lstm_518_while_placeholder/
+sequential_172_lstm_518_while_placeholder_1/
+sequential_172_lstm_518_while_placeholder_2/
+sequential_172_lstm_518_while_placeholder_3N
Jsequential_172_lstm_518_while_less_sequential_172_lstm_518_strided_slice_1d
`sequential_172_lstm_518_while_sequential_172_lstm_518_while_cond_919596___redundant_placeholder0d
`sequential_172_lstm_518_while_sequential_172_lstm_518_while_cond_919596___redundant_placeholder1d
`sequential_172_lstm_518_while_sequential_172_lstm_518_while_cond_919596___redundant_placeholder2d
`sequential_172_lstm_518_while_sequential_172_lstm_518_while_cond_919596___redundant_placeholder3*
&sequential_172_lstm_518_while_identity
?
"sequential_172/lstm_518/while/LessLess)sequential_172_lstm_518_while_placeholderJsequential_172_lstm_518_while_less_sequential_172_lstm_518_strided_slice_1*
T0*
_output_shapes
: {
&sequential_172/lstm_518/while/IdentityIdentity&sequential_172/lstm_518/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_172_lstm_518_while_identity/sequential_172/lstm_518/while/Identity:output:0*(
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
)__inference_lstm_516_layer_call_fn_922877
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_920028|
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
while_cond_921647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_921647___redundant_placeholder04
0while_while_cond_921647___redundant_placeholder14
0while_while_cond_921647___redundant_placeholder24
0while_while_cond_921647___redundant_placeholder3
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
while_cond_923716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923716___redundant_placeholder04
0while_while_cond_923716___redundant_placeholder14
0while_while_cond_923716___redundant_placeholder24
0while_while_cond_923716___redundant_placeholder3
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
while_cond_920467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_920467___redundant_placeholder04
0while_while_cond_920467___redundant_placeholder14
0while_while_cond_920467___redundant_placeholder24
0while_while_cond_920467___redundant_placeholder3
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
while_body_920659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_152_920683_0:2(.
while_lstm_cell_152_920685_0:
(*
while_lstm_cell_152_920687_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_152_920683:2(,
while_lstm_cell_152_920685:
((
while_lstm_cell_152_920687:(??+while/lstm_cell_152/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_152/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_152_920683_0while_lstm_cell_152_920685_0while_lstm_cell_152_920687_0*
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_920600?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_152/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_152/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_152/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_152/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_152_920683while_lstm_cell_152_920683_0":
while_lstm_cell_152_920685while_lstm_cell_152_920685_0":
while_lstm_cell_152_920687while_lstm_cell_152_920687_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_152/StatefulPartitionedCall+while/lstm_cell_152/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_516_while_body_922060.
*lstm_516_while_lstm_516_while_loop_counter4
0lstm_516_while_lstm_516_while_maximum_iterations
lstm_516_while_placeholder 
lstm_516_while_placeholder_1 
lstm_516_while_placeholder_2 
lstm_516_while_placeholder_3-
)lstm_516_while_lstm_516_strided_slice_1_0i
elstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0:	?R
?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0:	d?M
>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0:	?
lstm_516_while_identity
lstm_516_while_identity_1
lstm_516_while_identity_2
lstm_516_while_identity_3
lstm_516_while_identity_4
lstm_516_while_identity_5+
'lstm_516_while_lstm_516_strided_slice_1g
clstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensorN
;lstm_516_while_lstm_cell_150_matmul_readvariableop_resource:	?P
=lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource:	d?K
<lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource:	???3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp?2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp?4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp?
@lstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_516/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0lstm_516_while_placeholderIlstm_516/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOpReadVariableOp=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_516/while/lstm_cell_150/MatMulMatMul9lstm_516/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_516/while/lstm_cell_150/MatMul_1MatMullstm_516_while_placeholder_2<lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_516/while/lstm_cell_150/addAddV2-lstm_516/while/lstm_cell_150/MatMul:product:0/lstm_516/while/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_516/while/lstm_cell_150/BiasAddBiasAdd$lstm_516/while/lstm_cell_150/add:z:0;lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_516/while/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_516/while/lstm_cell_150/splitSplit5lstm_516/while/lstm_cell_150/split/split_dim:output:0-lstm_516/while/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_516/while/lstm_cell_150/SigmoidSigmoid+lstm_516/while/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_516/while/lstm_cell_150/Sigmoid_1Sigmoid+lstm_516/while/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_516/while/lstm_cell_150/mulMul*lstm_516/while/lstm_cell_150/Sigmoid_1:y:0lstm_516_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_516/while/lstm_cell_150/ReluRelu+lstm_516/while/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/mul_1Mul(lstm_516/while/lstm_cell_150/Sigmoid:y:0/lstm_516/while/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/add_1AddV2$lstm_516/while/lstm_cell_150/mul:z:0&lstm_516/while/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_516/while/lstm_cell_150/Sigmoid_2Sigmoid+lstm_516/while/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_516/while/lstm_cell_150/Relu_1Relu&lstm_516/while/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_516/while/lstm_cell_150/mul_2Mul*lstm_516/while/lstm_cell_150/Sigmoid_2:y:01lstm_516/while/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_516/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_516_while_placeholder_1lstm_516_while_placeholder&lstm_516/while/lstm_cell_150/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_516/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_516/while/addAddV2lstm_516_while_placeholderlstm_516/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_516/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_516/while/add_1AddV2*lstm_516_while_lstm_516_while_loop_counterlstm_516/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_516/while/IdentityIdentitylstm_516/while/add_1:z:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_1Identity0lstm_516_while_lstm_516_while_maximum_iterations^lstm_516/while/NoOp*
T0*
_output_shapes
: t
lstm_516/while/Identity_2Identitylstm_516/while/add:z:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_3IdentityClstm_516/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_516/while/NoOp*
T0*
_output_shapes
: ?
lstm_516/while/Identity_4Identity&lstm_516/while/lstm_cell_150/mul_2:z:0^lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_516/while/Identity_5Identity&lstm_516/while/lstm_cell_150/add_1:z:0^lstm_516/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_516/while/NoOpNoOp4^lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp3^lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp5^lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_516_while_identity lstm_516/while/Identity:output:0"?
lstm_516_while_identity_1"lstm_516/while/Identity_1:output:0"?
lstm_516_while_identity_2"lstm_516/while/Identity_2:output:0"?
lstm_516_while_identity_3"lstm_516/while/Identity_3:output:0"?
lstm_516_while_identity_4"lstm_516/while/Identity_4:output:0"?
lstm_516_while_identity_5"lstm_516/while/Identity_5:output:0"T
'lstm_516_while_lstm_516_strided_slice_1)lstm_516_while_lstm_516_strided_slice_1_0"~
<lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource>lstm_516_while_lstm_cell_150_biasadd_readvariableop_resource_0"?
=lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource?lstm_516_while_lstm_cell_150_matmul_1_readvariableop_resource_0"|
;lstm_516_while_lstm_cell_150_matmul_readvariableop_resource=lstm_516_while_lstm_cell_150_matmul_readvariableop_resource_0"?
clstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensorelstm_516_while_tensorarrayv2read_tensorlistgetitem_lstm_516_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp3lstm_516/while/lstm_cell_150/BiasAdd/ReadVariableOp2h
2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp2lstm_516/while/lstm_cell_150/MatMul/ReadVariableOp2l
4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp4lstm_516/while/lstm_cell_150/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_923859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923859___redundant_placeholder04
0while_while_cond_923859___redundant_placeholder14
0while_while_cond_923859___redundant_placeholder24
0while_while_cond_923859___redundant_placeholder3
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921567

inputs?
,lstm_cell_151_matmul_readvariableop_resource:	d?A
.lstm_cell_151_matmul_1_readvariableop_resource:	2?<
-lstm_cell_151_biasadd_readvariableop_resource:	?
identity??$lstm_cell_151/BiasAdd/ReadVariableOp?#lstm_cell_151/MatMul/ReadVariableOp?%lstm_cell_151/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_151/MatMul/ReadVariableOpReadVariableOp,lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_151/MatMulMatMulstrided_slice_2:output:0+lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_151/MatMul_1MatMulzeros:output:0-lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_151/addAddV2lstm_cell_151/MatMul:product:0 lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_151/BiasAddBiasAddlstm_cell_151/add:z:0,lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_151/splitSplit&lstm_cell_151/split/split_dim:output:0lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_151/SigmoidSigmoidlstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_1Sigmoidlstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_151/mulMullstm_cell_151/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_151/ReluRelulstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_1Mullstm_cell_151/Sigmoid:y:0 lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_151/add_1AddV2lstm_cell_151/mul:z:0lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_151/Sigmoid_2Sigmoidlstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_151/Relu_1Relulstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_151/mul_2Mullstm_cell_151/Sigmoid_2:y:0"lstm_cell_151/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_151_matmul_readvariableop_resource.lstm_cell_151_matmul_1_readvariableop_resource-lstm_cell_151_biasadd_readvariableop_resource*
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
while_body_921483*
condR
while_cond_921482*K
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
NoOpNoOp%^lstm_cell_151/BiasAdd/ReadVariableOp$^lstm_cell_151/MatMul/ReadVariableOp&^lstm_cell_151/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_151/BiasAdd/ReadVariableOp$lstm_cell_151/BiasAdd/ReadVariableOp2J
#lstm_cell_151/MatMul/ReadVariableOp#lstm_cell_151/MatMul/ReadVariableOp2N
%lstm_cell_151/MatMul_1/ReadVariableOp%lstm_cell_151/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_923100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923100___redundant_placeholder04
0while_while_cond_923100___redundant_placeholder14
0while_while_cond_923100___redundant_placeholder24
0while_while_cond_923100___redundant_placeholder3
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
while_cond_921482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_921482___redundant_placeholder04
0while_while_cond_921482___redundant_placeholder14
0while_while_cond_921482___redundant_placeholder24
0while_while_cond_921482___redundant_placeholder3
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
)__inference_lstm_516_layer_call_fn_922866
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_919837|
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924417
inputs_0>
,lstm_cell_152_matmul_readvariableop_resource:2(@
.lstm_cell_152_matmul_1_readvariableop_resource:
(;
-lstm_cell_152_biasadd_readvariableop_resource:(
identity??$lstm_cell_152/BiasAdd/ReadVariableOp?#lstm_cell_152/MatMul/ReadVariableOp?%lstm_cell_152/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_152/MatMul/ReadVariableOpReadVariableOp,lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_152/MatMulMatMulstrided_slice_2:output:0+lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_152/MatMul_1MatMulzeros:output:0-lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_152/addAddV2lstm_cell_152/MatMul:product:0 lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_152/BiasAddBiasAddlstm_cell_152/add:z:0,lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_152/splitSplit&lstm_cell_152/split/split_dim:output:0lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_152/SigmoidSigmoidlstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_1Sigmoidlstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_152/mulMullstm_cell_152/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_152/ReluRelulstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_1Mullstm_cell_152/Sigmoid:y:0 lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_152/add_1AddV2lstm_cell_152/mul:z:0lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_152/Sigmoid_2Sigmoidlstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_152/Relu_1Relulstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_152/mul_2Mullstm_cell_152/Sigmoid_2:y:0"lstm_cell_152/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_152_matmul_readvariableop_resource.lstm_cell_152_matmul_1_readvariableop_resource-lstm_cell_152_biasadd_readvariableop_resource*
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
while_body_924333*
condR
while_cond_924332*K
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
NoOpNoOp%^lstm_cell_152/BiasAdd/ReadVariableOp$^lstm_cell_152/MatMul/ReadVariableOp&^lstm_cell_152/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_152/BiasAdd/ReadVariableOp$lstm_cell_152/BiasAdd/ReadVariableOp2J
#lstm_cell_152/MatMul/ReadVariableOp#lstm_cell_152/MatMul/ReadVariableOp2N
%lstm_cell_152/MatMul_1/ReadVariableOp%lstm_cell_152/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_919958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_919958___redundant_placeholder04
0while_while_cond_919958___redundant_placeholder14
0while_while_cond_919958___redundant_placeholder24
0while_while_cond_919958___redundant_placeholder3
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_920886

inputs?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_920802*
condR
while_cond_920801*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_516_layer_call_and_return_conditional_losses_921732

inputs?
,lstm_cell_150_matmul_readvariableop_resource:	?A
.lstm_cell_150_matmul_1_readvariableop_resource:	d?<
-lstm_cell_150_biasadd_readvariableop_resource:	?
identity??$lstm_cell_150/BiasAdd/ReadVariableOp?#lstm_cell_150/MatMul/ReadVariableOp?%lstm_cell_150/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_150/MatMul/ReadVariableOpReadVariableOp,lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_150/MatMulMatMulstrided_slice_2:output:0+lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_150/MatMul_1MatMulzeros:output:0-lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_150/addAddV2lstm_cell_150/MatMul:product:0 lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_150/BiasAddBiasAddlstm_cell_150/add:z:0,lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_150/splitSplit&lstm_cell_150/split/split_dim:output:0lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_150/SigmoidSigmoidlstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_1Sigmoidlstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_150/mulMullstm_cell_150/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_150/ReluRelulstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_1Mullstm_cell_150/Sigmoid:y:0 lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_150/add_1AddV2lstm_cell_150/mul:z:0lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_150/Sigmoid_2Sigmoidlstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_150/Relu_1Relulstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_150/mul_2Mullstm_cell_150/Sigmoid_2:y:0"lstm_cell_150/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_150_matmul_readvariableop_resource.lstm_cell_150_matmul_1_readvariableop_resource-lstm_cell_150_biasadd_readvariableop_resource*
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
while_body_921648*
condR
while_cond_921647*K
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
NoOpNoOp%^lstm_cell_150/BiasAdd/ReadVariableOp$^lstm_cell_150/MatMul/ReadVariableOp&^lstm_cell_150/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_150/BiasAdd/ReadVariableOp$lstm_cell_150/BiasAdd/ReadVariableOp2J
#lstm_cell_150/MatMul/ReadVariableOp#lstm_cell_150/MatMul/ReadVariableOp2N
%lstm_cell_150/MatMul_1/ReadVariableOp%lstm_cell_150/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_921101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_921101___redundant_placeholder04
0while_while_cond_921101___redundant_placeholder14
0while_while_cond_921101___redundant_placeholder24
0while_while_cond_921101___redundant_placeholder3
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
!__inference__wrapped_model_919687
lstm_516_inputW
Dsequential_172_lstm_516_lstm_cell_150_matmul_readvariableop_resource:	?Y
Fsequential_172_lstm_516_lstm_cell_150_matmul_1_readvariableop_resource:	d?T
Esequential_172_lstm_516_lstm_cell_150_biasadd_readvariableop_resource:	?W
Dsequential_172_lstm_517_lstm_cell_151_matmul_readvariableop_resource:	d?Y
Fsequential_172_lstm_517_lstm_cell_151_matmul_1_readvariableop_resource:	2?T
Esequential_172_lstm_517_lstm_cell_151_biasadd_readvariableop_resource:	?V
Dsequential_172_lstm_518_lstm_cell_152_matmul_readvariableop_resource:2(X
Fsequential_172_lstm_518_lstm_cell_152_matmul_1_readvariableop_resource:
(S
Esequential_172_lstm_518_lstm_cell_152_biasadd_readvariableop_resource:(I
7sequential_172_dense_172_matmul_readvariableop_resource:
F
8sequential_172_dense_172_biasadd_readvariableop_resource:
identity??/sequential_172/dense_172/BiasAdd/ReadVariableOp?.sequential_172/dense_172/MatMul/ReadVariableOp?<sequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp?;sequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOp?=sequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp?sequential_172/lstm_516/while?<sequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp?;sequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOp?=sequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp?sequential_172/lstm_517/while?<sequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp?;sequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOp?=sequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp?sequential_172/lstm_518/while[
sequential_172/lstm_516/ShapeShapelstm_516_input*
T0*
_output_shapes
:u
+sequential_172/lstm_516/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_172/lstm_516/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_172/lstm_516/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_172/lstm_516/strided_sliceStridedSlice&sequential_172/lstm_516/Shape:output:04sequential_172/lstm_516/strided_slice/stack:output:06sequential_172/lstm_516/strided_slice/stack_1:output:06sequential_172/lstm_516/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_172/lstm_516/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_172/lstm_516/zeros/packedPack.sequential_172/lstm_516/strided_slice:output:0/sequential_172/lstm_516/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_172/lstm_516/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_516/zerosFill-sequential_172/lstm_516/zeros/packed:output:0,sequential_172/lstm_516/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_172/lstm_516/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_172/lstm_516/zeros_1/packedPack.sequential_172/lstm_516/strided_slice:output:01sequential_172/lstm_516/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_172/lstm_516/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_516/zeros_1Fill/sequential_172/lstm_516/zeros_1/packed:output:0.sequential_172/lstm_516/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_172/lstm_516/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_172/lstm_516/transpose	Transposelstm_516_input/sequential_172/lstm_516/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_172/lstm_516/Shape_1Shape%sequential_172/lstm_516/transpose:y:0*
T0*
_output_shapes
:w
-sequential_172/lstm_516/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_516/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_516/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_516/strided_slice_1StridedSlice(sequential_172/lstm_516/Shape_1:output:06sequential_172/lstm_516/strided_slice_1/stack:output:08sequential_172/lstm_516/strided_slice_1/stack_1:output:08sequential_172/lstm_516/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_172/lstm_516/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_172/lstm_516/TensorArrayV2TensorListReserve<sequential_172/lstm_516/TensorArrayV2/element_shape:output:00sequential_172/lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_172/lstm_516/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_172/lstm_516/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_172/lstm_516/transpose:y:0Vsequential_172/lstm_516/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_172/lstm_516/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_516/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_516/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_516/strided_slice_2StridedSlice%sequential_172/lstm_516/transpose:y:06sequential_172/lstm_516/strided_slice_2/stack:output:08sequential_172/lstm_516/strided_slice_2/stack_1:output:08sequential_172/lstm_516/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOpReadVariableOpDsequential_172_lstm_516_lstm_cell_150_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_172/lstm_516/lstm_cell_150/MatMulMatMul0sequential_172/lstm_516/strided_slice_2:output:0Csequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOpReadVariableOpFsequential_172_lstm_516_lstm_cell_150_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_172/lstm_516/lstm_cell_150/MatMul_1MatMul&sequential_172/lstm_516/zeros:output:0Esequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_172/lstm_516/lstm_cell_150/addAddV26sequential_172/lstm_516/lstm_cell_150/MatMul:product:08sequential_172/lstm_516/lstm_cell_150/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOpReadVariableOpEsequential_172_lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_172/lstm_516/lstm_cell_150/BiasAddBiasAdd-sequential_172/lstm_516/lstm_cell_150/add:z:0Dsequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_172/lstm_516/lstm_cell_150/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_172/lstm_516/lstm_cell_150/splitSplit>sequential_172/lstm_516/lstm_cell_150/split/split_dim:output:06sequential_172/lstm_516/lstm_cell_150/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_172/lstm_516/lstm_cell_150/SigmoidSigmoid4sequential_172/lstm_516/lstm_cell_150/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_172/lstm_516/lstm_cell_150/Sigmoid_1Sigmoid4sequential_172/lstm_516/lstm_cell_150/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_172/lstm_516/lstm_cell_150/mulMul3sequential_172/lstm_516/lstm_cell_150/Sigmoid_1:y:0(sequential_172/lstm_516/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_172/lstm_516/lstm_cell_150/ReluRelu4sequential_172/lstm_516/lstm_cell_150/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_172/lstm_516/lstm_cell_150/mul_1Mul1sequential_172/lstm_516/lstm_cell_150/Sigmoid:y:08sequential_172/lstm_516/lstm_cell_150/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_172/lstm_516/lstm_cell_150/add_1AddV2-sequential_172/lstm_516/lstm_cell_150/mul:z:0/sequential_172/lstm_516/lstm_cell_150/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_172/lstm_516/lstm_cell_150/Sigmoid_2Sigmoid4sequential_172/lstm_516/lstm_cell_150/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_172/lstm_516/lstm_cell_150/Relu_1Relu/sequential_172/lstm_516/lstm_cell_150/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_172/lstm_516/lstm_cell_150/mul_2Mul3sequential_172/lstm_516/lstm_cell_150/Sigmoid_2:y:0:sequential_172/lstm_516/lstm_cell_150/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_172/lstm_516/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_172/lstm_516/TensorArrayV2_1TensorListReserve>sequential_172/lstm_516/TensorArrayV2_1/element_shape:output:00sequential_172/lstm_516/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_172/lstm_516/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_172/lstm_516/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_172/lstm_516/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_172/lstm_516/whileWhile3sequential_172/lstm_516/while/loop_counter:output:09sequential_172/lstm_516/while/maximum_iterations:output:0%sequential_172/lstm_516/time:output:00sequential_172/lstm_516/TensorArrayV2_1:handle:0&sequential_172/lstm_516/zeros:output:0(sequential_172/lstm_516/zeros_1:output:00sequential_172/lstm_516/strided_slice_1:output:0Osequential_172/lstm_516/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_172_lstm_516_lstm_cell_150_matmul_readvariableop_resourceFsequential_172_lstm_516_lstm_cell_150_matmul_1_readvariableop_resourceEsequential_172_lstm_516_lstm_cell_150_biasadd_readvariableop_resource*
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
)sequential_172_lstm_516_while_body_919319*5
cond-R+
)sequential_172_lstm_516_while_cond_919318*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_172/lstm_516/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_172/lstm_516/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_172/lstm_516/while:output:3Qsequential_172/lstm_516/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_172/lstm_516/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_172/lstm_516/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_516/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_516/strided_slice_3StridedSliceCsequential_172/lstm_516/TensorArrayV2Stack/TensorListStack:tensor:06sequential_172/lstm_516/strided_slice_3/stack:output:08sequential_172/lstm_516/strided_slice_3/stack_1:output:08sequential_172/lstm_516/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_172/lstm_516/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_172/lstm_516/transpose_1	TransposeCsequential_172/lstm_516/TensorArrayV2Stack/TensorListStack:tensor:01sequential_172/lstm_516/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_172/lstm_516/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_172/lstm_517/ShapeShape'sequential_172/lstm_516/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_172/lstm_517/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_172/lstm_517/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_172/lstm_517/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_172/lstm_517/strided_sliceStridedSlice&sequential_172/lstm_517/Shape:output:04sequential_172/lstm_517/strided_slice/stack:output:06sequential_172/lstm_517/strided_slice/stack_1:output:06sequential_172/lstm_517/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_172/lstm_517/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_172/lstm_517/zeros/packedPack.sequential_172/lstm_517/strided_slice:output:0/sequential_172/lstm_517/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_172/lstm_517/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_517/zerosFill-sequential_172/lstm_517/zeros/packed:output:0,sequential_172/lstm_517/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_172/lstm_517/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_172/lstm_517/zeros_1/packedPack.sequential_172/lstm_517/strided_slice:output:01sequential_172/lstm_517/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_172/lstm_517/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_517/zeros_1Fill/sequential_172/lstm_517/zeros_1/packed:output:0.sequential_172/lstm_517/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_172/lstm_517/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_172/lstm_517/transpose	Transpose'sequential_172/lstm_516/transpose_1:y:0/sequential_172/lstm_517/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_172/lstm_517/Shape_1Shape%sequential_172/lstm_517/transpose:y:0*
T0*
_output_shapes
:w
-sequential_172/lstm_517/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_517/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_517/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_517/strided_slice_1StridedSlice(sequential_172/lstm_517/Shape_1:output:06sequential_172/lstm_517/strided_slice_1/stack:output:08sequential_172/lstm_517/strided_slice_1/stack_1:output:08sequential_172/lstm_517/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_172/lstm_517/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_172/lstm_517/TensorArrayV2TensorListReserve<sequential_172/lstm_517/TensorArrayV2/element_shape:output:00sequential_172/lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_172/lstm_517/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_172/lstm_517/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_172/lstm_517/transpose:y:0Vsequential_172/lstm_517/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_172/lstm_517/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_517/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_517/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_517/strided_slice_2StridedSlice%sequential_172/lstm_517/transpose:y:06sequential_172/lstm_517/strided_slice_2/stack:output:08sequential_172/lstm_517/strided_slice_2/stack_1:output:08sequential_172/lstm_517/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOpReadVariableOpDsequential_172_lstm_517_lstm_cell_151_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_172/lstm_517/lstm_cell_151/MatMulMatMul0sequential_172/lstm_517/strided_slice_2:output:0Csequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOpReadVariableOpFsequential_172_lstm_517_lstm_cell_151_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_172/lstm_517/lstm_cell_151/MatMul_1MatMul&sequential_172/lstm_517/zeros:output:0Esequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_172/lstm_517/lstm_cell_151/addAddV26sequential_172/lstm_517/lstm_cell_151/MatMul:product:08sequential_172/lstm_517/lstm_cell_151/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOpReadVariableOpEsequential_172_lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_172/lstm_517/lstm_cell_151/BiasAddBiasAdd-sequential_172/lstm_517/lstm_cell_151/add:z:0Dsequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_172/lstm_517/lstm_cell_151/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_172/lstm_517/lstm_cell_151/splitSplit>sequential_172/lstm_517/lstm_cell_151/split/split_dim:output:06sequential_172/lstm_517/lstm_cell_151/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_172/lstm_517/lstm_cell_151/SigmoidSigmoid4sequential_172/lstm_517/lstm_cell_151/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_172/lstm_517/lstm_cell_151/Sigmoid_1Sigmoid4sequential_172/lstm_517/lstm_cell_151/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_172/lstm_517/lstm_cell_151/mulMul3sequential_172/lstm_517/lstm_cell_151/Sigmoid_1:y:0(sequential_172/lstm_517/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_172/lstm_517/lstm_cell_151/ReluRelu4sequential_172/lstm_517/lstm_cell_151/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_172/lstm_517/lstm_cell_151/mul_1Mul1sequential_172/lstm_517/lstm_cell_151/Sigmoid:y:08sequential_172/lstm_517/lstm_cell_151/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_172/lstm_517/lstm_cell_151/add_1AddV2-sequential_172/lstm_517/lstm_cell_151/mul:z:0/sequential_172/lstm_517/lstm_cell_151/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_172/lstm_517/lstm_cell_151/Sigmoid_2Sigmoid4sequential_172/lstm_517/lstm_cell_151/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_172/lstm_517/lstm_cell_151/Relu_1Relu/sequential_172/lstm_517/lstm_cell_151/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_172/lstm_517/lstm_cell_151/mul_2Mul3sequential_172/lstm_517/lstm_cell_151/Sigmoid_2:y:0:sequential_172/lstm_517/lstm_cell_151/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_172/lstm_517/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_172/lstm_517/TensorArrayV2_1TensorListReserve>sequential_172/lstm_517/TensorArrayV2_1/element_shape:output:00sequential_172/lstm_517/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_172/lstm_517/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_172/lstm_517/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_172/lstm_517/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_172/lstm_517/whileWhile3sequential_172/lstm_517/while/loop_counter:output:09sequential_172/lstm_517/while/maximum_iterations:output:0%sequential_172/lstm_517/time:output:00sequential_172/lstm_517/TensorArrayV2_1:handle:0&sequential_172/lstm_517/zeros:output:0(sequential_172/lstm_517/zeros_1:output:00sequential_172/lstm_517/strided_slice_1:output:0Osequential_172/lstm_517/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_172_lstm_517_lstm_cell_151_matmul_readvariableop_resourceFsequential_172_lstm_517_lstm_cell_151_matmul_1_readvariableop_resourceEsequential_172_lstm_517_lstm_cell_151_biasadd_readvariableop_resource*
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
)sequential_172_lstm_517_while_body_919458*5
cond-R+
)sequential_172_lstm_517_while_cond_919457*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_172/lstm_517/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_172/lstm_517/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_172/lstm_517/while:output:3Qsequential_172/lstm_517/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_172/lstm_517/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_172/lstm_517/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_517/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_517/strided_slice_3StridedSliceCsequential_172/lstm_517/TensorArrayV2Stack/TensorListStack:tensor:06sequential_172/lstm_517/strided_slice_3/stack:output:08sequential_172/lstm_517/strided_slice_3/stack_1:output:08sequential_172/lstm_517/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_172/lstm_517/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_172/lstm_517/transpose_1	TransposeCsequential_172/lstm_517/TensorArrayV2Stack/TensorListStack:tensor:01sequential_172/lstm_517/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_172/lstm_517/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_172/lstm_518/ShapeShape'sequential_172/lstm_517/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_172/lstm_518/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_172/lstm_518/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_172/lstm_518/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_172/lstm_518/strided_sliceStridedSlice&sequential_172/lstm_518/Shape:output:04sequential_172/lstm_518/strided_slice/stack:output:06sequential_172/lstm_518/strided_slice/stack_1:output:06sequential_172/lstm_518/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_172/lstm_518/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_172/lstm_518/zeros/packedPack.sequential_172/lstm_518/strided_slice:output:0/sequential_172/lstm_518/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_172/lstm_518/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_518/zerosFill-sequential_172/lstm_518/zeros/packed:output:0,sequential_172/lstm_518/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_172/lstm_518/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_172/lstm_518/zeros_1/packedPack.sequential_172/lstm_518/strided_slice:output:01sequential_172/lstm_518/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_172/lstm_518/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_172/lstm_518/zeros_1Fill/sequential_172/lstm_518/zeros_1/packed:output:0.sequential_172/lstm_518/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_172/lstm_518/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_172/lstm_518/transpose	Transpose'sequential_172/lstm_517/transpose_1:y:0/sequential_172/lstm_518/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_172/lstm_518/Shape_1Shape%sequential_172/lstm_518/transpose:y:0*
T0*
_output_shapes
:w
-sequential_172/lstm_518/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_518/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_518/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_518/strided_slice_1StridedSlice(sequential_172/lstm_518/Shape_1:output:06sequential_172/lstm_518/strided_slice_1/stack:output:08sequential_172/lstm_518/strided_slice_1/stack_1:output:08sequential_172/lstm_518/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_172/lstm_518/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_172/lstm_518/TensorArrayV2TensorListReserve<sequential_172/lstm_518/TensorArrayV2/element_shape:output:00sequential_172/lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_172/lstm_518/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_172/lstm_518/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_172/lstm_518/transpose:y:0Vsequential_172/lstm_518/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_172/lstm_518/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_518/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_172/lstm_518/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_518/strided_slice_2StridedSlice%sequential_172/lstm_518/transpose:y:06sequential_172/lstm_518/strided_slice_2/stack:output:08sequential_172/lstm_518/strided_slice_2/stack_1:output:08sequential_172/lstm_518/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOpReadVariableOpDsequential_172_lstm_518_lstm_cell_152_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_172/lstm_518/lstm_cell_152/MatMulMatMul0sequential_172/lstm_518/strided_slice_2:output:0Csequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOpFsequential_172_lstm_518_lstm_cell_152_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_172/lstm_518/lstm_cell_152/MatMul_1MatMul&sequential_172/lstm_518/zeros:output:0Esequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_172/lstm_518/lstm_cell_152/addAddV26sequential_172/lstm_518/lstm_cell_152/MatMul:product:08sequential_172/lstm_518/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOpEsequential_172_lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_172/lstm_518/lstm_cell_152/BiasAddBiasAdd-sequential_172/lstm_518/lstm_cell_152/add:z:0Dsequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_172/lstm_518/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_172/lstm_518/lstm_cell_152/splitSplit>sequential_172/lstm_518/lstm_cell_152/split/split_dim:output:06sequential_172/lstm_518/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_172/lstm_518/lstm_cell_152/SigmoidSigmoid4sequential_172/lstm_518/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_172/lstm_518/lstm_cell_152/Sigmoid_1Sigmoid4sequential_172/lstm_518/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_172/lstm_518/lstm_cell_152/mulMul3sequential_172/lstm_518/lstm_cell_152/Sigmoid_1:y:0(sequential_172/lstm_518/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_172/lstm_518/lstm_cell_152/ReluRelu4sequential_172/lstm_518/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_172/lstm_518/lstm_cell_152/mul_1Mul1sequential_172/lstm_518/lstm_cell_152/Sigmoid:y:08sequential_172/lstm_518/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_172/lstm_518/lstm_cell_152/add_1AddV2-sequential_172/lstm_518/lstm_cell_152/mul:z:0/sequential_172/lstm_518/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_172/lstm_518/lstm_cell_152/Sigmoid_2Sigmoid4sequential_172/lstm_518/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_172/lstm_518/lstm_cell_152/Relu_1Relu/sequential_172/lstm_518/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_172/lstm_518/lstm_cell_152/mul_2Mul3sequential_172/lstm_518/lstm_cell_152/Sigmoid_2:y:0:sequential_172/lstm_518/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_172/lstm_518/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_172/lstm_518/TensorArrayV2_1TensorListReserve>sequential_172/lstm_518/TensorArrayV2_1/element_shape:output:00sequential_172/lstm_518/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_172/lstm_518/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_172/lstm_518/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_172/lstm_518/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_172/lstm_518/whileWhile3sequential_172/lstm_518/while/loop_counter:output:09sequential_172/lstm_518/while/maximum_iterations:output:0%sequential_172/lstm_518/time:output:00sequential_172/lstm_518/TensorArrayV2_1:handle:0&sequential_172/lstm_518/zeros:output:0(sequential_172/lstm_518/zeros_1:output:00sequential_172/lstm_518/strided_slice_1:output:0Osequential_172/lstm_518/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_172_lstm_518_lstm_cell_152_matmul_readvariableop_resourceFsequential_172_lstm_518_lstm_cell_152_matmul_1_readvariableop_resourceEsequential_172_lstm_518_lstm_cell_152_biasadd_readvariableop_resource*
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
)sequential_172_lstm_518_while_body_919597*5
cond-R+
)sequential_172_lstm_518_while_cond_919596*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_172/lstm_518/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_172/lstm_518/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_172/lstm_518/while:output:3Qsequential_172/lstm_518/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_172/lstm_518/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_172/lstm_518/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_172/lstm_518/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_172/lstm_518/strided_slice_3StridedSliceCsequential_172/lstm_518/TensorArrayV2Stack/TensorListStack:tensor:06sequential_172/lstm_518/strided_slice_3/stack:output:08sequential_172/lstm_518/strided_slice_3/stack_1:output:08sequential_172/lstm_518/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_172/lstm_518/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_172/lstm_518/transpose_1	TransposeCsequential_172/lstm_518/TensorArrayV2Stack/TensorListStack:tensor:01sequential_172/lstm_518/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_172/lstm_518/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_172/dense_172/MatMul/ReadVariableOpReadVariableOp7sequential_172_dense_172_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_172/dense_172/MatMulMatMul0sequential_172/lstm_518/strided_slice_3:output:06sequential_172/dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_172/dense_172/BiasAdd/ReadVariableOpReadVariableOp8sequential_172_dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_172/dense_172/BiasAddBiasAdd)sequential_172/dense_172/MatMul:product:07sequential_172/dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_172/dense_172/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_172/dense_172/BiasAdd/ReadVariableOp/^sequential_172/dense_172/MatMul/ReadVariableOp=^sequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp<^sequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOp>^sequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp^sequential_172/lstm_516/while=^sequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp<^sequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOp>^sequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp^sequential_172/lstm_517/while=^sequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp<^sequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOp>^sequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp^sequential_172/lstm_518/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_172/dense_172/BiasAdd/ReadVariableOp/sequential_172/dense_172/BiasAdd/ReadVariableOp2`
.sequential_172/dense_172/MatMul/ReadVariableOp.sequential_172/dense_172/MatMul/ReadVariableOp2|
<sequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp<sequential_172/lstm_516/lstm_cell_150/BiasAdd/ReadVariableOp2z
;sequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOp;sequential_172/lstm_516/lstm_cell_150/MatMul/ReadVariableOp2~
=sequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp=sequential_172/lstm_516/lstm_cell_150/MatMul_1/ReadVariableOp2>
sequential_172/lstm_516/whilesequential_172/lstm_516/while2|
<sequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp<sequential_172/lstm_517/lstm_cell_151/BiasAdd/ReadVariableOp2z
;sequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOp;sequential_172/lstm_517/lstm_cell_151/MatMul/ReadVariableOp2~
=sequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp=sequential_172/lstm_517/lstm_cell_151/MatMul_1/ReadVariableOp2>
sequential_172/lstm_517/whilesequential_172/lstm_517/while2|
<sequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp<sequential_172/lstm_518/lstm_cell_152/BiasAdd/ReadVariableOp2z
;sequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOp;sequential_172/lstm_518/lstm_cell_152/MatMul/ReadVariableOp2~
=sequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp=sequential_172/lstm_518/lstm_cell_152/MatMul_1/ReadVariableOp2>
sequential_172/lstm_518/whilesequential_172/lstm_518/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_516_input
?
?
while_cond_924475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924475___redundant_placeholder04
0while_while_cond_924475___redundant_placeholder14
0while_while_cond_924475___redundant_placeholder24
0while_while_cond_924475___redundant_placeholder3
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924820

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
?
?
)__inference_lstm_518_layer_call_fn_924120

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
D__inference_lstm_518_layer_call_and_return_conditional_losses_921186o
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
while_body_924190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_152_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_152_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_152_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_152_matmul_readvariableop_resource:2(F
4while_lstm_cell_152_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_152_biasadd_readvariableop_resource:(??*while/lstm_cell_152/BiasAdd/ReadVariableOp?)while/lstm_cell_152/MatMul/ReadVariableOp?+while/lstm_cell_152/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_152/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_152_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_152/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_152/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_152/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_152_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_152/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_152/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_152/addAddV2$while/lstm_cell_152/MatMul:product:0&while/lstm_cell_152/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_152/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_152_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_152/BiasAddBiasAddwhile/lstm_cell_152/add:z:02while/lstm_cell_152/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_152/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_152/splitSplit,while/lstm_cell_152/split/split_dim:output:0$while/lstm_cell_152/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_152/SigmoidSigmoid"while/lstm_cell_152/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_1Sigmoid"while/lstm_cell_152/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mulMul!while/lstm_cell_152/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_152/ReluRelu"while/lstm_cell_152/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_1Mulwhile/lstm_cell_152/Sigmoid:y:0&while/lstm_cell_152/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/add_1AddV2while/lstm_cell_152/mul:z:0while/lstm_cell_152/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_152/Sigmoid_2Sigmoid"while/lstm_cell_152/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_152/Relu_1Reluwhile/lstm_cell_152/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_152/mul_2Mul!while/lstm_cell_152/Sigmoid_2:y:0(while/lstm_cell_152/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_152/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_152/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_152/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_152/BiasAdd/ReadVariableOp*^while/lstm_cell_152/MatMul/ReadVariableOp,^while/lstm_cell_152/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_152_biasadd_readvariableop_resource5while_lstm_cell_152_biasadd_readvariableop_resource_0"n
4while_lstm_cell_152_matmul_1_readvariableop_resource6while_lstm_cell_152_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_152_matmul_readvariableop_resource4while_lstm_cell_152_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_152/BiasAdd/ReadVariableOp*while/lstm_cell_152/BiasAdd/ReadVariableOp2V
)while/lstm_cell_152/MatMul/ReadVariableOp)while/lstm_cell_152/MatMul/ReadVariableOp2Z
+while/lstm_cell_152/MatMul_1/ReadVariableOp+while/lstm_cell_152/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_516_while_cond_922486.
*lstm_516_while_lstm_516_while_loop_counter4
0lstm_516_while_lstm_516_while_maximum_iterations
lstm_516_while_placeholder 
lstm_516_while_placeholder_1 
lstm_516_while_placeholder_2 
lstm_516_while_placeholder_30
,lstm_516_while_less_lstm_516_strided_slice_1F
Blstm_516_while_lstm_516_while_cond_922486___redundant_placeholder0F
Blstm_516_while_lstm_516_while_cond_922486___redundant_placeholder1F
Blstm_516_while_lstm_516_while_cond_922486___redundant_placeholder2F
Blstm_516_while_lstm_516_while_cond_922486___redundant_placeholder3
lstm_516_while_identity
?
lstm_516/while/LessLesslstm_516_while_placeholder,lstm_516_while_less_lstm_516_strided_slice_1*
T0*
_output_shapes
: ]
lstm_516/while/IdentityIdentitylstm_516/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_516_while_identity lstm_516/while/Identity:output:0*(
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
lstm_517_while_cond_922625.
*lstm_517_while_lstm_517_while_loop_counter4
0lstm_517_while_lstm_517_while_maximum_iterations
lstm_517_while_placeholder 
lstm_517_while_placeholder_1 
lstm_517_while_placeholder_2 
lstm_517_while_placeholder_30
,lstm_517_while_less_lstm_517_strided_slice_1F
Blstm_517_while_lstm_517_while_cond_922625___redundant_placeholder0F
Blstm_517_while_lstm_517_while_cond_922625___redundant_placeholder1F
Blstm_517_while_lstm_517_while_cond_922625___redundant_placeholder2F
Blstm_517_while_lstm_517_while_cond_922625___redundant_placeholder3
lstm_517_while_identity
?
lstm_517/while/LessLesslstm_517_while_placeholder,lstm_517_while_less_lstm_517_strided_slice_1*
T0*
_output_shapes
: ]
lstm_517/while/IdentityIdentitylstm_517/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_517_while_identity lstm_517/while/Identity:output:0*(
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
)__inference_lstm_517_layer_call_fn_923515

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
D__inference_lstm_517_layer_call_and_return_conditional_losses_921567s
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
?
D__inference_lstm_516_layer_call_and_return_conditional_losses_920028

inputs'
lstm_cell_150_919946:	?'
lstm_cell_150_919948:	d?#
lstm_cell_150_919950:	?
identity??%lstm_cell_150/StatefulPartitionedCall?while;
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
%lstm_cell_150/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_150_919946lstm_cell_150_919948lstm_cell_150_919950*
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_919900n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_150_919946lstm_cell_150_919948lstm_cell_150_919950*
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
while_body_919959*
condR
while_cond_919958*K
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
NoOpNoOp&^lstm_cell_150/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_150/StatefulPartitionedCall%lstm_cell_150/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
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
lstm_516_input;
 serving_default_lstm_516_input:0?????????=
	dense_1720
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
2dense_172/kernel
:2dense_172/bias
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
0:.	?2lstm_516/lstm_cell_516/kernel
::8	d?2'lstm_516/lstm_cell_516/recurrent_kernel
*:(?2lstm_516/lstm_cell_516/bias
0:.	d?2lstm_517/lstm_cell_517/kernel
::8	2?2'lstm_517/lstm_cell_517/recurrent_kernel
*:(?2lstm_517/lstm_cell_517/bias
/:-2(2lstm_518/lstm_cell_518/kernel
9:7
(2'lstm_518/lstm_cell_518/recurrent_kernel
):'(2lstm_518/lstm_cell_518/bias
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
2Adam/dense_172/kernel/m
!:2Adam/dense_172/bias/m
5:3	?2$Adam/lstm_516/lstm_cell_516/kernel/m
?:=	d?2.Adam/lstm_516/lstm_cell_516/recurrent_kernel/m
/:-?2"Adam/lstm_516/lstm_cell_516/bias/m
5:3	d?2$Adam/lstm_517/lstm_cell_517/kernel/m
?:=	2?2.Adam/lstm_517/lstm_cell_517/recurrent_kernel/m
/:-?2"Adam/lstm_517/lstm_cell_517/bias/m
4:22(2$Adam/lstm_518/lstm_cell_518/kernel/m
>:<
(2.Adam/lstm_518/lstm_cell_518/recurrent_kernel/m
.:,(2"Adam/lstm_518/lstm_cell_518/bias/m
':%
2Adam/dense_172/kernel/v
!:2Adam/dense_172/bias/v
5:3	?2$Adam/lstm_516/lstm_cell_516/kernel/v
?:=	d?2.Adam/lstm_516/lstm_cell_516/recurrent_kernel/v
/:-?2"Adam/lstm_516/lstm_cell_516/bias/v
5:3	d?2$Adam/lstm_517/lstm_cell_517/kernel/v
?:=	2?2.Adam/lstm_517/lstm_cell_517/recurrent_kernel/v
/:-?2"Adam/lstm_517/lstm_cell_517/bias/v
4:22(2$Adam/lstm_518/lstm_cell_518/kernel/v
>:<
(2.Adam/lstm_518/lstm_cell_518/recurrent_kernel/v
.:,(2"Adam/lstm_518/lstm_cell_518/bias/v
?2?
/__inference_sequential_172_layer_call_fn_921236
/__inference_sequential_172_layer_call_fn_921974
/__inference_sequential_172_layer_call_fn_922001
/__inference_sequential_172_layer_call_fn_921852?
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_922428
J__inference_sequential_172_layer_call_and_return_conditional_losses_922855
J__inference_sequential_172_layer_call_and_return_conditional_losses_921882
J__inference_sequential_172_layer_call_and_return_conditional_losses_921912?
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
!__inference__wrapped_model_919687lstm_516_input"?
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
)__inference_lstm_516_layer_call_fn_922866
)__inference_lstm_516_layer_call_fn_922877
)__inference_lstm_516_layer_call_fn_922888
)__inference_lstm_516_layer_call_fn_922899?
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923042
D__inference_lstm_516_layer_call_and_return_conditional_losses_923185
D__inference_lstm_516_layer_call_and_return_conditional_losses_923328
D__inference_lstm_516_layer_call_and_return_conditional_losses_923471?
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
)__inference_lstm_517_layer_call_fn_923482
)__inference_lstm_517_layer_call_fn_923493
)__inference_lstm_517_layer_call_fn_923504
)__inference_lstm_517_layer_call_fn_923515?
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_923658
D__inference_lstm_517_layer_call_and_return_conditional_losses_923801
D__inference_lstm_517_layer_call_and_return_conditional_losses_923944
D__inference_lstm_517_layer_call_and_return_conditional_losses_924087?
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
)__inference_lstm_518_layer_call_fn_924098
)__inference_lstm_518_layer_call_fn_924109
)__inference_lstm_518_layer_call_fn_924120
)__inference_lstm_518_layer_call_fn_924131?
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924274
D__inference_lstm_518_layer_call_and_return_conditional_losses_924417
D__inference_lstm_518_layer_call_and_return_conditional_losses_924560
D__inference_lstm_518_layer_call_and_return_conditional_losses_924703?
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
*__inference_dense_172_layer_call_fn_924712?
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
E__inference_dense_172_layer_call_and_return_conditional_losses_924722?
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
$__inference_signature_wrapper_921947lstm_516_input"?
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
.__inference_lstm_cell_150_layer_call_fn_924739
.__inference_lstm_cell_150_layer_call_fn_924756?
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924788
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924820?
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
.__inference_lstm_cell_151_layer_call_fn_924837
.__inference_lstm_cell_151_layer_call_fn_924854?
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924886
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924918?
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
.__inference_lstm_cell_152_layer_call_fn_924935
.__inference_lstm_cell_152_layer_call_fn_924952?
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_924984
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_925016?
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
!__inference__wrapped_model_919687?-./012345!";?8
1?.
,?)
lstm_516_input?????????
? "5?2
0
	dense_172#? 
	dense_172??????????
E__inference_dense_172_layer_call_and_return_conditional_losses_924722\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_172_layer_call_fn_924712O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_516_layer_call_and_return_conditional_losses_923042?-./O?L
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923185?-./O?L
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923328q-./??<
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
D__inference_lstm_516_layer_call_and_return_conditional_losses_923471q-./??<
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
)__inference_lstm_516_layer_call_fn_922866}-./O?L
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
)__inference_lstm_516_layer_call_fn_922877}-./O?L
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
)__inference_lstm_516_layer_call_fn_922888d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_516_layer_call_fn_922899d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_517_layer_call_and_return_conditional_losses_923658?012O?L
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_923801?012O?L
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_923944q012??<
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
D__inference_lstm_517_layer_call_and_return_conditional_losses_924087q012??<
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
)__inference_lstm_517_layer_call_fn_923482}012O?L
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
)__inference_lstm_517_layer_call_fn_923493}012O?L
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
)__inference_lstm_517_layer_call_fn_923504d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_517_layer_call_fn_923515d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_518_layer_call_and_return_conditional_losses_924274}345O?L
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924417}345O?L
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924560m345??<
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
D__inference_lstm_518_layer_call_and_return_conditional_losses_924703m345??<
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
)__inference_lstm_518_layer_call_fn_924098p345O?L
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
)__inference_lstm_518_layer_call_fn_924109p345O?L
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
)__inference_lstm_518_layer_call_fn_924120`345??<
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
)__inference_lstm_518_layer_call_fn_924131`345??<
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924788?-./??}
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
I__inference_lstm_cell_150_layer_call_and_return_conditional_losses_924820?-./??}
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
.__inference_lstm_cell_150_layer_call_fn_924739?-./??}
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
.__inference_lstm_cell_150_layer_call_fn_924756?-./??}
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924886?012??}
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
I__inference_lstm_cell_151_layer_call_and_return_conditional_losses_924918?012??}
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
.__inference_lstm_cell_151_layer_call_fn_924837?012??}
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
.__inference_lstm_cell_151_layer_call_fn_924854?012??}
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_924984?345??}
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
I__inference_lstm_cell_152_layer_call_and_return_conditional_losses_925016?345??}
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
.__inference_lstm_cell_152_layer_call_fn_924935?345??}
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
.__inference_lstm_cell_152_layer_call_fn_924952?345??}
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_921882y-./012345!"C?@
9?6
,?)
lstm_516_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_172_layer_call_and_return_conditional_losses_921912y-./012345!"C?@
9?6
,?)
lstm_516_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_172_layer_call_and_return_conditional_losses_922428q-./012345!";?8
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
J__inference_sequential_172_layer_call_and_return_conditional_losses_922855q-./012345!";?8
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
/__inference_sequential_172_layer_call_fn_921236l-./012345!"C?@
9?6
,?)
lstm_516_input?????????
p 

 
? "???????????
/__inference_sequential_172_layer_call_fn_921852l-./012345!"C?@
9?6
,?)
lstm_516_input?????????
p

 
? "???????????
/__inference_sequential_172_layer_call_fn_921974d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_172_layer_call_fn_922001d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_921947?-./012345!"M?J
? 
C?@
>
lstm_516_input,?)
lstm_516_input?????????"5?2
0
	dense_172#? 
	dense_172?????????