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
dense_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_100/kernel
u
$dense_100/kernel/Read/ReadVariableOpReadVariableOpdense_100/kernel*
_output_shapes

:
*
dtype0
t
dense_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_100/bias
m
"dense_100/bias/Read/ReadVariableOpReadVariableOpdense_100/bias*
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
lstm_300/lstm_cell_300/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_300/lstm_cell_300/kernel
?
1lstm_300/lstm_cell_300/kernel/Read/ReadVariableOpReadVariableOplstm_300/lstm_cell_300/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_300/lstm_cell_300/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_300/lstm_cell_300/recurrent_kernel
?
;lstm_300/lstm_cell_300/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_300/lstm_cell_300/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_300/lstm_cell_300/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_300/lstm_cell_300/bias
?
/lstm_300/lstm_cell_300/bias/Read/ReadVariableOpReadVariableOplstm_300/lstm_cell_300/bias*
_output_shapes	
:?*
dtype0
?
lstm_301/lstm_cell_301/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_301/lstm_cell_301/kernel
?
1lstm_301/lstm_cell_301/kernel/Read/ReadVariableOpReadVariableOplstm_301/lstm_cell_301/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_301/lstm_cell_301/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_301/lstm_cell_301/recurrent_kernel
?
;lstm_301/lstm_cell_301/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_301/lstm_cell_301/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_301/lstm_cell_301/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_301/lstm_cell_301/bias
?
/lstm_301/lstm_cell_301/bias/Read/ReadVariableOpReadVariableOplstm_301/lstm_cell_301/bias*
_output_shapes	
:?*
dtype0
?
lstm_302/lstm_cell_302/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_302/lstm_cell_302/kernel
?
1lstm_302/lstm_cell_302/kernel/Read/ReadVariableOpReadVariableOplstm_302/lstm_cell_302/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_302/lstm_cell_302/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_302/lstm_cell_302/recurrent_kernel
?
;lstm_302/lstm_cell_302/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_302/lstm_cell_302/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_302/lstm_cell_302/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_302/lstm_cell_302/bias
?
/lstm_302/lstm_cell_302/bias/Read/ReadVariableOpReadVariableOplstm_302/lstm_cell_302/bias*
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
Adam/dense_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_100/kernel/m
?
+Adam/dense_100/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_100/bias/m
{
)Adam/dense_100/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_300/lstm_cell_300/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_300/lstm_cell_300/kernel/m
?
8Adam/lstm_300/lstm_cell_300/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_300/lstm_cell_300/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_300/lstm_cell_300/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_300/lstm_cell_300/recurrent_kernel/m
?
BAdam/lstm_300/lstm_cell_300/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_300/lstm_cell_300/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_300/lstm_cell_300/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_300/lstm_cell_300/bias/m
?
6Adam/lstm_300/lstm_cell_300/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_300/lstm_cell_300/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_301/lstm_cell_301/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_301/lstm_cell_301/kernel/m
?
8Adam/lstm_301/lstm_cell_301/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_301/lstm_cell_301/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_301/lstm_cell_301/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_301/lstm_cell_301/recurrent_kernel/m
?
BAdam/lstm_301/lstm_cell_301/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_301/lstm_cell_301/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_301/lstm_cell_301/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_301/lstm_cell_301/bias/m
?
6Adam/lstm_301/lstm_cell_301/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_301/lstm_cell_301/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_302/lstm_cell_302/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_302/lstm_cell_302/kernel/m
?
8Adam/lstm_302/lstm_cell_302/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_302/lstm_cell_302/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_302/lstm_cell_302/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_302/lstm_cell_302/recurrent_kernel/m
?
BAdam/lstm_302/lstm_cell_302/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_302/lstm_cell_302/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_302/lstm_cell_302/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_302/lstm_cell_302/bias/m
?
6Adam/lstm_302/lstm_cell_302/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_302/lstm_cell_302/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_100/kernel/v
?
+Adam/dense_100/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_100/bias/v
{
)Adam/dense_100/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_300/lstm_cell_300/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_300/lstm_cell_300/kernel/v
?
8Adam/lstm_300/lstm_cell_300/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_300/lstm_cell_300/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_300/lstm_cell_300/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_300/lstm_cell_300/recurrent_kernel/v
?
BAdam/lstm_300/lstm_cell_300/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_300/lstm_cell_300/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_300/lstm_cell_300/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_300/lstm_cell_300/bias/v
?
6Adam/lstm_300/lstm_cell_300/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_300/lstm_cell_300/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_301/lstm_cell_301/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_301/lstm_cell_301/kernel/v
?
8Adam/lstm_301/lstm_cell_301/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_301/lstm_cell_301/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_301/lstm_cell_301/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_301/lstm_cell_301/recurrent_kernel/v
?
BAdam/lstm_301/lstm_cell_301/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_301/lstm_cell_301/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_301/lstm_cell_301/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_301/lstm_cell_301/bias/v
?
6Adam/lstm_301/lstm_cell_301/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_301/lstm_cell_301/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_302/lstm_cell_302/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_302/lstm_cell_302/kernel/v
?
8Adam/lstm_302/lstm_cell_302/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_302/lstm_cell_302/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_302/lstm_cell_302/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_302/lstm_cell_302/recurrent_kernel/v
?
BAdam/lstm_302/lstm_cell_302/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_302/lstm_cell_302/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_302/lstm_cell_302/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_302/lstm_cell_302/bias/v
?
6Adam/lstm_302/lstm_cell_302/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_302/lstm_cell_302/bias/v*
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
VARIABLE_VALUEdense_100/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_100/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_300/lstm_cell_300/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_300/lstm_cell_300/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_300/lstm_cell_300/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_301/lstm_cell_301/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_301/lstm_cell_301/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_301/lstm_cell_301/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_302/lstm_cell_302/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_302/lstm_cell_302/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_302/lstm_cell_302/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_100/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_300/lstm_cell_300/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_300/lstm_cell_300/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_300/lstm_cell_300/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_301/lstm_cell_301/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_301/lstm_cell_301/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_301/lstm_cell_301/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_302/lstm_cell_302/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_302/lstm_cell_302/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_302/lstm_cell_302/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_100/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_300/lstm_cell_300/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_300/lstm_cell_300/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_300/lstm_cell_300/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_301/lstm_cell_301/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_301/lstm_cell_301/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_301/lstm_cell_301/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_302/lstm_cell_302/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_302/lstm_cell_302/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_302/lstm_cell_302/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_300_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_300_inputlstm_300/lstm_cell_300/kernel'lstm_300/lstm_cell_300/recurrent_kernellstm_300/lstm_cell_300/biaslstm_301/lstm_cell_301/kernel'lstm_301/lstm_cell_301/recurrent_kernellstm_301/lstm_cell_301/biaslstm_302/lstm_cell_302/kernel'lstm_302/lstm_cell_302/recurrent_kernellstm_302/lstm_cell_302/biasdense_100/kerneldense_100/bias*
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
%__inference_signature_wrapper_1538897
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_100/kernel/Read/ReadVariableOp"dense_100/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_300/lstm_cell_300/kernel/Read/ReadVariableOp;lstm_300/lstm_cell_300/recurrent_kernel/Read/ReadVariableOp/lstm_300/lstm_cell_300/bias/Read/ReadVariableOp1lstm_301/lstm_cell_301/kernel/Read/ReadVariableOp;lstm_301/lstm_cell_301/recurrent_kernel/Read/ReadVariableOp/lstm_301/lstm_cell_301/bias/Read/ReadVariableOp1lstm_302/lstm_cell_302/kernel/Read/ReadVariableOp;lstm_302/lstm_cell_302/recurrent_kernel/Read/ReadVariableOp/lstm_302/lstm_cell_302/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_100/kernel/m/Read/ReadVariableOp)Adam/dense_100/bias/m/Read/ReadVariableOp8Adam/lstm_300/lstm_cell_300/kernel/m/Read/ReadVariableOpBAdam/lstm_300/lstm_cell_300/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_300/lstm_cell_300/bias/m/Read/ReadVariableOp8Adam/lstm_301/lstm_cell_301/kernel/m/Read/ReadVariableOpBAdam/lstm_301/lstm_cell_301/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_301/lstm_cell_301/bias/m/Read/ReadVariableOp8Adam/lstm_302/lstm_cell_302/kernel/m/Read/ReadVariableOpBAdam/lstm_302/lstm_cell_302/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_302/lstm_cell_302/bias/m/Read/ReadVariableOp+Adam/dense_100/kernel/v/Read/ReadVariableOp)Adam/dense_100/bias/v/Read/ReadVariableOp8Adam/lstm_300/lstm_cell_300/kernel/v/Read/ReadVariableOpBAdam/lstm_300/lstm_cell_300/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_300/lstm_cell_300/bias/v/Read/ReadVariableOp8Adam/lstm_301/lstm_cell_301/kernel/v/Read/ReadVariableOpBAdam/lstm_301/lstm_cell_301/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_301/lstm_cell_301/bias/v/Read/ReadVariableOp8Adam/lstm_302/lstm_cell_302/kernel/v/Read/ReadVariableOpBAdam/lstm_302/lstm_cell_302/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_302/lstm_cell_302/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1542109
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_100/kerneldense_100/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_300/lstm_cell_300/kernel'lstm_300/lstm_cell_300/recurrent_kernellstm_300/lstm_cell_300/biaslstm_301/lstm_cell_301/kernel'lstm_301/lstm_cell_301/recurrent_kernellstm_301/lstm_cell_301/biaslstm_302/lstm_cell_302/kernel'lstm_302/lstm_cell_302/recurrent_kernellstm_302/lstm_cell_302/biastotalcountAdam/dense_100/kernel/mAdam/dense_100/bias/m$Adam/lstm_300/lstm_cell_300/kernel/m.Adam/lstm_300/lstm_cell_300/recurrent_kernel/m"Adam/lstm_300/lstm_cell_300/bias/m$Adam/lstm_301/lstm_cell_301/kernel/m.Adam/lstm_301/lstm_cell_301/recurrent_kernel/m"Adam/lstm_301/lstm_cell_301/bias/m$Adam/lstm_302/lstm_cell_302/kernel/m.Adam/lstm_302/lstm_cell_302/recurrent_kernel/m"Adam/lstm_302/lstm_cell_302/bias/mAdam/dense_100/kernel/vAdam/dense_100/bias/v$Adam/lstm_300/lstm_cell_300/kernel/v.Adam/lstm_300/lstm_cell_300/recurrent_kernel/v"Adam/lstm_300/lstm_cell_300/bias/v$Adam/lstm_301/lstm_cell_301/kernel/v.Adam/lstm_301/lstm_cell_301/recurrent_kernel/v"Adam/lstm_301/lstm_cell_301/bias/v$Adam/lstm_302/lstm_cell_302/kernel/v.Adam/lstm_302/lstm_cell_302/recurrent_kernel/v"Adam/lstm_302/lstm_cell_302/bias/v*4
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
#__inference__traced_restore_1542239??+
?
?
+__inference_dense_100_layer_call_fn_1541662

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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154o
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
*__inference_lstm_300_layer_call_fn_1539827
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1536978|
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537328

