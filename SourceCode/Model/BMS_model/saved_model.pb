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
dense_207/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_207/kernel
u
$dense_207/kernel/Read/ReadVariableOpReadVariableOpdense_207/kernel*
_output_shapes

:
*
dtype0
t
dense_207/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_207/bias
m
"dense_207/bias/Read/ReadVariableOpReadVariableOpdense_207/bias*
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
lstm_621/lstm_cell_621/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_621/lstm_cell_621/kernel
?
1lstm_621/lstm_cell_621/kernel/Read/ReadVariableOpReadVariableOplstm_621/lstm_cell_621/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_621/lstm_cell_621/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_621/lstm_cell_621/recurrent_kernel
?
;lstm_621/lstm_cell_621/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_621/lstm_cell_621/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_621/lstm_cell_621/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_621/lstm_cell_621/bias
?
/lstm_621/lstm_cell_621/bias/Read/ReadVariableOpReadVariableOplstm_621/lstm_cell_621/bias*
_output_shapes	
:?*
dtype0
?
lstm_622/lstm_cell_622/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_622/lstm_cell_622/kernel
?
1lstm_622/lstm_cell_622/kernel/Read/ReadVariableOpReadVariableOplstm_622/lstm_cell_622/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_622/lstm_cell_622/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_622/lstm_cell_622/recurrent_kernel
?
;lstm_622/lstm_cell_622/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_622/lstm_cell_622/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_622/lstm_cell_622/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_622/lstm_cell_622/bias
?
/lstm_622/lstm_cell_622/bias/Read/ReadVariableOpReadVariableOplstm_622/lstm_cell_622/bias*
_output_shapes	
:?*
dtype0
?
lstm_623/lstm_cell_623/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_623/lstm_cell_623/kernel
?
1lstm_623/lstm_cell_623/kernel/Read/ReadVariableOpReadVariableOplstm_623/lstm_cell_623/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_623/lstm_cell_623/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_623/lstm_cell_623/recurrent_kernel
?
;lstm_623/lstm_cell_623/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_623/lstm_cell_623/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_623/lstm_cell_623/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_623/lstm_cell_623/bias
?
/lstm_623/lstm_cell_623/bias/Read/ReadVariableOpReadVariableOplstm_623/lstm_cell_623/bias*
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
Adam/dense_207/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_207/kernel/m
?
+Adam/dense_207/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_207/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_207/bias/m
{
)Adam/dense_207/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_621/lstm_cell_621/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_621/lstm_cell_621/kernel/m
?
8Adam/lstm_621/lstm_cell_621/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_621/lstm_cell_621/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_621/lstm_cell_621/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_621/lstm_cell_621/recurrent_kernel/m
?
BAdam/lstm_621/lstm_cell_621/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_621/lstm_cell_621/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_621/lstm_cell_621/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_621/lstm_cell_621/bias/m
?
6Adam/lstm_621/lstm_cell_621/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_621/lstm_cell_621/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_622/lstm_cell_622/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_622/lstm_cell_622/kernel/m
?
8Adam/lstm_622/lstm_cell_622/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_622/lstm_cell_622/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_622/lstm_cell_622/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_622/lstm_cell_622/recurrent_kernel/m
?
BAdam/lstm_622/lstm_cell_622/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_622/lstm_cell_622/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_622/lstm_cell_622/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_622/lstm_cell_622/bias/m
?
6Adam/lstm_622/lstm_cell_622/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_622/lstm_cell_622/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_623/lstm_cell_623/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_623/lstm_cell_623/kernel/m
?
8Adam/lstm_623/lstm_cell_623/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_623/lstm_cell_623/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_623/lstm_cell_623/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_623/lstm_cell_623/recurrent_kernel/m
?
BAdam/lstm_623/lstm_cell_623/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_623/lstm_cell_623/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_623/lstm_cell_623/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_623/lstm_cell_623/bias/m
?
6Adam/lstm_623/lstm_cell_623/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_623/lstm_cell_623/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_207/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_207/kernel/v
?
+Adam/dense_207/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_207/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_207/bias/v
{
)Adam/dense_207/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_621/lstm_cell_621/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_621/lstm_cell_621/kernel/v
?
8Adam/lstm_621/lstm_cell_621/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_621/lstm_cell_621/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_621/lstm_cell_621/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_621/lstm_cell_621/recurrent_kernel/v
?
BAdam/lstm_621/lstm_cell_621/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_621/lstm_cell_621/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_621/lstm_cell_621/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_621/lstm_cell_621/bias/v
?
6Adam/lstm_621/lstm_cell_621/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_621/lstm_cell_621/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_622/lstm_cell_622/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_622/lstm_cell_622/kernel/v
?
8Adam/lstm_622/lstm_cell_622/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_622/lstm_cell_622/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_622/lstm_cell_622/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_622/lstm_cell_622/recurrent_kernel/v
?
BAdam/lstm_622/lstm_cell_622/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_622/lstm_cell_622/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_622/lstm_cell_622/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_622/lstm_cell_622/bias/v
?
6Adam/lstm_622/lstm_cell_622/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_622/lstm_cell_622/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_623/lstm_cell_623/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_623/lstm_cell_623/kernel/v
?
8Adam/lstm_623/lstm_cell_623/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_623/lstm_cell_623/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_623/lstm_cell_623/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_623/lstm_cell_623/recurrent_kernel/v
?
BAdam/lstm_623/lstm_cell_623/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_623/lstm_cell_623/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_623/lstm_cell_623/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_623/lstm_cell_623/bias/v
?
6Adam/lstm_623/lstm_cell_623/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_623/lstm_cell_623/bias/v*
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
VARIABLE_VALUEdense_207/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_207/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_621/lstm_cell_621/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_621/lstm_cell_621/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_621/lstm_cell_621/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_622/lstm_cell_622/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_622/lstm_cell_622/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_622/lstm_cell_622/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_623/lstm_cell_623/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_623/lstm_cell_623/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_623/lstm_cell_623/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_207/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_621/lstm_cell_621/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_621/lstm_cell_621/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_621/lstm_cell_621/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_622/lstm_cell_622/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_622/lstm_cell_622/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_622/lstm_cell_622/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_623/lstm_cell_623/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_623/lstm_cell_623/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_623/lstm_cell_623/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_207/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_621/lstm_cell_621/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_621/lstm_cell_621/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_621/lstm_cell_621/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_622/lstm_cell_622/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_622/lstm_cell_622/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_622/lstm_cell_622/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_623/lstm_cell_623/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_623/lstm_cell_623/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_623/lstm_cell_623/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_621_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_621_inputlstm_621/lstm_cell_621/kernel'lstm_621/lstm_cell_621/recurrent_kernellstm_621/lstm_cell_621/biaslstm_622/lstm_cell_622/kernel'lstm_622/lstm_cell_622/recurrent_kernellstm_622/lstm_cell_622/biaslstm_623/lstm_cell_623/kernel'lstm_623/lstm_cell_623/recurrent_kernellstm_623/lstm_cell_623/biasdense_207/kerneldense_207/bias*
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
%__inference_signature_wrapper_4767785
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_207/kernel/Read/ReadVariableOp"dense_207/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_621/lstm_cell_621/kernel/Read/ReadVariableOp;lstm_621/lstm_cell_621/recurrent_kernel/Read/ReadVariableOp/lstm_621/lstm_cell_621/bias/Read/ReadVariableOp1lstm_622/lstm_cell_622/kernel/Read/ReadVariableOp;lstm_622/lstm_cell_622/recurrent_kernel/Read/ReadVariableOp/lstm_622/lstm_cell_622/bias/Read/ReadVariableOp1lstm_623/lstm_cell_623/kernel/Read/ReadVariableOp;lstm_623/lstm_cell_623/recurrent_kernel/Read/ReadVariableOp/lstm_623/lstm_cell_623/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_207/kernel/m/Read/ReadVariableOp)Adam/dense_207/bias/m/Read/ReadVariableOp8Adam/lstm_621/lstm_cell_621/kernel/m/Read/ReadVariableOpBAdam/lstm_621/lstm_cell_621/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_621/lstm_cell_621/bias/m/Read/ReadVariableOp8Adam/lstm_622/lstm_cell_622/kernel/m/Read/ReadVariableOpBAdam/lstm_622/lstm_cell_622/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_622/lstm_cell_622/bias/m/Read/ReadVariableOp8Adam/lstm_623/lstm_cell_623/kernel/m/Read/ReadVariableOpBAdam/lstm_623/lstm_cell_623/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_623/lstm_cell_623/bias/m/Read/ReadVariableOp+Adam/dense_207/kernel/v/Read/ReadVariableOp)Adam/dense_207/bias/v/Read/ReadVariableOp8Adam/lstm_621/lstm_cell_621/kernel/v/Read/ReadVariableOpBAdam/lstm_621/lstm_cell_621/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_621/lstm_cell_621/bias/v/Read/ReadVariableOp8Adam/lstm_622/lstm_cell_622/kernel/v/Read/ReadVariableOpBAdam/lstm_622/lstm_cell_622/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_622/lstm_cell_622/bias/v/Read/ReadVariableOp8Adam/lstm_623/lstm_cell_623/kernel/v/Read/ReadVariableOpBAdam/lstm_623/lstm_cell_623/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_623/lstm_cell_623/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4770997
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_207/kerneldense_207/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_621/lstm_cell_621/kernel'lstm_621/lstm_cell_621/recurrent_kernellstm_621/lstm_cell_621/biaslstm_622/lstm_cell_622/kernel'lstm_622/lstm_cell_622/recurrent_kernellstm_622/lstm_cell_622/biaslstm_623/lstm_cell_623/kernel'lstm_623/lstm_cell_623/recurrent_kernellstm_623/lstm_cell_623/biastotalcountAdam/dense_207/kernel/mAdam/dense_207/bias/m$Adam/lstm_621/lstm_cell_621/kernel/m.Adam/lstm_621/lstm_cell_621/recurrent_kernel/m"Adam/lstm_621/lstm_cell_621/bias/m$Adam/lstm_622/lstm_cell_622/kernel/m.Adam/lstm_622/lstm_cell_622/recurrent_kernel/m"Adam/lstm_622/lstm_cell_622/bias/m$Adam/lstm_623/lstm_cell_623/kernel/m.Adam/lstm_623/lstm_cell_623/recurrent_kernel/m"Adam/lstm_623/lstm_cell_623/bias/mAdam/dense_207/kernel/vAdam/dense_207/bias/v$Adam/lstm_621/lstm_cell_621/kernel/v.Adam/lstm_621/lstm_cell_621/recurrent_kernel/v"Adam/lstm_621/lstm_cell_621/bias/v$Adam/lstm_622/lstm_cell_622/kernel/v.Adam/lstm_622/lstm_cell_622/recurrent_kernel/v"Adam/lstm_622/lstm_cell_622/bias/v$Adam/lstm_623/lstm_cell_623/kernel/v.Adam/lstm_623/lstm_cell_623/recurrent_kernel/v"Adam/lstm_623/lstm_cell_623/bias/v*4
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
#__inference__traced_restore_4771127??+
?	
?
F__inference_dense_207_layer_call_and_return_conditional_losses_4770560

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
?
?
+__inference_dense_207_layer_call_fn_4770550

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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042o
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
while_body_4770457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4766939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766939___redundant_placeholder05
1while_while_cond_4766939___redundant_placeholder15
1while_while_cond_4766939___redundant_placeholder25
1while_while_cond_4766939___redundant_placeholder3
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4767570

inputs?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4767486*
condR
while_cond_4767485*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769166

inputs?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4769082*
condR
while_cond_4769081*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766874

inputs?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4766790*
condR
while_cond_4766789*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_621_layer_call_fn_4768715
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4765866|
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