inputs(
lstm_cell_253_1537246:	d?(
lstm_cell_253_1537248:	2?$
lstm_cell_253_1537250:	?
identity??%lstm_cell_253/StatefulPartitionedCall?while;
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
%lstm_cell_253/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_253_1537246lstm_cell_253_1537248lstm_cell_253_1537250*
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537200n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_253_1537246lstm_cell_253_1537248lstm_cell_253_1537250*
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
while_body_1537259*
condR
while_cond_1537258*K
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
NoOpNoOp&^lstm_cell_253/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_253/StatefulPartitionedCall%lstm_cell_253/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_1537418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_254_1537442_0:2(/
while_lstm_cell_254_1537444_0:
(+
while_lstm_cell_254_1537446_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_254_1537442:2(-
while_lstm_cell_254_1537444:
()
while_lstm_cell_254_1537446:(??+while/lstm_cell_254/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_254/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_254_1537442_0while_lstm_cell_254_1537444_0while_lstm_cell_254_1537446_0*
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537404?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_254/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_254/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_254/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_254_1537442while_lstm_cell_254_1537442_0"<
while_lstm_cell_254_1537444while_lstm_cell_254_1537444_0"<
while_lstm_cell_254_1537446while_lstm_cell_254_1537446_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_254/StatefulPartitionedCall+while/lstm_cell_254/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1541139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1541139___redundant_placeholder05
1while_while_cond_1541139___redundant_placeholder15
1while_while_cond_1541139___redundant_placeholder25
1while_while_cond_1541139___redundant_placeholder3
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540135
inputs_0?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1540051*
condR
while_cond_1540050*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_1542239
file_prefix3
!assignvariableop_dense_100_kernel:
/
!assignvariableop_1_dense_100_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_300_lstm_cell_300_kernel:	?M
:assignvariableop_8_lstm_300_lstm_cell_300_recurrent_kernel:	d?=
.assignvariableop_9_lstm_300_lstm_cell_300_bias:	?D
1assignvariableop_10_lstm_301_lstm_cell_301_kernel:	d?N
;assignvariableop_11_lstm_301_lstm_cell_301_recurrent_kernel:	2?>
/assignvariableop_12_lstm_301_lstm_cell_301_bias:	?C
1assignvariableop_13_lstm_302_lstm_cell_302_kernel:2(M
;assignvariableop_14_lstm_302_lstm_cell_302_recurrent_kernel:
(=
/assignvariableop_15_lstm_302_lstm_cell_302_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_100_kernel_m:
7
)assignvariableop_19_adam_dense_100_bias_m:K
8assignvariableop_20_adam_lstm_300_lstm_cell_300_kernel_m:	?U
Bassignvariableop_21_adam_lstm_300_lstm_cell_300_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_300_lstm_cell_300_bias_m:	?K
8assignvariableop_23_adam_lstm_301_lstm_cell_301_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_301_lstm_cell_301_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_301_lstm_cell_301_bias_m:	?J
8assignvariableop_26_adam_lstm_302_lstm_cell_302_kernel_m:2(T
Bassignvariableop_27_adam_lstm_302_lstm_cell_302_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_302_lstm_cell_302_bias_m:(=
+assignvariableop_29_adam_dense_100_kernel_v:
7
)assignvariableop_30_adam_dense_100_bias_v:K
8assignvariableop_31_adam_lstm_300_lstm_cell_300_kernel_v:	?U
Bassignvariableop_32_adam_lstm_300_lstm_cell_300_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_300_lstm_cell_300_bias_v:	?K
8assignvariableop_34_adam_lstm_301_lstm_cell_301_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_301_lstm_cell_301_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_301_lstm_cell_301_bias_v:	?J
8assignvariableop_37_adam_lstm_302_lstm_cell_302_kernel_v:2(T
Bassignvariableop_38_adam_lstm_302_lstm_cell_302_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_302_lstm_cell_302_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_100_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_100_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_300_lstm_cell_300_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_300_lstm_cell_300_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_300_lstm_cell_300_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_301_lstm_cell_301_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_301_lstm_cell_301_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_301_lstm_cell_301_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_302_lstm_cell_302_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_302_lstm_cell_302_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_302_lstm_cell_302_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_100_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_100_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_300_lstm_cell_300_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_300_lstm_cell_300_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_300_lstm_cell_300_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_301_lstm_cell_301_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_301_lstm_cell_301_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_301_lstm_cell_301_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_302_lstm_cell_302_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_302_lstm_cell_302_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_302_lstm_cell_302_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_100_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_100_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_300_lstm_cell_300_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_300_lstm_cell_300_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_300_lstm_cell_300_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_301_lstm_cell_301_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_301_lstm_cell_301_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_301_lstm_cell_301_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_302_lstm_cell_302_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_302_lstm_cell_302_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_302_lstm_cell_302_bias_vIdentity_39:output:0"/device:CPU:0*
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
0__inference_sequential_100_layer_call_fn_1538186
lstm_300_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_300_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538161o
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
_user_specified_namelstm_300_input
?
?
while_cond_1540809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540809___redundant_placeholder05
1while_while_cond_1540809___redundant_placeholder15
1while_while_cond_1540809___redundant_placeholder25
1while_while_cond_1540809___redundant_placeholder3
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
while_body_1538598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_301_layer_call_fn_1540443
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537328|
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
0__inference_sequential_100_layer_call_fn_1538802
lstm_300_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_300_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538750o
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
_user_specified_namelstm_300_input
?
?
/__inference_lstm_cell_252_layer_call_fn_1541689

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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536704o
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
?
*sequential_100_lstm_300_while_cond_1536268L
Hsequential_100_lstm_300_while_sequential_100_lstm_300_while_loop_counterR
Nsequential_100_lstm_300_while_sequential_100_lstm_300_while_maximum_iterations-
)sequential_100_lstm_300_while_placeholder/
+sequential_100_lstm_300_while_placeholder_1/
+sequential_100_lstm_300_while_placeholder_2/
+sequential_100_lstm_300_while_placeholder_3N
Jsequential_100_lstm_300_while_less_sequential_100_lstm_300_strided_slice_1e
asequential_100_lstm_300_while_sequential_100_lstm_300_while_cond_1536268___redundant_placeholder0e
asequential_100_lstm_300_while_sequential_100_lstm_300_while_cond_1536268___redundant_placeholder1e
asequential_100_lstm_300_while_sequential_100_lstm_300_while_cond_1536268___redundant_placeholder2e
asequential_100_lstm_300_while_sequential_100_lstm_300_while_cond_1536268___redundant_placeholder3*
&sequential_100_lstm_300_while_identity
?
"sequential_100/lstm_300/while/LessLess)sequential_100_lstm_300_while_placeholderJsequential_100_lstm_300_while_less_sequential_100_lstm_300_strided_slice_1*
T0*
_output_shapes
: {
&sequential_100/lstm_300/while/IdentityIdentity&sequential_100/lstm_300/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_100_lstm_300_while_identity/sequential_100/lstm_300/while/Identity:output:0*(
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

lstm_300_while_body_1539437.
*lstm_300_while_lstm_300_while_loop_counter4
0lstm_300_while_lstm_300_while_maximum_iterations
lstm_300_while_placeholder 
lstm_300_while_placeholder_1 
lstm_300_while_placeholder_2 
lstm_300_while_placeholder_3-
)lstm_300_while_lstm_300_strided_slice_1_0i
elstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0:	?R
?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?M
>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
lstm_300_while_identity
lstm_300_while_identity_1
lstm_300_while_identity_2
lstm_300_while_identity_3
lstm_300_while_identity_4
lstm_300_while_identity_5+
'lstm_300_while_lstm_300_strided_slice_1g
clstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensorN
;lstm_300_while_lstm_cell_252_matmul_readvariableop_resource:	?P
=lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource:	d?K
<lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource:	???3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp?2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp?4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp?
@lstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_300/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0lstm_300_while_placeholderIlstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_300/while/lstm_cell_252/MatMulMatMul9lstm_300/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_300/while/lstm_cell_252/MatMul_1MatMullstm_300_while_placeholder_2<lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_300/while/lstm_cell_252/addAddV2-lstm_300/while/lstm_cell_252/MatMul:product:0/lstm_300/while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_300/while/lstm_cell_252/BiasAddBiasAdd$lstm_300/while/lstm_cell_252/add:z:0;lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_300/while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_300/while/lstm_cell_252/splitSplit5lstm_300/while/lstm_cell_252/split/split_dim:output:0-lstm_300/while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_300/while/lstm_cell_252/SigmoidSigmoid+lstm_300/while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_300/while/lstm_cell_252/Sigmoid_1Sigmoid+lstm_300/while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_300/while/lstm_cell_252/mulMul*lstm_300/while/lstm_cell_252/Sigmoid_1:y:0lstm_300_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_300/while/lstm_cell_252/ReluRelu+lstm_300/while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/mul_1Mul(lstm_300/while/lstm_cell_252/Sigmoid:y:0/lstm_300/while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/add_1AddV2$lstm_300/while/lstm_cell_252/mul:z:0&lstm_300/while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_300/while/lstm_cell_252/Sigmoid_2Sigmoid+lstm_300/while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_300/while/lstm_cell_252/Relu_1Relu&lstm_300/while/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/mul_2Mul*lstm_300/while/lstm_cell_252/Sigmoid_2:y:01lstm_300/while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_300/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_300_while_placeholder_1lstm_300_while_placeholder&lstm_300/while/lstm_cell_252/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_300/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_300/while/addAddV2lstm_300_while_placeholderlstm_300/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_300/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_300/while/add_1AddV2*lstm_300_while_lstm_300_while_loop_counterlstm_300/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_300/while/IdentityIdentitylstm_300/while/add_1:z:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_1Identity0lstm_300_while_lstm_300_while_maximum_iterations^lstm_300/while/NoOp*
T0*
_output_shapes
: t
lstm_300/while/Identity_2Identitylstm_300/while/add:z:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_3IdentityClstm_300/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_4Identity&lstm_300/while/lstm_cell_252/mul_2:z:0^lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_300/while/Identity_5Identity&lstm_300/while/lstm_cell_252/add_1:z:0^lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_300/while/NoOpNoOp4^lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp3^lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp5^lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_300_while_identity lstm_300/while/Identity:output:0"?
lstm_300_while_identity_1"lstm_300/while/Identity_1:output:0"?
lstm_300_while_identity_2"lstm_300/while/Identity_2:output:0"?
lstm_300_while_identity_3"lstm_300/while/Identity_3:output:0"?
lstm_300_while_identity_4"lstm_300/while/Identity_4:output:0"?
lstm_300_while_identity_5"lstm_300/while/Identity_5:output:0"T
'lstm_300_while_lstm_300_strided_slice_1)lstm_300_while_lstm_300_strided_slice_1_0"~
<lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0"?
=lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0"|
;lstm_300_while_lstm_cell_252_matmul_readvariableop_resource=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0"?
clstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensorelstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp2h
2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp2l
4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1538052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537200

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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540278

inputs?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1540194*
condR
while_cond_1540193*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_302_while_cond_1539714.
*lstm_302_while_lstm_302_while_loop_counter4
0lstm_302_while_lstm_302_while_maximum_iterations
lstm_302_while_placeholder 
lstm_302_while_placeholder_1 
lstm_302_while_placeholder_2 
lstm_302_while_placeholder_30
,lstm_302_while_less_lstm_302_strided_slice_1G
Clstm_302_while_lstm_302_while_cond_1539714___redundant_placeholder0G
Clstm_302_while_lstm_302_while_cond_1539714___redundant_placeholder1G
Clstm_302_while_lstm_302_while_cond_1539714___redundant_placeholder2G
Clstm_302_while_lstm_302_while_cond_1539714___redundant_placeholder3
lstm_302_while_identity
?
lstm_302/while/LessLesslstm_302_while_placeholder,lstm_302_while_less_lstm_302_strided_slice_1*
T0*
_output_shapes
: ]
lstm_302/while/IdentityIdentitylstm_302/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_302_while_identity lstm_302/while/Identity:output:0*(
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1537487

inputs'
lstm_cell_254_1537405:2('
lstm_cell_254_1537407:
(#
lstm_cell_254_1537409:(
identity??%lstm_cell_254/StatefulPartitionedCall?while;
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
%lstm_cell_254/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_254_1537405lstm_cell_254_1537407lstm_cell_254_1537409*
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537404n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_254_1537405lstm_cell_254_1537407lstm_cell_254_1537409*
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
while_body_1537418*
condR
while_cond_1537417*K
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
NoOpNoOp&^lstm_cell_254/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_254/StatefulPartitionedCall%lstm_cell_254/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_300_layer_call_fn_1539816
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1536787|
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
while_cond_1536717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1536717___redundant_placeholder05
1while_while_cond_1536717___redundant_placeholder15
1while_while_cond_1536717___redundant_placeholder25
1while_while_cond_1536717___redundant_placeholder3
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
while_body_1540051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154

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
?
E__inference_lstm_300_layer_call_and_return_conditional_losses_1536978

inputs(
lstm_cell_252_1536896:	?(
lstm_cell_252_1536898:	d?$
lstm_cell_252_1536900:	?
identity??%lstm_cell_252/StatefulPartitionedCall?while;
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
%lstm_cell_252/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_252_1536896lstm_cell_252_1536898lstm_cell_252_1536900*
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536850n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_252_1536896lstm_cell_252_1536898lstm_cell_252_1536900*
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
while_body_1536909*
condR
while_cond_1536908*K
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
NoOpNoOp&^lstm_cell_252/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_252/StatefulPartitionedCall%lstm_cell_252/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537550

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
?K
?
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540608
inputs_0?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1540524*
condR
while_cond_1540523*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1538433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541934

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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541738

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

lstm_300_while_body_1539010.
*lstm_300_while_lstm_300_while_loop_counter4
0lstm_300_while_lstm_300_while_maximum_iterations
lstm_300_while_placeholder 
lstm_300_while_placeholder_1 
lstm_300_while_placeholder_2 
lstm_300_while_placeholder_3-
)lstm_300_while_lstm_300_strided_slice_1_0i
elstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0:	?R
?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?M
>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
lstm_300_while_identity
lstm_300_while_identity_1
lstm_300_while_identity_2
lstm_300_while_identity_3
lstm_300_while_identity_4
lstm_300_while_identity_5+
'lstm_300_while_lstm_300_strided_slice_1g
clstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensorN
;lstm_300_while_lstm_cell_252_matmul_readvariableop_resource:	?P
=lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource:	d?K
<lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource:	???3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp?2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp?4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp?
@lstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_300/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0lstm_300_while_placeholderIlstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_300/while/lstm_cell_252/MatMulMatMul9lstm_300/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_300/while/lstm_cell_252/MatMul_1MatMullstm_300_while_placeholder_2<lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_300/while/lstm_cell_252/addAddV2-lstm_300/while/lstm_cell_252/MatMul:product:0/lstm_300/while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_300/while/lstm_cell_252/BiasAddBiasAdd$lstm_300/while/lstm_cell_252/add:z:0;lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_300/while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_300/while/lstm_cell_252/splitSplit5lstm_300/while/lstm_cell_252/split/split_dim:output:0-lstm_300/while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_300/while/lstm_cell_252/SigmoidSigmoid+lstm_300/while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_300/while/lstm_cell_252/Sigmoid_1Sigmoid+lstm_300/while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_300/while/lstm_cell_252/mulMul*lstm_300/while/lstm_cell_252/Sigmoid_1:y:0lstm_300_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_300/while/lstm_cell_252/ReluRelu+lstm_300/while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/mul_1Mul(lstm_300/while/lstm_cell_252/Sigmoid:y:0/lstm_300/while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/add_1AddV2$lstm_300/while/lstm_cell_252/mul:z:0&lstm_300/while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_300/while/lstm_cell_252/Sigmoid_2Sigmoid+lstm_300/while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_300/while/lstm_cell_252/Relu_1Relu&lstm_300/while/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_300/while/lstm_cell_252/mul_2Mul*lstm_300/while/lstm_cell_252/Sigmoid_2:y:01lstm_300/while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_300/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_300_while_placeholder_1lstm_300_while_placeholder&lstm_300/while/lstm_cell_252/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_300/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_300/while/addAddV2lstm_300_while_placeholderlstm_300/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_300/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_300/while/add_1AddV2*lstm_300_while_lstm_300_while_loop_counterlstm_300/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_300/while/IdentityIdentitylstm_300/while/add_1:z:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_1Identity0lstm_300_while_lstm_300_while_maximum_iterations^lstm_300/while/NoOp*
T0*
_output_shapes
: t
lstm_300/while/Identity_2Identitylstm_300/while/add:z:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_3IdentityClstm_300/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_300/while/NoOp*
T0*
_output_shapes
: ?
lstm_300/while/Identity_4Identity&lstm_300/while/lstm_cell_252/mul_2:z:0^lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_300/while/Identity_5Identity&lstm_300/while/lstm_cell_252/add_1:z:0^lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_300/while/NoOpNoOp4^lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp3^lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp5^lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_300_while_identity lstm_300/while/Identity:output:0"?
lstm_300_while_identity_1"lstm_300/while/Identity_1:output:0"?
lstm_300_while_identity_2"lstm_300/while/Identity_2:output:0"?
lstm_300_while_identity_3"lstm_300/while/Identity_3:output:0"?
lstm_300_while_identity_4"lstm_300/while/Identity_4:output:0"?
lstm_300_while_identity_5"lstm_300/while/Identity_5:output:0"T
'lstm_300_while_lstm_300_strided_slice_1)lstm_300_while_lstm_300_strided_slice_1_0"~
<lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource>lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0"?
=lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource?lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0"|
;lstm_300_while_lstm_cell_252_matmul_readvariableop_resource=lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0"?
clstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensorelstm_300_while_tensorarrayv2read_tensorlistgetitem_lstm_300_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp3lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp2h
2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp2lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp2l
4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp4lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_100_layer_call_fn_1538924

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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538161o
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
while_cond_1541568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1541568___redundant_placeholder05
1while_while_cond_1541568___redundant_placeholder15
1while_while_cond_1541568___redundant_placeholder25
1while_while_cond_1541568___redundant_placeholder3
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
?T
?
*sequential_100_lstm_301_while_body_1536408L
Hsequential_100_lstm_301_while_sequential_100_lstm_301_while_loop_counterR
Nsequential_100_lstm_301_while_sequential_100_lstm_301_while_maximum_iterations-
)sequential_100_lstm_301_while_placeholder/
+sequential_100_lstm_301_while_placeholder_1/
+sequential_100_lstm_301_while_placeholder_2/
+sequential_100_lstm_301_while_placeholder_3K
Gsequential_100_lstm_301_while_sequential_100_lstm_301_strided_slice_1_0?
?sequential_100_lstm_301_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_301_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_100_lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0:	d?a
Nsequential_100_lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?\
Msequential_100_lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0:	?*
&sequential_100_lstm_301_while_identity,
(sequential_100_lstm_301_while_identity_1,
(sequential_100_lstm_301_while_identity_2,
(sequential_100_lstm_301_while_identity_3,
(sequential_100_lstm_301_while_identity_4,
(sequential_100_lstm_301_while_identity_5I
Esequential_100_lstm_301_while_sequential_100_lstm_301_strided_slice_1?
?sequential_100_lstm_301_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_301_tensorarrayunstack_tensorlistfromtensor]
Jsequential_100_lstm_301_while_lstm_cell_253_matmul_readvariableop_resource:	d?_
Lsequential_100_lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource:	2?Z
Ksequential_100_lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource:	???Bsequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp?Asequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp?Csequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp?
Osequential_100/lstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_100/lstm_301/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_100_lstm_301_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_301_tensorarrayunstack_tensorlistfromtensor_0)sequential_100_lstm_301_while_placeholderXsequential_100/lstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOpLsequential_100_lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_100/lstm_301/while/lstm_cell_253/MatMulMatMulHsequential_100/lstm_301/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOpNsequential_100_lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_100/lstm_301/while/lstm_cell_253/MatMul_1MatMul+sequential_100_lstm_301_while_placeholder_2Ksequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_100/lstm_301/while/lstm_cell_253/addAddV2<sequential_100/lstm_301/while/lstm_cell_253/MatMul:product:0>sequential_100/lstm_301/while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOpMsequential_100_lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_100/lstm_301/while/lstm_cell_253/BiasAddBiasAdd3sequential_100/lstm_301/while/lstm_cell_253/add:z:0Jsequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_100/lstm_301/while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_100/lstm_301/while/lstm_cell_253/splitSplitDsequential_100/lstm_301/while/lstm_cell_253/split/split_dim:output:0<sequential_100/lstm_301/while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_100/lstm_301/while/lstm_cell_253/SigmoidSigmoid:sequential_100/lstm_301/while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_100/lstm_301/while/lstm_cell_253/Sigmoid_1Sigmoid:sequential_100/lstm_301/while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_100/lstm_301/while/lstm_cell_253/mulMul9sequential_100/lstm_301/while/lstm_cell_253/Sigmoid_1:y:0+sequential_100_lstm_301_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_100/lstm_301/while/lstm_cell_253/ReluRelu:sequential_100/lstm_301/while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_100/lstm_301/while/lstm_cell_253/mul_1Mul7sequential_100/lstm_301/while/lstm_cell_253/Sigmoid:y:0>sequential_100/lstm_301/while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_100/lstm_301/while/lstm_cell_253/add_1AddV23sequential_100/lstm_301/while/lstm_cell_253/mul:z:05sequential_100/lstm_301/while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_100/lstm_301/while/lstm_cell_253/Sigmoid_2Sigmoid:sequential_100/lstm_301/while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_100/lstm_301/while/lstm_cell_253/Relu_1Relu5sequential_100/lstm_301/while/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_100/lstm_301/while/lstm_cell_253/mul_2Mul9sequential_100/lstm_301/while/lstm_cell_253/Sigmoid_2:y:0@sequential_100/lstm_301/while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_100/lstm_301/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_100_lstm_301_while_placeholder_1)sequential_100_lstm_301_while_placeholder5sequential_100/lstm_301/while/lstm_cell_253/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_100/lstm_301/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_100/lstm_301/while/addAddV2)sequential_100_lstm_301_while_placeholder,sequential_100/lstm_301/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_100/lstm_301/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_100/lstm_301/while/add_1AddV2Hsequential_100_lstm_301_while_sequential_100_lstm_301_while_loop_counter.sequential_100/lstm_301/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_100/lstm_301/while/IdentityIdentity'sequential_100/lstm_301/while/add_1:z:0#^sequential_100/lstm_301/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_301/while/Identity_1IdentityNsequential_100_lstm_301_while_sequential_100_lstm_301_while_maximum_iterations#^sequential_100/lstm_301/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_301/while/Identity_2Identity%sequential_100/lstm_301/while/add:z:0#^sequential_100/lstm_301/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_301/while/Identity_3IdentityRsequential_100/lstm_301/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_100/lstm_301/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_301/while/Identity_4Identity5sequential_100/lstm_301/while/lstm_cell_253/mul_2:z:0#^sequential_100/lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_100/lstm_301/while/Identity_5Identity5sequential_100/lstm_301/while/lstm_cell_253/add_1:z:0#^sequential_100/lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_100/lstm_301/while/NoOpNoOpC^sequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOpB^sequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOpD^sequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_100_lstm_301_while_identity/sequential_100/lstm_301/while/Identity:output:0"]
(sequential_100_lstm_301_while_identity_11sequential_100/lstm_301/while/Identity_1:output:0"]
(sequential_100_lstm_301_while_identity_21sequential_100/lstm_301/while/Identity_2:output:0"]
(sequential_100_lstm_301_while_identity_31sequential_100/lstm_301/while/Identity_3:output:0"]
(sequential_100_lstm_301_while_identity_41sequential_100/lstm_301/while/Identity_4:output:0"]
(sequential_100_lstm_301_while_identity_51sequential_100/lstm_301/while/Identity_5:output:0"?
Ksequential_100_lstm_301_while_lstm_cell_253_biasadd_readvariableop_resourceMsequential_100_lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0"?
Lsequential_100_lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resourceNsequential_100_lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0"?
Jsequential_100_lstm_301_while_lstm_cell_253_matmul_readvariableop_resourceLsequential_100_lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0"?
Esequential_100_lstm_301_while_sequential_100_lstm_301_strided_slice_1Gsequential_100_lstm_301_while_sequential_100_lstm_301_strided_slice_1_0"?
?sequential_100_lstm_301_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_301_tensorarrayunstack_tensorlistfromtensor?sequential_100_lstm_301_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_301_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOpBsequential_100/lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp2?
Asequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOpAsequential_100/lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp2?
Csequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOpCsequential_100/lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1537678

inputs'
lstm_cell_254_1537596:2('
lstm_cell_254_1537598:
(#
lstm_cell_254_1537600:(
identity??%lstm_cell_254/StatefulPartitionedCall?while;
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
%lstm_cell_254/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_254_1537596lstm_cell_254_1537598lstm_cell_254_1537600*
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537550n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_254_1537596lstm_cell_254_1537598lstm_cell_254_1537600*
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
while_body_1537609*
condR
while_cond_1537608*K
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
NoOpNoOp&^lstm_cell_254/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_254/StatefulPartitionedCall%lstm_cell_254/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_302_while_body_1539288.
*lstm_302_while_lstm_302_while_loop_counter4
0lstm_302_while_lstm_302_while_maximum_iterations
lstm_302_while_placeholder 
lstm_302_while_placeholder_1 
lstm_302_while_placeholder_2 
lstm_302_while_placeholder_3-
)lstm_302_while_lstm_302_strided_slice_1_0i
elstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0:2(Q
?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(L
>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0:(
lstm_302_while_identity
lstm_302_while_identity_1
lstm_302_while_identity_2
lstm_302_while_identity_3
lstm_302_while_identity_4
lstm_302_while_identity_5+
'lstm_302_while_lstm_302_strided_slice_1g
clstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensorM
;lstm_302_while_lstm_cell_254_matmul_readvariableop_resource:2(O
=lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource:
(J
<lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource:(??3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp?2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp?4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp?
@lstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_302/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0lstm_302_while_placeholderIlstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_302/while/lstm_cell_254/MatMulMatMul9lstm_302/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_302/while/lstm_cell_254/MatMul_1MatMullstm_302_while_placeholder_2<lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_302/while/lstm_cell_254/addAddV2-lstm_302/while/lstm_cell_254/MatMul:product:0/lstm_302/while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_302/while/lstm_cell_254/BiasAddBiasAdd$lstm_302/while/lstm_cell_254/add:z:0;lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_302/while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_302/while/lstm_cell_254/splitSplit5lstm_302/while/lstm_cell_254/split/split_dim:output:0-lstm_302/while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_302/while/lstm_cell_254/SigmoidSigmoid+lstm_302/while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_302/while/lstm_cell_254/Sigmoid_1Sigmoid+lstm_302/while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_302/while/lstm_cell_254/mulMul*lstm_302/while/lstm_cell_254/Sigmoid_1:y:0lstm_302_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_302/while/lstm_cell_254/ReluRelu+lstm_302/while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/mul_1Mul(lstm_302/while/lstm_cell_254/Sigmoid:y:0/lstm_302/while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/add_1AddV2$lstm_302/while/lstm_cell_254/mul:z:0&lstm_302/while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_302/while/lstm_cell_254/Sigmoid_2Sigmoid+lstm_302/while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_302/while/lstm_cell_254/Relu_1Relu&lstm_302/while/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/mul_2Mul*lstm_302/while/lstm_cell_254/Sigmoid_2:y:01lstm_302/while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_302/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_302_while_placeholder_1lstm_302_while_placeholder&lstm_302/while/lstm_cell_254/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_302/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_302/while/addAddV2lstm_302_while_placeholderlstm_302/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_302/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_302/while/add_1AddV2*lstm_302_while_lstm_302_while_loop_counterlstm_302/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_302/while/IdentityIdentitylstm_302/while/add_1:z:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_1Identity0lstm_302_while_lstm_302_while_maximum_iterations^lstm_302/while/NoOp*
T0*
_output_shapes
: t
lstm_302/while/Identity_2Identitylstm_302/while/add:z:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_3IdentityClstm_302/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_4Identity&lstm_302/while/lstm_cell_254/mul_2:z:0^lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_302/while/Identity_5Identity&lstm_302/while/lstm_cell_254/add_1:z:0^lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_302/while/NoOpNoOp4^lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp3^lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp5^lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_302_while_identity lstm_302/while/Identity:output:0"?
lstm_302_while_identity_1"lstm_302/while/Identity_1:output:0"?
lstm_302_while_identity_2"lstm_302/while/Identity_2:output:0"?
lstm_302_while_identity_3"lstm_302/while/Identity_3:output:0"?
lstm_302_while_identity_4"lstm_302/while/Identity_4:output:0"?
lstm_302_while_identity_5"lstm_302/while/Identity_5:output:0"T
'lstm_302_while_lstm_302_strided_slice_1)lstm_302_while_lstm_302_strided_slice_1_0"~
<lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0"?
=lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0"|
;lstm_302_while_lstm_cell_254_matmul_readvariableop_resource=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0"?
clstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensorelstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp2h
2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp2l
4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1537901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537901___redundant_placeholder05
1while_while_cond_1537901___redundant_placeholder15
1while_while_cond_1537901___redundant_placeholder25
1while_while_cond_1537901___redundant_placeholder3
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
?W
?
 __inference__traced_save_1542109
file_prefix/
+savev2_dense_100_kernel_read_readvariableop-
)savev2_dense_100_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_300_lstm_cell_300_kernel_read_readvariableopF
Bsavev2_lstm_300_lstm_cell_300_recurrent_kernel_read_readvariableop:
6savev2_lstm_300_lstm_cell_300_bias_read_readvariableop<
8savev2_lstm_301_lstm_cell_301_kernel_read_readvariableopF
Bsavev2_lstm_301_lstm_cell_301_recurrent_kernel_read_readvariableop:
6savev2_lstm_301_lstm_cell_301_bias_read_readvariableop<
8savev2_lstm_302_lstm_cell_302_kernel_read_readvariableopF
Bsavev2_lstm_302_lstm_cell_302_recurrent_kernel_read_readvariableop:
6savev2_lstm_302_lstm_cell_302_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_100_kernel_m_read_readvariableop4
0savev2_adam_dense_100_bias_m_read_readvariableopC
?savev2_adam_lstm_300_lstm_cell_300_kernel_m_read_readvariableopM
Isavev2_adam_lstm_300_lstm_cell_300_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_300_lstm_cell_300_bias_m_read_readvariableopC
?savev2_adam_lstm_301_lstm_cell_301_kernel_m_read_readvariableopM
Isavev2_adam_lstm_301_lstm_cell_301_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_301_lstm_cell_301_bias_m_read_readvariableopC
?savev2_adam_lstm_302_lstm_cell_302_kernel_m_read_readvariableopM
Isavev2_adam_lstm_302_lstm_cell_302_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_302_lstm_cell_302_bias_m_read_readvariableop6
2savev2_adam_dense_100_kernel_v_read_readvariableop4
0savev2_adam_dense_100_bias_v_read_readvariableopC
?savev2_adam_lstm_300_lstm_cell_300_kernel_v_read_readvariableopM
Isavev2_adam_lstm_300_lstm_cell_300_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_300_lstm_cell_300_bias_v_read_readvariableopC
?savev2_adam_lstm_301_lstm_cell_301_kernel_v_read_readvariableopM
Isavev2_adam_lstm_301_lstm_cell_301_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_301_lstm_cell_301_bias_v_read_readvariableopC
?savev2_adam_lstm_302_lstm_cell_302_kernel_v_read_readvariableopM
Isavev2_adam_lstm_302_lstm_cell_302_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_302_lstm_cell_302_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_100_kernel_read_readvariableop)savev2_dense_100_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_300_lstm_cell_300_kernel_read_readvariableopBsavev2_lstm_300_lstm_cell_300_recurrent_kernel_read_readvariableop6savev2_lstm_300_lstm_cell_300_bias_read_readvariableop8savev2_lstm_301_lstm_cell_301_kernel_read_readvariableopBsavev2_lstm_301_lstm_cell_301_recurrent_kernel_read_readvariableop6savev2_lstm_301_lstm_cell_301_bias_read_readvariableop8savev2_lstm_302_lstm_cell_302_kernel_read_readvariableopBsavev2_lstm_302_lstm_cell_302_recurrent_kernel_read_readvariableop6savev2_lstm_302_lstm_cell_302_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_100_kernel_m_read_readvariableop0savev2_adam_dense_100_bias_m_read_readvariableop?savev2_adam_lstm_300_lstm_cell_300_kernel_m_read_readvariableopIsavev2_adam_lstm_300_lstm_cell_300_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_300_lstm_cell_300_bias_m_read_readvariableop?savev2_adam_lstm_301_lstm_cell_301_kernel_m_read_readvariableopIsavev2_adam_lstm_301_lstm_cell_301_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_301_lstm_cell_301_bias_m_read_readvariableop?savev2_adam_lstm_302_lstm_cell_302_kernel_m_read_readvariableopIsavev2_adam_lstm_302_lstm_cell_302_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_302_lstm_cell_302_bias_m_read_readvariableop2savev2_adam_dense_100_kernel_v_read_readvariableop0savev2_adam_dense_100_bias_v_read_readvariableop?savev2_adam_lstm_300_lstm_cell_300_kernel_v_read_readvariableopIsavev2_adam_lstm_300_lstm_cell_300_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_300_lstm_cell_300_bias_v_read_readvariableop?savev2_adam_lstm_301_lstm_cell_301_kernel_v_read_readvariableopIsavev2_adam_lstm_301_lstm_cell_301_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_301_lstm_cell_301_bias_v_read_readvariableop?savev2_adam_lstm_302_lstm_cell_302_kernel_v_read_readvariableopIsavev2_adam_lstm_302_lstm_cell_302_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_302_lstm_cell_302_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?C
?

lstm_301_while_body_1539149.
*lstm_301_while_lstm_301_while_loop_counter4
0lstm_301_while_lstm_301_while_maximum_iterations
lstm_301_while_placeholder 
lstm_301_while_placeholder_1 
lstm_301_while_placeholder_2 
lstm_301_while_placeholder_3-
)lstm_301_while_lstm_301_strided_slice_1_0i
elstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0:	d?R
?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?M
>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
lstm_301_while_identity
lstm_301_while_identity_1
lstm_301_while_identity_2
lstm_301_while_identity_3
lstm_301_while_identity_4
lstm_301_while_identity_5+
'lstm_301_while_lstm_301_strided_slice_1g
clstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensorN
;lstm_301_while_lstm_cell_253_matmul_readvariableop_resource:	d?P
=lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource:	2?K
<lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource:	???3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp?2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp?4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp?
@lstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_301/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0lstm_301_while_placeholderIlstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_301/while/lstm_cell_253/MatMulMatMul9lstm_301/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_301/while/lstm_cell_253/MatMul_1MatMullstm_301_while_placeholder_2<lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_301/while/lstm_cell_253/addAddV2-lstm_301/while/lstm_cell_253/MatMul:product:0/lstm_301/while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_301/while/lstm_cell_253/BiasAddBiasAdd$lstm_301/while/lstm_cell_253/add:z:0;lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_301/while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_301/while/lstm_cell_253/splitSplit5lstm_301/while/lstm_cell_253/split/split_dim:output:0-lstm_301/while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_301/while/lstm_cell_253/SigmoidSigmoid+lstm_301/while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_301/while/lstm_cell_253/Sigmoid_1Sigmoid+lstm_301/while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_301/while/lstm_cell_253/mulMul*lstm_301/while/lstm_cell_253/Sigmoid_1:y:0lstm_301_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_301/while/lstm_cell_253/ReluRelu+lstm_301/while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/mul_1Mul(lstm_301/while/lstm_cell_253/Sigmoid:y:0/lstm_301/while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/add_1AddV2$lstm_301/while/lstm_cell_253/mul:z:0&lstm_301/while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_301/while/lstm_cell_253/Sigmoid_2Sigmoid+lstm_301/while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_301/while/lstm_cell_253/Relu_1Relu&lstm_301/while/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/mul_2Mul*lstm_301/while/lstm_cell_253/Sigmoid_2:y:01lstm_301/while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_301/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_301_while_placeholder_1lstm_301_while_placeholder&lstm_301/while/lstm_cell_253/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_301/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_301/while/addAddV2lstm_301_while_placeholderlstm_301/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_301/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_301/while/add_1AddV2*lstm_301_while_lstm_301_while_loop_counterlstm_301/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_301/while/IdentityIdentitylstm_301/while/add_1:z:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_1Identity0lstm_301_while_lstm_301_while_maximum_iterations^lstm_301/while/NoOp*
T0*
_output_shapes
: t
lstm_301/while/Identity_2Identitylstm_301/while/add:z:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_3IdentityClstm_301/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_4Identity&lstm_301/while/lstm_cell_253/mul_2:z:0^lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_301/while/Identity_5Identity&lstm_301/while/lstm_cell_253/add_1:z:0^lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_301/while/NoOpNoOp4^lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp3^lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp5^lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_301_while_identity lstm_301/while/Identity:output:0"?
lstm_301_while_identity_1"lstm_301/while/Identity_1:output:0"?
lstm_301_while_identity_2"lstm_301/while/Identity_2:output:0"?
lstm_301_while_identity_3"lstm_301/while/Identity_3:output:0"?
lstm_301_while_identity_4"lstm_301/while/Identity_4:output:0"?
lstm_301_while_identity_5"lstm_301/while/Identity_5:output:0"T
'lstm_301_while_lstm_301_strided_slice_1)lstm_301_while_lstm_301_strided_slice_1_0"~
<lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0"?
=lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0"|
;lstm_301_while_lstm_cell_253_matmul_readvariableop_resource=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0"?
clstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensorelstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp2h
2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp2l
4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1539908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1540193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540193___redundant_placeholder05
1while_while_cond_1540193___redundant_placeholder15
1while_while_cond_1540193___redundant_placeholder25
1while_while_cond_1540193___redundant_placeholder3
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540421

inputs?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1540337*
condR
while_cond_1540336*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1540523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540523___redundant_placeholder05
1while_while_cond_1540523___redundant_placeholder15
1while_while_cond_1540523___redundant_placeholder25
1while_while_cond_1540523___redundant_placeholder3
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
while_cond_1539907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1539907___redundant_placeholder05
1while_while_cond_1539907___redundant_placeholder15
1while_while_cond_1539907___redundant_placeholder25
1while_while_cond_1539907___redundant_placeholder3
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
while_body_1540667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_301_while_body_1539576.
*lstm_301_while_lstm_301_while_loop_counter4
0lstm_301_while_lstm_301_while_maximum_iterations
lstm_301_while_placeholder 
lstm_301_while_placeholder_1 
lstm_301_while_placeholder_2 
lstm_301_while_placeholder_3-
)lstm_301_while_lstm_301_strided_slice_1_0i
elstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0:	d?R
?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?M
>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
lstm_301_while_identity
lstm_301_while_identity_1
lstm_301_while_identity_2
lstm_301_while_identity_3
lstm_301_while_identity_4
lstm_301_while_identity_5+
'lstm_301_while_lstm_301_strided_slice_1g
clstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensorN
;lstm_301_while_lstm_cell_253_matmul_readvariableop_resource:	d?P
=lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource:	2?K
<lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource:	???3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp?2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp?4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp?
@lstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_301/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0lstm_301_while_placeholderIlstm_301/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_301/while/lstm_cell_253/MatMulMatMul9lstm_301/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_301/while/lstm_cell_253/MatMul_1MatMullstm_301_while_placeholder_2<lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_301/while/lstm_cell_253/addAddV2-lstm_301/while/lstm_cell_253/MatMul:product:0/lstm_301/while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_301/while/lstm_cell_253/BiasAddBiasAdd$lstm_301/while/lstm_cell_253/add:z:0;lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_301/while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_301/while/lstm_cell_253/splitSplit5lstm_301/while/lstm_cell_253/split/split_dim:output:0-lstm_301/while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_301/while/lstm_cell_253/SigmoidSigmoid+lstm_301/while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_301/while/lstm_cell_253/Sigmoid_1Sigmoid+lstm_301/while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_301/while/lstm_cell_253/mulMul*lstm_301/while/lstm_cell_253/Sigmoid_1:y:0lstm_301_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_301/while/lstm_cell_253/ReluRelu+lstm_301/while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/mul_1Mul(lstm_301/while/lstm_cell_253/Sigmoid:y:0/lstm_301/while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/add_1AddV2$lstm_301/while/lstm_cell_253/mul:z:0&lstm_301/while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_301/while/lstm_cell_253/Sigmoid_2Sigmoid+lstm_301/while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_301/while/lstm_cell_253/Relu_1Relu&lstm_301/while/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_301/while/lstm_cell_253/mul_2Mul*lstm_301/while/lstm_cell_253/Sigmoid_2:y:01lstm_301/while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_301/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_301_while_placeholder_1lstm_301_while_placeholder&lstm_301/while/lstm_cell_253/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_301/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_301/while/addAddV2lstm_301_while_placeholderlstm_301/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_301/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_301/while/add_1AddV2*lstm_301_while_lstm_301_while_loop_counterlstm_301/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_301/while/IdentityIdentitylstm_301/while/add_1:z:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_1Identity0lstm_301_while_lstm_301_while_maximum_iterations^lstm_301/while/NoOp*
T0*
_output_shapes
: t
lstm_301/while/Identity_2Identitylstm_301/while/add:z:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_3IdentityClstm_301/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_301/while/NoOp*
T0*
_output_shapes
: ?
lstm_301/while/Identity_4Identity&lstm_301/while/lstm_cell_253/mul_2:z:0^lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_301/while/Identity_5Identity&lstm_301/while/lstm_cell_253/add_1:z:0^lstm_301/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_301/while/NoOpNoOp4^lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp3^lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp5^lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_301_while_identity lstm_301/while/Identity:output:0"?
lstm_301_while_identity_1"lstm_301/while/Identity_1:output:0"?
lstm_301_while_identity_2"lstm_301/while/Identity_2:output:0"?
lstm_301_while_identity_3"lstm_301/while/Identity_3:output:0"?
lstm_301_while_identity_4"lstm_301/while/Identity_4:output:0"?
lstm_301_while_identity_5"lstm_301/while/Identity_5:output:0"T
'lstm_301_while_lstm_301_strided_slice_1)lstm_301_while_lstm_301_strided_slice_1_0"~
<lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource>lstm_301_while_lstm_cell_253_biasadd_readvariableop_resource_0"?
=lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource?lstm_301_while_lstm_cell_253_matmul_1_readvariableop_resource_0"|
;lstm_301_while_lstm_cell_253_matmul_readvariableop_resource=lstm_301_while_lstm_cell_253_matmul_readvariableop_resource_0"?
clstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensorelstm_301_while_tensorarrayv2read_tensorlistgetitem_lstm_301_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp3lstm_301/while/lstm_cell_253/BiasAdd/ReadVariableOp2h
2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp2lstm_301/while/lstm_cell_253/MatMul/ReadVariableOp2l
4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp4lstm_301/while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1539992
inputs_0?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1539908*
condR
while_cond_1539907*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1541283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538161

inputs#
lstm_300_1537837:	?#
lstm_300_1537839:	d?
lstm_300_1537841:	?#
lstm_301_1537987:	d?#
lstm_301_1537989:	2?
lstm_301_1537991:	?"
lstm_302_1538137:2("
lstm_302_1538139:
(
lstm_302_1538141:(#
dense_100_1538155:

dense_100_1538157:
identity??!dense_100/StatefulPartitionedCall? lstm_300/StatefulPartitionedCall? lstm_301/StatefulPartitionedCall? lstm_302/StatefulPartitionedCall?
 lstm_300/StatefulPartitionedCallStatefulPartitionedCallinputslstm_300_1537837lstm_300_1537839lstm_300_1537841*
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1537836?
 lstm_301/StatefulPartitionedCallStatefulPartitionedCall)lstm_300/StatefulPartitionedCall:output:0lstm_301_1537987lstm_301_1537989lstm_301_1537991*
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537986?
 lstm_302/StatefulPartitionedCallStatefulPartitionedCall)lstm_301/StatefulPartitionedCall:output:0lstm_302_1538137lstm_302_1538139lstm_302_1538141*
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538136?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)lstm_302/StatefulPartitionedCall:output:0dense_100_1538155dense_100_1538157*
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_100/StatefulPartitionedCall!^lstm_300/StatefulPartitionedCall!^lstm_301/StatefulPartitionedCall!^lstm_302/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 lstm_300/StatefulPartitionedCall lstm_300/StatefulPartitionedCall2D
 lstm_301/StatefulPartitionedCall lstm_301/StatefulPartitionedCall2D
 lstm_302/StatefulPartitionedCall lstm_302/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537137

inputs(
lstm_cell_253_1537055:	d?(
lstm_cell_253_1537057:	2?$
lstm_cell_253_1537059:	?
identity??%lstm_cell_253/StatefulPartitionedCall?while;
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
%lstm_cell_253/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_253_1537055lstm_cell_253_1537057lstm_cell_253_1537059*
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537054n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_253_1537055lstm_cell_253_1537057lstm_cell_253_1537059*
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
while_body_1537068*
condR
while_cond_1537067*K
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
NoOpNoOp&^lstm_cell_253/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_253/StatefulPartitionedCall%lstm_cell_253/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1538432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1538432___redundant_placeholder05
1while_while_cond_1538432___redundant_placeholder15
1while_while_cond_1538432___redundant_placeholder25
1while_while_cond_1538432___redundant_placeholder3
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540894

inputs?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1540810*
condR
while_cond_1540809*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_301_layer_call_and_return_conditional_losses_1541037

inputs?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1540953*
condR
while_cond_1540952*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_302_layer_call_fn_1541070

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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538136o
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

?
%__inference_signature_wrapper_1538897
lstm_300_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_300_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1536637o
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
_user_specified_namelstm_300_input
?

?
lstm_300_while_cond_1539436.
*lstm_300_while_lstm_300_while_loop_counter4
0lstm_300_while_lstm_300_while_maximum_iterations
lstm_300_while_placeholder 
lstm_300_while_placeholder_1 
lstm_300_while_placeholder_2 
lstm_300_while_placeholder_30
,lstm_300_while_less_lstm_300_strided_slice_1G
Clstm_300_while_lstm_300_while_cond_1539436___redundant_placeholder0G
Clstm_300_while_lstm_300_while_cond_1539436___redundant_placeholder1G
Clstm_300_while_lstm_300_while_cond_1539436___redundant_placeholder2G
Clstm_300_while_lstm_300_while_cond_1539436___redundant_placeholder3
lstm_300_while_identity
?
lstm_300/while/LessLesslstm_300_while_placeholder,lstm_300_while_less_lstm_300_strided_slice_1*
T0*
_output_shapes
: ]
lstm_300/while/IdentityIdentitylstm_300/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_300_while_identity lstm_300/while/Identity:output:0*(
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
while_cond_1538267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1538267___redundant_placeholder05
1while_while_cond_1538267___redundant_placeholder15
1while_while_cond_1538267___redundant_placeholder25
1while_while_cond_1538267___redundant_placeholder3
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541653

inputs>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1541569*
condR
while_cond_1541568*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_302_while_cond_1539287.
*lstm_302_while_lstm_302_while_loop_counter4
0lstm_302_while_lstm_302_while_maximum_iterations
lstm_302_while_placeholder 
lstm_302_while_placeholder_1 
lstm_302_while_placeholder_2 
lstm_302_while_placeholder_30
,lstm_302_while_less_lstm_302_strided_slice_1G
Clstm_302_while_lstm_302_while_cond_1539287___redundant_placeholder0G
Clstm_302_while_lstm_302_while_cond_1539287___redundant_placeholder1G
Clstm_302_while_lstm_302_while_cond_1539287___redundant_placeholder2G
Clstm_302_while_lstm_302_while_cond_1539287___redundant_placeholder3
lstm_302_while_identity
?
lstm_302/while/LessLesslstm_302_while_placeholder,lstm_302_while_less_lstm_302_strided_slice_1*
T0*
_output_shapes
: ]
lstm_302/while/IdentityIdentitylstm_302/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_302_while_identity lstm_302/while/Identity:output:0*(
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
lstm_301_while_cond_1539575.
*lstm_301_while_lstm_301_while_loop_counter4
0lstm_301_while_lstm_301_while_maximum_iterations
lstm_301_while_placeholder 
lstm_301_while_placeholder_1 
lstm_301_while_placeholder_2 
lstm_301_while_placeholder_30
,lstm_301_while_less_lstm_301_strided_slice_1G
Clstm_301_while_lstm_301_while_cond_1539575___redundant_placeholder0G
Clstm_301_while_lstm_301_while_cond_1539575___redundant_placeholder1G
Clstm_301_while_lstm_301_while_cond_1539575___redundant_placeholder2G
Clstm_301_while_lstm_301_while_cond_1539575___redundant_placeholder3
lstm_301_while_identity
?
lstm_301/while/LessLesslstm_301_while_placeholder,lstm_301_while_less_lstm_301_strided_slice_1*
T0*
_output_shapes
: ]
lstm_301/while/IdentityIdentitylstm_301/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_301_while_identity lstm_301/while/Identity:output:0*(
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539805

inputsH
5lstm_300_lstm_cell_252_matmul_readvariableop_resource:	?J
7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource:	d?E
6lstm_300_lstm_cell_252_biasadd_readvariableop_resource:	?H
5lstm_301_lstm_cell_253_matmul_readvariableop_resource:	d?J
7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource:	2?E
6lstm_301_lstm_cell_253_biasadd_readvariableop_resource:	?G
5lstm_302_lstm_cell_254_matmul_readvariableop_resource:2(I
7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource:
(D
6lstm_302_lstm_cell_254_biasadd_readvariableop_resource:(:
(dense_100_matmul_readvariableop_resource:
7
)dense_100_biasadd_readvariableop_resource:
identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp?-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp?,lstm_300/lstm_cell_252/MatMul/ReadVariableOp?.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp?lstm_300/while?-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp?,lstm_301/lstm_cell_253/MatMul/ReadVariableOp?.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp?lstm_301/while?-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp?,lstm_302/lstm_cell_254/MatMul/ReadVariableOp?.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp?lstm_302/whileD
lstm_300/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_300/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_300/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_300/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_sliceStridedSlicelstm_300/Shape:output:0%lstm_300/strided_slice/stack:output:0'lstm_300/strided_slice/stack_1:output:0'lstm_300/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_300/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_300/zeros/packedPacklstm_300/strided_slice:output:0 lstm_300/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_300/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_300/zerosFilllstm_300/zeros/packed:output:0lstm_300/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_300/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_300/zeros_1/packedPacklstm_300/strided_slice:output:0"lstm_300/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_300/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_300/zeros_1Fill lstm_300/zeros_1/packed:output:0lstm_300/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_300/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_300/transpose	Transposeinputs lstm_300/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_300/Shape_1Shapelstm_300/transpose:y:0*
T0*
_output_shapes
:h
lstm_300/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_300/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_1StridedSlicelstm_300/Shape_1:output:0'lstm_300/strided_slice_1/stack:output:0)lstm_300/strided_slice_1/stack_1:output:0)lstm_300/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_300/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_300/TensorArrayV2TensorListReserve-lstm_300/TensorArrayV2/element_shape:output:0!lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_300/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_300/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_300/transpose:y:0Glstm_300/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_300/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_300/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_2StridedSlicelstm_300/transpose:y:0'lstm_300/strided_slice_2/stack:output:0)lstm_300/strided_slice_2/stack_1:output:0)lstm_300/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_300/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp5lstm_300_lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_300/lstm_cell_252/MatMulMatMul!lstm_300/strided_slice_2:output:04lstm_300/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_300/lstm_cell_252/MatMul_1MatMullstm_300/zeros:output:06lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_300/lstm_cell_252/addAddV2'lstm_300/lstm_cell_252/MatMul:product:0)lstm_300/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp6lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_300/lstm_cell_252/BiasAddBiasAddlstm_300/lstm_cell_252/add:z:05lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_300/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_300/lstm_cell_252/splitSplit/lstm_300/lstm_cell_252/split/split_dim:output:0'lstm_300/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_300/lstm_cell_252/SigmoidSigmoid%lstm_300/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_300/lstm_cell_252/Sigmoid_1Sigmoid%lstm_300/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mulMul$lstm_300/lstm_cell_252/Sigmoid_1:y:0lstm_300/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_300/lstm_cell_252/ReluRelu%lstm_300/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mul_1Mul"lstm_300/lstm_cell_252/Sigmoid:y:0)lstm_300/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/add_1AddV2lstm_300/lstm_cell_252/mul:z:0 lstm_300/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_300/lstm_cell_252/Sigmoid_2Sigmoid%lstm_300/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_300/lstm_cell_252/Relu_1Relu lstm_300/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mul_2Mul$lstm_300/lstm_cell_252/Sigmoid_2:y:0+lstm_300/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_300/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_300/TensorArrayV2_1TensorListReserve/lstm_300/TensorArrayV2_1/element_shape:output:0!lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_300/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_300/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_300/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_300/whileWhile$lstm_300/while/loop_counter:output:0*lstm_300/while/maximum_iterations:output:0lstm_300/time:output:0!lstm_300/TensorArrayV2_1:handle:0lstm_300/zeros:output:0lstm_300/zeros_1:output:0!lstm_300/strided_slice_1:output:0@lstm_300/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_300_lstm_cell_252_matmul_readvariableop_resource7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource6lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
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
lstm_300_while_body_1539437*'
condR
lstm_300_while_cond_1539436*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_300/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_300/TensorArrayV2Stack/TensorListStackTensorListStacklstm_300/while:output:3Blstm_300/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_300/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_300/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_3StridedSlice4lstm_300/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_300/strided_slice_3/stack:output:0)lstm_300/strided_slice_3/stack_1:output:0)lstm_300/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_300/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_300/transpose_1	Transpose4lstm_300/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_300/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_300/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_301/ShapeShapelstm_300/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_301/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_301/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_301/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_sliceStridedSlicelstm_301/Shape:output:0%lstm_301/strided_slice/stack:output:0'lstm_301/strided_slice/stack_1:output:0'lstm_301/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_301/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_301/zeros/packedPacklstm_301/strided_slice:output:0 lstm_301/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_301/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_301/zerosFilllstm_301/zeros/packed:output:0lstm_301/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_301/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_301/zeros_1/packedPacklstm_301/strided_slice:output:0"lstm_301/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_301/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_301/zeros_1Fill lstm_301/zeros_1/packed:output:0lstm_301/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_301/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_301/transpose	Transposelstm_300/transpose_1:y:0 lstm_301/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_301/Shape_1Shapelstm_301/transpose:y:0*
T0*
_output_shapes
:h
lstm_301/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_301/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_1StridedSlicelstm_301/Shape_1:output:0'lstm_301/strided_slice_1/stack:output:0)lstm_301/strided_slice_1/stack_1:output:0)lstm_301/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_301/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_301/TensorArrayV2TensorListReserve-lstm_301/TensorArrayV2/element_shape:output:0!lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_301/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_301/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_301/transpose:y:0Glstm_301/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_301/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_301/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_2StridedSlicelstm_301/transpose:y:0'lstm_301/strided_slice_2/stack:output:0)lstm_301/strided_slice_2/stack_1:output:0)lstm_301/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_301/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp5lstm_301_lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_301/lstm_cell_253/MatMulMatMul!lstm_301/strided_slice_2:output:04lstm_301/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_301/lstm_cell_253/MatMul_1MatMullstm_301/zeros:output:06lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_301/lstm_cell_253/addAddV2'lstm_301/lstm_cell_253/MatMul:product:0)lstm_301/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp6lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_301/lstm_cell_253/BiasAddBiasAddlstm_301/lstm_cell_253/add:z:05lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_301/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_301/lstm_cell_253/splitSplit/lstm_301/lstm_cell_253/split/split_dim:output:0'lstm_301/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_301/lstm_cell_253/SigmoidSigmoid%lstm_301/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_301/lstm_cell_253/Sigmoid_1Sigmoid%lstm_301/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mulMul$lstm_301/lstm_cell_253/Sigmoid_1:y:0lstm_301/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_301/lstm_cell_253/ReluRelu%lstm_301/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mul_1Mul"lstm_301/lstm_cell_253/Sigmoid:y:0)lstm_301/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/add_1AddV2lstm_301/lstm_cell_253/mul:z:0 lstm_301/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_301/lstm_cell_253/Sigmoid_2Sigmoid%lstm_301/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_301/lstm_cell_253/Relu_1Relu lstm_301/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mul_2Mul$lstm_301/lstm_cell_253/Sigmoid_2:y:0+lstm_301/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_301/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_301/TensorArrayV2_1TensorListReserve/lstm_301/TensorArrayV2_1/element_shape:output:0!lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_301/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_301/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_301/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_301/whileWhile$lstm_301/while/loop_counter:output:0*lstm_301/while/maximum_iterations:output:0lstm_301/time:output:0!lstm_301/TensorArrayV2_1:handle:0lstm_301/zeros:output:0lstm_301/zeros_1:output:0!lstm_301/strided_slice_1:output:0@lstm_301/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_301_lstm_cell_253_matmul_readvariableop_resource7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource6lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
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
lstm_301_while_body_1539576*'
condR
lstm_301_while_cond_1539575*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_301/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_301/TensorArrayV2Stack/TensorListStackTensorListStacklstm_301/while:output:3Blstm_301/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_301/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_301/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_3StridedSlice4lstm_301/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_301/strided_slice_3/stack:output:0)lstm_301/strided_slice_3/stack_1:output:0)lstm_301/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_301/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_301/transpose_1	Transpose4lstm_301/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_301/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_301/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_302/ShapeShapelstm_301/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_302/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_302/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_302/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_sliceStridedSlicelstm_302/Shape:output:0%lstm_302/strided_slice/stack:output:0'lstm_302/strided_slice/stack_1:output:0'lstm_302/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_302/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_302/zeros/packedPacklstm_302/strided_slice:output:0 lstm_302/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_302/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_302/zerosFilllstm_302/zeros/packed:output:0lstm_302/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_302/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_302/zeros_1/packedPacklstm_302/strided_slice:output:0"lstm_302/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_302/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_302/zeros_1Fill lstm_302/zeros_1/packed:output:0lstm_302/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_302/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_302/transpose	Transposelstm_301/transpose_1:y:0 lstm_302/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_302/Shape_1Shapelstm_302/transpose:y:0*
T0*
_output_shapes
:h
lstm_302/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_302/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_1StridedSlicelstm_302/Shape_1:output:0'lstm_302/strided_slice_1/stack:output:0)lstm_302/strided_slice_1/stack_1:output:0)lstm_302/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_302/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_302/TensorArrayV2TensorListReserve-lstm_302/TensorArrayV2/element_shape:output:0!lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_302/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_302/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_302/transpose:y:0Glstm_302/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_302/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_302/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_2StridedSlicelstm_302/transpose:y:0'lstm_302/strided_slice_2/stack:output:0)lstm_302/strided_slice_2/stack_1:output:0)lstm_302/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_302/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp5lstm_302_lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_302/lstm_cell_254/MatMulMatMul!lstm_302/strided_slice_2:output:04lstm_302/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_302/lstm_cell_254/MatMul_1MatMullstm_302/zeros:output:06lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_302/lstm_cell_254/addAddV2'lstm_302/lstm_cell_254/MatMul:product:0)lstm_302/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp6lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_302/lstm_cell_254/BiasAddBiasAddlstm_302/lstm_cell_254/add:z:05lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_302/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_302/lstm_cell_254/splitSplit/lstm_302/lstm_cell_254/split/split_dim:output:0'lstm_302/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_302/lstm_cell_254/SigmoidSigmoid%lstm_302/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_302/lstm_cell_254/Sigmoid_1Sigmoid%lstm_302/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mulMul$lstm_302/lstm_cell_254/Sigmoid_1:y:0lstm_302/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_302/lstm_cell_254/ReluRelu%lstm_302/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mul_1Mul"lstm_302/lstm_cell_254/Sigmoid:y:0)lstm_302/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/add_1AddV2lstm_302/lstm_cell_254/mul:z:0 lstm_302/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_302/lstm_cell_254/Sigmoid_2Sigmoid%lstm_302/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_302/lstm_cell_254/Relu_1Relu lstm_302/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mul_2Mul$lstm_302/lstm_cell_254/Sigmoid_2:y:0+lstm_302/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_302/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_302/TensorArrayV2_1TensorListReserve/lstm_302/TensorArrayV2_1/element_shape:output:0!lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_302/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_302/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_302/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_302/whileWhile$lstm_302/while/loop_counter:output:0*lstm_302/while/maximum_iterations:output:0lstm_302/time:output:0!lstm_302/TensorArrayV2_1:handle:0lstm_302/zeros:output:0lstm_302/zeros_1:output:0!lstm_302/strided_slice_1:output:0@lstm_302/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_302_lstm_cell_254_matmul_readvariableop_resource7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource6lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
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
lstm_302_while_body_1539715*'
condR
lstm_302_while_cond_1539714*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_302/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_302/TensorArrayV2Stack/TensorListStackTensorListStacklstm_302/while:output:3Blstm_302/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_302/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_302/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_3StridedSlice4lstm_302/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_302/strided_slice_3/stack:output:0)lstm_302/strided_slice_3/stack_1:output:0)lstm_302/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_302/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_302/transpose_1	Transpose4lstm_302/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_302/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_302/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_100/MatMulMatMul!lstm_302/strided_slice_3:output:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_100/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp.^lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp-^lstm_300/lstm_cell_252/MatMul/ReadVariableOp/^lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp^lstm_300/while.^lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp-^lstm_301/lstm_cell_253/MatMul/ReadVariableOp/^lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp^lstm_301/while.^lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp-^lstm_302/lstm_cell_254/MatMul/ReadVariableOp/^lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp^lstm_302/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2^
-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp2\
,lstm_300/lstm_cell_252/MatMul/ReadVariableOp,lstm_300/lstm_cell_252/MatMul/ReadVariableOp2`
.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp2 
lstm_300/whilelstm_300/while2^
-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp2\
,lstm_301/lstm_cell_253/MatMul/ReadVariableOp,lstm_301/lstm_cell_253/MatMul/ReadVariableOp2`
.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp2 
lstm_301/whilelstm_301/while2^
-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp2\
,lstm_302/lstm_cell_254/MatMul/ReadVariableOp,lstm_302/lstm_cell_254/MatMul/ReadVariableOp2`
.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp2 
lstm_302/whilelstm_302/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536850

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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537054

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
?C
?

lstm_302_while_body_1539715.
*lstm_302_while_lstm_302_while_loop_counter4
0lstm_302_while_lstm_302_while_maximum_iterations
lstm_302_while_placeholder 
lstm_302_while_placeholder_1 
lstm_302_while_placeholder_2 
lstm_302_while_placeholder_3-
)lstm_302_while_lstm_302_strided_slice_1_0i
elstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0:2(Q
?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(L
>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0:(
lstm_302_while_identity
lstm_302_while_identity_1
lstm_302_while_identity_2
lstm_302_while_identity_3
lstm_302_while_identity_4
lstm_302_while_identity_5+
'lstm_302_while_lstm_302_strided_slice_1g
clstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensorM
;lstm_302_while_lstm_cell_254_matmul_readvariableop_resource:2(O
=lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource:
(J
<lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource:(??3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp?2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp?4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp?
@lstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_302/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0lstm_302_while_placeholderIlstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_302/while/lstm_cell_254/MatMulMatMul9lstm_302/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_302/while/lstm_cell_254/MatMul_1MatMullstm_302_while_placeholder_2<lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_302/while/lstm_cell_254/addAddV2-lstm_302/while/lstm_cell_254/MatMul:product:0/lstm_302/while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_302/while/lstm_cell_254/BiasAddBiasAdd$lstm_302/while/lstm_cell_254/add:z:0;lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_302/while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_302/while/lstm_cell_254/splitSplit5lstm_302/while/lstm_cell_254/split/split_dim:output:0-lstm_302/while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_302/while/lstm_cell_254/SigmoidSigmoid+lstm_302/while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_302/while/lstm_cell_254/Sigmoid_1Sigmoid+lstm_302/while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_302/while/lstm_cell_254/mulMul*lstm_302/while/lstm_cell_254/Sigmoid_1:y:0lstm_302_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_302/while/lstm_cell_254/ReluRelu+lstm_302/while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/mul_1Mul(lstm_302/while/lstm_cell_254/Sigmoid:y:0/lstm_302/while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/add_1AddV2$lstm_302/while/lstm_cell_254/mul:z:0&lstm_302/while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_302/while/lstm_cell_254/Sigmoid_2Sigmoid+lstm_302/while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_302/while/lstm_cell_254/Relu_1Relu&lstm_302/while/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_302/while/lstm_cell_254/mul_2Mul*lstm_302/while/lstm_cell_254/Sigmoid_2:y:01lstm_302/while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_302/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_302_while_placeholder_1lstm_302_while_placeholder&lstm_302/while/lstm_cell_254/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_302/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_302/while/addAddV2lstm_302_while_placeholderlstm_302/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_302/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_302/while/add_1AddV2*lstm_302_while_lstm_302_while_loop_counterlstm_302/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_302/while/IdentityIdentitylstm_302/while/add_1:z:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_1Identity0lstm_302_while_lstm_302_while_maximum_iterations^lstm_302/while/NoOp*
T0*
_output_shapes
: t
lstm_302/while/Identity_2Identitylstm_302/while/add:z:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_3IdentityClstm_302/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_302/while/NoOp*
T0*
_output_shapes
: ?
lstm_302/while/Identity_4Identity&lstm_302/while/lstm_cell_254/mul_2:z:0^lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_302/while/Identity_5Identity&lstm_302/while/lstm_cell_254/add_1:z:0^lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_302/while/NoOpNoOp4^lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp3^lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp5^lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_302_while_identity lstm_302/while/Identity:output:0"?
lstm_302_while_identity_1"lstm_302/while/Identity_1:output:0"?
lstm_302_while_identity_2"lstm_302/while/Identity_2:output:0"?
lstm_302_while_identity_3"lstm_302/while/Identity_3:output:0"?
lstm_302_while_identity_4"lstm_302/while/Identity_4:output:0"?
lstm_302_while_identity_5"lstm_302/while/Identity_5:output:0"T
'lstm_302_while_lstm_302_strided_slice_1)lstm_302_while_lstm_302_strided_slice_1_0"~
<lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource>lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0"?
=lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource?lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0"|
;lstm_302_while_lstm_cell_254_matmul_readvariableop_resource=lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0"?
clstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensorelstm_302_while_tensorarrayv2read_tensorlistgetitem_lstm_302_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp3lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp2h
2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp2lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp2l
4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp4lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1538682

inputs?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1538598*
condR
while_cond_1538597*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1536908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1536908___redundant_placeholder05
1while_while_cond_1536908___redundant_placeholder15
1while_while_cond_1536908___redundant_placeholder25
1while_while_cond_1536908___redundant_placeholder3
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
while_cond_1540050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540050___redundant_placeholder05
1while_while_cond_1540050___redundant_placeholder15
1while_while_cond_1540050___redundant_placeholder25
1while_while_cond_1540050___redundant_placeholder3
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
while_body_1536909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_252_1536933_0:	?0
while_lstm_cell_252_1536935_0:	d?,
while_lstm_cell_252_1536937_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_252_1536933:	?.
while_lstm_cell_252_1536935:	d?*
while_lstm_cell_252_1536937:	???+while/lstm_cell_252/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_252/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_252_1536933_0while_lstm_cell_252_1536935_0while_lstm_cell_252_1536937_0*
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536850?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_252/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_252/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_252/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_252/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_252_1536933while_lstm_cell_252_1536933_0"<
while_lstm_cell_252_1536935while_lstm_cell_252_1536935_0"<
while_lstm_cell_252_1536937while_lstm_cell_252_1536937_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_252/StatefulPartitionedCall+while/lstm_cell_252/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1540953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_254_layer_call_fn_1541885

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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537404o
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
while_cond_1537067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537067___redundant_placeholder05
1while_while_cond_1537067___redundant_placeholder15
1while_while_cond_1537067___redundant_placeholder25
1while_while_cond_1537067___redundant_placeholder3
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
while_cond_1541425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1541425___redundant_placeholder05
1while_while_cond_1541425___redundant_placeholder15
1while_while_cond_1541425___redundant_placeholder25
1while_while_cond_1541425___redundant_placeholder3
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538352

inputs>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1538268*
condR
while_cond_1538267*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540751
inputs_0?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1540667*
condR
while_cond_1540666*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_254_layer_call_fn_1541902

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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537550o
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
*__inference_lstm_302_layer_call_fn_1541081

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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538352o
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
while_body_1537259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_253_1537283_0:	d?0
while_lstm_cell_253_1537285_0:	2?,
while_lstm_cell_253_1537287_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_253_1537283:	d?.
while_lstm_cell_253_1537285:	2?*
while_lstm_cell_253_1537287:	???+while/lstm_cell_253/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_253/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_253_1537283_0while_lstm_cell_253_1537285_0while_lstm_cell_253_1537287_0*
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537200?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_253/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_253/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_253/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_253/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_253_1537283while_lstm_cell_253_1537283_0"<
while_lstm_cell_253_1537285while_lstm_cell_253_1537285_0"<
while_lstm_cell_253_1537287while_lstm_cell_253_1537287_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_253/StatefulPartitionedCall+while/lstm_cell_253/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1541282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1541282___redundant_placeholder05
1while_while_cond_1541282___redundant_placeholder15
1while_while_cond_1541282___redundant_placeholder25
1while_while_cond_1541282___redundant_placeholder3
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
/__inference_lstm_cell_253_layer_call_fn_1541804

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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537200o
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537986

inputs?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1537902*
condR
while_cond_1537901*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_301_while_cond_1539148.
*lstm_301_while_lstm_301_while_loop_counter4
0lstm_301_while_lstm_301_while_maximum_iterations
lstm_301_while_placeholder 
lstm_301_while_placeholder_1 
lstm_301_while_placeholder_2 
lstm_301_while_placeholder_30
,lstm_301_while_less_lstm_301_strided_slice_1G
Clstm_301_while_lstm_301_while_cond_1539148___redundant_placeholder0G
Clstm_301_while_lstm_301_while_cond_1539148___redundant_placeholder1G
Clstm_301_while_lstm_301_while_cond_1539148___redundant_placeholder2G
Clstm_301_while_lstm_301_while_cond_1539148___redundant_placeholder3
lstm_301_while_identity
?
lstm_301/while/LessLesslstm_301_while_placeholder,lstm_301_while_less_lstm_301_strided_slice_1*
T0*
_output_shapes
: ]
lstm_301/while/IdentityIdentitylstm_301/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_301_while_identity lstm_301/while/Identity:output:0*(
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1537836

inputs?
,lstm_cell_252_matmul_readvariableop_resource:	?A
.lstm_cell_252_matmul_1_readvariableop_resource:	d?<
-lstm_cell_252_biasadd_readvariableop_resource:	?
identity??$lstm_cell_252/BiasAdd/ReadVariableOp?#lstm_cell_252/MatMul/ReadVariableOp?%lstm_cell_252/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_252/MatMul/ReadVariableOpReadVariableOp,lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_252/MatMulMatMulstrided_slice_2:output:0+lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_252/MatMul_1MatMulzeros:output:0-lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_252/addAddV2lstm_cell_252/MatMul:product:0 lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_252/BiasAddBiasAddlstm_cell_252/add:z:0,lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_252/splitSplit&lstm_cell_252/split/split_dim:output:0lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_252/SigmoidSigmoidlstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_1Sigmoidlstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_252/mulMullstm_cell_252/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_252/ReluRelulstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_1Mullstm_cell_252/Sigmoid:y:0 lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_252/add_1AddV2lstm_cell_252/mul:z:0lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_252/Sigmoid_2Sigmoidlstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_252/Relu_1Relulstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_252/mul_2Mullstm_cell_252/Sigmoid_2:y:0"lstm_cell_252/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_252_matmul_readvariableop_resource.lstm_cell_252_matmul_1_readvariableop_resource-lstm_cell_252_biasadd_readvariableop_resource*
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
while_body_1537752*
condR
while_cond_1537751*K
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
NoOpNoOp%^lstm_cell_252/BiasAdd/ReadVariableOp$^lstm_cell_252/MatMul/ReadVariableOp&^lstm_cell_252/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_252/BiasAdd/ReadVariableOp$lstm_cell_252/BiasAdd/ReadVariableOp2J
#lstm_cell_252/MatMul/ReadVariableOp#lstm_cell_252/MatMul/ReadVariableOp2N
%lstm_cell_252/MatMul_1/ReadVariableOp%lstm_cell_252/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1541569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1537751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537751___redundant_placeholder05
1while_while_cond_1537751___redundant_placeholder15
1while_while_cond_1537751___redundant_placeholder25
1while_while_cond_1537751___redundant_placeholder3
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
?T
?
*sequential_100_lstm_300_while_body_1536269L
Hsequential_100_lstm_300_while_sequential_100_lstm_300_while_loop_counterR
Nsequential_100_lstm_300_while_sequential_100_lstm_300_while_maximum_iterations-
)sequential_100_lstm_300_while_placeholder/
+sequential_100_lstm_300_while_placeholder_1/
+sequential_100_lstm_300_while_placeholder_2/
+sequential_100_lstm_300_while_placeholder_3K
Gsequential_100_lstm_300_while_sequential_100_lstm_300_strided_slice_1_0?
?sequential_100_lstm_300_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_300_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_100_lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0:	?a
Nsequential_100_lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?\
Msequential_100_lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0:	?*
&sequential_100_lstm_300_while_identity,
(sequential_100_lstm_300_while_identity_1,
(sequential_100_lstm_300_while_identity_2,
(sequential_100_lstm_300_while_identity_3,
(sequential_100_lstm_300_while_identity_4,
(sequential_100_lstm_300_while_identity_5I
Esequential_100_lstm_300_while_sequential_100_lstm_300_strided_slice_1?
?sequential_100_lstm_300_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_300_tensorarrayunstack_tensorlistfromtensor]
Jsequential_100_lstm_300_while_lstm_cell_252_matmul_readvariableop_resource:	?_
Lsequential_100_lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource:	d?Z
Ksequential_100_lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource:	???Bsequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp?Asequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp?Csequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp?
Osequential_100/lstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_100/lstm_300/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_100_lstm_300_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_300_tensorarrayunstack_tensorlistfromtensor_0)sequential_100_lstm_300_while_placeholderXsequential_100/lstm_300/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOpLsequential_100_lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_100/lstm_300/while/lstm_cell_252/MatMulMatMulHsequential_100/lstm_300/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOpNsequential_100_lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_100/lstm_300/while/lstm_cell_252/MatMul_1MatMul+sequential_100_lstm_300_while_placeholder_2Ksequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_100/lstm_300/while/lstm_cell_252/addAddV2<sequential_100/lstm_300/while/lstm_cell_252/MatMul:product:0>sequential_100/lstm_300/while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOpMsequential_100_lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_100/lstm_300/while/lstm_cell_252/BiasAddBiasAdd3sequential_100/lstm_300/while/lstm_cell_252/add:z:0Jsequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_100/lstm_300/while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_100/lstm_300/while/lstm_cell_252/splitSplitDsequential_100/lstm_300/while/lstm_cell_252/split/split_dim:output:0<sequential_100/lstm_300/while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_100/lstm_300/while/lstm_cell_252/SigmoidSigmoid:sequential_100/lstm_300/while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_100/lstm_300/while/lstm_cell_252/Sigmoid_1Sigmoid:sequential_100/lstm_300/while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_100/lstm_300/while/lstm_cell_252/mulMul9sequential_100/lstm_300/while/lstm_cell_252/Sigmoid_1:y:0+sequential_100_lstm_300_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_100/lstm_300/while/lstm_cell_252/ReluRelu:sequential_100/lstm_300/while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_100/lstm_300/while/lstm_cell_252/mul_1Mul7sequential_100/lstm_300/while/lstm_cell_252/Sigmoid:y:0>sequential_100/lstm_300/while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_100/lstm_300/while/lstm_cell_252/add_1AddV23sequential_100/lstm_300/while/lstm_cell_252/mul:z:05sequential_100/lstm_300/while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_100/lstm_300/while/lstm_cell_252/Sigmoid_2Sigmoid:sequential_100/lstm_300/while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_100/lstm_300/while/lstm_cell_252/Relu_1Relu5sequential_100/lstm_300/while/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_100/lstm_300/while/lstm_cell_252/mul_2Mul9sequential_100/lstm_300/while/lstm_cell_252/Sigmoid_2:y:0@sequential_100/lstm_300/while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_100/lstm_300/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_100_lstm_300_while_placeholder_1)sequential_100_lstm_300_while_placeholder5sequential_100/lstm_300/while/lstm_cell_252/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_100/lstm_300/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_100/lstm_300/while/addAddV2)sequential_100_lstm_300_while_placeholder,sequential_100/lstm_300/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_100/lstm_300/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_100/lstm_300/while/add_1AddV2Hsequential_100_lstm_300_while_sequential_100_lstm_300_while_loop_counter.sequential_100/lstm_300/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_100/lstm_300/while/IdentityIdentity'sequential_100/lstm_300/while/add_1:z:0#^sequential_100/lstm_300/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_300/while/Identity_1IdentityNsequential_100_lstm_300_while_sequential_100_lstm_300_while_maximum_iterations#^sequential_100/lstm_300/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_300/while/Identity_2Identity%sequential_100/lstm_300/while/add:z:0#^sequential_100/lstm_300/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_300/while/Identity_3IdentityRsequential_100/lstm_300/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_100/lstm_300/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_300/while/Identity_4Identity5sequential_100/lstm_300/while/lstm_cell_252/mul_2:z:0#^sequential_100/lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_100/lstm_300/while/Identity_5Identity5sequential_100/lstm_300/while/lstm_cell_252/add_1:z:0#^sequential_100/lstm_300/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_100/lstm_300/while/NoOpNoOpC^sequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOpB^sequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOpD^sequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_100_lstm_300_while_identity/sequential_100/lstm_300/while/Identity:output:0"]
(sequential_100_lstm_300_while_identity_11sequential_100/lstm_300/while/Identity_1:output:0"]
(sequential_100_lstm_300_while_identity_21sequential_100/lstm_300/while/Identity_2:output:0"]
(sequential_100_lstm_300_while_identity_31sequential_100/lstm_300/while/Identity_3:output:0"]
(sequential_100_lstm_300_while_identity_41sequential_100/lstm_300/while/Identity_4:output:0"]
(sequential_100_lstm_300_while_identity_51sequential_100/lstm_300/while/Identity_5:output:0"?
Ksequential_100_lstm_300_while_lstm_cell_252_biasadd_readvariableop_resourceMsequential_100_lstm_300_while_lstm_cell_252_biasadd_readvariableop_resource_0"?
Lsequential_100_lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resourceNsequential_100_lstm_300_while_lstm_cell_252_matmul_1_readvariableop_resource_0"?
Jsequential_100_lstm_300_while_lstm_cell_252_matmul_readvariableop_resourceLsequential_100_lstm_300_while_lstm_cell_252_matmul_readvariableop_resource_0"?
Esequential_100_lstm_300_while_sequential_100_lstm_300_strided_slice_1Gsequential_100_lstm_300_while_sequential_100_lstm_300_strided_slice_1_0"?
?sequential_100_lstm_300_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_300_tensorarrayunstack_tensorlistfromtensor?sequential_100_lstm_300_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_300_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOpBsequential_100/lstm_300/while/lstm_cell_252/BiasAdd/ReadVariableOp2?
Asequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOpAsequential_100/lstm_300/while/lstm_cell_252/MatMul/ReadVariableOp2?
Csequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOpCsequential_100/lstm_300/while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538832
lstm_300_input#
lstm_300_1538805:	?#
lstm_300_1538807:	d?
lstm_300_1538809:	?#
lstm_301_1538812:	d?#
lstm_301_1538814:	2?
lstm_301_1538816:	?"
lstm_302_1538819:2("
lstm_302_1538821:
(
lstm_302_1538823:(#
dense_100_1538826:

dense_100_1538828:
identity??!dense_100/StatefulPartitionedCall? lstm_300/StatefulPartitionedCall? lstm_301/StatefulPartitionedCall? lstm_302/StatefulPartitionedCall?
 lstm_300/StatefulPartitionedCallStatefulPartitionedCalllstm_300_inputlstm_300_1538805lstm_300_1538807lstm_300_1538809*
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1537836?
 lstm_301/StatefulPartitionedCallStatefulPartitionedCall)lstm_300/StatefulPartitionedCall:output:0lstm_301_1538812lstm_301_1538814lstm_301_1538816*
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537986?
 lstm_302/StatefulPartitionedCallStatefulPartitionedCall)lstm_301/StatefulPartitionedCall:output:0lstm_302_1538819lstm_302_1538821lstm_302_1538823*
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538136?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)lstm_302/StatefulPartitionedCall:output:0dense_100_1538826dense_100_1538828*
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_100/StatefulPartitionedCall!^lstm_300/StatefulPartitionedCall!^lstm_301/StatefulPartitionedCall!^lstm_302/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 lstm_300/StatefulPartitionedCall lstm_300/StatefulPartitionedCall2D
 lstm_301/StatefulPartitionedCall lstm_301/StatefulPartitionedCall2D
 lstm_302/StatefulPartitionedCall lstm_302/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_300_input
?
?
while_cond_1537417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537417___redundant_placeholder05
1while_while_cond_1537417___redundant_placeholder15
1while_while_cond_1537417___redundant_placeholder25
1while_while_cond_1537417___redundant_placeholder3
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
while_cond_1537608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537608___redundant_placeholder05
1while_while_cond_1537608___redundant_placeholder15
1while_while_cond_1537608___redundant_placeholder25
1while_while_cond_1537608___redundant_placeholder3
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
*sequential_100_lstm_302_while_cond_1536546L
Hsequential_100_lstm_302_while_sequential_100_lstm_302_while_loop_counterR
Nsequential_100_lstm_302_while_sequential_100_lstm_302_while_maximum_iterations-
)sequential_100_lstm_302_while_placeholder/
+sequential_100_lstm_302_while_placeholder_1/
+sequential_100_lstm_302_while_placeholder_2/
+sequential_100_lstm_302_while_placeholder_3N
Jsequential_100_lstm_302_while_less_sequential_100_lstm_302_strided_slice_1e
asequential_100_lstm_302_while_sequential_100_lstm_302_while_cond_1536546___redundant_placeholder0e
asequential_100_lstm_302_while_sequential_100_lstm_302_while_cond_1536546___redundant_placeholder1e
asequential_100_lstm_302_while_sequential_100_lstm_302_while_cond_1536546___redundant_placeholder2e
asequential_100_lstm_302_while_sequential_100_lstm_302_while_cond_1536546___redundant_placeholder3*
&sequential_100_lstm_302_while_identity
?
"sequential_100/lstm_302/while/LessLess)sequential_100_lstm_302_while_placeholderJsequential_100_lstm_302_while_less_sequential_100_lstm_302_strided_slice_1*
T0*
_output_shapes
: {
&sequential_100/lstm_302/while/IdentityIdentity&sequential_100/lstm_302/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_100_lstm_302_while_identity/sequential_100/lstm_302/while/Identity:output:0*(
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
*__inference_lstm_302_layer_call_fn_1541059
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1537678o
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
while_cond_1540666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540666___redundant_placeholder05
1while_while_cond_1540666___redundant_placeholder15
1while_while_cond_1540666___redundant_placeholder25
1while_while_cond_1540666___redundant_placeholder3
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1541672

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

?
0__inference_sequential_100_layer_call_fn_1538951

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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538750o
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
*__inference_lstm_302_layer_call_fn_1541048
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1537487o
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
while_body_1540810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1537258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1537258___redundant_placeholder05
1while_while_cond_1537258___redundant_placeholder15
1while_while_cond_1537258___redundant_placeholder25
1while_while_cond_1537258___redundant_placeholder3
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
/__inference_lstm_cell_253_layer_call_fn_1541787

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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537054o
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
while_body_1540337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541836

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
?
E__inference_lstm_300_layer_call_and_return_conditional_losses_1536787

inputs(
lstm_cell_252_1536705:	?(
lstm_cell_252_1536707:	d?$
lstm_cell_252_1536709:	?
identity??%lstm_cell_252/StatefulPartitionedCall?while;
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
%lstm_cell_252/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_252_1536705lstm_cell_252_1536707lstm_cell_252_1536709*
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536704n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_252_1536705lstm_cell_252_1536707lstm_cell_252_1536709*
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
while_body_1536718*
condR
while_cond_1536717*K
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
NoOpNoOp&^lstm_cell_252/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_252/StatefulPartitionedCall%lstm_cell_252/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1540194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_100_lstm_301_while_cond_1536407L
Hsequential_100_lstm_301_while_sequential_100_lstm_301_while_loop_counterR
Nsequential_100_lstm_301_while_sequential_100_lstm_301_while_maximum_iterations-
)sequential_100_lstm_301_while_placeholder/
+sequential_100_lstm_301_while_placeholder_1/
+sequential_100_lstm_301_while_placeholder_2/
+sequential_100_lstm_301_while_placeholder_3N
Jsequential_100_lstm_301_while_less_sequential_100_lstm_301_strided_slice_1e
asequential_100_lstm_301_while_sequential_100_lstm_301_while_cond_1536407___redundant_placeholder0e
asequential_100_lstm_301_while_sequential_100_lstm_301_while_cond_1536407___redundant_placeholder1e
asequential_100_lstm_301_while_sequential_100_lstm_301_while_cond_1536407___redundant_placeholder2e
asequential_100_lstm_301_while_sequential_100_lstm_301_while_cond_1536407___redundant_placeholder3*
&sequential_100_lstm_301_while_identity
?
"sequential_100/lstm_301/while/LessLess)sequential_100_lstm_301_while_placeholderJsequential_100_lstm_301_while_less_sequential_100_lstm_301_strided_slice_1*
T0*
_output_shapes
: {
&sequential_100/lstm_301/while/IdentityIdentity&sequential_100/lstm_301/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_100_lstm_301_while_identity/sequential_100/lstm_301/while/Identity:output:0*(
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
while_cond_1538051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1538051___redundant_placeholder05
1while_while_cond_1538051___redundant_placeholder15
1while_while_cond_1538051___redundant_placeholder25
1while_while_cond_1538051___redundant_placeholder3
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541966

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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541770

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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537404

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
??
?
"__inference__wrapped_model_1536637
lstm_300_inputW
Dsequential_100_lstm_300_lstm_cell_252_matmul_readvariableop_resource:	?Y
Fsequential_100_lstm_300_lstm_cell_252_matmul_1_readvariableop_resource:	d?T
Esequential_100_lstm_300_lstm_cell_252_biasadd_readvariableop_resource:	?W
Dsequential_100_lstm_301_lstm_cell_253_matmul_readvariableop_resource:	d?Y
Fsequential_100_lstm_301_lstm_cell_253_matmul_1_readvariableop_resource:	2?T
Esequential_100_lstm_301_lstm_cell_253_biasadd_readvariableop_resource:	?V
Dsequential_100_lstm_302_lstm_cell_254_matmul_readvariableop_resource:2(X
Fsequential_100_lstm_302_lstm_cell_254_matmul_1_readvariableop_resource:
(S
Esequential_100_lstm_302_lstm_cell_254_biasadd_readvariableop_resource:(I
7sequential_100_dense_100_matmul_readvariableop_resource:
F
8sequential_100_dense_100_biasadd_readvariableop_resource:
identity??/sequential_100/dense_100/BiasAdd/ReadVariableOp?.sequential_100/dense_100/MatMul/ReadVariableOp?<sequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp?;sequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOp?=sequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp?sequential_100/lstm_300/while?<sequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp?;sequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOp?=sequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp?sequential_100/lstm_301/while?<sequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp?;sequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOp?=sequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp?sequential_100/lstm_302/while[
sequential_100/lstm_300/ShapeShapelstm_300_input*
T0*
_output_shapes
:u
+sequential_100/lstm_300/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_100/lstm_300/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_100/lstm_300/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_100/lstm_300/strided_sliceStridedSlice&sequential_100/lstm_300/Shape:output:04sequential_100/lstm_300/strided_slice/stack:output:06sequential_100/lstm_300/strided_slice/stack_1:output:06sequential_100/lstm_300/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_100/lstm_300/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_100/lstm_300/zeros/packedPack.sequential_100/lstm_300/strided_slice:output:0/sequential_100/lstm_300/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_100/lstm_300/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_300/zerosFill-sequential_100/lstm_300/zeros/packed:output:0,sequential_100/lstm_300/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_100/lstm_300/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_100/lstm_300/zeros_1/packedPack.sequential_100/lstm_300/strided_slice:output:01sequential_100/lstm_300/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_100/lstm_300/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_300/zeros_1Fill/sequential_100/lstm_300/zeros_1/packed:output:0.sequential_100/lstm_300/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_100/lstm_300/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_100/lstm_300/transpose	Transposelstm_300_input/sequential_100/lstm_300/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_100/lstm_300/Shape_1Shape%sequential_100/lstm_300/transpose:y:0*
T0*
_output_shapes
:w
-sequential_100/lstm_300/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_300/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_300/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_300/strided_slice_1StridedSlice(sequential_100/lstm_300/Shape_1:output:06sequential_100/lstm_300/strided_slice_1/stack:output:08sequential_100/lstm_300/strided_slice_1/stack_1:output:08sequential_100/lstm_300/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_100/lstm_300/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_100/lstm_300/TensorArrayV2TensorListReserve<sequential_100/lstm_300/TensorArrayV2/element_shape:output:00sequential_100/lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_100/lstm_300/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_100/lstm_300/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_100/lstm_300/transpose:y:0Vsequential_100/lstm_300/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_100/lstm_300/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_300/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_300/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_300/strided_slice_2StridedSlice%sequential_100/lstm_300/transpose:y:06sequential_100/lstm_300/strided_slice_2/stack:output:08sequential_100/lstm_300/strided_slice_2/stack_1:output:08sequential_100/lstm_300/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOpReadVariableOpDsequential_100_lstm_300_lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_100/lstm_300/lstm_cell_252/MatMulMatMul0sequential_100/lstm_300/strided_slice_2:output:0Csequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOpFsequential_100_lstm_300_lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_100/lstm_300/lstm_cell_252/MatMul_1MatMul&sequential_100/lstm_300/zeros:output:0Esequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_100/lstm_300/lstm_cell_252/addAddV26sequential_100/lstm_300/lstm_cell_252/MatMul:product:08sequential_100/lstm_300/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOpEsequential_100_lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_100/lstm_300/lstm_cell_252/BiasAddBiasAdd-sequential_100/lstm_300/lstm_cell_252/add:z:0Dsequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_100/lstm_300/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_100/lstm_300/lstm_cell_252/splitSplit>sequential_100/lstm_300/lstm_cell_252/split/split_dim:output:06sequential_100/lstm_300/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_100/lstm_300/lstm_cell_252/SigmoidSigmoid4sequential_100/lstm_300/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_100/lstm_300/lstm_cell_252/Sigmoid_1Sigmoid4sequential_100/lstm_300/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_100/lstm_300/lstm_cell_252/mulMul3sequential_100/lstm_300/lstm_cell_252/Sigmoid_1:y:0(sequential_100/lstm_300/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_100/lstm_300/lstm_cell_252/ReluRelu4sequential_100/lstm_300/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_100/lstm_300/lstm_cell_252/mul_1Mul1sequential_100/lstm_300/lstm_cell_252/Sigmoid:y:08sequential_100/lstm_300/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_100/lstm_300/lstm_cell_252/add_1AddV2-sequential_100/lstm_300/lstm_cell_252/mul:z:0/sequential_100/lstm_300/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_100/lstm_300/lstm_cell_252/Sigmoid_2Sigmoid4sequential_100/lstm_300/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_100/lstm_300/lstm_cell_252/Relu_1Relu/sequential_100/lstm_300/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_100/lstm_300/lstm_cell_252/mul_2Mul3sequential_100/lstm_300/lstm_cell_252/Sigmoid_2:y:0:sequential_100/lstm_300/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_100/lstm_300/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_100/lstm_300/TensorArrayV2_1TensorListReserve>sequential_100/lstm_300/TensorArrayV2_1/element_shape:output:00sequential_100/lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_100/lstm_300/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_100/lstm_300/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_100/lstm_300/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_100/lstm_300/whileWhile3sequential_100/lstm_300/while/loop_counter:output:09sequential_100/lstm_300/while/maximum_iterations:output:0%sequential_100/lstm_300/time:output:00sequential_100/lstm_300/TensorArrayV2_1:handle:0&sequential_100/lstm_300/zeros:output:0(sequential_100/lstm_300/zeros_1:output:00sequential_100/lstm_300/strided_slice_1:output:0Osequential_100/lstm_300/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_100_lstm_300_lstm_cell_252_matmul_readvariableop_resourceFsequential_100_lstm_300_lstm_cell_252_matmul_1_readvariableop_resourceEsequential_100_lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
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
*sequential_100_lstm_300_while_body_1536269*6
cond.R,
*sequential_100_lstm_300_while_cond_1536268*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_100/lstm_300/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_100/lstm_300/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_100/lstm_300/while:output:3Qsequential_100/lstm_300/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_100/lstm_300/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_100/lstm_300/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_300/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_300/strided_slice_3StridedSliceCsequential_100/lstm_300/TensorArrayV2Stack/TensorListStack:tensor:06sequential_100/lstm_300/strided_slice_3/stack:output:08sequential_100/lstm_300/strided_slice_3/stack_1:output:08sequential_100/lstm_300/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_100/lstm_300/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_100/lstm_300/transpose_1	TransposeCsequential_100/lstm_300/TensorArrayV2Stack/TensorListStack:tensor:01sequential_100/lstm_300/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_100/lstm_300/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_100/lstm_301/ShapeShape'sequential_100/lstm_300/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_100/lstm_301/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_100/lstm_301/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_100/lstm_301/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_100/lstm_301/strided_sliceStridedSlice&sequential_100/lstm_301/Shape:output:04sequential_100/lstm_301/strided_slice/stack:output:06sequential_100/lstm_301/strided_slice/stack_1:output:06sequential_100/lstm_301/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_100/lstm_301/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_100/lstm_301/zeros/packedPack.sequential_100/lstm_301/strided_slice:output:0/sequential_100/lstm_301/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_100/lstm_301/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_301/zerosFill-sequential_100/lstm_301/zeros/packed:output:0,sequential_100/lstm_301/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_100/lstm_301/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_100/lstm_301/zeros_1/packedPack.sequential_100/lstm_301/strided_slice:output:01sequential_100/lstm_301/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_100/lstm_301/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_301/zeros_1Fill/sequential_100/lstm_301/zeros_1/packed:output:0.sequential_100/lstm_301/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_100/lstm_301/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_100/lstm_301/transpose	Transpose'sequential_100/lstm_300/transpose_1:y:0/sequential_100/lstm_301/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_100/lstm_301/Shape_1Shape%sequential_100/lstm_301/transpose:y:0*
T0*
_output_shapes
:w
-sequential_100/lstm_301/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_301/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_301/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_301/strided_slice_1StridedSlice(sequential_100/lstm_301/Shape_1:output:06sequential_100/lstm_301/strided_slice_1/stack:output:08sequential_100/lstm_301/strided_slice_1/stack_1:output:08sequential_100/lstm_301/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_100/lstm_301/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_100/lstm_301/TensorArrayV2TensorListReserve<sequential_100/lstm_301/TensorArrayV2/element_shape:output:00sequential_100/lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_100/lstm_301/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_100/lstm_301/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_100/lstm_301/transpose:y:0Vsequential_100/lstm_301/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_100/lstm_301/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_301/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_301/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_301/strided_slice_2StridedSlice%sequential_100/lstm_301/transpose:y:06sequential_100/lstm_301/strided_slice_2/stack:output:08sequential_100/lstm_301/strided_slice_2/stack_1:output:08sequential_100/lstm_301/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOpReadVariableOpDsequential_100_lstm_301_lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_100/lstm_301/lstm_cell_253/MatMulMatMul0sequential_100/lstm_301/strided_slice_2:output:0Csequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOpFsequential_100_lstm_301_lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_100/lstm_301/lstm_cell_253/MatMul_1MatMul&sequential_100/lstm_301/zeros:output:0Esequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_100/lstm_301/lstm_cell_253/addAddV26sequential_100/lstm_301/lstm_cell_253/MatMul:product:08sequential_100/lstm_301/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOpEsequential_100_lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_100/lstm_301/lstm_cell_253/BiasAddBiasAdd-sequential_100/lstm_301/lstm_cell_253/add:z:0Dsequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_100/lstm_301/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_100/lstm_301/lstm_cell_253/splitSplit>sequential_100/lstm_301/lstm_cell_253/split/split_dim:output:06sequential_100/lstm_301/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_100/lstm_301/lstm_cell_253/SigmoidSigmoid4sequential_100/lstm_301/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_100/lstm_301/lstm_cell_253/Sigmoid_1Sigmoid4sequential_100/lstm_301/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_100/lstm_301/lstm_cell_253/mulMul3sequential_100/lstm_301/lstm_cell_253/Sigmoid_1:y:0(sequential_100/lstm_301/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_100/lstm_301/lstm_cell_253/ReluRelu4sequential_100/lstm_301/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_100/lstm_301/lstm_cell_253/mul_1Mul1sequential_100/lstm_301/lstm_cell_253/Sigmoid:y:08sequential_100/lstm_301/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_100/lstm_301/lstm_cell_253/add_1AddV2-sequential_100/lstm_301/lstm_cell_253/mul:z:0/sequential_100/lstm_301/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_100/lstm_301/lstm_cell_253/Sigmoid_2Sigmoid4sequential_100/lstm_301/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_100/lstm_301/lstm_cell_253/Relu_1Relu/sequential_100/lstm_301/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_100/lstm_301/lstm_cell_253/mul_2Mul3sequential_100/lstm_301/lstm_cell_253/Sigmoid_2:y:0:sequential_100/lstm_301/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_100/lstm_301/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_100/lstm_301/TensorArrayV2_1TensorListReserve>sequential_100/lstm_301/TensorArrayV2_1/element_shape:output:00sequential_100/lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_100/lstm_301/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_100/lstm_301/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_100/lstm_301/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_100/lstm_301/whileWhile3sequential_100/lstm_301/while/loop_counter:output:09sequential_100/lstm_301/while/maximum_iterations:output:0%sequential_100/lstm_301/time:output:00sequential_100/lstm_301/TensorArrayV2_1:handle:0&sequential_100/lstm_301/zeros:output:0(sequential_100/lstm_301/zeros_1:output:00sequential_100/lstm_301/strided_slice_1:output:0Osequential_100/lstm_301/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_100_lstm_301_lstm_cell_253_matmul_readvariableop_resourceFsequential_100_lstm_301_lstm_cell_253_matmul_1_readvariableop_resourceEsequential_100_lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
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
*sequential_100_lstm_301_while_body_1536408*6
cond.R,
*sequential_100_lstm_301_while_cond_1536407*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_100/lstm_301/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_100/lstm_301/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_100/lstm_301/while:output:3Qsequential_100/lstm_301/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_100/lstm_301/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_100/lstm_301/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_301/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_301/strided_slice_3StridedSliceCsequential_100/lstm_301/TensorArrayV2Stack/TensorListStack:tensor:06sequential_100/lstm_301/strided_slice_3/stack:output:08sequential_100/lstm_301/strided_slice_3/stack_1:output:08sequential_100/lstm_301/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_100/lstm_301/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_100/lstm_301/transpose_1	TransposeCsequential_100/lstm_301/TensorArrayV2Stack/TensorListStack:tensor:01sequential_100/lstm_301/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_100/lstm_301/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_100/lstm_302/ShapeShape'sequential_100/lstm_301/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_100/lstm_302/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_100/lstm_302/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_100/lstm_302/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_100/lstm_302/strided_sliceStridedSlice&sequential_100/lstm_302/Shape:output:04sequential_100/lstm_302/strided_slice/stack:output:06sequential_100/lstm_302/strided_slice/stack_1:output:06sequential_100/lstm_302/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_100/lstm_302/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_100/lstm_302/zeros/packedPack.sequential_100/lstm_302/strided_slice:output:0/sequential_100/lstm_302/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_100/lstm_302/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_302/zerosFill-sequential_100/lstm_302/zeros/packed:output:0,sequential_100/lstm_302/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_100/lstm_302/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_100/lstm_302/zeros_1/packedPack.sequential_100/lstm_302/strided_slice:output:01sequential_100/lstm_302/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_100/lstm_302/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_100/lstm_302/zeros_1Fill/sequential_100/lstm_302/zeros_1/packed:output:0.sequential_100/lstm_302/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_100/lstm_302/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_100/lstm_302/transpose	Transpose'sequential_100/lstm_301/transpose_1:y:0/sequential_100/lstm_302/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_100/lstm_302/Shape_1Shape%sequential_100/lstm_302/transpose:y:0*
T0*
_output_shapes
:w
-sequential_100/lstm_302/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_302/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_302/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_302/strided_slice_1StridedSlice(sequential_100/lstm_302/Shape_1:output:06sequential_100/lstm_302/strided_slice_1/stack:output:08sequential_100/lstm_302/strided_slice_1/stack_1:output:08sequential_100/lstm_302/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_100/lstm_302/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_100/lstm_302/TensorArrayV2TensorListReserve<sequential_100/lstm_302/TensorArrayV2/element_shape:output:00sequential_100/lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_100/lstm_302/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_100/lstm_302/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_100/lstm_302/transpose:y:0Vsequential_100/lstm_302/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_100/lstm_302/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_302/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_100/lstm_302/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_302/strided_slice_2StridedSlice%sequential_100/lstm_302/transpose:y:06sequential_100/lstm_302/strided_slice_2/stack:output:08sequential_100/lstm_302/strided_slice_2/stack_1:output:08sequential_100/lstm_302/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOpReadVariableOpDsequential_100_lstm_302_lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_100/lstm_302/lstm_cell_254/MatMulMatMul0sequential_100/lstm_302/strided_slice_2:output:0Csequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOpFsequential_100_lstm_302_lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_100/lstm_302/lstm_cell_254/MatMul_1MatMul&sequential_100/lstm_302/zeros:output:0Esequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_100/lstm_302/lstm_cell_254/addAddV26sequential_100/lstm_302/lstm_cell_254/MatMul:product:08sequential_100/lstm_302/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOpEsequential_100_lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_100/lstm_302/lstm_cell_254/BiasAddBiasAdd-sequential_100/lstm_302/lstm_cell_254/add:z:0Dsequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_100/lstm_302/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_100/lstm_302/lstm_cell_254/splitSplit>sequential_100/lstm_302/lstm_cell_254/split/split_dim:output:06sequential_100/lstm_302/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_100/lstm_302/lstm_cell_254/SigmoidSigmoid4sequential_100/lstm_302/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_100/lstm_302/lstm_cell_254/Sigmoid_1Sigmoid4sequential_100/lstm_302/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_100/lstm_302/lstm_cell_254/mulMul3sequential_100/lstm_302/lstm_cell_254/Sigmoid_1:y:0(sequential_100/lstm_302/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_100/lstm_302/lstm_cell_254/ReluRelu4sequential_100/lstm_302/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_100/lstm_302/lstm_cell_254/mul_1Mul1sequential_100/lstm_302/lstm_cell_254/Sigmoid:y:08sequential_100/lstm_302/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_100/lstm_302/lstm_cell_254/add_1AddV2-sequential_100/lstm_302/lstm_cell_254/mul:z:0/sequential_100/lstm_302/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_100/lstm_302/lstm_cell_254/Sigmoid_2Sigmoid4sequential_100/lstm_302/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_100/lstm_302/lstm_cell_254/Relu_1Relu/sequential_100/lstm_302/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_100/lstm_302/lstm_cell_254/mul_2Mul3sequential_100/lstm_302/lstm_cell_254/Sigmoid_2:y:0:sequential_100/lstm_302/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_100/lstm_302/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_100/lstm_302/TensorArrayV2_1TensorListReserve>sequential_100/lstm_302/TensorArrayV2_1/element_shape:output:00sequential_100/lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_100/lstm_302/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_100/lstm_302/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_100/lstm_302/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_100/lstm_302/whileWhile3sequential_100/lstm_302/while/loop_counter:output:09sequential_100/lstm_302/while/maximum_iterations:output:0%sequential_100/lstm_302/time:output:00sequential_100/lstm_302/TensorArrayV2_1:handle:0&sequential_100/lstm_302/zeros:output:0(sequential_100/lstm_302/zeros_1:output:00sequential_100/lstm_302/strided_slice_1:output:0Osequential_100/lstm_302/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_100_lstm_302_lstm_cell_254_matmul_readvariableop_resourceFsequential_100_lstm_302_lstm_cell_254_matmul_1_readvariableop_resourceEsequential_100_lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
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
*sequential_100_lstm_302_while_body_1536547*6
cond.R,
*sequential_100_lstm_302_while_cond_1536546*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_100/lstm_302/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_100/lstm_302/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_100/lstm_302/while:output:3Qsequential_100/lstm_302/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_100/lstm_302/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_100/lstm_302/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_100/lstm_302/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_100/lstm_302/strided_slice_3StridedSliceCsequential_100/lstm_302/TensorArrayV2Stack/TensorListStack:tensor:06sequential_100/lstm_302/strided_slice_3/stack:output:08sequential_100/lstm_302/strided_slice_3/stack_1:output:08sequential_100/lstm_302/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_100/lstm_302/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_100/lstm_302/transpose_1	TransposeCsequential_100/lstm_302/TensorArrayV2Stack/TensorListStack:tensor:01sequential_100/lstm_302/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_100/lstm_302/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_100/dense_100/MatMul/ReadVariableOpReadVariableOp7sequential_100_dense_100_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_100/dense_100/MatMulMatMul0sequential_100/lstm_302/strided_slice_3:output:06sequential_100/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_100/dense_100/BiasAdd/ReadVariableOpReadVariableOp8sequential_100_dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_100/dense_100/BiasAddBiasAdd)sequential_100/dense_100/MatMul:product:07sequential_100/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_100/dense_100/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_100/dense_100/BiasAdd/ReadVariableOp/^sequential_100/dense_100/MatMul/ReadVariableOp=^sequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp<^sequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOp>^sequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp^sequential_100/lstm_300/while=^sequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp<^sequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOp>^sequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp^sequential_100/lstm_301/while=^sequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp<^sequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOp>^sequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp^sequential_100/lstm_302/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_100/dense_100/BiasAdd/ReadVariableOp/sequential_100/dense_100/BiasAdd/ReadVariableOp2`
.sequential_100/dense_100/MatMul/ReadVariableOp.sequential_100/dense_100/MatMul/ReadVariableOp2|
<sequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp<sequential_100/lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp2z
;sequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOp;sequential_100/lstm_300/lstm_cell_252/MatMul/ReadVariableOp2~
=sequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp=sequential_100/lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp2>
sequential_100/lstm_300/whilesequential_100/lstm_300/while2|
<sequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp<sequential_100/lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp2z
;sequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOp;sequential_100/lstm_301/lstm_cell_253/MatMul/ReadVariableOp2~
=sequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp=sequential_100/lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp2>
sequential_100/lstm_301/whilesequential_100/lstm_301/while2|
<sequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp<sequential_100/lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp2z
;sequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOp;sequential_100/lstm_302/lstm_cell_254/MatMul/ReadVariableOp2~
=sequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp=sequential_100/lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp2>
sequential_100/lstm_302/whilesequential_100/lstm_302/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_300_input
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538750

inputs#
lstm_300_1538723:	?#
lstm_300_1538725:	d?
lstm_300_1538727:	?#
lstm_301_1538730:	d?#
lstm_301_1538732:	2?
lstm_301_1538734:	?"
lstm_302_1538737:2("
lstm_302_1538739:
(
lstm_302_1538741:(#
dense_100_1538744:

dense_100_1538746:
identity??!dense_100/StatefulPartitionedCall? lstm_300/StatefulPartitionedCall? lstm_301/StatefulPartitionedCall? lstm_302/StatefulPartitionedCall?
 lstm_300/StatefulPartitionedCallStatefulPartitionedCallinputslstm_300_1538723lstm_300_1538725lstm_300_1538727*
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1538682?
 lstm_301/StatefulPartitionedCallStatefulPartitionedCall)lstm_300/StatefulPartitionedCall:output:0lstm_301_1538730lstm_301_1538732lstm_301_1538734*
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1538517?
 lstm_302/StatefulPartitionedCallStatefulPartitionedCall)lstm_301/StatefulPartitionedCall:output:0lstm_302_1538737lstm_302_1538739lstm_302_1538741*
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538352?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)lstm_302/StatefulPartitionedCall:output:0dense_100_1538744dense_100_1538746*
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_100/StatefulPartitionedCall!^lstm_300/StatefulPartitionedCall!^lstm_301/StatefulPartitionedCall!^lstm_302/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 lstm_300/StatefulPartitionedCall lstm_300/StatefulPartitionedCall2D
 lstm_301/StatefulPartitionedCall lstm_301/StatefulPartitionedCall2D
 lstm_302/StatefulPartitionedCall lstm_302/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1538268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536704

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
?#
?
while_body_1537068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_253_1537092_0:	d?0
while_lstm_cell_253_1537094_0:	2?,
while_lstm_cell_253_1537096_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_253_1537092:	d?.
while_lstm_cell_253_1537094:	2?*
while_lstm_cell_253_1537096:	???+while/lstm_cell_253/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_253/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_253_1537092_0while_lstm_cell_253_1537094_0while_lstm_cell_253_1537096_0*
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1537054?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_253/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_253/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_253/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_253/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_253_1537092while_lstm_cell_253_1537092_0"<
while_lstm_cell_253_1537094while_lstm_cell_253_1537094_0"<
while_lstm_cell_253_1537096while_lstm_cell_253_1537096_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_253/StatefulPartitionedCall+while/lstm_cell_253/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1540524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541224
inputs_0>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1541140*
condR
while_cond_1541139*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541868

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
while_body_1541140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1537902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_253_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_253_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_253_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_253_matmul_readvariableop_resource:	d?G
4while_lstm_cell_253_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_253_biasadd_readvariableop_resource:	???*while/lstm_cell_253/BiasAdd/ReadVariableOp?)while/lstm_cell_253/MatMul/ReadVariableOp?+while/lstm_cell_253/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_253_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_253/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_253_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_253/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_253/addAddV2$while/lstm_cell_253/MatMul:product:0&while/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_253_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_253/BiasAddBiasAddwhile/lstm_cell_253/add:z:02while/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_253/splitSplit,while/lstm_cell_253/split/split_dim:output:0$while/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_253/SigmoidSigmoid"while/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_1Sigmoid"while/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mulMul!while/lstm_cell_253/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_253/ReluRelu"while/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_1Mulwhile/lstm_cell_253/Sigmoid:y:0&while/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/add_1AddV2while/lstm_cell_253/mul:z:0while/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_253/Sigmoid_2Sigmoid"while/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_253/Relu_1Reluwhile/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_253/mul_2Mul!while/lstm_cell_253/Sigmoid_2:y:0(while/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_253/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_253/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_253/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_253/BiasAdd/ReadVariableOp*^while/lstm_cell_253/MatMul/ReadVariableOp,^while/lstm_cell_253/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_253_biasadd_readvariableop_resource5while_lstm_cell_253_biasadd_readvariableop_resource_0"n
4while_lstm_cell_253_matmul_1_readvariableop_resource6while_lstm_cell_253_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_253_matmul_readvariableop_resource4while_lstm_cell_253_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_253/BiasAdd/ReadVariableOp*while/lstm_cell_253/BiasAdd/ReadVariableOp2V
)while/lstm_cell_253/MatMul/ReadVariableOp)while/lstm_cell_253/MatMul/ReadVariableOp2Z
+while/lstm_cell_253/MatMul_1/ReadVariableOp+while/lstm_cell_253/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1537752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_252_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_252_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_252_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_252_matmul_readvariableop_resource:	?G
4while_lstm_cell_252_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_252_biasadd_readvariableop_resource:	???*while/lstm_cell_252/BiasAdd/ReadVariableOp?)while/lstm_cell_252/MatMul/ReadVariableOp?+while/lstm_cell_252/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_252_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_252/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_252_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_252/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_252/addAddV2$while/lstm_cell_252/MatMul:product:0&while/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_252_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_252/BiasAddBiasAddwhile/lstm_cell_252/add:z:02while/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_252/splitSplit,while/lstm_cell_252/split/split_dim:output:0$while/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_252/SigmoidSigmoid"while/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_1Sigmoid"while/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mulMul!while/lstm_cell_252/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_252/ReluRelu"while/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_1Mulwhile/lstm_cell_252/Sigmoid:y:0&while/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/add_1AddV2while/lstm_cell_252/mul:z:0while/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_252/Sigmoid_2Sigmoid"while/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_252/Relu_1Reluwhile/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_252/mul_2Mul!while/lstm_cell_252/Sigmoid_2:y:0(while/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_252/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_252/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_252/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_252/BiasAdd/ReadVariableOp*^while/lstm_cell_252/MatMul/ReadVariableOp,^while/lstm_cell_252/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_252_biasadd_readvariableop_resource5while_lstm_cell_252_biasadd_readvariableop_resource_0"n
4while_lstm_cell_252_matmul_1_readvariableop_resource6while_lstm_cell_252_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_252_matmul_readvariableop_resource4while_lstm_cell_252_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_252/BiasAdd/ReadVariableOp*while/lstm_cell_252/BiasAdd/ReadVariableOp2V
)while/lstm_cell_252/MatMul/ReadVariableOp)while/lstm_cell_252/MatMul/ReadVariableOp2Z
+while/lstm_cell_252/MatMul_1/ReadVariableOp+while/lstm_cell_252/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539378

inputsH
5lstm_300_lstm_cell_252_matmul_readvariableop_resource:	?J
7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource:	d?E
6lstm_300_lstm_cell_252_biasadd_readvariableop_resource:	?H
5lstm_301_lstm_cell_253_matmul_readvariableop_resource:	d?J
7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource:	2?E
6lstm_301_lstm_cell_253_biasadd_readvariableop_resource:	?G
5lstm_302_lstm_cell_254_matmul_readvariableop_resource:2(I
7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource:
(D
6lstm_302_lstm_cell_254_biasadd_readvariableop_resource:(:
(dense_100_matmul_readvariableop_resource:
7
)dense_100_biasadd_readvariableop_resource:
identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp?-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp?,lstm_300/lstm_cell_252/MatMul/ReadVariableOp?.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp?lstm_300/while?-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp?,lstm_301/lstm_cell_253/MatMul/ReadVariableOp?.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp?lstm_301/while?-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp?,lstm_302/lstm_cell_254/MatMul/ReadVariableOp?.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp?lstm_302/whileD
lstm_300/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_300/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_300/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_300/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_sliceStridedSlicelstm_300/Shape:output:0%lstm_300/strided_slice/stack:output:0'lstm_300/strided_slice/stack_1:output:0'lstm_300/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_300/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_300/zeros/packedPacklstm_300/strided_slice:output:0 lstm_300/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_300/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_300/zerosFilllstm_300/zeros/packed:output:0lstm_300/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_300/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_300/zeros_1/packedPacklstm_300/strided_slice:output:0"lstm_300/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_300/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_300/zeros_1Fill lstm_300/zeros_1/packed:output:0lstm_300/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_300/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_300/transpose	Transposeinputs lstm_300/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_300/Shape_1Shapelstm_300/transpose:y:0*
T0*
_output_shapes
:h
lstm_300/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_300/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_1StridedSlicelstm_300/Shape_1:output:0'lstm_300/strided_slice_1/stack:output:0)lstm_300/strided_slice_1/stack_1:output:0)lstm_300/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_300/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_300/TensorArrayV2TensorListReserve-lstm_300/TensorArrayV2/element_shape:output:0!lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_300/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_300/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_300/transpose:y:0Glstm_300/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_300/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_300/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_2StridedSlicelstm_300/transpose:y:0'lstm_300/strided_slice_2/stack:output:0)lstm_300/strided_slice_2/stack_1:output:0)lstm_300/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_300/lstm_cell_252/MatMul/ReadVariableOpReadVariableOp5lstm_300_lstm_cell_252_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_300/lstm_cell_252/MatMulMatMul!lstm_300/strided_slice_2:output:04lstm_300/lstm_cell_252/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOpReadVariableOp7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_300/lstm_cell_252/MatMul_1MatMullstm_300/zeros:output:06lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_300/lstm_cell_252/addAddV2'lstm_300/lstm_cell_252/MatMul:product:0)lstm_300/lstm_cell_252/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOpReadVariableOp6lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_300/lstm_cell_252/BiasAddBiasAddlstm_300/lstm_cell_252/add:z:05lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_300/lstm_cell_252/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_300/lstm_cell_252/splitSplit/lstm_300/lstm_cell_252/split/split_dim:output:0'lstm_300/lstm_cell_252/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_300/lstm_cell_252/SigmoidSigmoid%lstm_300/lstm_cell_252/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_300/lstm_cell_252/Sigmoid_1Sigmoid%lstm_300/lstm_cell_252/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mulMul$lstm_300/lstm_cell_252/Sigmoid_1:y:0lstm_300/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_300/lstm_cell_252/ReluRelu%lstm_300/lstm_cell_252/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mul_1Mul"lstm_300/lstm_cell_252/Sigmoid:y:0)lstm_300/lstm_cell_252/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/add_1AddV2lstm_300/lstm_cell_252/mul:z:0 lstm_300/lstm_cell_252/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_300/lstm_cell_252/Sigmoid_2Sigmoid%lstm_300/lstm_cell_252/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_300/lstm_cell_252/Relu_1Relu lstm_300/lstm_cell_252/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_300/lstm_cell_252/mul_2Mul$lstm_300/lstm_cell_252/Sigmoid_2:y:0+lstm_300/lstm_cell_252/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_300/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_300/TensorArrayV2_1TensorListReserve/lstm_300/TensorArrayV2_1/element_shape:output:0!lstm_300/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_300/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_300/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_300/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_300/whileWhile$lstm_300/while/loop_counter:output:0*lstm_300/while/maximum_iterations:output:0lstm_300/time:output:0!lstm_300/TensorArrayV2_1:handle:0lstm_300/zeros:output:0lstm_300/zeros_1:output:0!lstm_300/strided_slice_1:output:0@lstm_300/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_300_lstm_cell_252_matmul_readvariableop_resource7lstm_300_lstm_cell_252_matmul_1_readvariableop_resource6lstm_300_lstm_cell_252_biasadd_readvariableop_resource*
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
lstm_300_while_body_1539010*'
condR
lstm_300_while_cond_1539009*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_300/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_300/TensorArrayV2Stack/TensorListStackTensorListStacklstm_300/while:output:3Blstm_300/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_300/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_300/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_300/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_300/strided_slice_3StridedSlice4lstm_300/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_300/strided_slice_3/stack:output:0)lstm_300/strided_slice_3/stack_1:output:0)lstm_300/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_300/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_300/transpose_1	Transpose4lstm_300/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_300/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_300/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_301/ShapeShapelstm_300/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_301/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_301/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_301/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_sliceStridedSlicelstm_301/Shape:output:0%lstm_301/strided_slice/stack:output:0'lstm_301/strided_slice/stack_1:output:0'lstm_301/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_301/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_301/zeros/packedPacklstm_301/strided_slice:output:0 lstm_301/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_301/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_301/zerosFilllstm_301/zeros/packed:output:0lstm_301/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_301/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_301/zeros_1/packedPacklstm_301/strided_slice:output:0"lstm_301/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_301/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_301/zeros_1Fill lstm_301/zeros_1/packed:output:0lstm_301/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_301/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_301/transpose	Transposelstm_300/transpose_1:y:0 lstm_301/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_301/Shape_1Shapelstm_301/transpose:y:0*
T0*
_output_shapes
:h
lstm_301/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_301/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_1StridedSlicelstm_301/Shape_1:output:0'lstm_301/strided_slice_1/stack:output:0)lstm_301/strided_slice_1/stack_1:output:0)lstm_301/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_301/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_301/TensorArrayV2TensorListReserve-lstm_301/TensorArrayV2/element_shape:output:0!lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_301/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_301/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_301/transpose:y:0Glstm_301/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_301/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_301/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_2StridedSlicelstm_301/transpose:y:0'lstm_301/strided_slice_2/stack:output:0)lstm_301/strided_slice_2/stack_1:output:0)lstm_301/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_301/lstm_cell_253/MatMul/ReadVariableOpReadVariableOp5lstm_301_lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_301/lstm_cell_253/MatMulMatMul!lstm_301/strided_slice_2:output:04lstm_301/lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_301/lstm_cell_253/MatMul_1MatMullstm_301/zeros:output:06lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_301/lstm_cell_253/addAddV2'lstm_301/lstm_cell_253/MatMul:product:0)lstm_301/lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp6lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_301/lstm_cell_253/BiasAddBiasAddlstm_301/lstm_cell_253/add:z:05lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_301/lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_301/lstm_cell_253/splitSplit/lstm_301/lstm_cell_253/split/split_dim:output:0'lstm_301/lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_301/lstm_cell_253/SigmoidSigmoid%lstm_301/lstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_301/lstm_cell_253/Sigmoid_1Sigmoid%lstm_301/lstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mulMul$lstm_301/lstm_cell_253/Sigmoid_1:y:0lstm_301/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_301/lstm_cell_253/ReluRelu%lstm_301/lstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mul_1Mul"lstm_301/lstm_cell_253/Sigmoid:y:0)lstm_301/lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/add_1AddV2lstm_301/lstm_cell_253/mul:z:0 lstm_301/lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_301/lstm_cell_253/Sigmoid_2Sigmoid%lstm_301/lstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_301/lstm_cell_253/Relu_1Relu lstm_301/lstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_301/lstm_cell_253/mul_2Mul$lstm_301/lstm_cell_253/Sigmoid_2:y:0+lstm_301/lstm_cell_253/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_301/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_301/TensorArrayV2_1TensorListReserve/lstm_301/TensorArrayV2_1/element_shape:output:0!lstm_301/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_301/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_301/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_301/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_301/whileWhile$lstm_301/while/loop_counter:output:0*lstm_301/while/maximum_iterations:output:0lstm_301/time:output:0!lstm_301/TensorArrayV2_1:handle:0lstm_301/zeros:output:0lstm_301/zeros_1:output:0!lstm_301/strided_slice_1:output:0@lstm_301/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_301_lstm_cell_253_matmul_readvariableop_resource7lstm_301_lstm_cell_253_matmul_1_readvariableop_resource6lstm_301_lstm_cell_253_biasadd_readvariableop_resource*
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
lstm_301_while_body_1539149*'
condR
lstm_301_while_cond_1539148*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_301/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_301/TensorArrayV2Stack/TensorListStackTensorListStacklstm_301/while:output:3Blstm_301/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_301/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_301/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_301/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_301/strided_slice_3StridedSlice4lstm_301/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_301/strided_slice_3/stack:output:0)lstm_301/strided_slice_3/stack_1:output:0)lstm_301/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_301/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_301/transpose_1	Transpose4lstm_301/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_301/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_301/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_302/ShapeShapelstm_301/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_302/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_302/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_302/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_sliceStridedSlicelstm_302/Shape:output:0%lstm_302/strided_slice/stack:output:0'lstm_302/strided_slice/stack_1:output:0'lstm_302/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_302/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_302/zeros/packedPacklstm_302/strided_slice:output:0 lstm_302/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_302/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_302/zerosFilllstm_302/zeros/packed:output:0lstm_302/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_302/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_302/zeros_1/packedPacklstm_302/strided_slice:output:0"lstm_302/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_302/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_302/zeros_1Fill lstm_302/zeros_1/packed:output:0lstm_302/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_302/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_302/transpose	Transposelstm_301/transpose_1:y:0 lstm_302/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_302/Shape_1Shapelstm_302/transpose:y:0*
T0*
_output_shapes
:h
lstm_302/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_302/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_1StridedSlicelstm_302/Shape_1:output:0'lstm_302/strided_slice_1/stack:output:0)lstm_302/strided_slice_1/stack_1:output:0)lstm_302/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_302/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_302/TensorArrayV2TensorListReserve-lstm_302/TensorArrayV2/element_shape:output:0!lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_302/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_302/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_302/transpose:y:0Glstm_302/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_302/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_302/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_2StridedSlicelstm_302/transpose:y:0'lstm_302/strided_slice_2/stack:output:0)lstm_302/strided_slice_2/stack_1:output:0)lstm_302/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_302/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp5lstm_302_lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_302/lstm_cell_254/MatMulMatMul!lstm_302/strided_slice_2:output:04lstm_302/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_302/lstm_cell_254/MatMul_1MatMullstm_302/zeros:output:06lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_302/lstm_cell_254/addAddV2'lstm_302/lstm_cell_254/MatMul:product:0)lstm_302/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp6lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_302/lstm_cell_254/BiasAddBiasAddlstm_302/lstm_cell_254/add:z:05lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_302/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_302/lstm_cell_254/splitSplit/lstm_302/lstm_cell_254/split/split_dim:output:0'lstm_302/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_302/lstm_cell_254/SigmoidSigmoid%lstm_302/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_302/lstm_cell_254/Sigmoid_1Sigmoid%lstm_302/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mulMul$lstm_302/lstm_cell_254/Sigmoid_1:y:0lstm_302/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_302/lstm_cell_254/ReluRelu%lstm_302/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mul_1Mul"lstm_302/lstm_cell_254/Sigmoid:y:0)lstm_302/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/add_1AddV2lstm_302/lstm_cell_254/mul:z:0 lstm_302/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_302/lstm_cell_254/Sigmoid_2Sigmoid%lstm_302/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_302/lstm_cell_254/Relu_1Relu lstm_302/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_302/lstm_cell_254/mul_2Mul$lstm_302/lstm_cell_254/Sigmoid_2:y:0+lstm_302/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_302/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_302/TensorArrayV2_1TensorListReserve/lstm_302/TensorArrayV2_1/element_shape:output:0!lstm_302/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_302/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_302/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_302/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_302/whileWhile$lstm_302/while/loop_counter:output:0*lstm_302/while/maximum_iterations:output:0lstm_302/time:output:0!lstm_302/TensorArrayV2_1:handle:0lstm_302/zeros:output:0lstm_302/zeros_1:output:0!lstm_302/strided_slice_1:output:0@lstm_302/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_302_lstm_cell_254_matmul_readvariableop_resource7lstm_302_lstm_cell_254_matmul_1_readvariableop_resource6lstm_302_lstm_cell_254_biasadd_readvariableop_resource*
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
lstm_302_while_body_1539288*'
condR
lstm_302_while_cond_1539287*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_302/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_302/TensorArrayV2Stack/TensorListStackTensorListStacklstm_302/while:output:3Blstm_302/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_302/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_302/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_302/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_302/strided_slice_3StridedSlice4lstm_302/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_302/strided_slice_3/stack:output:0)lstm_302/strided_slice_3/stack_1:output:0)lstm_302/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_302/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_302/transpose_1	Transpose4lstm_302/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_302/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_302/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_100/MatMulMatMul!lstm_302/strided_slice_3:output:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_100/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp.^lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp-^lstm_300/lstm_cell_252/MatMul/ReadVariableOp/^lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp^lstm_300/while.^lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp-^lstm_301/lstm_cell_253/MatMul/ReadVariableOp/^lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp^lstm_301/while.^lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp-^lstm_302/lstm_cell_254/MatMul/ReadVariableOp/^lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp^lstm_302/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2^
-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp-lstm_300/lstm_cell_252/BiasAdd/ReadVariableOp2\
,lstm_300/lstm_cell_252/MatMul/ReadVariableOp,lstm_300/lstm_cell_252/MatMul/ReadVariableOp2`
.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp.lstm_300/lstm_cell_252/MatMul_1/ReadVariableOp2 
lstm_300/whilelstm_300/while2^
-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp-lstm_301/lstm_cell_253/BiasAdd/ReadVariableOp2\
,lstm_301/lstm_cell_253/MatMul/ReadVariableOp,lstm_301/lstm_cell_253/MatMul/ReadVariableOp2`
.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp.lstm_301/lstm_cell_253/MatMul_1/ReadVariableOp2 
lstm_301/whilelstm_301/while2^
-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp-lstm_302/lstm_cell_254/BiasAdd/ReadVariableOp2\
,lstm_302/lstm_cell_254/MatMul/ReadVariableOp,lstm_302/lstm_cell_254/MatMul/ReadVariableOp2`
.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp.lstm_302/lstm_cell_254/MatMul_1/ReadVariableOp2 
lstm_302/whilelstm_302/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_300_while_cond_1539009.
*lstm_300_while_lstm_300_while_loop_counter4
0lstm_300_while_lstm_300_while_maximum_iterations
lstm_300_while_placeholder 
lstm_300_while_placeholder_1 
lstm_300_while_placeholder_2 
lstm_300_while_placeholder_30
,lstm_300_while_less_lstm_300_strided_slice_1G
Clstm_300_while_lstm_300_while_cond_1539009___redundant_placeholder0G
Clstm_300_while_lstm_300_while_cond_1539009___redundant_placeholder1G
Clstm_300_while_lstm_300_while_cond_1539009___redundant_placeholder2G
Clstm_300_while_lstm_300_while_cond_1539009___redundant_placeholder3
lstm_300_while_identity
?
lstm_300/while/LessLesslstm_300_while_placeholder,lstm_300_while_less_lstm_300_strided_slice_1*
T0*
_output_shapes
: ]
lstm_300/while/IdentityIdentitylstm_300/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_300_while_identity lstm_300/while/Identity:output:0*(
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
*__inference_lstm_300_layer_call_fn_1539849

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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1538682s
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
while_cond_1540336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540336___redundant_placeholder05
1while_while_cond_1540336___redundant_placeholder15
1while_while_cond_1540336___redundant_placeholder25
1while_while_cond_1540336___redundant_placeholder3
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
*__inference_lstm_301_layer_call_fn_1540432
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537137|
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
while_cond_1538597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1538597___redundant_placeholder05
1while_while_cond_1538597___redundant_placeholder15
1while_while_cond_1538597___redundant_placeholder25
1while_while_cond_1538597___redundant_placeholder3
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541510

inputs>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1541426*
condR
while_cond_1541425*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_100_lstm_302_while_body_1536547L
Hsequential_100_lstm_302_while_sequential_100_lstm_302_while_loop_counterR
Nsequential_100_lstm_302_while_sequential_100_lstm_302_while_maximum_iterations-
)sequential_100_lstm_302_while_placeholder/
+sequential_100_lstm_302_while_placeholder_1/
+sequential_100_lstm_302_while_placeholder_2/
+sequential_100_lstm_302_while_placeholder_3K
Gsequential_100_lstm_302_while_sequential_100_lstm_302_strided_slice_1_0?
?sequential_100_lstm_302_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_302_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_100_lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0:2(`
Nsequential_100_lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0:
([
Msequential_100_lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0:(*
&sequential_100_lstm_302_while_identity,
(sequential_100_lstm_302_while_identity_1,
(sequential_100_lstm_302_while_identity_2,
(sequential_100_lstm_302_while_identity_3,
(sequential_100_lstm_302_while_identity_4,
(sequential_100_lstm_302_while_identity_5I
Esequential_100_lstm_302_while_sequential_100_lstm_302_strided_slice_1?
?sequential_100_lstm_302_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_302_tensorarrayunstack_tensorlistfromtensor\
Jsequential_100_lstm_302_while_lstm_cell_254_matmul_readvariableop_resource:2(^
Lsequential_100_lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource:
(Y
Ksequential_100_lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource:(??Bsequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp?Asequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp?Csequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp?
Osequential_100/lstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_100/lstm_302/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_100_lstm_302_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_302_tensorarrayunstack_tensorlistfromtensor_0)sequential_100_lstm_302_while_placeholderXsequential_100/lstm_302/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOpLsequential_100_lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_100/lstm_302/while/lstm_cell_254/MatMulMatMulHsequential_100/lstm_302/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOpNsequential_100_lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_100/lstm_302/while/lstm_cell_254/MatMul_1MatMul+sequential_100_lstm_302_while_placeholder_2Ksequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_100/lstm_302/while/lstm_cell_254/addAddV2<sequential_100/lstm_302/while/lstm_cell_254/MatMul:product:0>sequential_100/lstm_302/while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOpMsequential_100_lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_100/lstm_302/while/lstm_cell_254/BiasAddBiasAdd3sequential_100/lstm_302/while/lstm_cell_254/add:z:0Jsequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_100/lstm_302/while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_100/lstm_302/while/lstm_cell_254/splitSplitDsequential_100/lstm_302/while/lstm_cell_254/split/split_dim:output:0<sequential_100/lstm_302/while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_100/lstm_302/while/lstm_cell_254/SigmoidSigmoid:sequential_100/lstm_302/while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_100/lstm_302/while/lstm_cell_254/Sigmoid_1Sigmoid:sequential_100/lstm_302/while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_100/lstm_302/while/lstm_cell_254/mulMul9sequential_100/lstm_302/while/lstm_cell_254/Sigmoid_1:y:0+sequential_100_lstm_302_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_100/lstm_302/while/lstm_cell_254/ReluRelu:sequential_100/lstm_302/while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_100/lstm_302/while/lstm_cell_254/mul_1Mul7sequential_100/lstm_302/while/lstm_cell_254/Sigmoid:y:0>sequential_100/lstm_302/while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_100/lstm_302/while/lstm_cell_254/add_1AddV23sequential_100/lstm_302/while/lstm_cell_254/mul:z:05sequential_100/lstm_302/while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_100/lstm_302/while/lstm_cell_254/Sigmoid_2Sigmoid:sequential_100/lstm_302/while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_100/lstm_302/while/lstm_cell_254/Relu_1Relu5sequential_100/lstm_302/while/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_100/lstm_302/while/lstm_cell_254/mul_2Mul9sequential_100/lstm_302/while/lstm_cell_254/Sigmoid_2:y:0@sequential_100/lstm_302/while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_100/lstm_302/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_100_lstm_302_while_placeholder_1)sequential_100_lstm_302_while_placeholder5sequential_100/lstm_302/while/lstm_cell_254/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_100/lstm_302/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_100/lstm_302/while/addAddV2)sequential_100_lstm_302_while_placeholder,sequential_100/lstm_302/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_100/lstm_302/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_100/lstm_302/while/add_1AddV2Hsequential_100_lstm_302_while_sequential_100_lstm_302_while_loop_counter.sequential_100/lstm_302/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_100/lstm_302/while/IdentityIdentity'sequential_100/lstm_302/while/add_1:z:0#^sequential_100/lstm_302/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_302/while/Identity_1IdentityNsequential_100_lstm_302_while_sequential_100_lstm_302_while_maximum_iterations#^sequential_100/lstm_302/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_302/while/Identity_2Identity%sequential_100/lstm_302/while/add:z:0#^sequential_100/lstm_302/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_302/while/Identity_3IdentityRsequential_100/lstm_302/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_100/lstm_302/while/NoOp*
T0*
_output_shapes
: ?
(sequential_100/lstm_302/while/Identity_4Identity5sequential_100/lstm_302/while/lstm_cell_254/mul_2:z:0#^sequential_100/lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_100/lstm_302/while/Identity_5Identity5sequential_100/lstm_302/while/lstm_cell_254/add_1:z:0#^sequential_100/lstm_302/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_100/lstm_302/while/NoOpNoOpC^sequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOpB^sequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOpD^sequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_100_lstm_302_while_identity/sequential_100/lstm_302/while/Identity:output:0"]
(sequential_100_lstm_302_while_identity_11sequential_100/lstm_302/while/Identity_1:output:0"]
(sequential_100_lstm_302_while_identity_21sequential_100/lstm_302/while/Identity_2:output:0"]
(sequential_100_lstm_302_while_identity_31sequential_100/lstm_302/while/Identity_3:output:0"]
(sequential_100_lstm_302_while_identity_41sequential_100/lstm_302/while/Identity_4:output:0"]
(sequential_100_lstm_302_while_identity_51sequential_100/lstm_302/while/Identity_5:output:0"?
Ksequential_100_lstm_302_while_lstm_cell_254_biasadd_readvariableop_resourceMsequential_100_lstm_302_while_lstm_cell_254_biasadd_readvariableop_resource_0"?
Lsequential_100_lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resourceNsequential_100_lstm_302_while_lstm_cell_254_matmul_1_readvariableop_resource_0"?
Jsequential_100_lstm_302_while_lstm_cell_254_matmul_readvariableop_resourceLsequential_100_lstm_302_while_lstm_cell_254_matmul_readvariableop_resource_0"?
Esequential_100_lstm_302_while_sequential_100_lstm_302_strided_slice_1Gsequential_100_lstm_302_while_sequential_100_lstm_302_strided_slice_1_0"?
?sequential_100_lstm_302_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_302_tensorarrayunstack_tensorlistfromtensor?sequential_100_lstm_302_while_tensorarrayv2read_tensorlistgetitem_sequential_100_lstm_302_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOpBsequential_100/lstm_302/while/lstm_cell_254/BiasAdd/ReadVariableOp2?
Asequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOpAsequential_100/lstm_302/while/lstm_cell_254/MatMul/ReadVariableOp2?
Csequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOpCsequential_100/lstm_302/while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1536718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_252_1536742_0:	?0
while_lstm_cell_252_1536744_0:	d?,
while_lstm_cell_252_1536746_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_252_1536742:	?.
while_lstm_cell_252_1536744:	d?*
while_lstm_cell_252_1536746:	???+while/lstm_cell_252/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_252/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_252_1536742_0while_lstm_cell_252_1536744_0while_lstm_cell_252_1536746_0*
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536704?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_252/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_252/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_252/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_252/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_252_1536742while_lstm_cell_252_1536742_0"<
while_lstm_cell_252_1536744while_lstm_cell_252_1536744_0"<
while_lstm_cell_252_1536746while_lstm_cell_252_1536746_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_252/StatefulPartitionedCall+while/lstm_cell_252/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541367
inputs_0>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1541283*
condR
while_cond_1541282*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1541426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_254_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_254_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_254_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_254_matmul_readvariableop_resource:2(F
4while_lstm_cell_254_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_254_biasadd_readvariableop_resource:(??*while/lstm_cell_254/BiasAdd/ReadVariableOp?)while/lstm_cell_254/MatMul/ReadVariableOp?+while/lstm_cell_254/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_254/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_254_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_254/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_254_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_254/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_254/addAddV2$while/lstm_cell_254/MatMul:product:0&while/lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_254_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_254/BiasAddBiasAddwhile/lstm_cell_254/add:z:02while/lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_254/splitSplit,while/lstm_cell_254/split/split_dim:output:0$while/lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_254/SigmoidSigmoid"while/lstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_1Sigmoid"while/lstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mulMul!while/lstm_cell_254/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_254/ReluRelu"while/lstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_1Mulwhile/lstm_cell_254/Sigmoid:y:0&while/lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/add_1AddV2while/lstm_cell_254/mul:z:0while/lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_254/Sigmoid_2Sigmoid"while/lstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_254/Relu_1Reluwhile/lstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_254/mul_2Mul!while/lstm_cell_254/Sigmoid_2:y:0(while/lstm_cell_254/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_254/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_254/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_254/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_254/BiasAdd/ReadVariableOp*^while/lstm_cell_254/MatMul/ReadVariableOp,^while/lstm_cell_254/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_254_biasadd_readvariableop_resource5while_lstm_cell_254_biasadd_readvariableop_resource_0"n
4while_lstm_cell_254_matmul_1_readvariableop_resource6while_lstm_cell_254_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_254_matmul_readvariableop_resource4while_lstm_cell_254_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_254/BiasAdd/ReadVariableOp*while/lstm_cell_254/BiasAdd/ReadVariableOp2V
)while/lstm_cell_254/MatMul/ReadVariableOp)while/lstm_cell_254/MatMul/ReadVariableOp2Z
+while/lstm_cell_254/MatMul_1/ReadVariableOp+while/lstm_cell_254/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538136

inputs>
,lstm_cell_254_matmul_readvariableop_resource:2(@
.lstm_cell_254_matmul_1_readvariableop_resource:
(;
-lstm_cell_254_biasadd_readvariableop_resource:(
identity??$lstm_cell_254/BiasAdd/ReadVariableOp?#lstm_cell_254/MatMul/ReadVariableOp?%lstm_cell_254/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_254/MatMul/ReadVariableOpReadVariableOp,lstm_cell_254_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_254/MatMulMatMulstrided_slice_2:output:0+lstm_cell_254/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_254/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_254_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_254/MatMul_1MatMulzeros:output:0-lstm_cell_254/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_254/addAddV2lstm_cell_254/MatMul:product:0 lstm_cell_254/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_254/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_254_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_254/BiasAddBiasAddlstm_cell_254/add:z:0,lstm_cell_254/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_254/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_254/splitSplit&lstm_cell_254/split/split_dim:output:0lstm_cell_254/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_254/SigmoidSigmoidlstm_cell_254/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_1Sigmoidlstm_cell_254/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_254/mulMullstm_cell_254/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_254/ReluRelulstm_cell_254/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_1Mullstm_cell_254/Sigmoid:y:0 lstm_cell_254/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_254/add_1AddV2lstm_cell_254/mul:z:0lstm_cell_254/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_254/Sigmoid_2Sigmoidlstm_cell_254/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_254/Relu_1Relulstm_cell_254/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_254/mul_2Mullstm_cell_254/Sigmoid_2:y:0"lstm_cell_254/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_254_matmul_readvariableop_resource.lstm_cell_254_matmul_1_readvariableop_resource-lstm_cell_254_biasadd_readvariableop_resource*
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
while_body_1538052*
condR
while_cond_1538051*K
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
NoOpNoOp%^lstm_cell_254/BiasAdd/ReadVariableOp$^lstm_cell_254/MatMul/ReadVariableOp&^lstm_cell_254/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_254/BiasAdd/ReadVariableOp$lstm_cell_254/BiasAdd/ReadVariableOp2J
#lstm_cell_254/MatMul/ReadVariableOp#lstm_cell_254/MatMul/ReadVariableOp2N
%lstm_cell_254/MatMul_1/ReadVariableOp%lstm_cell_254/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_252_layer_call_fn_1541706

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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1536850o
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
?
*__inference_lstm_301_layer_call_fn_1540465

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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1538517s
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
?
*__inference_lstm_300_layer_call_fn_1539838

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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1537836s
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
*__inference_lstm_301_layer_call_fn_1540454

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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1537986s
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
while_body_1537609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_254_1537633_0:2(/
while_lstm_cell_254_1537635_0:
(+
while_lstm_cell_254_1537637_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_254_1537633:2(-
while_lstm_cell_254_1537635:
()
while_lstm_cell_254_1537637:(??+while/lstm_cell_254/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_254/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_254_1537633_0while_lstm_cell_254_1537635_0while_lstm_cell_254_1537637_0*
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1537550?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_254/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_254/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_254/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_254/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_254_1537633while_lstm_cell_254_1537633_0"<
while_lstm_cell_254_1537635while_lstm_cell_254_1537635_0"<
while_lstm_cell_254_1537637while_lstm_cell_254_1537637_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_254/StatefulPartitionedCall+while/lstm_cell_254/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1538517

inputs?
,lstm_cell_253_matmul_readvariableop_resource:	d?A
.lstm_cell_253_matmul_1_readvariableop_resource:	2?<
-lstm_cell_253_biasadd_readvariableop_resource:	?
identity??$lstm_cell_253/BiasAdd/ReadVariableOp?#lstm_cell_253/MatMul/ReadVariableOp?%lstm_cell_253/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_253/MatMul/ReadVariableOpReadVariableOp,lstm_cell_253_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_253/MatMulMatMulstrided_slice_2:output:0+lstm_cell_253/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_253/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_253_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_253/MatMul_1MatMulzeros:output:0-lstm_cell_253/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_253/addAddV2lstm_cell_253/MatMul:product:0 lstm_cell_253/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_253/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_253_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_253/BiasAddBiasAddlstm_cell_253/add:z:0,lstm_cell_253/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_253/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_253/splitSplit&lstm_cell_253/split/split_dim:output:0lstm_cell_253/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_253/SigmoidSigmoidlstm_cell_253/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_1Sigmoidlstm_cell_253/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_253/mulMullstm_cell_253/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_253/ReluRelulstm_cell_253/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_1Mullstm_cell_253/Sigmoid:y:0 lstm_cell_253/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_253/add_1AddV2lstm_cell_253/mul:z:0lstm_cell_253/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_253/Sigmoid_2Sigmoidlstm_cell_253/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_253/Relu_1Relulstm_cell_253/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_253/mul_2Mullstm_cell_253/Sigmoid_2:y:0"lstm_cell_253/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_253_matmul_readvariableop_resource.lstm_cell_253_matmul_1_readvariableop_resource-lstm_cell_253_biasadd_readvariableop_resource*
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
while_body_1538433*
condR
while_cond_1538432*K
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
NoOpNoOp%^lstm_cell_253/BiasAdd/ReadVariableOp$^lstm_cell_253/MatMul/ReadVariableOp&^lstm_cell_253/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_253/BiasAdd/ReadVariableOp$lstm_cell_253/BiasAdd/ReadVariableOp2J
#lstm_cell_253/MatMul/ReadVariableOp#lstm_cell_253/MatMul/ReadVariableOp2N
%lstm_cell_253/MatMul_1/ReadVariableOp%lstm_cell_253/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538862
lstm_300_input#
lstm_300_1538835:	?#
lstm_300_1538837:	d?
lstm_300_1538839:	?#
lstm_301_1538842:	d?#
lstm_301_1538844:	2?
lstm_301_1538846:	?"
lstm_302_1538849:2("
lstm_302_1538851:
(
lstm_302_1538853:(#
dense_100_1538856:

dense_100_1538858:
identity??!dense_100/StatefulPartitionedCall? lstm_300/StatefulPartitionedCall? lstm_301/StatefulPartitionedCall? lstm_302/StatefulPartitionedCall?
 lstm_300/StatefulPartitionedCallStatefulPartitionedCalllstm_300_inputlstm_300_1538835lstm_300_1538837lstm_300_1538839*
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1538682?
 lstm_301/StatefulPartitionedCallStatefulPartitionedCall)lstm_300/StatefulPartitionedCall:output:0lstm_301_1538842lstm_301_1538844lstm_301_1538846*
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1538517?
 lstm_302/StatefulPartitionedCallStatefulPartitionedCall)lstm_301/StatefulPartitionedCall:output:0lstm_302_1538849lstm_302_1538851lstm_302_1538853*
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1538352?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)lstm_302/StatefulPartitionedCall:output:0dense_100_1538856dense_100_1538858*
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1538154y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_100/StatefulPartitionedCall!^lstm_300/StatefulPartitionedCall!^lstm_301/StatefulPartitionedCall!^lstm_302/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 lstm_300/StatefulPartitionedCall lstm_300/StatefulPartitionedCall2D
 lstm_301/StatefulPartitionedCall lstm_301/StatefulPartitionedCall2D
 lstm_302/StatefulPartitionedCall lstm_302/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_300_input
?
?
while_cond_1540952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1540952___redundant_placeholder05
1while_while_cond_1540952___redundant_placeholder15
1while_while_cond_1540952___redundant_placeholder25
1while_while_cond_1540952___redundant_placeholder3
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
lstm_300_input;
 serving_default_lstm_300_input:0?????????=
	dense_1000
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
2dense_100/kernel
:2dense_100/bias
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
0:.	?2lstm_300/lstm_cell_300/kernel
::8	d?2'lstm_300/lstm_cell_300/recurrent_kernel
*:(?2lstm_300/lstm_cell_300/bias
0:.	d?2lstm_301/lstm_cell_301/kernel
::8	2?2'lstm_301/lstm_cell_301/recurrent_kernel
*:(?2lstm_301/lstm_cell_301/bias
/:-2(2lstm_302/lstm_cell_302/kernel
9:7
(2'lstm_302/lstm_cell_302/recurrent_kernel
):'(2lstm_302/lstm_cell_302/bias
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
2Adam/dense_100/kernel/m
!:2Adam/dense_100/bias/m
5:3	?2$Adam/lstm_300/lstm_cell_300/kernel/m
?:=	d?2.Adam/lstm_300/lstm_cell_300/recurrent_kernel/m
/:-?2"Adam/lstm_300/lstm_cell_300/bias/m
5:3	d?2$Adam/lstm_301/lstm_cell_301/kernel/m
?:=	2?2.Adam/lstm_301/lstm_cell_301/recurrent_kernel/m
/:-?2"Adam/lstm_301/lstm_cell_301/bias/m
4:22(2$Adam/lstm_302/lstm_cell_302/kernel/m
>:<
(2.Adam/lstm_302/lstm_cell_302/recurrent_kernel/m
.:,(2"Adam/lstm_302/lstm_cell_302/bias/m
':%
2Adam/dense_100/kernel/v
!:2Adam/dense_100/bias/v
5:3	?2$Adam/lstm_300/lstm_cell_300/kernel/v
?:=	d?2.Adam/lstm_300/lstm_cell_300/recurrent_kernel/v
/:-?2"Adam/lstm_300/lstm_cell_300/bias/v
5:3	d?2$Adam/lstm_301/lstm_cell_301/kernel/v
?:=	2?2.Adam/lstm_301/lstm_cell_301/recurrent_kernel/v
/:-?2"Adam/lstm_301/lstm_cell_301/bias/v
4:22(2$Adam/lstm_302/lstm_cell_302/kernel/v
>:<
(2.Adam/lstm_302/lstm_cell_302/recurrent_kernel/v
.:,(2"Adam/lstm_302/lstm_cell_302/bias/v
?2?
0__inference_sequential_100_layer_call_fn_1538186
0__inference_sequential_100_layer_call_fn_1538924
0__inference_sequential_100_layer_call_fn_1538951
0__inference_sequential_100_layer_call_fn_1538802?
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539378
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539805
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538832
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538862?
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
"__inference__wrapped_model_1536637lstm_300_input"?
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
*__inference_lstm_300_layer_call_fn_1539816
*__inference_lstm_300_layer_call_fn_1539827
*__inference_lstm_300_layer_call_fn_1539838
*__inference_lstm_300_layer_call_fn_1539849?
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1539992
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540135
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540278
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540421?
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
*__inference_lstm_301_layer_call_fn_1540432
*__inference_lstm_301_layer_call_fn_1540443
*__inference_lstm_301_layer_call_fn_1540454
*__inference_lstm_301_layer_call_fn_1540465?
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540608
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540751
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540894
E__inference_lstm_301_layer_call_and_return_conditional_losses_1541037?
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
*__inference_lstm_302_layer_call_fn_1541048
*__inference_lstm_302_layer_call_fn_1541059
*__inference_lstm_302_layer_call_fn_1541070
*__inference_lstm_302_layer_call_fn_1541081?
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541224
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541367
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541510
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541653?
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
+__inference_dense_100_layer_call_fn_1541662?
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
F__inference_dense_100_layer_call_and_return_conditional_losses_1541672?
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
%__inference_signature_wrapper_1538897lstm_300_input"?
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
/__inference_lstm_cell_252_layer_call_fn_1541689
/__inference_lstm_cell_252_layer_call_fn_1541706?
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541738
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541770?
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
/__inference_lstm_cell_253_layer_call_fn_1541787
/__inference_lstm_cell_253_layer_call_fn_1541804?
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541836
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541868?
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
/__inference_lstm_cell_254_layer_call_fn_1541885
/__inference_lstm_cell_254_layer_call_fn_1541902?
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541934
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541966?
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
"__inference__wrapped_model_1536637?-./012345!";?8
1?.
,?)
lstm_300_input?????????
? "5?2
0
	dense_100#? 
	dense_100??????????
F__inference_dense_100_layer_call_and_return_conditional_losses_1541672\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_100_layer_call_fn_1541662O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_300_layer_call_and_return_conditional_losses_1539992?-./O?L
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540135?-./O?L
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540278q-./??<
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
E__inference_lstm_300_layer_call_and_return_conditional_losses_1540421q-./??<
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
*__inference_lstm_300_layer_call_fn_1539816}-./O?L
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
*__inference_lstm_300_layer_call_fn_1539827}-./O?L
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
*__inference_lstm_300_layer_call_fn_1539838d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_300_layer_call_fn_1539849d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540608?012O?L
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540751?012O?L
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1540894q012??<
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
E__inference_lstm_301_layer_call_and_return_conditional_losses_1541037q012??<
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
*__inference_lstm_301_layer_call_fn_1540432}012O?L
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
*__inference_lstm_301_layer_call_fn_1540443}012O?L
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
*__inference_lstm_301_layer_call_fn_1540454d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_301_layer_call_fn_1540465d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541224}345O?L
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541367}345O?L
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541510m345??<
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
E__inference_lstm_302_layer_call_and_return_conditional_losses_1541653m345??<
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
*__inference_lstm_302_layer_call_fn_1541048p345O?L
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
*__inference_lstm_302_layer_call_fn_1541059p345O?L
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
*__inference_lstm_302_layer_call_fn_1541070`345??<
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
*__inference_lstm_302_layer_call_fn_1541081`345??<
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541738?-./??}
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
J__inference_lstm_cell_252_layer_call_and_return_conditional_losses_1541770?-./??}
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
/__inference_lstm_cell_252_layer_call_fn_1541689?-./??}
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
/__inference_lstm_cell_252_layer_call_fn_1541706?-./??}
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541836?012??}
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
J__inference_lstm_cell_253_layer_call_and_return_conditional_losses_1541868?012??}
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
/__inference_lstm_cell_253_layer_call_fn_1541787?012??}
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
/__inference_lstm_cell_253_layer_call_fn_1541804?012??}
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541934?345??}
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
J__inference_lstm_cell_254_layer_call_and_return_conditional_losses_1541966?345??}
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
/__inference_lstm_cell_254_layer_call_fn_1541885?345??}
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
/__inference_lstm_cell_254_layer_call_fn_1541902?345??}
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538832y-./012345!"C?@
9?6
,?)
lstm_300_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_100_layer_call_and_return_conditional_losses_1538862y-./012345!"C?@
9?6
,?)
lstm_300_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539378q-./012345!";?8
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_1539805q-./012345!";?8
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
0__inference_sequential_100_layer_call_fn_1538186l-./012345!"C?@
9?6
,?)
lstm_300_input?????????
p 

 
? "???????????
0__inference_sequential_100_layer_call_fn_1538802l-./012345!"C?@
9?6
,?)
lstm_300_input?????????
p

 
? "???????????
0__inference_sequential_100_layer_call_fn_1538924d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_100_layer_call_fn_1538951d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1538897?-./012345!"M?J
? 
C?@
>
lstm_300_input,?)
lstm_300_input?????????"5?2
0
	dense_100#? 
	dense_100?????????