?
lstm_622_while_cond_4768036.
*lstm_622_while_lstm_622_while_loop_counter4
0lstm_622_while_lstm_622_while_maximum_iterations
lstm_622_while_placeholder 
lstm_622_while_placeholder_1 
lstm_622_while_placeholder_2 
lstm_622_while_placeholder_30
,lstm_622_while_less_lstm_622_strided_slice_1G
Clstm_622_while_lstm_622_while_cond_4768036___redundant_placeholder0G
Clstm_622_while_lstm_622_while_cond_4768036___redundant_placeholder1G
Clstm_622_while_lstm_622_while_cond_4768036___redundant_placeholder2G
Clstm_622_while_lstm_622_while_cond_4768036___redundant_placeholder3
lstm_622_while_identity
?
lstm_622/while/LessLesslstm_622_while_placeholder,lstm_622_while_less_lstm_622_strided_slice_1*
T0*
_output_shapes
: ]
lstm_622/while/IdentityIdentitylstm_622/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_622_while_identity lstm_622/while/Identity:output:0*(
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
while_cond_4769697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769697___redundant_placeholder05
1while_while_cond_4769697___redundant_placeholder15
1while_while_cond_4769697___redundant_placeholder25
1while_while_cond_4769697___redundant_placeholder3
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
while_cond_4770313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4770313___redundant_placeholder05
1while_while_cond_4770313___redundant_placeholder15
1while_while_cond_4770313___redundant_placeholder25
1while_while_cond_4770313___redundant_placeholder3
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
%__inference_signature_wrapper_4767785
lstm_621_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_621_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4765525o
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
_user_specified_namelstm_621_input
?
?
*__inference_lstm_623_layer_call_fn_4769936
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4766375o
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4766088

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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770541

inputs>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4770457*
condR
while_cond_4770456*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4765796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4765796___redundant_placeholder05
1while_while_cond_4765796___redundant_placeholder15
1while_while_cond_4765796___redundant_placeholder25
1while_while_cond_4765796___redundant_placeholder3
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767638

inputs#
lstm_621_4767611:	?#
lstm_621_4767613:	d?
lstm_621_4767615:	?#
lstm_622_4767618:	d?#
lstm_622_4767620:	2?
lstm_622_4767622:	?"
lstm_623_4767625:2("
lstm_623_4767627:
(
lstm_623_4767629:(#
dense_207_4767632:

dense_207_4767634:
identity??!dense_207/StatefulPartitionedCall? lstm_621/StatefulPartitionedCall? lstm_622/StatefulPartitionedCall? lstm_623/StatefulPartitionedCall?
 lstm_621/StatefulPartitionedCallStatefulPartitionedCallinputslstm_621_4767611lstm_621_4767613lstm_621_4767615*
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4767570?
 lstm_622/StatefulPartitionedCallStatefulPartitionedCall)lstm_621/StatefulPartitionedCall:output:0lstm_622_4767618lstm_622_4767620lstm_622_4767622*
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4767405?
 lstm_623/StatefulPartitionedCallStatefulPartitionedCall)lstm_622/StatefulPartitionedCall:output:0lstm_623_4767625lstm_623_4767627lstm_623_4767629*
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767240?
!dense_207/StatefulPartitionedCallStatefulPartitionedCall)lstm_623/StatefulPartitionedCall:output:0dense_207_4767632dense_207_4767634*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042y
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_207/StatefulPartitionedCall!^lstm_621/StatefulPartitionedCall!^lstm_622/StatefulPartitionedCall!^lstm_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2D
 lstm_621/StatefulPartitionedCall lstm_621/StatefulPartitionedCall2D
 lstm_622/StatefulPartitionedCall lstm_622/StatefulPartitionedCall2D
 lstm_623/StatefulPartitionedCall lstm_623/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4767155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4767155___redundant_placeholder05
1while_while_cond_4767155___redundant_placeholder15
1while_while_cond_4767155___redundant_placeholder25
1while_while_cond_4767155___redundant_placeholder3
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
while_body_4768796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767750
lstm_621_input#
lstm_621_4767723:	?#
lstm_621_4767725:	d?
lstm_621_4767727:	?#
lstm_622_4767730:	d?#
lstm_622_4767732:	2?
lstm_622_4767734:	?"
lstm_623_4767737:2("
lstm_623_4767739:
(
lstm_623_4767741:(#
dense_207_4767744:

dense_207_4767746:
identity??!dense_207/StatefulPartitionedCall? lstm_621/StatefulPartitionedCall? lstm_622/StatefulPartitionedCall? lstm_623/StatefulPartitionedCall?
 lstm_621/StatefulPartitionedCallStatefulPartitionedCalllstm_621_inputlstm_621_4767723lstm_621_4767725lstm_621_4767727*
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4767570?
 lstm_622/StatefulPartitionedCallStatefulPartitionedCall)lstm_621/StatefulPartitionedCall:output:0lstm_622_4767730lstm_622_4767732lstm_622_4767734*
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4767405?
 lstm_623/StatefulPartitionedCallStatefulPartitionedCall)lstm_622/StatefulPartitionedCall:output:0lstm_623_4767737lstm_623_4767739lstm_623_4767741*
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767240?
!dense_207/StatefulPartitionedCallStatefulPartitionedCall)lstm_623/StatefulPartitionedCall:output:0dense_207_4767744dense_207_4767746*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042y
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_207/StatefulPartitionedCall!^lstm_621/StatefulPartitionedCall!^lstm_622/StatefulPartitionedCall!^lstm_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2D
 lstm_621/StatefulPartitionedCall lstm_621/StatefulPartitionedCall2D
 lstm_622/StatefulPartitionedCall lstm_622/StatefulPartitionedCall2D
 lstm_623/StatefulPartitionedCall lstm_623/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_621_input
?K
?
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769023
inputs_0?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4768939*
condR
while_cond_4768938*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769925

inputs?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4769841*
condR
while_cond_4769840*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4770171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_622_while_body_4768464.
*lstm_622_while_lstm_622_while_loop_counter4
0lstm_622_while_lstm_622_while_maximum_iterations
lstm_622_while_placeholder 
lstm_622_while_placeholder_1 
lstm_622_while_placeholder_2 
lstm_622_while_placeholder_3-
)lstm_622_while_lstm_622_strided_slice_1_0i
elstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0:	d?R
?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?M
>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
lstm_622_while_identity
lstm_622_while_identity_1
lstm_622_while_identity_2
lstm_622_while_identity_3
lstm_622_while_identity_4
lstm_622_while_identity_5+
'lstm_622_while_lstm_622_strided_slice_1g
clstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensorN
;lstm_622_while_lstm_cell_787_matmul_readvariableop_resource:	d?P
=lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource:	2?K
<lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource:	???3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp?2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp?4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp?
@lstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_622/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0lstm_622_while_placeholderIlstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_622/while/lstm_cell_787/MatMulMatMul9lstm_622/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_622/while/lstm_cell_787/MatMul_1MatMullstm_622_while_placeholder_2<lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_622/while/lstm_cell_787/addAddV2-lstm_622/while/lstm_cell_787/MatMul:product:0/lstm_622/while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_622/while/lstm_cell_787/BiasAddBiasAdd$lstm_622/while/lstm_cell_787/add:z:0;lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_622/while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_622/while/lstm_cell_787/splitSplit5lstm_622/while/lstm_cell_787/split/split_dim:output:0-lstm_622/while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_622/while/lstm_cell_787/SigmoidSigmoid+lstm_622/while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_622/while/lstm_cell_787/Sigmoid_1Sigmoid+lstm_622/while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_622/while/lstm_cell_787/mulMul*lstm_622/while/lstm_cell_787/Sigmoid_1:y:0lstm_622_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_622/while/lstm_cell_787/ReluRelu+lstm_622/while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/mul_1Mul(lstm_622/while/lstm_cell_787/Sigmoid:y:0/lstm_622/while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/add_1AddV2$lstm_622/while/lstm_cell_787/mul:z:0&lstm_622/while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_622/while/lstm_cell_787/Sigmoid_2Sigmoid+lstm_622/while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_622/while/lstm_cell_787/Relu_1Relu&lstm_622/while/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/mul_2Mul*lstm_622/while/lstm_cell_787/Sigmoid_2:y:01lstm_622/while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_622/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_622_while_placeholder_1lstm_622_while_placeholder&lstm_622/while/lstm_cell_787/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_622/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_622/while/addAddV2lstm_622_while_placeholderlstm_622/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_622/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_622/while/add_1AddV2*lstm_622_while_lstm_622_while_loop_counterlstm_622/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_622/while/IdentityIdentitylstm_622/while/add_1:z:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_1Identity0lstm_622_while_lstm_622_while_maximum_iterations^lstm_622/while/NoOp*
T0*
_output_shapes
: t
lstm_622/while/Identity_2Identitylstm_622/while/add:z:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_3IdentityClstm_622/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_4Identity&lstm_622/while/lstm_cell_787/mul_2:z:0^lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_622/while/Identity_5Identity&lstm_622/while/lstm_cell_787/add_1:z:0^lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_622/while/NoOpNoOp4^lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp3^lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp5^lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_622_while_identity lstm_622/while/Identity:output:0"?
lstm_622_while_identity_1"lstm_622/while/Identity_1:output:0"?
lstm_622_while_identity_2"lstm_622/while/Identity_2:output:0"?
lstm_622_while_identity_3"lstm_622/while/Identity_3:output:0"?
lstm_622_while_identity_4"lstm_622/while/Identity_4:output:0"?
lstm_622_while_identity_5"lstm_622/while/Identity_5:output:0"T
'lstm_622_while_lstm_622_strided_slice_1)lstm_622_while_lstm_622_strided_slice_1_0"~
<lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0"?
=lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0"|
;lstm_622_while_lstm_cell_787_matmul_readvariableop_resource=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0"?
clstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensorelstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp2h
2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp2l
4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4769554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769554___redundant_placeholder05
1while_while_cond_4769554___redundant_placeholder15
1while_while_cond_4769554___redundant_placeholder25
1while_while_cond_4769554___redundant_placeholder3
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
while_cond_4770170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4770170___redundant_placeholder05
1while_while_cond_4770170___redundant_placeholder15
1while_while_cond_4770170___redundant_placeholder25
1while_while_cond_4770170___redundant_placeholder3
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
while_cond_4765605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4765605___redundant_placeholder05
1while_while_cond_4765605___redundant_placeholder15
1while_while_cond_4765605___redundant_placeholder25
1while_while_cond_4765605___redundant_placeholder3
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
/__inference_lstm_cell_788_layer_call_fn_4770790

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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766438o
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
while_body_4767156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4769555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4766789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766789___redundant_placeholder05
1while_while_cond_4766789___redundant_placeholder15
1while_while_cond_4766789___redundant_placeholder25
1while_while_cond_4766789___redundant_placeholder3
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770822

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
while_cond_4770027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4770027___redundant_placeholder05
1while_while_cond_4770027___redundant_placeholder15
1while_while_cond_4770027___redundant_placeholder25
1while_while_cond_4770027___redundant_placeholder3
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
*sequential_207_lstm_622_while_cond_4765295L
Hsequential_207_lstm_622_while_sequential_207_lstm_622_while_loop_counterR
Nsequential_207_lstm_622_while_sequential_207_lstm_622_while_maximum_iterations-
)sequential_207_lstm_622_while_placeholder/
+sequential_207_lstm_622_while_placeholder_1/
+sequential_207_lstm_622_while_placeholder_2/
+sequential_207_lstm_622_while_placeholder_3N
Jsequential_207_lstm_622_while_less_sequential_207_lstm_622_strided_slice_1e
asequential_207_lstm_622_while_sequential_207_lstm_622_while_cond_4765295___redundant_placeholder0e
asequential_207_lstm_622_while_sequential_207_lstm_622_while_cond_4765295___redundant_placeholder1e
asequential_207_lstm_622_while_sequential_207_lstm_622_while_cond_4765295___redundant_placeholder2e
asequential_207_lstm_622_while_sequential_207_lstm_622_while_cond_4765295___redundant_placeholder3*
&sequential_207_lstm_622_while_identity
?
"sequential_207/lstm_622/while/LessLess)sequential_207_lstm_622_while_placeholderJsequential_207_lstm_622_while_less_sequential_207_lstm_622_strided_slice_1*
T0*
_output_shapes
: {
&sequential_207/lstm_622/while/IdentityIdentity&sequential_207/lstm_622/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_207_lstm_622_while_identity/sequential_207/lstm_622/while/Identity:output:0*(
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042

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
?
?
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770854

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
*__inference_lstm_622_layer_call_fn_4769353

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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4767405s
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

?
0__inference_sequential_207_layer_call_fn_4767839

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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767638o
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
while_body_4769698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4765797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_786_4765821_0:	?0
while_lstm_cell_786_4765823_0:	d?,
while_lstm_cell_786_4765825_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_786_4765821:	?.
while_lstm_cell_786_4765823:	d?*
while_lstm_cell_786_4765825:	???+while/lstm_cell_786/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_786/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_786_4765821_0while_lstm_cell_786_4765823_0while_lstm_cell_786_4765825_0*
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765738?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_786/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_786/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_786/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_786/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_786_4765821while_lstm_cell_786_4765821_0"<
while_lstm_cell_786_4765823while_lstm_cell_786_4765823_0"<
while_lstm_cell_786_4765825while_lstm_cell_786_4765825_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_786/StatefulPartitionedCall+while/lstm_cell_786/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770255
inputs_0>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4770171*
condR
while_cond_4770170*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_622_while_cond_4768463.
*lstm_622_while_lstm_622_while_loop_counter4
0lstm_622_while_lstm_622_while_maximum_iterations
lstm_622_while_placeholder 
lstm_622_while_placeholder_1 
lstm_622_while_placeholder_2 
lstm_622_while_placeholder_30
,lstm_622_while_less_lstm_622_strided_slice_1G
Clstm_622_while_lstm_622_while_cond_4768463___redundant_placeholder0G
Clstm_622_while_lstm_622_while_cond_4768463___redundant_placeholder1G
Clstm_622_while_lstm_622_while_cond_4768463___redundant_placeholder2G
Clstm_622_while_lstm_622_while_cond_4768463___redundant_placeholder3
lstm_622_while_identity
?
lstm_622/while/LessLesslstm_622_while_placeholder,lstm_622_while_less_lstm_622_strided_slice_1*
T0*
_output_shapes
: ]
lstm_622/while/IdentityIdentitylstm_622/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_622_while_identity lstm_622/while/Identity:output:0*(
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
while_body_4769412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_787_layer_call_fn_4770675

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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4765942o
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
while_body_4766790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4769840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769840___redundant_placeholder05
1while_while_cond_4769840___redundant_placeholder15
1while_while_cond_4769840___redundant_placeholder25
1while_while_cond_4769840___redundant_placeholder3
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

lstm_623_while_body_4768176.
*lstm_623_while_lstm_623_while_loop_counter4
0lstm_623_while_lstm_623_while_maximum_iterations
lstm_623_while_placeholder 
lstm_623_while_placeholder_1 
lstm_623_while_placeholder_2 
lstm_623_while_placeholder_3-
)lstm_623_while_lstm_623_strided_slice_1_0i
elstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0:2(Q
?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(L
>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0:(
lstm_623_while_identity
lstm_623_while_identity_1
lstm_623_while_identity_2
lstm_623_while_identity_3
lstm_623_while_identity_4
lstm_623_while_identity_5+
'lstm_623_while_lstm_623_strided_slice_1g
clstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensorM
;lstm_623_while_lstm_cell_788_matmul_readvariableop_resource:2(O
=lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource:
(J
<lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource:(??3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp?2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp?4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp?
@lstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_623/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0lstm_623_while_placeholderIlstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_623/while/lstm_cell_788/MatMulMatMul9lstm_623/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_623/while/lstm_cell_788/MatMul_1MatMullstm_623_while_placeholder_2<lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_623/while/lstm_cell_788/addAddV2-lstm_623/while/lstm_cell_788/MatMul:product:0/lstm_623/while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_623/while/lstm_cell_788/BiasAddBiasAdd$lstm_623/while/lstm_cell_788/add:z:0;lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_623/while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_623/while/lstm_cell_788/splitSplit5lstm_623/while/lstm_cell_788/split/split_dim:output:0-lstm_623/while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_623/while/lstm_cell_788/SigmoidSigmoid+lstm_623/while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_623/while/lstm_cell_788/Sigmoid_1Sigmoid+lstm_623/while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_623/while/lstm_cell_788/mulMul*lstm_623/while/lstm_cell_788/Sigmoid_1:y:0lstm_623_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_623/while/lstm_cell_788/ReluRelu+lstm_623/while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/mul_1Mul(lstm_623/while/lstm_cell_788/Sigmoid:y:0/lstm_623/while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/add_1AddV2$lstm_623/while/lstm_cell_788/mul:z:0&lstm_623/while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_623/while/lstm_cell_788/Sigmoid_2Sigmoid+lstm_623/while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_623/while/lstm_cell_788/Relu_1Relu&lstm_623/while/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/mul_2Mul*lstm_623/while/lstm_cell_788/Sigmoid_2:y:01lstm_623/while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_623/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_623_while_placeholder_1lstm_623_while_placeholder&lstm_623/while/lstm_cell_788/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_623/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_623/while/addAddV2lstm_623_while_placeholderlstm_623/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_623/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_623/while/add_1AddV2*lstm_623_while_lstm_623_while_loop_counterlstm_623/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_623/while/IdentityIdentitylstm_623/while/add_1:z:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_1Identity0lstm_623_while_lstm_623_while_maximum_iterations^lstm_623/while/NoOp*
T0*
_output_shapes
: t
lstm_623/while/Identity_2Identitylstm_623/while/add:z:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_3IdentityClstm_623/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_4Identity&lstm_623/while/lstm_cell_788/mul_2:z:0^lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_623/while/Identity_5Identity&lstm_623/while/lstm_cell_788/add_1:z:0^lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_623/while/NoOpNoOp4^lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp3^lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp5^lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_623_while_identity lstm_623/while/Identity:output:0"?
lstm_623_while_identity_1"lstm_623/while/Identity_1:output:0"?
lstm_623_while_identity_2"lstm_623/while/Identity_2:output:0"?
lstm_623_while_identity_3"lstm_623/while/Identity_3:output:0"?
lstm_623_while_identity_4"lstm_623/while/Identity_4:output:0"?
lstm_623_while_identity_5"lstm_623/while/Identity_5:output:0"T
'lstm_623_while_lstm_623_strided_slice_1)lstm_623_while_lstm_623_strided_slice_1_0"~
<lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0"?
=lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0"|
;lstm_623_while_lstm_cell_788_matmul_readvariableop_resource=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0"?
clstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensorelstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp2h
2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp2l
4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766025

inputs(
lstm_cell_787_4765943:	d?(
lstm_cell_787_4765945:	2?$
lstm_cell_787_4765947:	?
identity??%lstm_cell_787/StatefulPartitionedCall?while;
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
%lstm_cell_787/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_787_4765943lstm_cell_787_4765945lstm_cell_787_4765947*
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4765942n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_787_4765943lstm_cell_787_4765945lstm_cell_787_4765947*
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
while_body_4765956*
condR
while_cond_4765955*K
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
NoOpNoOp&^lstm_cell_787/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_787/StatefulPartitionedCall%lstm_cell_787/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767240

inputs>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4767156*
condR
while_cond_4767155*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770724

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
?
?
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4765942

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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4767405

inputs?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4767321*
condR
while_cond_4767320*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_621_layer_call_fn_4768704
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4765675|
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

lstm_623_while_body_4768603.
*lstm_623_while_lstm_623_while_loop_counter4
0lstm_623_while_lstm_623_while_maximum_iterations
lstm_623_while_placeholder 
lstm_623_while_placeholder_1 
lstm_623_while_placeholder_2 
lstm_623_while_placeholder_3-
)lstm_623_while_lstm_623_strided_slice_1_0i
elstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0:2(Q
?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(L
>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0:(
lstm_623_while_identity
lstm_623_while_identity_1
lstm_623_while_identity_2
lstm_623_while_identity_3
lstm_623_while_identity_4
lstm_623_while_identity_5+
'lstm_623_while_lstm_623_strided_slice_1g
clstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensorM
;lstm_623_while_lstm_cell_788_matmul_readvariableop_resource:2(O
=lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource:
(J
<lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource:(??3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp?2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp?4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp?
@lstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_623/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0lstm_623_while_placeholderIlstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_623/while/lstm_cell_788/MatMulMatMul9lstm_623/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_623/while/lstm_cell_788/MatMul_1MatMullstm_623_while_placeholder_2<lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_623/while/lstm_cell_788/addAddV2-lstm_623/while/lstm_cell_788/MatMul:product:0/lstm_623/while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_623/while/lstm_cell_788/BiasAddBiasAdd$lstm_623/while/lstm_cell_788/add:z:0;lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_623/while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_623/while/lstm_cell_788/splitSplit5lstm_623/while/lstm_cell_788/split/split_dim:output:0-lstm_623/while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_623/while/lstm_cell_788/SigmoidSigmoid+lstm_623/while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_623/while/lstm_cell_788/Sigmoid_1Sigmoid+lstm_623/while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_623/while/lstm_cell_788/mulMul*lstm_623/while/lstm_cell_788/Sigmoid_1:y:0lstm_623_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_623/while/lstm_cell_788/ReluRelu+lstm_623/while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/mul_1Mul(lstm_623/while/lstm_cell_788/Sigmoid:y:0/lstm_623/while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/add_1AddV2$lstm_623/while/lstm_cell_788/mul:z:0&lstm_623/while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_623/while/lstm_cell_788/Sigmoid_2Sigmoid+lstm_623/while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_623/while/lstm_cell_788/Relu_1Relu&lstm_623/while/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_623/while/lstm_cell_788/mul_2Mul*lstm_623/while/lstm_cell_788/Sigmoid_2:y:01lstm_623/while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_623/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_623_while_placeholder_1lstm_623_while_placeholder&lstm_623/while/lstm_cell_788/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_623/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_623/while/addAddV2lstm_623_while_placeholderlstm_623/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_623/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_623/while/add_1AddV2*lstm_623_while_lstm_623_while_loop_counterlstm_623/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_623/while/IdentityIdentitylstm_623/while/add_1:z:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_1Identity0lstm_623_while_lstm_623_while_maximum_iterations^lstm_623/while/NoOp*
T0*
_output_shapes
: t
lstm_623/while/Identity_2Identitylstm_623/while/add:z:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_3IdentityClstm_623/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_623/while/NoOp*
T0*
_output_shapes
: ?
lstm_623/while/Identity_4Identity&lstm_623/while/lstm_cell_788/mul_2:z:0^lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_623/while/Identity_5Identity&lstm_623/while/lstm_cell_788/add_1:z:0^lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_623/while/NoOpNoOp4^lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp3^lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp5^lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_623_while_identity lstm_623/while/Identity:output:0"?
lstm_623_while_identity_1"lstm_623/while/Identity_1:output:0"?
lstm_623_while_identity_2"lstm_623/while/Identity_2:output:0"?
lstm_623_while_identity_3"lstm_623/while/Identity_3:output:0"?
lstm_623_while_identity_4"lstm_623/while/Identity_4:output:0"?
lstm_623_while_identity_5"lstm_623/while/Identity_5:output:0"T
'lstm_623_while_lstm_623_strided_slice_1)lstm_623_while_lstm_623_strided_slice_1_0"~
<lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource>lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0"?
=lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource?lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0"|
;lstm_623_while_lstm_cell_788_matmul_readvariableop_resource=lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0"?
clstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensorelstm_623_while_tensorarrayv2read_tensorlistgetitem_lstm_623_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp3lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp2h
2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp2lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp2l
4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp4lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4771127
file_prefix3
!assignvariableop_dense_207_kernel:
/
!assignvariableop_1_dense_207_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_621_lstm_cell_621_kernel:	?M
:assignvariableop_8_lstm_621_lstm_cell_621_recurrent_kernel:	d?=
.assignvariableop_9_lstm_621_lstm_cell_621_bias:	?D
1assignvariableop_10_lstm_622_lstm_cell_622_kernel:	d?N
;assignvariableop_11_lstm_622_lstm_cell_622_recurrent_kernel:	2?>
/assignvariableop_12_lstm_622_lstm_cell_622_bias:	?C
1assignvariableop_13_lstm_623_lstm_cell_623_kernel:2(M
;assignvariableop_14_lstm_623_lstm_cell_623_recurrent_kernel:
(=
/assignvariableop_15_lstm_623_lstm_cell_623_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_207_kernel_m:
7
)assignvariableop_19_adam_dense_207_bias_m:K
8assignvariableop_20_adam_lstm_621_lstm_cell_621_kernel_m:	?U
Bassignvariableop_21_adam_lstm_621_lstm_cell_621_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_621_lstm_cell_621_bias_m:	?K
8assignvariableop_23_adam_lstm_622_lstm_cell_622_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_622_lstm_cell_622_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_622_lstm_cell_622_bias_m:	?J
8assignvariableop_26_adam_lstm_623_lstm_cell_623_kernel_m:2(T
Bassignvariableop_27_adam_lstm_623_lstm_cell_623_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_623_lstm_cell_623_bias_m:(=
+assignvariableop_29_adam_dense_207_kernel_v:
7
)assignvariableop_30_adam_dense_207_bias_v:K
8assignvariableop_31_adam_lstm_621_lstm_cell_621_kernel_v:	?U
Bassignvariableop_32_adam_lstm_621_lstm_cell_621_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_621_lstm_cell_621_bias_v:	?K
8assignvariableop_34_adam_lstm_622_lstm_cell_622_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_622_lstm_cell_622_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_622_lstm_cell_622_bias_v:	?J
8assignvariableop_37_adam_lstm_623_lstm_cell_623_kernel_v:2(T
Bassignvariableop_38_adam_lstm_623_lstm_cell_623_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_623_lstm_cell_623_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_207_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_207_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_621_lstm_cell_621_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_621_lstm_cell_621_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_621_lstm_cell_621_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_622_lstm_cell_622_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_622_lstm_cell_622_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_622_lstm_cell_622_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_623_lstm_cell_623_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_623_lstm_cell_623_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_623_lstm_cell_623_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_207_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_207_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_621_lstm_cell_621_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_621_lstm_cell_621_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_621_lstm_cell_621_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_622_lstm_cell_622_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_622_lstm_cell_622_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_622_lstm_cell_622_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_623_lstm_cell_623_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_623_lstm_cell_623_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_623_lstm_cell_623_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_207_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_207_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_621_lstm_cell_621_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_621_lstm_cell_621_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_621_lstm_cell_621_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_622_lstm_cell_622_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_622_lstm_cell_622_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_622_lstm_cell_622_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_623_lstm_cell_623_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_623_lstm_cell_623_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_623_lstm_cell_623_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4768795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4768795___redundant_placeholder05
1while_while_cond_4768795___redundant_placeholder15
1while_while_cond_4768795___redundant_placeholder25
1while_while_cond_4768795___redundant_placeholder3
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
while_cond_4766305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766305___redundant_placeholder05
1while_while_cond_4766305___redundant_placeholder15
1while_while_cond_4766305___redundant_placeholder25
1while_while_cond_4766305___redundant_placeholder3
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769639
inputs_0?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4769555*
condR
while_cond_4769554*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_621_while_cond_4767897.
*lstm_621_while_lstm_621_while_loop_counter4
0lstm_621_while_lstm_621_while_maximum_iterations
lstm_621_while_placeholder 
lstm_621_while_placeholder_1 
lstm_621_while_placeholder_2 
lstm_621_while_placeholder_30
,lstm_621_while_less_lstm_621_strided_slice_1G
Clstm_621_while_lstm_621_while_cond_4767897___redundant_placeholder0G
Clstm_621_while_lstm_621_while_cond_4767897___redundant_placeholder1G
Clstm_621_while_lstm_621_while_cond_4767897___redundant_placeholder2G
Clstm_621_while_lstm_621_while_cond_4767897___redundant_placeholder3
lstm_621_while_identity
?
lstm_621/while/LessLesslstm_621_while_placeholder,lstm_621_while_less_lstm_621_strided_slice_1*
T0*
_output_shapes
: ]
lstm_621/while/IdentityIdentitylstm_621/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_621_while_identity lstm_621/while/Identity:output:0*(
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
while_cond_4768938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4768938___redundant_placeholder05
1while_while_cond_4768938___redundant_placeholder15
1while_while_cond_4768938___redundant_placeholder25
1while_while_cond_4768938___redundant_placeholder3
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
/__inference_lstm_cell_786_layer_call_fn_4770577

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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765592o
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769496
inputs_0?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4769412*
condR
while_cond_4769411*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769782

inputs?
,lstm_cell_787_matmul_readvariableop_resource:	d?A
.lstm_cell_787_matmul_1_readvariableop_resource:	2?<
-lstm_cell_787_biasadd_readvariableop_resource:	?
identity??$lstm_cell_787/BiasAdd/ReadVariableOp?#lstm_cell_787/MatMul/ReadVariableOp?%lstm_cell_787/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_787/MatMul/ReadVariableOpReadVariableOp,lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_787/MatMulMatMulstrided_slice_2:output:0+lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_787/MatMul_1MatMulzeros:output:0-lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_787/addAddV2lstm_cell_787/MatMul:product:0 lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_787/BiasAddBiasAddlstm_cell_787/add:z:0,lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_787/splitSplit&lstm_cell_787/split/split_dim:output:0lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_787/SigmoidSigmoidlstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_1Sigmoidlstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_787/mulMullstm_cell_787/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_787/ReluRelulstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_1Mullstm_cell_787/Sigmoid:y:0 lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_787/add_1AddV2lstm_cell_787/mul:z:0lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_787/Sigmoid_2Sigmoidlstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_787/Relu_1Relulstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_787/mul_2Mullstm_cell_787/Sigmoid_2:y:0"lstm_cell_787/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_787_matmul_readvariableop_resource.lstm_cell_787_matmul_1_readvariableop_resource-lstm_cell_787_biasadd_readvariableop_resource*
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
while_body_4769698*
condR
while_cond_4769697*K
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
NoOpNoOp%^lstm_cell_787/BiasAdd/ReadVariableOp$^lstm_cell_787/MatMul/ReadVariableOp&^lstm_cell_787/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_787/BiasAdd/ReadVariableOp$lstm_cell_787/BiasAdd/ReadVariableOp2J
#lstm_cell_787/MatMul/ReadVariableOp#lstm_cell_787/MatMul/ReadVariableOp2N
%lstm_cell_787/MatMul_1/ReadVariableOp%lstm_cell_787/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4769225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767049

inputs#
lstm_621_4766725:	?#
lstm_621_4766727:	d?
lstm_621_4766729:	?#
lstm_622_4766875:	d?#
lstm_622_4766877:	2?
lstm_622_4766879:	?"
lstm_623_4767025:2("
lstm_623_4767027:
(
lstm_623_4767029:(#
dense_207_4767043:

dense_207_4767045:
identity??!dense_207/StatefulPartitionedCall? lstm_621/StatefulPartitionedCall? lstm_622/StatefulPartitionedCall? lstm_623/StatefulPartitionedCall?
 lstm_621/StatefulPartitionedCallStatefulPartitionedCallinputslstm_621_4766725lstm_621_4766727lstm_621_4766729*
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4766724?
 lstm_622/StatefulPartitionedCallStatefulPartitionedCall)lstm_621/StatefulPartitionedCall:output:0lstm_622_4766875lstm_622_4766877lstm_622_4766879*
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766874?
 lstm_623/StatefulPartitionedCallStatefulPartitionedCall)lstm_622/StatefulPartitionedCall:output:0lstm_623_4767025lstm_623_4767027lstm_623_4767029*
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767024?
!dense_207/StatefulPartitionedCallStatefulPartitionedCall)lstm_623/StatefulPartitionedCall:output:0dense_207_4767043dense_207_4767045*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042y
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_207/StatefulPartitionedCall!^lstm_621/StatefulPartitionedCall!^lstm_622/StatefulPartitionedCall!^lstm_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2D
 lstm_621/StatefulPartitionedCall lstm_621/StatefulPartitionedCall2D
 lstm_622/StatefulPartitionedCall lstm_622/StatefulPartitionedCall2D
 lstm_623/StatefulPartitionedCall lstm_623/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_207_lstm_622_while_body_4765296L
Hsequential_207_lstm_622_while_sequential_207_lstm_622_while_loop_counterR
Nsequential_207_lstm_622_while_sequential_207_lstm_622_while_maximum_iterations-
)sequential_207_lstm_622_while_placeholder/
+sequential_207_lstm_622_while_placeholder_1/
+sequential_207_lstm_622_while_placeholder_2/
+sequential_207_lstm_622_while_placeholder_3K
Gsequential_207_lstm_622_while_sequential_207_lstm_622_strided_slice_1_0?
?sequential_207_lstm_622_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_622_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_207_lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0:	d?a
Nsequential_207_lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?\
Msequential_207_lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0:	?*
&sequential_207_lstm_622_while_identity,
(sequential_207_lstm_622_while_identity_1,
(sequential_207_lstm_622_while_identity_2,
(sequential_207_lstm_622_while_identity_3,
(sequential_207_lstm_622_while_identity_4,
(sequential_207_lstm_622_while_identity_5I
Esequential_207_lstm_622_while_sequential_207_lstm_622_strided_slice_1?
?sequential_207_lstm_622_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_622_tensorarrayunstack_tensorlistfromtensor]
Jsequential_207_lstm_622_while_lstm_cell_787_matmul_readvariableop_resource:	d?_
Lsequential_207_lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource:	2?Z
Ksequential_207_lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource:	???Bsequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp?Asequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp?Csequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp?
Osequential_207/lstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_207/lstm_622/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_207_lstm_622_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_622_tensorarrayunstack_tensorlistfromtensor_0)sequential_207_lstm_622_while_placeholderXsequential_207/lstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOpLsequential_207_lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_207/lstm_622/while/lstm_cell_787/MatMulMatMulHsequential_207/lstm_622/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOpNsequential_207_lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_207/lstm_622/while/lstm_cell_787/MatMul_1MatMul+sequential_207_lstm_622_while_placeholder_2Ksequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_207/lstm_622/while/lstm_cell_787/addAddV2<sequential_207/lstm_622/while/lstm_cell_787/MatMul:product:0>sequential_207/lstm_622/while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOpMsequential_207_lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_207/lstm_622/while/lstm_cell_787/BiasAddBiasAdd3sequential_207/lstm_622/while/lstm_cell_787/add:z:0Jsequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_207/lstm_622/while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_207/lstm_622/while/lstm_cell_787/splitSplitDsequential_207/lstm_622/while/lstm_cell_787/split/split_dim:output:0<sequential_207/lstm_622/while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_207/lstm_622/while/lstm_cell_787/SigmoidSigmoid:sequential_207/lstm_622/while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_207/lstm_622/while/lstm_cell_787/Sigmoid_1Sigmoid:sequential_207/lstm_622/while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_207/lstm_622/while/lstm_cell_787/mulMul9sequential_207/lstm_622/while/lstm_cell_787/Sigmoid_1:y:0+sequential_207_lstm_622_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_207/lstm_622/while/lstm_cell_787/ReluRelu:sequential_207/lstm_622/while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_207/lstm_622/while/lstm_cell_787/mul_1Mul7sequential_207/lstm_622/while/lstm_cell_787/Sigmoid:y:0>sequential_207/lstm_622/while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_207/lstm_622/while/lstm_cell_787/add_1AddV23sequential_207/lstm_622/while/lstm_cell_787/mul:z:05sequential_207/lstm_622/while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_207/lstm_622/while/lstm_cell_787/Sigmoid_2Sigmoid:sequential_207/lstm_622/while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_207/lstm_622/while/lstm_cell_787/Relu_1Relu5sequential_207/lstm_622/while/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_207/lstm_622/while/lstm_cell_787/mul_2Mul9sequential_207/lstm_622/while/lstm_cell_787/Sigmoid_2:y:0@sequential_207/lstm_622/while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_207/lstm_622/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_207_lstm_622_while_placeholder_1)sequential_207_lstm_622_while_placeholder5sequential_207/lstm_622/while/lstm_cell_787/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_207/lstm_622/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_207/lstm_622/while/addAddV2)sequential_207_lstm_622_while_placeholder,sequential_207/lstm_622/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_207/lstm_622/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_207/lstm_622/while/add_1AddV2Hsequential_207_lstm_622_while_sequential_207_lstm_622_while_loop_counter.sequential_207/lstm_622/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_207/lstm_622/while/IdentityIdentity'sequential_207/lstm_622/while/add_1:z:0#^sequential_207/lstm_622/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_622/while/Identity_1IdentityNsequential_207_lstm_622_while_sequential_207_lstm_622_while_maximum_iterations#^sequential_207/lstm_622/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_622/while/Identity_2Identity%sequential_207/lstm_622/while/add:z:0#^sequential_207/lstm_622/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_622/while/Identity_3IdentityRsequential_207/lstm_622/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_207/lstm_622/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_622/while/Identity_4Identity5sequential_207/lstm_622/while/lstm_cell_787/mul_2:z:0#^sequential_207/lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_207/lstm_622/while/Identity_5Identity5sequential_207/lstm_622/while/lstm_cell_787/add_1:z:0#^sequential_207/lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_207/lstm_622/while/NoOpNoOpC^sequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOpB^sequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOpD^sequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_207_lstm_622_while_identity/sequential_207/lstm_622/while/Identity:output:0"]
(sequential_207_lstm_622_while_identity_11sequential_207/lstm_622/while/Identity_1:output:0"]
(sequential_207_lstm_622_while_identity_21sequential_207/lstm_622/while/Identity_2:output:0"]
(sequential_207_lstm_622_while_identity_31sequential_207/lstm_622/while/Identity_3:output:0"]
(sequential_207_lstm_622_while_identity_41sequential_207/lstm_622/while/Identity_4:output:0"]
(sequential_207_lstm_622_while_identity_51sequential_207/lstm_622/while/Identity_5:output:0"?
Ksequential_207_lstm_622_while_lstm_cell_787_biasadd_readvariableop_resourceMsequential_207_lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0"?
Lsequential_207_lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resourceNsequential_207_lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0"?
Jsequential_207_lstm_622_while_lstm_cell_787_matmul_readvariableop_resourceLsequential_207_lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0"?
Esequential_207_lstm_622_while_sequential_207_lstm_622_strided_slice_1Gsequential_207_lstm_622_while_sequential_207_lstm_622_strided_slice_1_0"?
?sequential_207_lstm_622_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_622_tensorarrayunstack_tensorlistfromtensor?sequential_207_lstm_622_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_622_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOpBsequential_207/lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp2?
Asequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOpAsequential_207/lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp2?
Csequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOpCsequential_207/lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765592

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
while_body_4770314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766438

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
?C
?

lstm_622_while_body_4768037.
*lstm_622_while_lstm_622_while_loop_counter4
0lstm_622_while_lstm_622_while_maximum_iterations
lstm_622_while_placeholder 
lstm_622_while_placeholder_1 
lstm_622_while_placeholder_2 
lstm_622_while_placeholder_3-
)lstm_622_while_lstm_622_strided_slice_1_0i
elstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0:	d?R
?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?M
>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
lstm_622_while_identity
lstm_622_while_identity_1
lstm_622_while_identity_2
lstm_622_while_identity_3
lstm_622_while_identity_4
lstm_622_while_identity_5+
'lstm_622_while_lstm_622_strided_slice_1g
clstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensorN
;lstm_622_while_lstm_cell_787_matmul_readvariableop_resource:	d?P
=lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource:	2?K
<lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource:	???3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp?2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp?4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp?
@lstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_622/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0lstm_622_while_placeholderIlstm_622/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_622/while/lstm_cell_787/MatMulMatMul9lstm_622/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_622/while/lstm_cell_787/MatMul_1MatMullstm_622_while_placeholder_2<lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_622/while/lstm_cell_787/addAddV2-lstm_622/while/lstm_cell_787/MatMul:product:0/lstm_622/while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_622/while/lstm_cell_787/BiasAddBiasAdd$lstm_622/while/lstm_cell_787/add:z:0;lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_622/while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_622/while/lstm_cell_787/splitSplit5lstm_622/while/lstm_cell_787/split/split_dim:output:0-lstm_622/while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_622/while/lstm_cell_787/SigmoidSigmoid+lstm_622/while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_622/while/lstm_cell_787/Sigmoid_1Sigmoid+lstm_622/while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_622/while/lstm_cell_787/mulMul*lstm_622/while/lstm_cell_787/Sigmoid_1:y:0lstm_622_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_622/while/lstm_cell_787/ReluRelu+lstm_622/while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/mul_1Mul(lstm_622/while/lstm_cell_787/Sigmoid:y:0/lstm_622/while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/add_1AddV2$lstm_622/while/lstm_cell_787/mul:z:0&lstm_622/while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_622/while/lstm_cell_787/Sigmoid_2Sigmoid+lstm_622/while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_622/while/lstm_cell_787/Relu_1Relu&lstm_622/while/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_622/while/lstm_cell_787/mul_2Mul*lstm_622/while/lstm_cell_787/Sigmoid_2:y:01lstm_622/while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_622/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_622_while_placeholder_1lstm_622_while_placeholder&lstm_622/while/lstm_cell_787/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_622/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_622/while/addAddV2lstm_622_while_placeholderlstm_622/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_622/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_622/while/add_1AddV2*lstm_622_while_lstm_622_while_loop_counterlstm_622/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_622/while/IdentityIdentitylstm_622/while/add_1:z:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_1Identity0lstm_622_while_lstm_622_while_maximum_iterations^lstm_622/while/NoOp*
T0*
_output_shapes
: t
lstm_622/while/Identity_2Identitylstm_622/while/add:z:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_3IdentityClstm_622/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_622/while/NoOp*
T0*
_output_shapes
: ?
lstm_622/while/Identity_4Identity&lstm_622/while/lstm_cell_787/mul_2:z:0^lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_622/while/Identity_5Identity&lstm_622/while/lstm_cell_787/add_1:z:0^lstm_622/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_622/while/NoOpNoOp4^lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp3^lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp5^lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_622_while_identity lstm_622/while/Identity:output:0"?
lstm_622_while_identity_1"lstm_622/while/Identity_1:output:0"?
lstm_622_while_identity_2"lstm_622/while/Identity_2:output:0"?
lstm_622_while_identity_3"lstm_622/while/Identity_3:output:0"?
lstm_622_while_identity_4"lstm_622/while/Identity_4:output:0"?
lstm_622_while_identity_5"lstm_622/while/Identity_5:output:0"T
'lstm_622_while_lstm_622_strided_slice_1)lstm_622_while_lstm_622_strided_slice_1_0"~
<lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource>lstm_622_while_lstm_cell_787_biasadd_readvariableop_resource_0"?
=lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource?lstm_622_while_lstm_cell_787_matmul_1_readvariableop_resource_0"|
;lstm_622_while_lstm_cell_787_matmul_readvariableop_resource=lstm_622_while_lstm_cell_787_matmul_readvariableop_resource_0"?
clstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensorelstm_622_while_tensorarrayv2read_tensorlistgetitem_lstm_622_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp3lstm_622/while/lstm_cell_787/BiasAdd/ReadVariableOp2h
2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp2lstm_622/while/lstm_cell_787/MatMul/ReadVariableOp2l
4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp4lstm_622/while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_621_layer_call_fn_4768726

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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4766724s
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
?
?
*__inference_lstm_623_layer_call_fn_4769958

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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767024o
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4766724

inputs?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4766640*
condR
while_cond_4766639*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4766940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767720
lstm_621_input#
lstm_621_4767693:	?#
lstm_621_4767695:	d?
lstm_621_4767697:	?#
lstm_622_4767700:	d?#
lstm_622_4767702:	2?
lstm_622_4767704:	?"
lstm_623_4767707:2("
lstm_623_4767709:
(
lstm_623_4767711:(#
dense_207_4767714:

dense_207_4767716:
identity??!dense_207/StatefulPartitionedCall? lstm_621/StatefulPartitionedCall? lstm_622/StatefulPartitionedCall? lstm_623/StatefulPartitionedCall?
 lstm_621/StatefulPartitionedCallStatefulPartitionedCalllstm_621_inputlstm_621_4767693lstm_621_4767695lstm_621_4767697*
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4766724?
 lstm_622/StatefulPartitionedCallStatefulPartitionedCall)lstm_621/StatefulPartitionedCall:output:0lstm_622_4767700lstm_622_4767702lstm_622_4767704*
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766874?
 lstm_623/StatefulPartitionedCallStatefulPartitionedCall)lstm_622/StatefulPartitionedCall:output:0lstm_623_4767707lstm_623_4767709lstm_623_4767711*
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767024?
!dense_207/StatefulPartitionedCallStatefulPartitionedCall)lstm_623/StatefulPartitionedCall:output:0dense_207_4767714dense_207_4767716*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4767042y
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_207/StatefulPartitionedCall!^lstm_621/StatefulPartitionedCall!^lstm_622/StatefulPartitionedCall!^lstm_623/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2D
 lstm_621/StatefulPartitionedCall lstm_621/StatefulPartitionedCall2D
 lstm_622/StatefulPartitionedCall lstm_622/StatefulPartitionedCall2D
 lstm_623/StatefulPartitionedCall lstm_623/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_621_input
?
?
*__inference_lstm_622_layer_call_fn_4769342

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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766874s
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
while_cond_4766496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766496___redundant_placeholder05
1while_while_cond_4766496___redundant_placeholder15
1while_while_cond_4766496___redundant_placeholder25
1while_while_cond_4766496___redundant_placeholder3
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
while_cond_4769224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769224___redundant_placeholder05
1while_while_cond_4769224___redundant_placeholder15
1while_while_cond_4769224___redundant_placeholder25
1while_while_cond_4769224___redundant_placeholder3
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
/__inference_lstm_cell_788_layer_call_fn_4770773

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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766292o
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
while_body_4765606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_786_4765630_0:	?0
while_lstm_cell_786_4765632_0:	d?,
while_lstm_cell_786_4765634_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_786_4765630:	?.
while_lstm_cell_786_4765632:	d?*
while_lstm_cell_786_4765634:	???+while/lstm_cell_786/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_786/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_786_4765630_0while_lstm_cell_786_4765632_0while_lstm_cell_786_4765634_0*
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765592?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_786/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_786/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_786/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_786/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_786_4765630while_lstm_cell_786_4765630_0"<
while_lstm_cell_786_4765632while_lstm_cell_786_4765632_0"<
while_lstm_cell_786_4765634while_lstm_cell_786_4765634_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_786/StatefulPartitionedCall+while/lstm_cell_786/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4769082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4766640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_621_layer_call_fn_4768737

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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4767570s
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
0__inference_sequential_207_layer_call_fn_4767690
lstm_621_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_621_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767638o
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
_user_specified_namelstm_621_input
?
?
*sequential_207_lstm_623_while_cond_4765434L
Hsequential_207_lstm_623_while_sequential_207_lstm_623_while_loop_counterR
Nsequential_207_lstm_623_while_sequential_207_lstm_623_while_maximum_iterations-
)sequential_207_lstm_623_while_placeholder/
+sequential_207_lstm_623_while_placeholder_1/
+sequential_207_lstm_623_while_placeholder_2/
+sequential_207_lstm_623_while_placeholder_3N
Jsequential_207_lstm_623_while_less_sequential_207_lstm_623_strided_slice_1e
asequential_207_lstm_623_while_sequential_207_lstm_623_while_cond_4765434___redundant_placeholder0e
asequential_207_lstm_623_while_sequential_207_lstm_623_while_cond_4765434___redundant_placeholder1e
asequential_207_lstm_623_while_sequential_207_lstm_623_while_cond_4765434___redundant_placeholder2e
asequential_207_lstm_623_while_sequential_207_lstm_623_while_cond_4765434___redundant_placeholder3*
&sequential_207_lstm_623_while_identity
?
"sequential_207/lstm_623/while/LessLess)sequential_207_lstm_623_while_placeholderJsequential_207_lstm_623_while_less_sequential_207_lstm_623_strided_slice_1*
T0*
_output_shapes
: {
&sequential_207/lstm_623/while/IdentityIdentity&sequential_207/lstm_623/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_207_lstm_623_while_identity/sequential_207/lstm_623/while/Identity:output:0*(
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
while_cond_4766639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766639___redundant_placeholder05
1while_while_cond_4766639___redundant_placeholder15
1while_while_cond_4766639___redundant_placeholder25
1while_while_cond_4766639___redundant_placeholder3
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
0__inference_sequential_207_layer_call_fn_4767074
lstm_621_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_621_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767049o
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
_user_specified_namelstm_621_input
?
?
*__inference_lstm_623_layer_call_fn_4769969

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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767240o
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
while_body_4767486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4770456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4770456___redundant_placeholder05
1while_while_cond_4770456___redundant_placeholder15
1while_while_cond_4770456___redundant_placeholder25
1while_while_cond_4770456___redundant_placeholder3
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770112
inputs_0>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4770028*
condR
while_cond_4770027*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_787_layer_call_fn_4770692

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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4766088o
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
lstm_623_while_cond_4768602.
*lstm_623_while_lstm_623_while_loop_counter4
0lstm_623_while_lstm_623_while_maximum_iterations
lstm_623_while_placeholder 
lstm_623_while_placeholder_1 
lstm_623_while_placeholder_2 
lstm_623_while_placeholder_30
,lstm_623_while_less_lstm_623_strided_slice_1G
Clstm_623_while_lstm_623_while_cond_4768602___redundant_placeholder0G
Clstm_623_while_lstm_623_while_cond_4768602___redundant_placeholder1G
Clstm_623_while_lstm_623_while_cond_4768602___redundant_placeholder2G
Clstm_623_while_lstm_623_while_cond_4768602___redundant_placeholder3
lstm_623_while_identity
?
lstm_623/while/LessLesslstm_623_while_placeholder,lstm_623_while_less_lstm_623_strided_slice_1*
T0*
_output_shapes
: ]
lstm_623/while/IdentityIdentitylstm_623/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_623_while_identity lstm_623/while/Identity:output:0*(
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
while_cond_4769411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769411___redundant_placeholder05
1while_while_cond_4769411___redundant_placeholder15
1while_while_cond_4769411___redundant_placeholder25
1while_while_cond_4769411___redundant_placeholder3
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
?T
?
*sequential_207_lstm_621_while_body_4765157L
Hsequential_207_lstm_621_while_sequential_207_lstm_621_while_loop_counterR
Nsequential_207_lstm_621_while_sequential_207_lstm_621_while_maximum_iterations-
)sequential_207_lstm_621_while_placeholder/
+sequential_207_lstm_621_while_placeholder_1/
+sequential_207_lstm_621_while_placeholder_2/
+sequential_207_lstm_621_while_placeholder_3K
Gsequential_207_lstm_621_while_sequential_207_lstm_621_strided_slice_1_0?
?sequential_207_lstm_621_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_621_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_207_lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0:	?a
Nsequential_207_lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?\
Msequential_207_lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0:	?*
&sequential_207_lstm_621_while_identity,
(sequential_207_lstm_621_while_identity_1,
(sequential_207_lstm_621_while_identity_2,
(sequential_207_lstm_621_while_identity_3,
(sequential_207_lstm_621_while_identity_4,
(sequential_207_lstm_621_while_identity_5I
Esequential_207_lstm_621_while_sequential_207_lstm_621_strided_slice_1?
?sequential_207_lstm_621_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_621_tensorarrayunstack_tensorlistfromtensor]
Jsequential_207_lstm_621_while_lstm_cell_786_matmul_readvariableop_resource:	?_
Lsequential_207_lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource:	d?Z
Ksequential_207_lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource:	???Bsequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp?Asequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp?Csequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp?
Osequential_207/lstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_207/lstm_621/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_207_lstm_621_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_621_tensorarrayunstack_tensorlistfromtensor_0)sequential_207_lstm_621_while_placeholderXsequential_207/lstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOpLsequential_207_lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_207/lstm_621/while/lstm_cell_786/MatMulMatMulHsequential_207/lstm_621/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOpNsequential_207_lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_207/lstm_621/while/lstm_cell_786/MatMul_1MatMul+sequential_207_lstm_621_while_placeholder_2Ksequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_207/lstm_621/while/lstm_cell_786/addAddV2<sequential_207/lstm_621/while/lstm_cell_786/MatMul:product:0>sequential_207/lstm_621/while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOpMsequential_207_lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_207/lstm_621/while/lstm_cell_786/BiasAddBiasAdd3sequential_207/lstm_621/while/lstm_cell_786/add:z:0Jsequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_207/lstm_621/while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_207/lstm_621/while/lstm_cell_786/splitSplitDsequential_207/lstm_621/while/lstm_cell_786/split/split_dim:output:0<sequential_207/lstm_621/while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_207/lstm_621/while/lstm_cell_786/SigmoidSigmoid:sequential_207/lstm_621/while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_207/lstm_621/while/lstm_cell_786/Sigmoid_1Sigmoid:sequential_207/lstm_621/while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_207/lstm_621/while/lstm_cell_786/mulMul9sequential_207/lstm_621/while/lstm_cell_786/Sigmoid_1:y:0+sequential_207_lstm_621_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_207/lstm_621/while/lstm_cell_786/ReluRelu:sequential_207/lstm_621/while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_207/lstm_621/while/lstm_cell_786/mul_1Mul7sequential_207/lstm_621/while/lstm_cell_786/Sigmoid:y:0>sequential_207/lstm_621/while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_207/lstm_621/while/lstm_cell_786/add_1AddV23sequential_207/lstm_621/while/lstm_cell_786/mul:z:05sequential_207/lstm_621/while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_207/lstm_621/while/lstm_cell_786/Sigmoid_2Sigmoid:sequential_207/lstm_621/while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_207/lstm_621/while/lstm_cell_786/Relu_1Relu5sequential_207/lstm_621/while/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_207/lstm_621/while/lstm_cell_786/mul_2Mul9sequential_207/lstm_621/while/lstm_cell_786/Sigmoid_2:y:0@sequential_207/lstm_621/while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_207/lstm_621/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_207_lstm_621_while_placeholder_1)sequential_207_lstm_621_while_placeholder5sequential_207/lstm_621/while/lstm_cell_786/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_207/lstm_621/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_207/lstm_621/while/addAddV2)sequential_207_lstm_621_while_placeholder,sequential_207/lstm_621/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_207/lstm_621/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_207/lstm_621/while/add_1AddV2Hsequential_207_lstm_621_while_sequential_207_lstm_621_while_loop_counter.sequential_207/lstm_621/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_207/lstm_621/while/IdentityIdentity'sequential_207/lstm_621/while/add_1:z:0#^sequential_207/lstm_621/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_621/while/Identity_1IdentityNsequential_207_lstm_621_while_sequential_207_lstm_621_while_maximum_iterations#^sequential_207/lstm_621/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_621/while/Identity_2Identity%sequential_207/lstm_621/while/add:z:0#^sequential_207/lstm_621/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_621/while/Identity_3IdentityRsequential_207/lstm_621/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_207/lstm_621/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_621/while/Identity_4Identity5sequential_207/lstm_621/while/lstm_cell_786/mul_2:z:0#^sequential_207/lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_207/lstm_621/while/Identity_5Identity5sequential_207/lstm_621/while/lstm_cell_786/add_1:z:0#^sequential_207/lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_207/lstm_621/while/NoOpNoOpC^sequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOpB^sequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOpD^sequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_207_lstm_621_while_identity/sequential_207/lstm_621/while/Identity:output:0"]
(sequential_207_lstm_621_while_identity_11sequential_207/lstm_621/while/Identity_1:output:0"]
(sequential_207_lstm_621_while_identity_21sequential_207/lstm_621/while/Identity_2:output:0"]
(sequential_207_lstm_621_while_identity_31sequential_207/lstm_621/while/Identity_3:output:0"]
(sequential_207_lstm_621_while_identity_41sequential_207/lstm_621/while/Identity_4:output:0"]
(sequential_207_lstm_621_while_identity_51sequential_207/lstm_621/while/Identity_5:output:0"?
Ksequential_207_lstm_621_while_lstm_cell_786_biasadd_readvariableop_resourceMsequential_207_lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0"?
Lsequential_207_lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resourceNsequential_207_lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0"?
Jsequential_207_lstm_621_while_lstm_cell_786_matmul_readvariableop_resourceLsequential_207_lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0"?
Esequential_207_lstm_621_while_sequential_207_lstm_621_strided_slice_1Gsequential_207_lstm_621_while_sequential_207_lstm_621_strided_slice_1_0"?
?sequential_207_lstm_621_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_621_tensorarrayunstack_tensorlistfromtensor?sequential_207_lstm_621_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_621_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOpBsequential_207/lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp2?
Asequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOpAsequential_207/lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp2?
Csequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOpCsequential_207/lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_621_while_cond_4768324.
*lstm_621_while_lstm_621_while_loop_counter4
0lstm_621_while_lstm_621_while_maximum_iterations
lstm_621_while_placeholder 
lstm_621_while_placeholder_1 
lstm_621_while_placeholder_2 
lstm_621_while_placeholder_30
,lstm_621_while_less_lstm_621_strided_slice_1G
Clstm_621_while_lstm_621_while_cond_4768324___redundant_placeholder0G
Clstm_621_while_lstm_621_while_cond_4768324___redundant_placeholder1G
Clstm_621_while_lstm_621_while_cond_4768324___redundant_placeholder2G
Clstm_621_while_lstm_621_while_cond_4768324___redundant_placeholder3
lstm_621_while_identity
?
lstm_621/while/LessLesslstm_621_while_placeholder,lstm_621_while_less_lstm_621_strided_slice_1*
T0*
_output_shapes
: ]
lstm_621/while/IdentityIdentitylstm_621/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_621_while_identity lstm_621/while/Identity:output:0*(
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765738

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
while_cond_4767485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4767485___redundant_placeholder05
1while_while_cond_4767485___redundant_placeholder15
1while_while_cond_4767485___redundant_placeholder25
1while_while_cond_4767485___redundant_placeholder3
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
0__inference_sequential_207_layer_call_fn_4767812

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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767049o
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
while_body_4766306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_788_4766330_0:2(/
while_lstm_cell_788_4766332_0:
(+
while_lstm_cell_788_4766334_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_788_4766330:2(-
while_lstm_cell_788_4766332:
()
while_lstm_cell_788_4766334:(??+while/lstm_cell_788/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_788/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_788_4766330_0while_lstm_cell_788_4766332_0while_lstm_cell_788_4766334_0*
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766292?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_788/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_788/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_788/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_788/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_788_4766330while_lstm_cell_788_4766330_0"<
while_lstm_cell_788_4766332while_lstm_cell_788_4766332_0"<
while_lstm_cell_788_4766334while_lstm_cell_788_4766334_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_788/StatefulPartitionedCall+while/lstm_cell_788/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4766147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_787_4766171_0:	d?0
while_lstm_cell_787_4766173_0:	2?,
while_lstm_cell_787_4766175_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_787_4766171:	d?.
while_lstm_cell_787_4766173:	2?*
while_lstm_cell_787_4766175:	???+while/lstm_cell_787/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_787/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_787_4766171_0while_lstm_cell_787_4766173_0while_lstm_cell_787_4766175_0*
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4766088?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_787/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_787/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_787/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_787/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_787_4766171while_lstm_cell_787_4766171_0"<
while_lstm_cell_787_4766173while_lstm_cell_787_4766173_0"<
while_lstm_cell_787_4766175while_lstm_cell_787_4766175_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_787/StatefulPartitionedCall+while/lstm_cell_787/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4766375

inputs'
lstm_cell_788_4766293:2('
lstm_cell_788_4766295:
(#
lstm_cell_788_4766297:(
identity??%lstm_cell_788/StatefulPartitionedCall?while;
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
%lstm_cell_788/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_788_4766293lstm_cell_788_4766295lstm_cell_788_4766297*
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766292n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_788_4766293lstm_cell_788_4766295lstm_cell_788_4766297*
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
while_body_4766306*
condR
while_cond_4766305*K
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
NoOpNoOp&^lstm_cell_788/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_788/StatefulPartitionedCall%lstm_cell_788/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4765956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_787_4765980_0:	d?0
while_lstm_cell_787_4765982_0:	2?,
while_lstm_cell_787_4765984_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_787_4765980:	d?.
while_lstm_cell_787_4765982:	2?*
while_lstm_cell_787_4765984:	???+while/lstm_cell_787/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_787/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_787_4765980_0while_lstm_cell_787_4765982_0while_lstm_cell_787_4765984_0*
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4765942?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_787/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_787/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_787/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_787/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_787_4765980while_lstm_cell_787_4765980_0"<
while_lstm_cell_787_4765982while_lstm_cell_787_4765982_0"<
while_lstm_cell_787_4765984while_lstm_cell_787_4765984_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_787/StatefulPartitionedCall+while/lstm_cell_787/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4767320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4767320___redundant_placeholder05
1while_while_cond_4767320___redundant_placeholder15
1while_while_cond_4767320___redundant_placeholder25
1while_while_cond_4767320___redundant_placeholder3
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770398

inputs>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4770314*
condR
while_cond_4770313*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770756

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
??
?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768266

inputsH
5lstm_621_lstm_cell_786_matmul_readvariableop_resource:	?J
7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource:	d?E
6lstm_621_lstm_cell_786_biasadd_readvariableop_resource:	?H
5lstm_622_lstm_cell_787_matmul_readvariableop_resource:	d?J
7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource:	2?E
6lstm_622_lstm_cell_787_biasadd_readvariableop_resource:	?G
5lstm_623_lstm_cell_788_matmul_readvariableop_resource:2(I
7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource:
(D
6lstm_623_lstm_cell_788_biasadd_readvariableop_resource:(:
(dense_207_matmul_readvariableop_resource:
7
)dense_207_biasadd_readvariableop_resource:
identity?? dense_207/BiasAdd/ReadVariableOp?dense_207/MatMul/ReadVariableOp?-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp?,lstm_621/lstm_cell_786/MatMul/ReadVariableOp?.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp?lstm_621/while?-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp?,lstm_622/lstm_cell_787/MatMul/ReadVariableOp?.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp?lstm_622/while?-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp?,lstm_623/lstm_cell_788/MatMul/ReadVariableOp?.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp?lstm_623/whileD
lstm_621/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_621/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_621/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_621/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_sliceStridedSlicelstm_621/Shape:output:0%lstm_621/strided_slice/stack:output:0'lstm_621/strided_slice/stack_1:output:0'lstm_621/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_621/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_621/zeros/packedPacklstm_621/strided_slice:output:0 lstm_621/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_621/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_621/zerosFilllstm_621/zeros/packed:output:0lstm_621/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_621/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_621/zeros_1/packedPacklstm_621/strided_slice:output:0"lstm_621/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_621/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_621/zeros_1Fill lstm_621/zeros_1/packed:output:0lstm_621/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_621/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_621/transpose	Transposeinputs lstm_621/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_621/Shape_1Shapelstm_621/transpose:y:0*
T0*
_output_shapes
:h
lstm_621/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_621/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_1StridedSlicelstm_621/Shape_1:output:0'lstm_621/strided_slice_1/stack:output:0)lstm_621/strided_slice_1/stack_1:output:0)lstm_621/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_621/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_621/TensorArrayV2TensorListReserve-lstm_621/TensorArrayV2/element_shape:output:0!lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_621/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_621/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_621/transpose:y:0Glstm_621/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_621/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_621/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_2StridedSlicelstm_621/transpose:y:0'lstm_621/strided_slice_2/stack:output:0)lstm_621/strided_slice_2/stack_1:output:0)lstm_621/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_621/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp5lstm_621_lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_621/lstm_cell_786/MatMulMatMul!lstm_621/strided_slice_2:output:04lstm_621/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_621/lstm_cell_786/MatMul_1MatMullstm_621/zeros:output:06lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_621/lstm_cell_786/addAddV2'lstm_621/lstm_cell_786/MatMul:product:0)lstm_621/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp6lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_621/lstm_cell_786/BiasAddBiasAddlstm_621/lstm_cell_786/add:z:05lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_621/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_621/lstm_cell_786/splitSplit/lstm_621/lstm_cell_786/split/split_dim:output:0'lstm_621/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_621/lstm_cell_786/SigmoidSigmoid%lstm_621/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_621/lstm_cell_786/Sigmoid_1Sigmoid%lstm_621/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mulMul$lstm_621/lstm_cell_786/Sigmoid_1:y:0lstm_621/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_621/lstm_cell_786/ReluRelu%lstm_621/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mul_1Mul"lstm_621/lstm_cell_786/Sigmoid:y:0)lstm_621/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/add_1AddV2lstm_621/lstm_cell_786/mul:z:0 lstm_621/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_621/lstm_cell_786/Sigmoid_2Sigmoid%lstm_621/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_621/lstm_cell_786/Relu_1Relu lstm_621/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mul_2Mul$lstm_621/lstm_cell_786/Sigmoid_2:y:0+lstm_621/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_621/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_621/TensorArrayV2_1TensorListReserve/lstm_621/TensorArrayV2_1/element_shape:output:0!lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_621/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_621/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_621/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_621/whileWhile$lstm_621/while/loop_counter:output:0*lstm_621/while/maximum_iterations:output:0lstm_621/time:output:0!lstm_621/TensorArrayV2_1:handle:0lstm_621/zeros:output:0lstm_621/zeros_1:output:0!lstm_621/strided_slice_1:output:0@lstm_621/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_621_lstm_cell_786_matmul_readvariableop_resource7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource6lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
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
lstm_621_while_body_4767898*'
condR
lstm_621_while_cond_4767897*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_621/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_621/TensorArrayV2Stack/TensorListStackTensorListStacklstm_621/while:output:3Blstm_621/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_621/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_621/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_3StridedSlice4lstm_621/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_621/strided_slice_3/stack:output:0)lstm_621/strided_slice_3/stack_1:output:0)lstm_621/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_621/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_621/transpose_1	Transpose4lstm_621/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_621/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_621/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_622/ShapeShapelstm_621/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_622/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_622/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_622/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_sliceStridedSlicelstm_622/Shape:output:0%lstm_622/strided_slice/stack:output:0'lstm_622/strided_slice/stack_1:output:0'lstm_622/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_622/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_622/zeros/packedPacklstm_622/strided_slice:output:0 lstm_622/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_622/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_622/zerosFilllstm_622/zeros/packed:output:0lstm_622/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_622/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_622/zeros_1/packedPacklstm_622/strided_slice:output:0"lstm_622/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_622/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_622/zeros_1Fill lstm_622/zeros_1/packed:output:0lstm_622/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_622/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_622/transpose	Transposelstm_621/transpose_1:y:0 lstm_622/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_622/Shape_1Shapelstm_622/transpose:y:0*
T0*
_output_shapes
:h
lstm_622/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_622/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_1StridedSlicelstm_622/Shape_1:output:0'lstm_622/strided_slice_1/stack:output:0)lstm_622/strided_slice_1/stack_1:output:0)lstm_622/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_622/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_622/TensorArrayV2TensorListReserve-lstm_622/TensorArrayV2/element_shape:output:0!lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_622/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_622/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_622/transpose:y:0Glstm_622/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_622/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_622/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_2StridedSlicelstm_622/transpose:y:0'lstm_622/strided_slice_2/stack:output:0)lstm_622/strided_slice_2/stack_1:output:0)lstm_622/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_622/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp5lstm_622_lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_622/lstm_cell_787/MatMulMatMul!lstm_622/strided_slice_2:output:04lstm_622/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_622/lstm_cell_787/MatMul_1MatMullstm_622/zeros:output:06lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_622/lstm_cell_787/addAddV2'lstm_622/lstm_cell_787/MatMul:product:0)lstm_622/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp6lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_622/lstm_cell_787/BiasAddBiasAddlstm_622/lstm_cell_787/add:z:05lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_622/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_622/lstm_cell_787/splitSplit/lstm_622/lstm_cell_787/split/split_dim:output:0'lstm_622/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_622/lstm_cell_787/SigmoidSigmoid%lstm_622/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_622/lstm_cell_787/Sigmoid_1Sigmoid%lstm_622/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mulMul$lstm_622/lstm_cell_787/Sigmoid_1:y:0lstm_622/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_622/lstm_cell_787/ReluRelu%lstm_622/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mul_1Mul"lstm_622/lstm_cell_787/Sigmoid:y:0)lstm_622/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/add_1AddV2lstm_622/lstm_cell_787/mul:z:0 lstm_622/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_622/lstm_cell_787/Sigmoid_2Sigmoid%lstm_622/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_622/lstm_cell_787/Relu_1Relu lstm_622/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mul_2Mul$lstm_622/lstm_cell_787/Sigmoid_2:y:0+lstm_622/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_622/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_622/TensorArrayV2_1TensorListReserve/lstm_622/TensorArrayV2_1/element_shape:output:0!lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_622/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_622/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_622/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_622/whileWhile$lstm_622/while/loop_counter:output:0*lstm_622/while/maximum_iterations:output:0lstm_622/time:output:0!lstm_622/TensorArrayV2_1:handle:0lstm_622/zeros:output:0lstm_622/zeros_1:output:0!lstm_622/strided_slice_1:output:0@lstm_622/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_622_lstm_cell_787_matmul_readvariableop_resource7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource6lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
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
lstm_622_while_body_4768037*'
condR
lstm_622_while_cond_4768036*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_622/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_622/TensorArrayV2Stack/TensorListStackTensorListStacklstm_622/while:output:3Blstm_622/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_622/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_622/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_3StridedSlice4lstm_622/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_622/strided_slice_3/stack:output:0)lstm_622/strided_slice_3/stack_1:output:0)lstm_622/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_622/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_622/transpose_1	Transpose4lstm_622/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_622/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_622/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_623/ShapeShapelstm_622/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_623/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_623/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_623/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_sliceStridedSlicelstm_623/Shape:output:0%lstm_623/strided_slice/stack:output:0'lstm_623/strided_slice/stack_1:output:0'lstm_623/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_623/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_623/zeros/packedPacklstm_623/strided_slice:output:0 lstm_623/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_623/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_623/zerosFilllstm_623/zeros/packed:output:0lstm_623/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_623/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_623/zeros_1/packedPacklstm_623/strided_slice:output:0"lstm_623/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_623/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_623/zeros_1Fill lstm_623/zeros_1/packed:output:0lstm_623/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_623/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_623/transpose	Transposelstm_622/transpose_1:y:0 lstm_623/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_623/Shape_1Shapelstm_623/transpose:y:0*
T0*
_output_shapes
:h
lstm_623/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_623/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_1StridedSlicelstm_623/Shape_1:output:0'lstm_623/strided_slice_1/stack:output:0)lstm_623/strided_slice_1/stack_1:output:0)lstm_623/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_623/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_623/TensorArrayV2TensorListReserve-lstm_623/TensorArrayV2/element_shape:output:0!lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_623/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_623/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_623/transpose:y:0Glstm_623/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_623/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_623/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_2StridedSlicelstm_623/transpose:y:0'lstm_623/strided_slice_2/stack:output:0)lstm_623/strided_slice_2/stack_1:output:0)lstm_623/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_623/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp5lstm_623_lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_623/lstm_cell_788/MatMulMatMul!lstm_623/strided_slice_2:output:04lstm_623/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_623/lstm_cell_788/MatMul_1MatMullstm_623/zeros:output:06lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_623/lstm_cell_788/addAddV2'lstm_623/lstm_cell_788/MatMul:product:0)lstm_623/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp6lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_623/lstm_cell_788/BiasAddBiasAddlstm_623/lstm_cell_788/add:z:05lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_623/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_623/lstm_cell_788/splitSplit/lstm_623/lstm_cell_788/split/split_dim:output:0'lstm_623/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_623/lstm_cell_788/SigmoidSigmoid%lstm_623/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_623/lstm_cell_788/Sigmoid_1Sigmoid%lstm_623/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mulMul$lstm_623/lstm_cell_788/Sigmoid_1:y:0lstm_623/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_623/lstm_cell_788/ReluRelu%lstm_623/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mul_1Mul"lstm_623/lstm_cell_788/Sigmoid:y:0)lstm_623/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/add_1AddV2lstm_623/lstm_cell_788/mul:z:0 lstm_623/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_623/lstm_cell_788/Sigmoid_2Sigmoid%lstm_623/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_623/lstm_cell_788/Relu_1Relu lstm_623/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mul_2Mul$lstm_623/lstm_cell_788/Sigmoid_2:y:0+lstm_623/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_623/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_623/TensorArrayV2_1TensorListReserve/lstm_623/TensorArrayV2_1/element_shape:output:0!lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_623/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_623/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_623/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_623/whileWhile$lstm_623/while/loop_counter:output:0*lstm_623/while/maximum_iterations:output:0lstm_623/time:output:0!lstm_623/TensorArrayV2_1:handle:0lstm_623/zeros:output:0lstm_623/zeros_1:output:0!lstm_623/strided_slice_1:output:0@lstm_623/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_623_lstm_cell_788_matmul_readvariableop_resource7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource6lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
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
lstm_623_while_body_4768176*'
condR
lstm_623_while_cond_4768175*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_623/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_623/TensorArrayV2Stack/TensorListStackTensorListStacklstm_623/while:output:3Blstm_623/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_623/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_623/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_3StridedSlice4lstm_623/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_623/strided_slice_3/stack:output:0)lstm_623/strided_slice_3/stack_1:output:0)lstm_623/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_623/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_623/transpose_1	Transpose4lstm_623/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_623/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_623/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_207/MatMul/ReadVariableOpReadVariableOp(dense_207_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_207/MatMulMatMul!lstm_623/strided_slice_3:output:0'dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_207/BiasAddBiasAdddense_207/MatMul:product:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_207/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_207/BiasAdd/ReadVariableOp ^dense_207/MatMul/ReadVariableOp.^lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp-^lstm_621/lstm_cell_786/MatMul/ReadVariableOp/^lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp^lstm_621/while.^lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp-^lstm_622/lstm_cell_787/MatMul/ReadVariableOp/^lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp^lstm_622/while.^lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp-^lstm_623/lstm_cell_788/MatMul/ReadVariableOp/^lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp^lstm_623/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2B
dense_207/MatMul/ReadVariableOpdense_207/MatMul/ReadVariableOp2^
-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp2\
,lstm_621/lstm_cell_786/MatMul/ReadVariableOp,lstm_621/lstm_cell_786/MatMul/ReadVariableOp2`
.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp2 
lstm_621/whilelstm_621/while2^
-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp2\
,lstm_622/lstm_cell_787/MatMul/ReadVariableOp,lstm_622/lstm_cell_787/MatMul/ReadVariableOp2`
.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp2 
lstm_622/whilelstm_622/while2^
-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp2\
,lstm_623/lstm_cell_788/MatMul/ReadVariableOp,lstm_623/lstm_cell_788/MatMul/ReadVariableOp2`
.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp2 
lstm_623/whilelstm_623/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4765955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4765955___redundant_placeholder05
1while_while_cond_4765955___redundant_placeholder15
1while_while_cond_4765955___redundant_placeholder25
1while_while_cond_4765955___redundant_placeholder3
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
?T
?
*sequential_207_lstm_623_while_body_4765435L
Hsequential_207_lstm_623_while_sequential_207_lstm_623_while_loop_counterR
Nsequential_207_lstm_623_while_sequential_207_lstm_623_while_maximum_iterations-
)sequential_207_lstm_623_while_placeholder/
+sequential_207_lstm_623_while_placeholder_1/
+sequential_207_lstm_623_while_placeholder_2/
+sequential_207_lstm_623_while_placeholder_3K
Gsequential_207_lstm_623_while_sequential_207_lstm_623_strided_slice_1_0?
?sequential_207_lstm_623_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_623_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_207_lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0:2(`
Nsequential_207_lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0:
([
Msequential_207_lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0:(*
&sequential_207_lstm_623_while_identity,
(sequential_207_lstm_623_while_identity_1,
(sequential_207_lstm_623_while_identity_2,
(sequential_207_lstm_623_while_identity_3,
(sequential_207_lstm_623_while_identity_4,
(sequential_207_lstm_623_while_identity_5I
Esequential_207_lstm_623_while_sequential_207_lstm_623_strided_slice_1?
?sequential_207_lstm_623_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_623_tensorarrayunstack_tensorlistfromtensor\
Jsequential_207_lstm_623_while_lstm_cell_788_matmul_readvariableop_resource:2(^
Lsequential_207_lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource:
(Y
Ksequential_207_lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource:(??Bsequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp?Asequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp?Csequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp?
Osequential_207/lstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_207/lstm_623/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_207_lstm_623_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_623_tensorarrayunstack_tensorlistfromtensor_0)sequential_207_lstm_623_while_placeholderXsequential_207/lstm_623/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOpLsequential_207_lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_207/lstm_623/while/lstm_cell_788/MatMulMatMulHsequential_207/lstm_623/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOpNsequential_207_lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_207/lstm_623/while/lstm_cell_788/MatMul_1MatMul+sequential_207_lstm_623_while_placeholder_2Ksequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_207/lstm_623/while/lstm_cell_788/addAddV2<sequential_207/lstm_623/while/lstm_cell_788/MatMul:product:0>sequential_207/lstm_623/while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOpMsequential_207_lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_207/lstm_623/while/lstm_cell_788/BiasAddBiasAdd3sequential_207/lstm_623/while/lstm_cell_788/add:z:0Jsequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_207/lstm_623/while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_207/lstm_623/while/lstm_cell_788/splitSplitDsequential_207/lstm_623/while/lstm_cell_788/split/split_dim:output:0<sequential_207/lstm_623/while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_207/lstm_623/while/lstm_cell_788/SigmoidSigmoid:sequential_207/lstm_623/while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_207/lstm_623/while/lstm_cell_788/Sigmoid_1Sigmoid:sequential_207/lstm_623/while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_207/lstm_623/while/lstm_cell_788/mulMul9sequential_207/lstm_623/while/lstm_cell_788/Sigmoid_1:y:0+sequential_207_lstm_623_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_207/lstm_623/while/lstm_cell_788/ReluRelu:sequential_207/lstm_623/while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_207/lstm_623/while/lstm_cell_788/mul_1Mul7sequential_207/lstm_623/while/lstm_cell_788/Sigmoid:y:0>sequential_207/lstm_623/while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_207/lstm_623/while/lstm_cell_788/add_1AddV23sequential_207/lstm_623/while/lstm_cell_788/mul:z:05sequential_207/lstm_623/while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_207/lstm_623/while/lstm_cell_788/Sigmoid_2Sigmoid:sequential_207/lstm_623/while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_207/lstm_623/while/lstm_cell_788/Relu_1Relu5sequential_207/lstm_623/while/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_207/lstm_623/while/lstm_cell_788/mul_2Mul9sequential_207/lstm_623/while/lstm_cell_788/Sigmoid_2:y:0@sequential_207/lstm_623/while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_207/lstm_623/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_207_lstm_623_while_placeholder_1)sequential_207_lstm_623_while_placeholder5sequential_207/lstm_623/while/lstm_cell_788/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_207/lstm_623/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_207/lstm_623/while/addAddV2)sequential_207_lstm_623_while_placeholder,sequential_207/lstm_623/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_207/lstm_623/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_207/lstm_623/while/add_1AddV2Hsequential_207_lstm_623_while_sequential_207_lstm_623_while_loop_counter.sequential_207/lstm_623/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_207/lstm_623/while/IdentityIdentity'sequential_207/lstm_623/while/add_1:z:0#^sequential_207/lstm_623/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_623/while/Identity_1IdentityNsequential_207_lstm_623_while_sequential_207_lstm_623_while_maximum_iterations#^sequential_207/lstm_623/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_623/while/Identity_2Identity%sequential_207/lstm_623/while/add:z:0#^sequential_207/lstm_623/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_623/while/Identity_3IdentityRsequential_207/lstm_623/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_207/lstm_623/while/NoOp*
T0*
_output_shapes
: ?
(sequential_207/lstm_623/while/Identity_4Identity5sequential_207/lstm_623/while/lstm_cell_788/mul_2:z:0#^sequential_207/lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_207/lstm_623/while/Identity_5Identity5sequential_207/lstm_623/while/lstm_cell_788/add_1:z:0#^sequential_207/lstm_623/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_207/lstm_623/while/NoOpNoOpC^sequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOpB^sequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOpD^sequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_207_lstm_623_while_identity/sequential_207/lstm_623/while/Identity:output:0"]
(sequential_207_lstm_623_while_identity_11sequential_207/lstm_623/while/Identity_1:output:0"]
(sequential_207_lstm_623_while_identity_21sequential_207/lstm_623/while/Identity_2:output:0"]
(sequential_207_lstm_623_while_identity_31sequential_207/lstm_623/while/Identity_3:output:0"]
(sequential_207_lstm_623_while_identity_41sequential_207/lstm_623/while/Identity_4:output:0"]
(sequential_207_lstm_623_while_identity_51sequential_207/lstm_623/while/Identity_5:output:0"?
Ksequential_207_lstm_623_while_lstm_cell_788_biasadd_readvariableop_resourceMsequential_207_lstm_623_while_lstm_cell_788_biasadd_readvariableop_resource_0"?
Lsequential_207_lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resourceNsequential_207_lstm_623_while_lstm_cell_788_matmul_1_readvariableop_resource_0"?
Jsequential_207_lstm_623_while_lstm_cell_788_matmul_readvariableop_resourceLsequential_207_lstm_623_while_lstm_cell_788_matmul_readvariableop_resource_0"?
Esequential_207_lstm_623_while_sequential_207_lstm_623_strided_slice_1Gsequential_207_lstm_623_while_sequential_207_lstm_623_strided_slice_1_0"?
?sequential_207_lstm_623_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_623_tensorarrayunstack_tensorlistfromtensor?sequential_207_lstm_623_while_tensorarrayv2read_tensorlistgetitem_sequential_207_lstm_623_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOpBsequential_207/lstm_623/while/lstm_cell_788/BiasAdd/ReadVariableOp2?
Asequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOpAsequential_207/lstm_623/while/lstm_cell_788/MatMul/ReadVariableOp2?
Csequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOpCsequential_207/lstm_623/while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_622_layer_call_fn_4769320
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766025|
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
??
?
"__inference__wrapped_model_4765525
lstm_621_inputW
Dsequential_207_lstm_621_lstm_cell_786_matmul_readvariableop_resource:	?Y
Fsequential_207_lstm_621_lstm_cell_786_matmul_1_readvariableop_resource:	d?T
Esequential_207_lstm_621_lstm_cell_786_biasadd_readvariableop_resource:	?W
Dsequential_207_lstm_622_lstm_cell_787_matmul_readvariableop_resource:	d?Y
Fsequential_207_lstm_622_lstm_cell_787_matmul_1_readvariableop_resource:	2?T
Esequential_207_lstm_622_lstm_cell_787_biasadd_readvariableop_resource:	?V
Dsequential_207_lstm_623_lstm_cell_788_matmul_readvariableop_resource:2(X
Fsequential_207_lstm_623_lstm_cell_788_matmul_1_readvariableop_resource:
(S
Esequential_207_lstm_623_lstm_cell_788_biasadd_readvariableop_resource:(I
7sequential_207_dense_207_matmul_readvariableop_resource:
F
8sequential_207_dense_207_biasadd_readvariableop_resource:
identity??/sequential_207/dense_207/BiasAdd/ReadVariableOp?.sequential_207/dense_207/MatMul/ReadVariableOp?<sequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp?;sequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOp?=sequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp?sequential_207/lstm_621/while?<sequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp?;sequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOp?=sequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp?sequential_207/lstm_622/while?<sequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp?;sequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOp?=sequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp?sequential_207/lstm_623/while[
sequential_207/lstm_621/ShapeShapelstm_621_input*
T0*
_output_shapes
:u
+sequential_207/lstm_621/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_207/lstm_621/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_207/lstm_621/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_207/lstm_621/strided_sliceStridedSlice&sequential_207/lstm_621/Shape:output:04sequential_207/lstm_621/strided_slice/stack:output:06sequential_207/lstm_621/strided_slice/stack_1:output:06sequential_207/lstm_621/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_207/lstm_621/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_207/lstm_621/zeros/packedPack.sequential_207/lstm_621/strided_slice:output:0/sequential_207/lstm_621/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_207/lstm_621/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_621/zerosFill-sequential_207/lstm_621/zeros/packed:output:0,sequential_207/lstm_621/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_207/lstm_621/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_207/lstm_621/zeros_1/packedPack.sequential_207/lstm_621/strided_slice:output:01sequential_207/lstm_621/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_207/lstm_621/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_621/zeros_1Fill/sequential_207/lstm_621/zeros_1/packed:output:0.sequential_207/lstm_621/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_207/lstm_621/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_207/lstm_621/transpose	Transposelstm_621_input/sequential_207/lstm_621/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_207/lstm_621/Shape_1Shape%sequential_207/lstm_621/transpose:y:0*
T0*
_output_shapes
:w
-sequential_207/lstm_621/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_621/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_621/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_621/strided_slice_1StridedSlice(sequential_207/lstm_621/Shape_1:output:06sequential_207/lstm_621/strided_slice_1/stack:output:08sequential_207/lstm_621/strided_slice_1/stack_1:output:08sequential_207/lstm_621/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_207/lstm_621/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_207/lstm_621/TensorArrayV2TensorListReserve<sequential_207/lstm_621/TensorArrayV2/element_shape:output:00sequential_207/lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_207/lstm_621/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_207/lstm_621/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_207/lstm_621/transpose:y:0Vsequential_207/lstm_621/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_207/lstm_621/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_621/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_621/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_621/strided_slice_2StridedSlice%sequential_207/lstm_621/transpose:y:06sequential_207/lstm_621/strided_slice_2/stack:output:08sequential_207/lstm_621/strided_slice_2/stack_1:output:08sequential_207/lstm_621/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOpReadVariableOpDsequential_207_lstm_621_lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_207/lstm_621/lstm_cell_786/MatMulMatMul0sequential_207/lstm_621/strided_slice_2:output:0Csequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOpFsequential_207_lstm_621_lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_207/lstm_621/lstm_cell_786/MatMul_1MatMul&sequential_207/lstm_621/zeros:output:0Esequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_207/lstm_621/lstm_cell_786/addAddV26sequential_207/lstm_621/lstm_cell_786/MatMul:product:08sequential_207/lstm_621/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOpEsequential_207_lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_207/lstm_621/lstm_cell_786/BiasAddBiasAdd-sequential_207/lstm_621/lstm_cell_786/add:z:0Dsequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_207/lstm_621/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_207/lstm_621/lstm_cell_786/splitSplit>sequential_207/lstm_621/lstm_cell_786/split/split_dim:output:06sequential_207/lstm_621/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_207/lstm_621/lstm_cell_786/SigmoidSigmoid4sequential_207/lstm_621/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_207/lstm_621/lstm_cell_786/Sigmoid_1Sigmoid4sequential_207/lstm_621/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_207/lstm_621/lstm_cell_786/mulMul3sequential_207/lstm_621/lstm_cell_786/Sigmoid_1:y:0(sequential_207/lstm_621/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_207/lstm_621/lstm_cell_786/ReluRelu4sequential_207/lstm_621/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_207/lstm_621/lstm_cell_786/mul_1Mul1sequential_207/lstm_621/lstm_cell_786/Sigmoid:y:08sequential_207/lstm_621/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_207/lstm_621/lstm_cell_786/add_1AddV2-sequential_207/lstm_621/lstm_cell_786/mul:z:0/sequential_207/lstm_621/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_207/lstm_621/lstm_cell_786/Sigmoid_2Sigmoid4sequential_207/lstm_621/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_207/lstm_621/lstm_cell_786/Relu_1Relu/sequential_207/lstm_621/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_207/lstm_621/lstm_cell_786/mul_2Mul3sequential_207/lstm_621/lstm_cell_786/Sigmoid_2:y:0:sequential_207/lstm_621/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_207/lstm_621/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_207/lstm_621/TensorArrayV2_1TensorListReserve>sequential_207/lstm_621/TensorArrayV2_1/element_shape:output:00sequential_207/lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_207/lstm_621/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_207/lstm_621/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_207/lstm_621/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_207/lstm_621/whileWhile3sequential_207/lstm_621/while/loop_counter:output:09sequential_207/lstm_621/while/maximum_iterations:output:0%sequential_207/lstm_621/time:output:00sequential_207/lstm_621/TensorArrayV2_1:handle:0&sequential_207/lstm_621/zeros:output:0(sequential_207/lstm_621/zeros_1:output:00sequential_207/lstm_621/strided_slice_1:output:0Osequential_207/lstm_621/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_207_lstm_621_lstm_cell_786_matmul_readvariableop_resourceFsequential_207_lstm_621_lstm_cell_786_matmul_1_readvariableop_resourceEsequential_207_lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
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
*sequential_207_lstm_621_while_body_4765157*6
cond.R,
*sequential_207_lstm_621_while_cond_4765156*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_207/lstm_621/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_207/lstm_621/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_207/lstm_621/while:output:3Qsequential_207/lstm_621/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_207/lstm_621/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_207/lstm_621/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_621/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_621/strided_slice_3StridedSliceCsequential_207/lstm_621/TensorArrayV2Stack/TensorListStack:tensor:06sequential_207/lstm_621/strided_slice_3/stack:output:08sequential_207/lstm_621/strided_slice_3/stack_1:output:08sequential_207/lstm_621/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_207/lstm_621/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_207/lstm_621/transpose_1	TransposeCsequential_207/lstm_621/TensorArrayV2Stack/TensorListStack:tensor:01sequential_207/lstm_621/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_207/lstm_621/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_207/lstm_622/ShapeShape'sequential_207/lstm_621/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_207/lstm_622/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_207/lstm_622/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_207/lstm_622/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_207/lstm_622/strided_sliceStridedSlice&sequential_207/lstm_622/Shape:output:04sequential_207/lstm_622/strided_slice/stack:output:06sequential_207/lstm_622/strided_slice/stack_1:output:06sequential_207/lstm_622/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_207/lstm_622/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_207/lstm_622/zeros/packedPack.sequential_207/lstm_622/strided_slice:output:0/sequential_207/lstm_622/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_207/lstm_622/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_622/zerosFill-sequential_207/lstm_622/zeros/packed:output:0,sequential_207/lstm_622/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_207/lstm_622/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_207/lstm_622/zeros_1/packedPack.sequential_207/lstm_622/strided_slice:output:01sequential_207/lstm_622/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_207/lstm_622/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_622/zeros_1Fill/sequential_207/lstm_622/zeros_1/packed:output:0.sequential_207/lstm_622/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_207/lstm_622/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_207/lstm_622/transpose	Transpose'sequential_207/lstm_621/transpose_1:y:0/sequential_207/lstm_622/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_207/lstm_622/Shape_1Shape%sequential_207/lstm_622/transpose:y:0*
T0*
_output_shapes
:w
-sequential_207/lstm_622/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_622/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_622/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_622/strided_slice_1StridedSlice(sequential_207/lstm_622/Shape_1:output:06sequential_207/lstm_622/strided_slice_1/stack:output:08sequential_207/lstm_622/strided_slice_1/stack_1:output:08sequential_207/lstm_622/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_207/lstm_622/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_207/lstm_622/TensorArrayV2TensorListReserve<sequential_207/lstm_622/TensorArrayV2/element_shape:output:00sequential_207/lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_207/lstm_622/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_207/lstm_622/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_207/lstm_622/transpose:y:0Vsequential_207/lstm_622/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_207/lstm_622/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_622/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_622/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_622/strided_slice_2StridedSlice%sequential_207/lstm_622/transpose:y:06sequential_207/lstm_622/strided_slice_2/stack:output:08sequential_207/lstm_622/strided_slice_2/stack_1:output:08sequential_207/lstm_622/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOpReadVariableOpDsequential_207_lstm_622_lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_207/lstm_622/lstm_cell_787/MatMulMatMul0sequential_207/lstm_622/strided_slice_2:output:0Csequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOpFsequential_207_lstm_622_lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_207/lstm_622/lstm_cell_787/MatMul_1MatMul&sequential_207/lstm_622/zeros:output:0Esequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_207/lstm_622/lstm_cell_787/addAddV26sequential_207/lstm_622/lstm_cell_787/MatMul:product:08sequential_207/lstm_622/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOpEsequential_207_lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_207/lstm_622/lstm_cell_787/BiasAddBiasAdd-sequential_207/lstm_622/lstm_cell_787/add:z:0Dsequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_207/lstm_622/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_207/lstm_622/lstm_cell_787/splitSplit>sequential_207/lstm_622/lstm_cell_787/split/split_dim:output:06sequential_207/lstm_622/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_207/lstm_622/lstm_cell_787/SigmoidSigmoid4sequential_207/lstm_622/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_207/lstm_622/lstm_cell_787/Sigmoid_1Sigmoid4sequential_207/lstm_622/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_207/lstm_622/lstm_cell_787/mulMul3sequential_207/lstm_622/lstm_cell_787/Sigmoid_1:y:0(sequential_207/lstm_622/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_207/lstm_622/lstm_cell_787/ReluRelu4sequential_207/lstm_622/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_207/lstm_622/lstm_cell_787/mul_1Mul1sequential_207/lstm_622/lstm_cell_787/Sigmoid:y:08sequential_207/lstm_622/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_207/lstm_622/lstm_cell_787/add_1AddV2-sequential_207/lstm_622/lstm_cell_787/mul:z:0/sequential_207/lstm_622/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_207/lstm_622/lstm_cell_787/Sigmoid_2Sigmoid4sequential_207/lstm_622/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_207/lstm_622/lstm_cell_787/Relu_1Relu/sequential_207/lstm_622/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_207/lstm_622/lstm_cell_787/mul_2Mul3sequential_207/lstm_622/lstm_cell_787/Sigmoid_2:y:0:sequential_207/lstm_622/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_207/lstm_622/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_207/lstm_622/TensorArrayV2_1TensorListReserve>sequential_207/lstm_622/TensorArrayV2_1/element_shape:output:00sequential_207/lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_207/lstm_622/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_207/lstm_622/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_207/lstm_622/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_207/lstm_622/whileWhile3sequential_207/lstm_622/while/loop_counter:output:09sequential_207/lstm_622/while/maximum_iterations:output:0%sequential_207/lstm_622/time:output:00sequential_207/lstm_622/TensorArrayV2_1:handle:0&sequential_207/lstm_622/zeros:output:0(sequential_207/lstm_622/zeros_1:output:00sequential_207/lstm_622/strided_slice_1:output:0Osequential_207/lstm_622/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_207_lstm_622_lstm_cell_787_matmul_readvariableop_resourceFsequential_207_lstm_622_lstm_cell_787_matmul_1_readvariableop_resourceEsequential_207_lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
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
*sequential_207_lstm_622_while_body_4765296*6
cond.R,
*sequential_207_lstm_622_while_cond_4765295*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_207/lstm_622/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_207/lstm_622/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_207/lstm_622/while:output:3Qsequential_207/lstm_622/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_207/lstm_622/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_207/lstm_622/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_622/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_622/strided_slice_3StridedSliceCsequential_207/lstm_622/TensorArrayV2Stack/TensorListStack:tensor:06sequential_207/lstm_622/strided_slice_3/stack:output:08sequential_207/lstm_622/strided_slice_3/stack_1:output:08sequential_207/lstm_622/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_207/lstm_622/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_207/lstm_622/transpose_1	TransposeCsequential_207/lstm_622/TensorArrayV2Stack/TensorListStack:tensor:01sequential_207/lstm_622/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_207/lstm_622/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_207/lstm_623/ShapeShape'sequential_207/lstm_622/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_207/lstm_623/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_207/lstm_623/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_207/lstm_623/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_207/lstm_623/strided_sliceStridedSlice&sequential_207/lstm_623/Shape:output:04sequential_207/lstm_623/strided_slice/stack:output:06sequential_207/lstm_623/strided_slice/stack_1:output:06sequential_207/lstm_623/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_207/lstm_623/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_207/lstm_623/zeros/packedPack.sequential_207/lstm_623/strided_slice:output:0/sequential_207/lstm_623/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_207/lstm_623/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_623/zerosFill-sequential_207/lstm_623/zeros/packed:output:0,sequential_207/lstm_623/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_207/lstm_623/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_207/lstm_623/zeros_1/packedPack.sequential_207/lstm_623/strided_slice:output:01sequential_207/lstm_623/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_207/lstm_623/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_207/lstm_623/zeros_1Fill/sequential_207/lstm_623/zeros_1/packed:output:0.sequential_207/lstm_623/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_207/lstm_623/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_207/lstm_623/transpose	Transpose'sequential_207/lstm_622/transpose_1:y:0/sequential_207/lstm_623/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_207/lstm_623/Shape_1Shape%sequential_207/lstm_623/transpose:y:0*
T0*
_output_shapes
:w
-sequential_207/lstm_623/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_623/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_623/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_623/strided_slice_1StridedSlice(sequential_207/lstm_623/Shape_1:output:06sequential_207/lstm_623/strided_slice_1/stack:output:08sequential_207/lstm_623/strided_slice_1/stack_1:output:08sequential_207/lstm_623/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_207/lstm_623/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_207/lstm_623/TensorArrayV2TensorListReserve<sequential_207/lstm_623/TensorArrayV2/element_shape:output:00sequential_207/lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_207/lstm_623/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_207/lstm_623/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_207/lstm_623/transpose:y:0Vsequential_207/lstm_623/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_207/lstm_623/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_623/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_207/lstm_623/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_623/strided_slice_2StridedSlice%sequential_207/lstm_623/transpose:y:06sequential_207/lstm_623/strided_slice_2/stack:output:08sequential_207/lstm_623/strided_slice_2/stack_1:output:08sequential_207/lstm_623/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOpReadVariableOpDsequential_207_lstm_623_lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_207/lstm_623/lstm_cell_788/MatMulMatMul0sequential_207/lstm_623/strided_slice_2:output:0Csequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOpFsequential_207_lstm_623_lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_207/lstm_623/lstm_cell_788/MatMul_1MatMul&sequential_207/lstm_623/zeros:output:0Esequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_207/lstm_623/lstm_cell_788/addAddV26sequential_207/lstm_623/lstm_cell_788/MatMul:product:08sequential_207/lstm_623/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOpEsequential_207_lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_207/lstm_623/lstm_cell_788/BiasAddBiasAdd-sequential_207/lstm_623/lstm_cell_788/add:z:0Dsequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_207/lstm_623/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_207/lstm_623/lstm_cell_788/splitSplit>sequential_207/lstm_623/lstm_cell_788/split/split_dim:output:06sequential_207/lstm_623/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_207/lstm_623/lstm_cell_788/SigmoidSigmoid4sequential_207/lstm_623/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_207/lstm_623/lstm_cell_788/Sigmoid_1Sigmoid4sequential_207/lstm_623/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_207/lstm_623/lstm_cell_788/mulMul3sequential_207/lstm_623/lstm_cell_788/Sigmoid_1:y:0(sequential_207/lstm_623/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_207/lstm_623/lstm_cell_788/ReluRelu4sequential_207/lstm_623/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_207/lstm_623/lstm_cell_788/mul_1Mul1sequential_207/lstm_623/lstm_cell_788/Sigmoid:y:08sequential_207/lstm_623/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_207/lstm_623/lstm_cell_788/add_1AddV2-sequential_207/lstm_623/lstm_cell_788/mul:z:0/sequential_207/lstm_623/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_207/lstm_623/lstm_cell_788/Sigmoid_2Sigmoid4sequential_207/lstm_623/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_207/lstm_623/lstm_cell_788/Relu_1Relu/sequential_207/lstm_623/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_207/lstm_623/lstm_cell_788/mul_2Mul3sequential_207/lstm_623/lstm_cell_788/Sigmoid_2:y:0:sequential_207/lstm_623/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_207/lstm_623/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_207/lstm_623/TensorArrayV2_1TensorListReserve>sequential_207/lstm_623/TensorArrayV2_1/element_shape:output:00sequential_207/lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_207/lstm_623/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_207/lstm_623/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_207/lstm_623/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_207/lstm_623/whileWhile3sequential_207/lstm_623/while/loop_counter:output:09sequential_207/lstm_623/while/maximum_iterations:output:0%sequential_207/lstm_623/time:output:00sequential_207/lstm_623/TensorArrayV2_1:handle:0&sequential_207/lstm_623/zeros:output:0(sequential_207/lstm_623/zeros_1:output:00sequential_207/lstm_623/strided_slice_1:output:0Osequential_207/lstm_623/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_207_lstm_623_lstm_cell_788_matmul_readvariableop_resourceFsequential_207_lstm_623_lstm_cell_788_matmul_1_readvariableop_resourceEsequential_207_lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
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
*sequential_207_lstm_623_while_body_4765435*6
cond.R,
*sequential_207_lstm_623_while_cond_4765434*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_207/lstm_623/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_207/lstm_623/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_207/lstm_623/while:output:3Qsequential_207/lstm_623/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_207/lstm_623/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_207/lstm_623/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_207/lstm_623/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_207/lstm_623/strided_slice_3StridedSliceCsequential_207/lstm_623/TensorArrayV2Stack/TensorListStack:tensor:06sequential_207/lstm_623/strided_slice_3/stack:output:08sequential_207/lstm_623/strided_slice_3/stack_1:output:08sequential_207/lstm_623/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_207/lstm_623/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_207/lstm_623/transpose_1	TransposeCsequential_207/lstm_623/TensorArrayV2Stack/TensorListStack:tensor:01sequential_207/lstm_623/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_207/lstm_623/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_207/dense_207/MatMul/ReadVariableOpReadVariableOp7sequential_207_dense_207_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_207/dense_207/MatMulMatMul0sequential_207/lstm_623/strided_slice_3:output:06sequential_207/dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_207/dense_207/BiasAdd/ReadVariableOpReadVariableOp8sequential_207_dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_207/dense_207/BiasAddBiasAdd)sequential_207/dense_207/MatMul:product:07sequential_207/dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_207/dense_207/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_207/dense_207/BiasAdd/ReadVariableOp/^sequential_207/dense_207/MatMul/ReadVariableOp=^sequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp<^sequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOp>^sequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp^sequential_207/lstm_621/while=^sequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp<^sequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOp>^sequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp^sequential_207/lstm_622/while=^sequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp<^sequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOp>^sequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp^sequential_207/lstm_623/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_207/dense_207/BiasAdd/ReadVariableOp/sequential_207/dense_207/BiasAdd/ReadVariableOp2`
.sequential_207/dense_207/MatMul/ReadVariableOp.sequential_207/dense_207/MatMul/ReadVariableOp2|
<sequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp<sequential_207/lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp2z
;sequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOp;sequential_207/lstm_621/lstm_cell_786/MatMul/ReadVariableOp2~
=sequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp=sequential_207/lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp2>
sequential_207/lstm_621/whilesequential_207/lstm_621/while2|
<sequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp<sequential_207/lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp2z
;sequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOp;sequential_207/lstm_622/lstm_cell_787/MatMul/ReadVariableOp2~
=sequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp=sequential_207/lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp2>
sequential_207/lstm_622/whilesequential_207/lstm_622/while2|
<sequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp<sequential_207/lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp2z
;sequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOp;sequential_207/lstm_623/lstm_cell_788/MatMul/ReadVariableOp2~
=sequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp=sequential_207/lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp2>
sequential_207/lstm_623/whilesequential_207/lstm_623/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_621_input
?
?
*__inference_lstm_622_layer_call_fn_4769331
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766216|
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
?
/__inference_lstm_cell_786_layer_call_fn_4770594

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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765738o
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4765675

inputs(
lstm_cell_786_4765593:	?(
lstm_cell_786_4765595:	d?$
lstm_cell_786_4765597:	?
identity??%lstm_cell_786/StatefulPartitionedCall?while;
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
%lstm_cell_786/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_786_4765593lstm_cell_786_4765595lstm_cell_786_4765597*
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765592n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_786_4765593lstm_cell_786_4765595lstm_cell_786_4765597*
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
while_body_4765606*
condR
while_cond_4765605*K
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
NoOpNoOp&^lstm_cell_786/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_786/StatefulPartitionedCall%lstm_cell_786/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_621_layer_call_and_return_conditional_losses_4768880
inputs_0?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4768796*
condR
while_cond_4768795*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_622_layer_call_and_return_conditional_losses_4766216

inputs(
lstm_cell_787_4766134:	d?(
lstm_cell_787_4766136:	2?$
lstm_cell_787_4766138:	?
identity??%lstm_cell_787/StatefulPartitionedCall?while;
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
%lstm_cell_787/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_787_4766134lstm_cell_787_4766136lstm_cell_787_4766138*
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4766088n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_787_4766134lstm_cell_787_4766136lstm_cell_787_4766138*
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
while_body_4766147*
condR
while_cond_4766146*K
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
NoOpNoOp&^lstm_cell_787/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_787/StatefulPartitionedCall%lstm_cell_787/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770658

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

lstm_621_while_body_4768325.
*lstm_621_while_lstm_621_while_loop_counter4
0lstm_621_while_lstm_621_while_maximum_iterations
lstm_621_while_placeholder 
lstm_621_while_placeholder_1 
lstm_621_while_placeholder_2 
lstm_621_while_placeholder_3-
)lstm_621_while_lstm_621_strided_slice_1_0i
elstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0:	?R
?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?M
>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
lstm_621_while_identity
lstm_621_while_identity_1
lstm_621_while_identity_2
lstm_621_while_identity_3
lstm_621_while_identity_4
lstm_621_while_identity_5+
'lstm_621_while_lstm_621_strided_slice_1g
clstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensorN
;lstm_621_while_lstm_cell_786_matmul_readvariableop_resource:	?P
=lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource:	d?K
<lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource:	???3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp?2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp?4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp?
@lstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_621/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0lstm_621_while_placeholderIlstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_621/while/lstm_cell_786/MatMulMatMul9lstm_621/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_621/while/lstm_cell_786/MatMul_1MatMullstm_621_while_placeholder_2<lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_621/while/lstm_cell_786/addAddV2-lstm_621/while/lstm_cell_786/MatMul:product:0/lstm_621/while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_621/while/lstm_cell_786/BiasAddBiasAdd$lstm_621/while/lstm_cell_786/add:z:0;lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_621/while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_621/while/lstm_cell_786/splitSplit5lstm_621/while/lstm_cell_786/split/split_dim:output:0-lstm_621/while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_621/while/lstm_cell_786/SigmoidSigmoid+lstm_621/while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_621/while/lstm_cell_786/Sigmoid_1Sigmoid+lstm_621/while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_621/while/lstm_cell_786/mulMul*lstm_621/while/lstm_cell_786/Sigmoid_1:y:0lstm_621_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_621/while/lstm_cell_786/ReluRelu+lstm_621/while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/mul_1Mul(lstm_621/while/lstm_cell_786/Sigmoid:y:0/lstm_621/while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/add_1AddV2$lstm_621/while/lstm_cell_786/mul:z:0&lstm_621/while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_621/while/lstm_cell_786/Sigmoid_2Sigmoid+lstm_621/while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_621/while/lstm_cell_786/Relu_1Relu&lstm_621/while/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/mul_2Mul*lstm_621/while/lstm_cell_786/Sigmoid_2:y:01lstm_621/while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_621/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_621_while_placeholder_1lstm_621_while_placeholder&lstm_621/while/lstm_cell_786/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_621/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_621/while/addAddV2lstm_621_while_placeholderlstm_621/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_621/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_621/while/add_1AddV2*lstm_621_while_lstm_621_while_loop_counterlstm_621/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_621/while/IdentityIdentitylstm_621/while/add_1:z:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_1Identity0lstm_621_while_lstm_621_while_maximum_iterations^lstm_621/while/NoOp*
T0*
_output_shapes
: t
lstm_621/while/Identity_2Identitylstm_621/while/add:z:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_3IdentityClstm_621/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_4Identity&lstm_621/while/lstm_cell_786/mul_2:z:0^lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_621/while/Identity_5Identity&lstm_621/while/lstm_cell_786/add_1:z:0^lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_621/while/NoOpNoOp4^lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp3^lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp5^lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_621_while_identity lstm_621/while/Identity:output:0"?
lstm_621_while_identity_1"lstm_621/while/Identity_1:output:0"?
lstm_621_while_identity_2"lstm_621/while/Identity_2:output:0"?
lstm_621_while_identity_3"lstm_621/while/Identity_3:output:0"?
lstm_621_while_identity_4"lstm_621/while/Identity_4:output:0"?
lstm_621_while_identity_5"lstm_621/while/Identity_5:output:0"T
'lstm_621_while_lstm_621_strided_slice_1)lstm_621_while_lstm_621_strided_slice_1_0"~
<lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0"?
=lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0"|
;lstm_621_while_lstm_cell_786_matmul_readvariableop_resource=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0"?
clstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensorelstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp2h
2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp2l
4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4766566

inputs'
lstm_cell_788_4766484:2('
lstm_cell_788_4766486:
(#
lstm_cell_788_4766488:(
identity??%lstm_cell_788/StatefulPartitionedCall?while;
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
%lstm_cell_788/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_788_4766484lstm_cell_788_4766486lstm_cell_788_4766488*
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766438n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_788_4766484lstm_cell_788_4766486lstm_cell_788_4766488*
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
while_body_4766497*
condR
while_cond_4766496*K
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
NoOpNoOp&^lstm_cell_788/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_788/StatefulPartitionedCall%lstm_cell_788/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4767321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4770028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_788_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_788_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_788_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_788_matmul_readvariableop_resource:2(F
4while_lstm_cell_788_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_788_biasadd_readvariableop_resource:(??*while/lstm_cell_788/BiasAdd/ReadVariableOp?)while/lstm_cell_788/MatMul/ReadVariableOp?+while/lstm_cell_788/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_788_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_788/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_788_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_788/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_788/addAddV2$while/lstm_cell_788/MatMul:product:0&while/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_788_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_788/BiasAddBiasAddwhile/lstm_cell_788/add:z:02while/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_788/splitSplit,while/lstm_cell_788/split/split_dim:output:0$while/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_788/SigmoidSigmoid"while/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_1Sigmoid"while/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mulMul!while/lstm_cell_788/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_788/ReluRelu"while/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_1Mulwhile/lstm_cell_788/Sigmoid:y:0&while/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/add_1AddV2while/lstm_cell_788/mul:z:0while/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_788/Sigmoid_2Sigmoid"while/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_788/Relu_1Reluwhile/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_788/mul_2Mul!while/lstm_cell_788/Sigmoid_2:y:0(while/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_788/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_788/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_788/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_788/BiasAdd/ReadVariableOp*^while/lstm_cell_788/MatMul/ReadVariableOp,^while/lstm_cell_788/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_788_biasadd_readvariableop_resource5while_lstm_cell_788_biasadd_readvariableop_resource_0"n
4while_lstm_cell_788_matmul_1_readvariableop_resource6while_lstm_cell_788_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_788_matmul_readvariableop_resource4while_lstm_cell_788_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_788/BiasAdd/ReadVariableOp*while/lstm_cell_788/BiasAdd/ReadVariableOp2V
)while/lstm_cell_788/MatMul/ReadVariableOp)while/lstm_cell_788/MatMul/ReadVariableOp2Z
+while/lstm_cell_788/MatMul_1/ReadVariableOp+while/lstm_cell_788/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4766497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_788_4766521_0:2(/
while_lstm_cell_788_4766523_0:
(+
while_lstm_cell_788_4766525_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_788_4766521:2(-
while_lstm_cell_788_4766523:
()
while_lstm_cell_788_4766525:(??+while/lstm_cell_788/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_788/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_788_4766521_0while_lstm_cell_788_4766523_0while_lstm_cell_788_4766525_0*
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766438?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_788/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_788/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_788/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_788/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_788_4766521while_lstm_cell_788_4766521_0"<
while_lstm_cell_788_4766523while_lstm_cell_788_4766523_0"<
while_lstm_cell_788_4766525while_lstm_cell_788_4766525_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_788/StatefulPartitionedCall+while/lstm_cell_788/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_621_while_body_4767898.
*lstm_621_while_lstm_621_while_loop_counter4
0lstm_621_while_lstm_621_while_maximum_iterations
lstm_621_while_placeholder 
lstm_621_while_placeholder_1 
lstm_621_while_placeholder_2 
lstm_621_while_placeholder_3-
)lstm_621_while_lstm_621_strided_slice_1_0i
elstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0:	?R
?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?M
>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
lstm_621_while_identity
lstm_621_while_identity_1
lstm_621_while_identity_2
lstm_621_while_identity_3
lstm_621_while_identity_4
lstm_621_while_identity_5+
'lstm_621_while_lstm_621_strided_slice_1g
clstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensorN
;lstm_621_while_lstm_cell_786_matmul_readvariableop_resource:	?P
=lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource:	d?K
<lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource:	???3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp?2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp?4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp?
@lstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_621/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0lstm_621_while_placeholderIlstm_621/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_621/while/lstm_cell_786/MatMulMatMul9lstm_621/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_621/while/lstm_cell_786/MatMul_1MatMullstm_621_while_placeholder_2<lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_621/while/lstm_cell_786/addAddV2-lstm_621/while/lstm_cell_786/MatMul:product:0/lstm_621/while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_621/while/lstm_cell_786/BiasAddBiasAdd$lstm_621/while/lstm_cell_786/add:z:0;lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_621/while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_621/while/lstm_cell_786/splitSplit5lstm_621/while/lstm_cell_786/split/split_dim:output:0-lstm_621/while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_621/while/lstm_cell_786/SigmoidSigmoid+lstm_621/while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_621/while/lstm_cell_786/Sigmoid_1Sigmoid+lstm_621/while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_621/while/lstm_cell_786/mulMul*lstm_621/while/lstm_cell_786/Sigmoid_1:y:0lstm_621_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_621/while/lstm_cell_786/ReluRelu+lstm_621/while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/mul_1Mul(lstm_621/while/lstm_cell_786/Sigmoid:y:0/lstm_621/while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/add_1AddV2$lstm_621/while/lstm_cell_786/mul:z:0&lstm_621/while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_621/while/lstm_cell_786/Sigmoid_2Sigmoid+lstm_621/while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_621/while/lstm_cell_786/Relu_1Relu&lstm_621/while/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_621/while/lstm_cell_786/mul_2Mul*lstm_621/while/lstm_cell_786/Sigmoid_2:y:01lstm_621/while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_621/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_621_while_placeholder_1lstm_621_while_placeholder&lstm_621/while/lstm_cell_786/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_621/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_621/while/addAddV2lstm_621_while_placeholderlstm_621/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_621/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_621/while/add_1AddV2*lstm_621_while_lstm_621_while_loop_counterlstm_621/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_621/while/IdentityIdentitylstm_621/while/add_1:z:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_1Identity0lstm_621_while_lstm_621_while_maximum_iterations^lstm_621/while/NoOp*
T0*
_output_shapes
: t
lstm_621/while/Identity_2Identitylstm_621/while/add:z:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_3IdentityClstm_621/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_621/while/NoOp*
T0*
_output_shapes
: ?
lstm_621/while/Identity_4Identity&lstm_621/while/lstm_cell_786/mul_2:z:0^lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_621/while/Identity_5Identity&lstm_621/while/lstm_cell_786/add_1:z:0^lstm_621/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_621/while/NoOpNoOp4^lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp3^lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp5^lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_621_while_identity lstm_621/while/Identity:output:0"?
lstm_621_while_identity_1"lstm_621/while/Identity_1:output:0"?
lstm_621_while_identity_2"lstm_621/while/Identity_2:output:0"?
lstm_621_while_identity_3"lstm_621/while/Identity_3:output:0"?
lstm_621_while_identity_4"lstm_621/while/Identity_4:output:0"?
lstm_621_while_identity_5"lstm_621/while/Identity_5:output:0"T
'lstm_621_while_lstm_621_strided_slice_1)lstm_621_while_lstm_621_strided_slice_1_0"~
<lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource>lstm_621_while_lstm_cell_786_biasadd_readvariableop_resource_0"?
=lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource?lstm_621_while_lstm_cell_786_matmul_1_readvariableop_resource_0"|
;lstm_621_while_lstm_cell_786_matmul_readvariableop_resource=lstm_621_while_lstm_cell_786_matmul_readvariableop_resource_0"?
clstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensorelstm_621_while_tensorarrayv2read_tensorlistgetitem_lstm_621_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp3lstm_621/while/lstm_cell_786/BiasAdd/ReadVariableOp2h
2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp2lstm_621/while/lstm_cell_786/MatMul/ReadVariableOp2l
4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp4lstm_621/while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768693

inputsH
5lstm_621_lstm_cell_786_matmul_readvariableop_resource:	?J
7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource:	d?E
6lstm_621_lstm_cell_786_biasadd_readvariableop_resource:	?H
5lstm_622_lstm_cell_787_matmul_readvariableop_resource:	d?J
7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource:	2?E
6lstm_622_lstm_cell_787_biasadd_readvariableop_resource:	?G
5lstm_623_lstm_cell_788_matmul_readvariableop_resource:2(I
7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource:
(D
6lstm_623_lstm_cell_788_biasadd_readvariableop_resource:(:
(dense_207_matmul_readvariableop_resource:
7
)dense_207_biasadd_readvariableop_resource:
identity?? dense_207/BiasAdd/ReadVariableOp?dense_207/MatMul/ReadVariableOp?-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp?,lstm_621/lstm_cell_786/MatMul/ReadVariableOp?.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp?lstm_621/while?-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp?,lstm_622/lstm_cell_787/MatMul/ReadVariableOp?.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp?lstm_622/while?-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp?,lstm_623/lstm_cell_788/MatMul/ReadVariableOp?.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp?lstm_623/whileD
lstm_621/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_621/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_621/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_621/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_sliceStridedSlicelstm_621/Shape:output:0%lstm_621/strided_slice/stack:output:0'lstm_621/strided_slice/stack_1:output:0'lstm_621/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_621/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_621/zeros/packedPacklstm_621/strided_slice:output:0 lstm_621/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_621/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_621/zerosFilllstm_621/zeros/packed:output:0lstm_621/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_621/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_621/zeros_1/packedPacklstm_621/strided_slice:output:0"lstm_621/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_621/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_621/zeros_1Fill lstm_621/zeros_1/packed:output:0lstm_621/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_621/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_621/transpose	Transposeinputs lstm_621/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_621/Shape_1Shapelstm_621/transpose:y:0*
T0*
_output_shapes
:h
lstm_621/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_621/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_1StridedSlicelstm_621/Shape_1:output:0'lstm_621/strided_slice_1/stack:output:0)lstm_621/strided_slice_1/stack_1:output:0)lstm_621/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_621/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_621/TensorArrayV2TensorListReserve-lstm_621/TensorArrayV2/element_shape:output:0!lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_621/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_621/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_621/transpose:y:0Glstm_621/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_621/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_621/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_2StridedSlicelstm_621/transpose:y:0'lstm_621/strided_slice_2/stack:output:0)lstm_621/strided_slice_2/stack_1:output:0)lstm_621/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_621/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp5lstm_621_lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_621/lstm_cell_786/MatMulMatMul!lstm_621/strided_slice_2:output:04lstm_621/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_621/lstm_cell_786/MatMul_1MatMullstm_621/zeros:output:06lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_621/lstm_cell_786/addAddV2'lstm_621/lstm_cell_786/MatMul:product:0)lstm_621/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp6lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_621/lstm_cell_786/BiasAddBiasAddlstm_621/lstm_cell_786/add:z:05lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_621/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_621/lstm_cell_786/splitSplit/lstm_621/lstm_cell_786/split/split_dim:output:0'lstm_621/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_621/lstm_cell_786/SigmoidSigmoid%lstm_621/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_621/lstm_cell_786/Sigmoid_1Sigmoid%lstm_621/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mulMul$lstm_621/lstm_cell_786/Sigmoid_1:y:0lstm_621/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_621/lstm_cell_786/ReluRelu%lstm_621/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mul_1Mul"lstm_621/lstm_cell_786/Sigmoid:y:0)lstm_621/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/add_1AddV2lstm_621/lstm_cell_786/mul:z:0 lstm_621/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_621/lstm_cell_786/Sigmoid_2Sigmoid%lstm_621/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_621/lstm_cell_786/Relu_1Relu lstm_621/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_621/lstm_cell_786/mul_2Mul$lstm_621/lstm_cell_786/Sigmoid_2:y:0+lstm_621/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_621/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_621/TensorArrayV2_1TensorListReserve/lstm_621/TensorArrayV2_1/element_shape:output:0!lstm_621/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_621/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_621/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_621/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_621/whileWhile$lstm_621/while/loop_counter:output:0*lstm_621/while/maximum_iterations:output:0lstm_621/time:output:0!lstm_621/TensorArrayV2_1:handle:0lstm_621/zeros:output:0lstm_621/zeros_1:output:0!lstm_621/strided_slice_1:output:0@lstm_621/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_621_lstm_cell_786_matmul_readvariableop_resource7lstm_621_lstm_cell_786_matmul_1_readvariableop_resource6lstm_621_lstm_cell_786_biasadd_readvariableop_resource*
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
lstm_621_while_body_4768325*'
condR
lstm_621_while_cond_4768324*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_621/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_621/TensorArrayV2Stack/TensorListStackTensorListStacklstm_621/while:output:3Blstm_621/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_621/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_621/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_621/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_621/strided_slice_3StridedSlice4lstm_621/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_621/strided_slice_3/stack:output:0)lstm_621/strided_slice_3/stack_1:output:0)lstm_621/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_621/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_621/transpose_1	Transpose4lstm_621/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_621/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_621/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_622/ShapeShapelstm_621/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_622/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_622/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_622/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_sliceStridedSlicelstm_622/Shape:output:0%lstm_622/strided_slice/stack:output:0'lstm_622/strided_slice/stack_1:output:0'lstm_622/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_622/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_622/zeros/packedPacklstm_622/strided_slice:output:0 lstm_622/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_622/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_622/zerosFilllstm_622/zeros/packed:output:0lstm_622/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_622/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_622/zeros_1/packedPacklstm_622/strided_slice:output:0"lstm_622/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_622/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_622/zeros_1Fill lstm_622/zeros_1/packed:output:0lstm_622/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_622/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_622/transpose	Transposelstm_621/transpose_1:y:0 lstm_622/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_622/Shape_1Shapelstm_622/transpose:y:0*
T0*
_output_shapes
:h
lstm_622/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_622/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_1StridedSlicelstm_622/Shape_1:output:0'lstm_622/strided_slice_1/stack:output:0)lstm_622/strided_slice_1/stack_1:output:0)lstm_622/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_622/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_622/TensorArrayV2TensorListReserve-lstm_622/TensorArrayV2/element_shape:output:0!lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_622/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_622/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_622/transpose:y:0Glstm_622/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_622/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_622/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_2StridedSlicelstm_622/transpose:y:0'lstm_622/strided_slice_2/stack:output:0)lstm_622/strided_slice_2/stack_1:output:0)lstm_622/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_622/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp5lstm_622_lstm_cell_787_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_622/lstm_cell_787/MatMulMatMul!lstm_622/strided_slice_2:output:04lstm_622/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_622/lstm_cell_787/MatMul_1MatMullstm_622/zeros:output:06lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_622/lstm_cell_787/addAddV2'lstm_622/lstm_cell_787/MatMul:product:0)lstm_622/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp6lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_622/lstm_cell_787/BiasAddBiasAddlstm_622/lstm_cell_787/add:z:05lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_622/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_622/lstm_cell_787/splitSplit/lstm_622/lstm_cell_787/split/split_dim:output:0'lstm_622/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_622/lstm_cell_787/SigmoidSigmoid%lstm_622/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_622/lstm_cell_787/Sigmoid_1Sigmoid%lstm_622/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mulMul$lstm_622/lstm_cell_787/Sigmoid_1:y:0lstm_622/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_622/lstm_cell_787/ReluRelu%lstm_622/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mul_1Mul"lstm_622/lstm_cell_787/Sigmoid:y:0)lstm_622/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/add_1AddV2lstm_622/lstm_cell_787/mul:z:0 lstm_622/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_622/lstm_cell_787/Sigmoid_2Sigmoid%lstm_622/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_622/lstm_cell_787/Relu_1Relu lstm_622/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_622/lstm_cell_787/mul_2Mul$lstm_622/lstm_cell_787/Sigmoid_2:y:0+lstm_622/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_622/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_622/TensorArrayV2_1TensorListReserve/lstm_622/TensorArrayV2_1/element_shape:output:0!lstm_622/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_622/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_622/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_622/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_622/whileWhile$lstm_622/while/loop_counter:output:0*lstm_622/while/maximum_iterations:output:0lstm_622/time:output:0!lstm_622/TensorArrayV2_1:handle:0lstm_622/zeros:output:0lstm_622/zeros_1:output:0!lstm_622/strided_slice_1:output:0@lstm_622/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_622_lstm_cell_787_matmul_readvariableop_resource7lstm_622_lstm_cell_787_matmul_1_readvariableop_resource6lstm_622_lstm_cell_787_biasadd_readvariableop_resource*
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
lstm_622_while_body_4768464*'
condR
lstm_622_while_cond_4768463*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_622/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_622/TensorArrayV2Stack/TensorListStackTensorListStacklstm_622/while:output:3Blstm_622/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_622/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_622/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_622/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_622/strided_slice_3StridedSlice4lstm_622/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_622/strided_slice_3/stack:output:0)lstm_622/strided_slice_3/stack_1:output:0)lstm_622/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_622/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_622/transpose_1	Transpose4lstm_622/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_622/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_622/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_623/ShapeShapelstm_622/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_623/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_623/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_623/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_sliceStridedSlicelstm_623/Shape:output:0%lstm_623/strided_slice/stack:output:0'lstm_623/strided_slice/stack_1:output:0'lstm_623/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_623/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_623/zeros/packedPacklstm_623/strided_slice:output:0 lstm_623/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_623/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_623/zerosFilllstm_623/zeros/packed:output:0lstm_623/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_623/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_623/zeros_1/packedPacklstm_623/strided_slice:output:0"lstm_623/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_623/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_623/zeros_1Fill lstm_623/zeros_1/packed:output:0lstm_623/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_623/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_623/transpose	Transposelstm_622/transpose_1:y:0 lstm_623/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_623/Shape_1Shapelstm_623/transpose:y:0*
T0*
_output_shapes
:h
lstm_623/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_623/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_1StridedSlicelstm_623/Shape_1:output:0'lstm_623/strided_slice_1/stack:output:0)lstm_623/strided_slice_1/stack_1:output:0)lstm_623/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_623/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_623/TensorArrayV2TensorListReserve-lstm_623/TensorArrayV2/element_shape:output:0!lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_623/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_623/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_623/transpose:y:0Glstm_623/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_623/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_623/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_2StridedSlicelstm_623/transpose:y:0'lstm_623/strided_slice_2/stack:output:0)lstm_623/strided_slice_2/stack_1:output:0)lstm_623/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_623/lstm_cell_788/MatMul/ReadVariableOpReadVariableOp5lstm_623_lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_623/lstm_cell_788/MatMulMatMul!lstm_623/strided_slice_2:output:04lstm_623/lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_623/lstm_cell_788/MatMul_1MatMullstm_623/zeros:output:06lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_623/lstm_cell_788/addAddV2'lstm_623/lstm_cell_788/MatMul:product:0)lstm_623/lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp6lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_623/lstm_cell_788/BiasAddBiasAddlstm_623/lstm_cell_788/add:z:05lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_623/lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_623/lstm_cell_788/splitSplit/lstm_623/lstm_cell_788/split/split_dim:output:0'lstm_623/lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_623/lstm_cell_788/SigmoidSigmoid%lstm_623/lstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_623/lstm_cell_788/Sigmoid_1Sigmoid%lstm_623/lstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mulMul$lstm_623/lstm_cell_788/Sigmoid_1:y:0lstm_623/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_623/lstm_cell_788/ReluRelu%lstm_623/lstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mul_1Mul"lstm_623/lstm_cell_788/Sigmoid:y:0)lstm_623/lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/add_1AddV2lstm_623/lstm_cell_788/mul:z:0 lstm_623/lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_623/lstm_cell_788/Sigmoid_2Sigmoid%lstm_623/lstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_623/lstm_cell_788/Relu_1Relu lstm_623/lstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_623/lstm_cell_788/mul_2Mul$lstm_623/lstm_cell_788/Sigmoid_2:y:0+lstm_623/lstm_cell_788/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_623/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_623/TensorArrayV2_1TensorListReserve/lstm_623/TensorArrayV2_1/element_shape:output:0!lstm_623/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_623/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_623/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_623/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_623/whileWhile$lstm_623/while/loop_counter:output:0*lstm_623/while/maximum_iterations:output:0lstm_623/time:output:0!lstm_623/TensorArrayV2_1:handle:0lstm_623/zeros:output:0lstm_623/zeros_1:output:0!lstm_623/strided_slice_1:output:0@lstm_623/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_623_lstm_cell_788_matmul_readvariableop_resource7lstm_623_lstm_cell_788_matmul_1_readvariableop_resource6lstm_623_lstm_cell_788_biasadd_readvariableop_resource*
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
lstm_623_while_body_4768603*'
condR
lstm_623_while_cond_4768602*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_623/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_623/TensorArrayV2Stack/TensorListStackTensorListStacklstm_623/while:output:3Blstm_623/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_623/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_623/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_623/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_623/strided_slice_3StridedSlice4lstm_623/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_623/strided_slice_3/stack:output:0)lstm_623/strided_slice_3/stack_1:output:0)lstm_623/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_623/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_623/transpose_1	Transpose4lstm_623/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_623/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_623/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_207/MatMul/ReadVariableOpReadVariableOp(dense_207_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_207/MatMulMatMul!lstm_623/strided_slice_3:output:0'dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_207/BiasAddBiasAdddense_207/MatMul:product:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_207/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_207/BiasAdd/ReadVariableOp ^dense_207/MatMul/ReadVariableOp.^lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp-^lstm_621/lstm_cell_786/MatMul/ReadVariableOp/^lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp^lstm_621/while.^lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp-^lstm_622/lstm_cell_787/MatMul/ReadVariableOp/^lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp^lstm_622/while.^lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp-^lstm_623/lstm_cell_788/MatMul/ReadVariableOp/^lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp^lstm_623/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2B
dense_207/MatMul/ReadVariableOpdense_207/MatMul/ReadVariableOp2^
-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp-lstm_621/lstm_cell_786/BiasAdd/ReadVariableOp2\
,lstm_621/lstm_cell_786/MatMul/ReadVariableOp,lstm_621/lstm_cell_786/MatMul/ReadVariableOp2`
.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp.lstm_621/lstm_cell_786/MatMul_1/ReadVariableOp2 
lstm_621/whilelstm_621/while2^
-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp-lstm_622/lstm_cell_787/BiasAdd/ReadVariableOp2\
,lstm_622/lstm_cell_787/MatMul/ReadVariableOp,lstm_622/lstm_cell_787/MatMul/ReadVariableOp2`
.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp.lstm_622/lstm_cell_787/MatMul_1/ReadVariableOp2 
lstm_622/whilelstm_622/while2^
-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp-lstm_623/lstm_cell_788/BiasAdd/ReadVariableOp2\
,lstm_623/lstm_cell_788/MatMul/ReadVariableOp,lstm_623/lstm_cell_788/MatMul/ReadVariableOp2`
.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp.lstm_623/lstm_cell_788/MatMul_1/ReadVariableOp2 
lstm_623/whilelstm_623/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_623_layer_call_fn_4769947
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4766566o
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4765866

inputs(
lstm_cell_786_4765784:	?(
lstm_cell_786_4765786:	d?$
lstm_cell_786_4765788:	?
identity??%lstm_cell_786/StatefulPartitionedCall?while;
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
%lstm_cell_786/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_786_4765784lstm_cell_786_4765786lstm_cell_786_4765788*
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4765738n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_786_4765784lstm_cell_786_4765786lstm_cell_786_4765788*
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
while_body_4765797*
condR
while_cond_4765796*K
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
NoOpNoOp&^lstm_cell_786/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_786/StatefulPartitionedCall%lstm_cell_786/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_623_while_cond_4768175.
*lstm_623_while_lstm_623_while_loop_counter4
0lstm_623_while_lstm_623_while_maximum_iterations
lstm_623_while_placeholder 
lstm_623_while_placeholder_1 
lstm_623_while_placeholder_2 
lstm_623_while_placeholder_30
,lstm_623_while_less_lstm_623_strided_slice_1G
Clstm_623_while_lstm_623_while_cond_4768175___redundant_placeholder0G
Clstm_623_while_lstm_623_while_cond_4768175___redundant_placeholder1G
Clstm_623_while_lstm_623_while_cond_4768175___redundant_placeholder2G
Clstm_623_while_lstm_623_while_cond_4768175___redundant_placeholder3
lstm_623_while_identity
?
lstm_623/while/LessLesslstm_623_while_placeholder,lstm_623_while_less_lstm_623_strided_slice_1*
T0*
_output_shapes
: ]
lstm_623/while/IdentityIdentitylstm_623/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_623_while_identity lstm_623/while/Identity:output:0*(
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770626

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
while_cond_4766146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4766146___redundant_placeholder05
1while_while_cond_4766146___redundant_placeholder15
1while_while_cond_4766146___redundant_placeholder25
1while_while_cond_4766146___redundant_placeholder3
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769309

inputs?
,lstm_cell_786_matmul_readvariableop_resource:	?A
.lstm_cell_786_matmul_1_readvariableop_resource:	d?<
-lstm_cell_786_biasadd_readvariableop_resource:	?
identity??$lstm_cell_786/BiasAdd/ReadVariableOp?#lstm_cell_786/MatMul/ReadVariableOp?%lstm_cell_786/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_786/MatMul/ReadVariableOpReadVariableOp,lstm_cell_786_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_786/MatMulMatMulstrided_slice_2:output:0+lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_786_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_786/MatMul_1MatMulzeros:output:0-lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_786/addAddV2lstm_cell_786/MatMul:product:0 lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_786_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_786/BiasAddBiasAddlstm_cell_786/add:z:0,lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_786/splitSplit&lstm_cell_786/split/split_dim:output:0lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_786/SigmoidSigmoidlstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_1Sigmoidlstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_786/mulMullstm_cell_786/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_786/ReluRelulstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_1Mullstm_cell_786/Sigmoid:y:0 lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_786/add_1AddV2lstm_cell_786/mul:z:0lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_786/Sigmoid_2Sigmoidlstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_786/Relu_1Relulstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_786/mul_2Mullstm_cell_786/Sigmoid_2:y:0"lstm_cell_786/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_786_matmul_readvariableop_resource.lstm_cell_786_matmul_1_readvariableop_resource-lstm_cell_786_biasadd_readvariableop_resource*
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
while_body_4769225*
condR
while_cond_4769224*K
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
NoOpNoOp%^lstm_cell_786/BiasAdd/ReadVariableOp$^lstm_cell_786/MatMul/ReadVariableOp&^lstm_cell_786/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_786/BiasAdd/ReadVariableOp$lstm_cell_786/BiasAdd/ReadVariableOp2J
#lstm_cell_786/MatMul/ReadVariableOp#lstm_cell_786/MatMul/ReadVariableOp2N
%lstm_cell_786/MatMul_1/ReadVariableOp%lstm_cell_786/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4770997
file_prefix/
+savev2_dense_207_kernel_read_readvariableop-
)savev2_dense_207_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_621_lstm_cell_621_kernel_read_readvariableopF
Bsavev2_lstm_621_lstm_cell_621_recurrent_kernel_read_readvariableop:
6savev2_lstm_621_lstm_cell_621_bias_read_readvariableop<
8savev2_lstm_622_lstm_cell_622_kernel_read_readvariableopF
Bsavev2_lstm_622_lstm_cell_622_recurrent_kernel_read_readvariableop:
6savev2_lstm_622_lstm_cell_622_bias_read_readvariableop<
8savev2_lstm_623_lstm_cell_623_kernel_read_readvariableopF
Bsavev2_lstm_623_lstm_cell_623_recurrent_kernel_read_readvariableop:
6savev2_lstm_623_lstm_cell_623_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_207_kernel_m_read_readvariableop4
0savev2_adam_dense_207_bias_m_read_readvariableopC
?savev2_adam_lstm_621_lstm_cell_621_kernel_m_read_readvariableopM
Isavev2_adam_lstm_621_lstm_cell_621_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_621_lstm_cell_621_bias_m_read_readvariableopC
?savev2_adam_lstm_622_lstm_cell_622_kernel_m_read_readvariableopM
Isavev2_adam_lstm_622_lstm_cell_622_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_622_lstm_cell_622_bias_m_read_readvariableopC
?savev2_adam_lstm_623_lstm_cell_623_kernel_m_read_readvariableopM
Isavev2_adam_lstm_623_lstm_cell_623_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_623_lstm_cell_623_bias_m_read_readvariableop6
2savev2_adam_dense_207_kernel_v_read_readvariableop4
0savev2_adam_dense_207_bias_v_read_readvariableopC
?savev2_adam_lstm_621_lstm_cell_621_kernel_v_read_readvariableopM
Isavev2_adam_lstm_621_lstm_cell_621_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_621_lstm_cell_621_bias_v_read_readvariableopC
?savev2_adam_lstm_622_lstm_cell_622_kernel_v_read_readvariableopM
Isavev2_adam_lstm_622_lstm_cell_622_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_622_lstm_cell_622_bias_v_read_readvariableopC
?savev2_adam_lstm_623_lstm_cell_623_kernel_v_read_readvariableopM
Isavev2_adam_lstm_623_lstm_cell_623_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_623_lstm_cell_623_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_207_kernel_read_readvariableop)savev2_dense_207_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_621_lstm_cell_621_kernel_read_readvariableopBsavev2_lstm_621_lstm_cell_621_recurrent_kernel_read_readvariableop6savev2_lstm_621_lstm_cell_621_bias_read_readvariableop8savev2_lstm_622_lstm_cell_622_kernel_read_readvariableopBsavev2_lstm_622_lstm_cell_622_recurrent_kernel_read_readvariableop6savev2_lstm_622_lstm_cell_622_bias_read_readvariableop8savev2_lstm_623_lstm_cell_623_kernel_read_readvariableopBsavev2_lstm_623_lstm_cell_623_recurrent_kernel_read_readvariableop6savev2_lstm_623_lstm_cell_623_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_207_kernel_m_read_readvariableop0savev2_adam_dense_207_bias_m_read_readvariableop?savev2_adam_lstm_621_lstm_cell_621_kernel_m_read_readvariableopIsavev2_adam_lstm_621_lstm_cell_621_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_621_lstm_cell_621_bias_m_read_readvariableop?savev2_adam_lstm_622_lstm_cell_622_kernel_m_read_readvariableopIsavev2_adam_lstm_622_lstm_cell_622_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_622_lstm_cell_622_bias_m_read_readvariableop?savev2_adam_lstm_623_lstm_cell_623_kernel_m_read_readvariableopIsavev2_adam_lstm_623_lstm_cell_623_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_623_lstm_cell_623_bias_m_read_readvariableop2savev2_adam_dense_207_kernel_v_read_readvariableop0savev2_adam_dense_207_bias_v_read_readvariableop?savev2_adam_lstm_621_lstm_cell_621_kernel_v_read_readvariableopIsavev2_adam_lstm_621_lstm_cell_621_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_621_lstm_cell_621_bias_v_read_readvariableop?savev2_adam_lstm_622_lstm_cell_622_kernel_v_read_readvariableopIsavev2_adam_lstm_622_lstm_cell_622_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_622_lstm_cell_622_bias_v_read_readvariableop?savev2_adam_lstm_623_lstm_cell_623_kernel_v_read_readvariableopIsavev2_adam_lstm_623_lstm_cell_623_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_623_lstm_cell_623_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4769081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4769081___redundant_placeholder05
1while_while_cond_4769081___redundant_placeholder15
1while_while_cond_4769081___redundant_placeholder25
1while_while_cond_4769081___redundant_placeholder3
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
while_body_4769841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_787_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_787_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_787_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_787_matmul_readvariableop_resource:	d?G
4while_lstm_cell_787_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_787_biasadd_readvariableop_resource:	???*while/lstm_cell_787/BiasAdd/ReadVariableOp?)while/lstm_cell_787/MatMul/ReadVariableOp?+while/lstm_cell_787/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_787/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_787_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_787/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_787/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_787/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_787_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_787/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_787/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_787/addAddV2$while/lstm_cell_787/MatMul:product:0&while/lstm_cell_787/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_787/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_787_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_787/BiasAddBiasAddwhile/lstm_cell_787/add:z:02while/lstm_cell_787/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_787/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_787/splitSplit,while/lstm_cell_787/split/split_dim:output:0$while/lstm_cell_787/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_787/SigmoidSigmoid"while/lstm_cell_787/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_1Sigmoid"while/lstm_cell_787/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mulMul!while/lstm_cell_787/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_787/ReluRelu"while/lstm_cell_787/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_1Mulwhile/lstm_cell_787/Sigmoid:y:0&while/lstm_cell_787/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/add_1AddV2while/lstm_cell_787/mul:z:0while/lstm_cell_787/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_787/Sigmoid_2Sigmoid"while/lstm_cell_787/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_787/Relu_1Reluwhile/lstm_cell_787/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_787/mul_2Mul!while/lstm_cell_787/Sigmoid_2:y:0(while/lstm_cell_787/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_787/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_787/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_787/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_787/BiasAdd/ReadVariableOp*^while/lstm_cell_787/MatMul/ReadVariableOp,^while/lstm_cell_787/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_787_biasadd_readvariableop_resource5while_lstm_cell_787_biasadd_readvariableop_resource_0"n
4while_lstm_cell_787_matmul_1_readvariableop_resource6while_lstm_cell_787_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_787_matmul_readvariableop_resource4while_lstm_cell_787_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_787/BiasAdd/ReadVariableOp*while/lstm_cell_787/BiasAdd/ReadVariableOp2V
)while/lstm_cell_787/MatMul/ReadVariableOp)while/lstm_cell_787/MatMul/ReadVariableOp2Z
+while/lstm_cell_787/MatMul_1/ReadVariableOp+while/lstm_cell_787/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4766292

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
while_body_4768939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_786_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_786_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_786_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_786_matmul_readvariableop_resource:	?G
4while_lstm_cell_786_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_786_biasadd_readvariableop_resource:	???*while/lstm_cell_786/BiasAdd/ReadVariableOp?)while/lstm_cell_786/MatMul/ReadVariableOp?+while/lstm_cell_786/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_786/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_786_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_786/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_786/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_786/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_786_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_786/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_786/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_786/addAddV2$while/lstm_cell_786/MatMul:product:0&while/lstm_cell_786/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_786/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_786_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_786/BiasAddBiasAddwhile/lstm_cell_786/add:z:02while/lstm_cell_786/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_786/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_786/splitSplit,while/lstm_cell_786/split/split_dim:output:0$while/lstm_cell_786/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_786/SigmoidSigmoid"while/lstm_cell_786/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_1Sigmoid"while/lstm_cell_786/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mulMul!while/lstm_cell_786/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_786/ReluRelu"while/lstm_cell_786/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_1Mulwhile/lstm_cell_786/Sigmoid:y:0&while/lstm_cell_786/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/add_1AddV2while/lstm_cell_786/mul:z:0while/lstm_cell_786/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_786/Sigmoid_2Sigmoid"while/lstm_cell_786/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_786/Relu_1Reluwhile/lstm_cell_786/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_786/mul_2Mul!while/lstm_cell_786/Sigmoid_2:y:0(while/lstm_cell_786/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_786/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_786/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_786/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_786/BiasAdd/ReadVariableOp*^while/lstm_cell_786/MatMul/ReadVariableOp,^while/lstm_cell_786/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_786_biasadd_readvariableop_resource5while_lstm_cell_786_biasadd_readvariableop_resource_0"n
4while_lstm_cell_786_matmul_1_readvariableop_resource6while_lstm_cell_786_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_786_matmul_readvariableop_resource4while_lstm_cell_786_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_786/BiasAdd/ReadVariableOp*while/lstm_cell_786/BiasAdd/ReadVariableOp2V
)while/lstm_cell_786/MatMul/ReadVariableOp)while/lstm_cell_786/MatMul/ReadVariableOp2Z
+while/lstm_cell_786/MatMul_1/ReadVariableOp+while/lstm_cell_786/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_207_lstm_621_while_cond_4765156L
Hsequential_207_lstm_621_while_sequential_207_lstm_621_while_loop_counterR
Nsequential_207_lstm_621_while_sequential_207_lstm_621_while_maximum_iterations-
)sequential_207_lstm_621_while_placeholder/
+sequential_207_lstm_621_while_placeholder_1/
+sequential_207_lstm_621_while_placeholder_2/
+sequential_207_lstm_621_while_placeholder_3N
Jsequential_207_lstm_621_while_less_sequential_207_lstm_621_strided_slice_1e
asequential_207_lstm_621_while_sequential_207_lstm_621_while_cond_4765156___redundant_placeholder0e
asequential_207_lstm_621_while_sequential_207_lstm_621_while_cond_4765156___redundant_placeholder1e
asequential_207_lstm_621_while_sequential_207_lstm_621_while_cond_4765156___redundant_placeholder2e
asequential_207_lstm_621_while_sequential_207_lstm_621_while_cond_4765156___redundant_placeholder3*
&sequential_207_lstm_621_while_identity
?
"sequential_207/lstm_621/while/LessLess)sequential_207_lstm_621_while_placeholderJsequential_207_lstm_621_while_less_sequential_207_lstm_621_strided_slice_1*
T0*
_output_shapes
: {
&sequential_207/lstm_621/while/IdentityIdentity&sequential_207/lstm_621/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_207_lstm_621_while_identity/sequential_207/lstm_621/while/Identity:output:0*(
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4767024

inputs>
,lstm_cell_788_matmul_readvariableop_resource:2(@
.lstm_cell_788_matmul_1_readvariableop_resource:
(;
-lstm_cell_788_biasadd_readvariableop_resource:(
identity??$lstm_cell_788/BiasAdd/ReadVariableOp?#lstm_cell_788/MatMul/ReadVariableOp?%lstm_cell_788/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_788/MatMul/ReadVariableOpReadVariableOp,lstm_cell_788_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_788/MatMulMatMulstrided_slice_2:output:0+lstm_cell_788/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_788/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_788_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_788/MatMul_1MatMulzeros:output:0-lstm_cell_788/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_788/addAddV2lstm_cell_788/MatMul:product:0 lstm_cell_788/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_788/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_788_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_788/BiasAddBiasAddlstm_cell_788/add:z:0,lstm_cell_788/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_788/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_788/splitSplit&lstm_cell_788/split/split_dim:output:0lstm_cell_788/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_788/SigmoidSigmoidlstm_cell_788/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_1Sigmoidlstm_cell_788/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_788/mulMullstm_cell_788/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_788/ReluRelulstm_cell_788/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_1Mullstm_cell_788/Sigmoid:y:0 lstm_cell_788/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_788/add_1AddV2lstm_cell_788/mul:z:0lstm_cell_788/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_788/Sigmoid_2Sigmoidlstm_cell_788/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_788/Relu_1Relulstm_cell_788/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_788/mul_2Mullstm_cell_788/Sigmoid_2:y:0"lstm_cell_788/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_788_matmul_readvariableop_resource.lstm_cell_788_matmul_1_readvariableop_resource-lstm_cell_788_biasadd_readvariableop_resource*
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
while_body_4766940*
condR
while_cond_4766939*K
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
NoOpNoOp%^lstm_cell_788/BiasAdd/ReadVariableOp$^lstm_cell_788/MatMul/ReadVariableOp&^lstm_cell_788/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_788/BiasAdd/ReadVariableOp$lstm_cell_788/BiasAdd/ReadVariableOp2J
#lstm_cell_788/MatMul/ReadVariableOp#lstm_cell_788/MatMul/ReadVariableOp2N
%lstm_cell_788/MatMul_1/ReadVariableOp%lstm_cell_788/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
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
lstm_621_input;
 serving_default_lstm_621_input:0?????????=
	dense_2070
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
2dense_207/kernel
:2dense_207/bias
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
0:.	?2lstm_621/lstm_cell_621/kernel
::8	d?2'lstm_621/lstm_cell_621/recurrent_kernel
*:(?2lstm_621/lstm_cell_621/bias
0:.	d?2lstm_622/lstm_cell_622/kernel
::8	2?2'lstm_622/lstm_cell_622/recurrent_kernel
*:(?2lstm_622/lstm_cell_622/bias
/:-2(2lstm_623/lstm_cell_623/kernel
9:7
(2'lstm_623/lstm_cell_623/recurrent_kernel
):'(2lstm_623/lstm_cell_623/bias
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
2Adam/dense_207/kernel/m
!:2Adam/dense_207/bias/m
5:3	?2$Adam/lstm_621/lstm_cell_621/kernel/m
?:=	d?2.Adam/lstm_621/lstm_cell_621/recurrent_kernel/m
/:-?2"Adam/lstm_621/lstm_cell_621/bias/m
5:3	d?2$Adam/lstm_622/lstm_cell_622/kernel/m
?:=	2?2.Adam/lstm_622/lstm_cell_622/recurrent_kernel/m
/:-?2"Adam/lstm_622/lstm_cell_622/bias/m
4:22(2$Adam/lstm_623/lstm_cell_623/kernel/m
>:<
(2.Adam/lstm_623/lstm_cell_623/recurrent_kernel/m
.:,(2"Adam/lstm_623/lstm_cell_623/bias/m
':%
2Adam/dense_207/kernel/v
!:2Adam/dense_207/bias/v
5:3	?2$Adam/lstm_621/lstm_cell_621/kernel/v
?:=	d?2.Adam/lstm_621/lstm_cell_621/recurrent_kernel/v
/:-?2"Adam/lstm_621/lstm_cell_621/bias/v
5:3	d?2$Adam/lstm_622/lstm_cell_622/kernel/v
?:=	2?2.Adam/lstm_622/lstm_cell_622/recurrent_kernel/v
/:-?2"Adam/lstm_622/lstm_cell_622/bias/v
4:22(2$Adam/lstm_623/lstm_cell_623/kernel/v
>:<
(2.Adam/lstm_623/lstm_cell_623/recurrent_kernel/v
.:,(2"Adam/lstm_623/lstm_cell_623/bias/v
?2?
0__inference_sequential_207_layer_call_fn_4767074
0__inference_sequential_207_layer_call_fn_4767812
0__inference_sequential_207_layer_call_fn_4767839
0__inference_sequential_207_layer_call_fn_4767690?
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768266
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768693
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767720
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767750?
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
"__inference__wrapped_model_4765525lstm_621_input"?
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
*__inference_lstm_621_layer_call_fn_4768704
*__inference_lstm_621_layer_call_fn_4768715
*__inference_lstm_621_layer_call_fn_4768726
*__inference_lstm_621_layer_call_fn_4768737?
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4768880
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769023
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769166
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769309?
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
*__inference_lstm_622_layer_call_fn_4769320
*__inference_lstm_622_layer_call_fn_4769331
*__inference_lstm_622_layer_call_fn_4769342
*__inference_lstm_622_layer_call_fn_4769353?
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769496
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769639
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769782
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769925?
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
*__inference_lstm_623_layer_call_fn_4769936
*__inference_lstm_623_layer_call_fn_4769947
*__inference_lstm_623_layer_call_fn_4769958
*__inference_lstm_623_layer_call_fn_4769969?
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770112
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770255
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770398
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770541?
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
+__inference_dense_207_layer_call_fn_4770550?
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
F__inference_dense_207_layer_call_and_return_conditional_losses_4770560?
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
%__inference_signature_wrapper_4767785lstm_621_input"?
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
/__inference_lstm_cell_786_layer_call_fn_4770577
/__inference_lstm_cell_786_layer_call_fn_4770594?
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770626
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770658?
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
/__inference_lstm_cell_787_layer_call_fn_4770675
/__inference_lstm_cell_787_layer_call_fn_4770692?
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770724
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770756?
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
/__inference_lstm_cell_788_layer_call_fn_4770773
/__inference_lstm_cell_788_layer_call_fn_4770790?
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770822
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770854?
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
"__inference__wrapped_model_4765525?-./012345!";?8
1?.
,?)
lstm_621_input?????????
? "5?2
0
	dense_207#? 
	dense_207??????????
F__inference_dense_207_layer_call_and_return_conditional_losses_4770560\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_207_layer_call_fn_4770550O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_621_layer_call_and_return_conditional_losses_4768880?-./O?L
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769023?-./O?L
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769166q-./??<
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
E__inference_lstm_621_layer_call_and_return_conditional_losses_4769309q-./??<
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
*__inference_lstm_621_layer_call_fn_4768704}-./O?L
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
*__inference_lstm_621_layer_call_fn_4768715}-./O?L
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
*__inference_lstm_621_layer_call_fn_4768726d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_621_layer_call_fn_4768737d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769496?012O?L
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769639?012O?L
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769782q012??<
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
E__inference_lstm_622_layer_call_and_return_conditional_losses_4769925q012??<
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
*__inference_lstm_622_layer_call_fn_4769320}012O?L
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
*__inference_lstm_622_layer_call_fn_4769331}012O?L
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
*__inference_lstm_622_layer_call_fn_4769342d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_622_layer_call_fn_4769353d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770112}345O?L
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770255}345O?L
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770398m345??<
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
E__inference_lstm_623_layer_call_and_return_conditional_losses_4770541m345??<
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
*__inference_lstm_623_layer_call_fn_4769936p345O?L
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
*__inference_lstm_623_layer_call_fn_4769947p345O?L
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
*__inference_lstm_623_layer_call_fn_4769958`345??<
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
*__inference_lstm_623_layer_call_fn_4769969`345??<
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770626?-./??}
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
J__inference_lstm_cell_786_layer_call_and_return_conditional_losses_4770658?-./??}
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
/__inference_lstm_cell_786_layer_call_fn_4770577?-./??}
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
/__inference_lstm_cell_786_layer_call_fn_4770594?-./??}
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770724?012??}
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
J__inference_lstm_cell_787_layer_call_and_return_conditional_losses_4770756?012??}
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
/__inference_lstm_cell_787_layer_call_fn_4770675?012??}
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
/__inference_lstm_cell_787_layer_call_fn_4770692?012??}
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770822?345??}
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
J__inference_lstm_cell_788_layer_call_and_return_conditional_losses_4770854?345??}
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
/__inference_lstm_cell_788_layer_call_fn_4770773?345??}
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
/__inference_lstm_cell_788_layer_call_fn_4770790?345??}
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767720y-./012345!"C?@
9?6
,?)
lstm_621_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4767750y-./012345!"C?@
9?6
,?)
lstm_621_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768266q-./012345!";?8
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
K__inference_sequential_207_layer_call_and_return_conditional_losses_4768693q-./012345!";?8
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
0__inference_sequential_207_layer_call_fn_4767074l-./012345!"C?@
9?6
,?)
lstm_621_input?????????
p 

 
? "???????????
0__inference_sequential_207_layer_call_fn_4767690l-./012345!"C?@
9?6
,?)
lstm_621_input?????????
p

 
? "???????????
0__inference_sequential_207_layer_call_fn_4767812d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_207_layer_call_fn_4767839d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4767785?-./012345!"M?J
? 
C?@
>
lstm_621_input,?)
lstm_621_input?????????"5?2
0
	dense_207#? 
	dense_207?????????