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
dense_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_140/kernel
u
$dense_140/kernel/Read/ReadVariableOpReadVariableOpdense_140/kernel*
_output_shapes

:
*
dtype0
t
dense_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_140/bias
m
"dense_140/bias/Read/ReadVariableOpReadVariableOpdense_140/bias*
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
lstm_420/lstm_cell_420/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_420/lstm_cell_420/kernel
?
1lstm_420/lstm_cell_420/kernel/Read/ReadVariableOpReadVariableOplstm_420/lstm_cell_420/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_420/lstm_cell_420/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_420/lstm_cell_420/recurrent_kernel
?
;lstm_420/lstm_cell_420/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_420/lstm_cell_420/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_420/lstm_cell_420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_420/lstm_cell_420/bias
?
/lstm_420/lstm_cell_420/bias/Read/ReadVariableOpReadVariableOplstm_420/lstm_cell_420/bias*
_output_shapes	
:?*
dtype0
?
lstm_421/lstm_cell_421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_421/lstm_cell_421/kernel
?
1lstm_421/lstm_cell_421/kernel/Read/ReadVariableOpReadVariableOplstm_421/lstm_cell_421/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_421/lstm_cell_421/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_421/lstm_cell_421/recurrent_kernel
?
;lstm_421/lstm_cell_421/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_421/lstm_cell_421/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_421/lstm_cell_421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_421/lstm_cell_421/bias
?
/lstm_421/lstm_cell_421/bias/Read/ReadVariableOpReadVariableOplstm_421/lstm_cell_421/bias*
_output_shapes	
:?*
dtype0
?
lstm_422/lstm_cell_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_422/lstm_cell_422/kernel
?
1lstm_422/lstm_cell_422/kernel/Read/ReadVariableOpReadVariableOplstm_422/lstm_cell_422/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_422/lstm_cell_422/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_422/lstm_cell_422/recurrent_kernel
?
;lstm_422/lstm_cell_422/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_422/lstm_cell_422/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_422/lstm_cell_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_422/lstm_cell_422/bias
?
/lstm_422/lstm_cell_422/bias/Read/ReadVariableOpReadVariableOplstm_422/lstm_cell_422/bias*
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
Adam/dense_140/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_140/kernel/m
?
+Adam/dense_140/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_140/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_140/bias/m
{
)Adam/dense_140/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_420/lstm_cell_420/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_420/lstm_cell_420/kernel/m
?
8Adam/lstm_420/lstm_cell_420/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_420/lstm_cell_420/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_420/lstm_cell_420/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_420/lstm_cell_420/recurrent_kernel/m
?
BAdam/lstm_420/lstm_cell_420/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_420/lstm_cell_420/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_420/lstm_cell_420/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_420/lstm_cell_420/bias/m
?
6Adam/lstm_420/lstm_cell_420/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_420/lstm_cell_420/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_421/lstm_cell_421/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_421/lstm_cell_421/kernel/m
?
8Adam/lstm_421/lstm_cell_421/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_421/lstm_cell_421/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_421/lstm_cell_421/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_421/lstm_cell_421/recurrent_kernel/m
?
BAdam/lstm_421/lstm_cell_421/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_421/lstm_cell_421/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_421/lstm_cell_421/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_421/lstm_cell_421/bias/m
?
6Adam/lstm_421/lstm_cell_421/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_421/lstm_cell_421/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_422/lstm_cell_422/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_422/lstm_cell_422/kernel/m
?
8Adam/lstm_422/lstm_cell_422/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_422/lstm_cell_422/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_422/lstm_cell_422/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_422/lstm_cell_422/recurrent_kernel/m
?
BAdam/lstm_422/lstm_cell_422/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_422/lstm_cell_422/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_422/lstm_cell_422/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_422/lstm_cell_422/bias/m
?
6Adam/lstm_422/lstm_cell_422/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_422/lstm_cell_422/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_140/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_140/kernel/v
?
+Adam/dense_140/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_140/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_140/bias/v
{
)Adam/dense_140/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_420/lstm_cell_420/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_420/lstm_cell_420/kernel/v
?
8Adam/lstm_420/lstm_cell_420/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_420/lstm_cell_420/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_420/lstm_cell_420/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_420/lstm_cell_420/recurrent_kernel/v
?
BAdam/lstm_420/lstm_cell_420/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_420/lstm_cell_420/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_420/lstm_cell_420/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_420/lstm_cell_420/bias/v
?
6Adam/lstm_420/lstm_cell_420/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_420/lstm_cell_420/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_421/lstm_cell_421/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_421/lstm_cell_421/kernel/v
?
8Adam/lstm_421/lstm_cell_421/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_421/lstm_cell_421/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_421/lstm_cell_421/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_421/lstm_cell_421/recurrent_kernel/v
?
BAdam/lstm_421/lstm_cell_421/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_421/lstm_cell_421/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_421/lstm_cell_421/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_421/lstm_cell_421/bias/v
?
6Adam/lstm_421/lstm_cell_421/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_421/lstm_cell_421/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_422/lstm_cell_422/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_422/lstm_cell_422/kernel/v
?
8Adam/lstm_422/lstm_cell_422/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_422/lstm_cell_422/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_422/lstm_cell_422/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_422/lstm_cell_422/recurrent_kernel/v
?
BAdam/lstm_422/lstm_cell_422/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_422/lstm_cell_422/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_422/lstm_cell_422/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_422/lstm_cell_422/bias/v
?
6Adam/lstm_422/lstm_cell_422/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_422/lstm_cell_422/bias/v*
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
VARIABLE_VALUEdense_140/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_140/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_420/lstm_cell_420/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_420/lstm_cell_420/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_420/lstm_cell_420/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_421/lstm_cell_421/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_421/lstm_cell_421/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_421/lstm_cell_421/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_422/lstm_cell_422/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_422/lstm_cell_422/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_422/lstm_cell_422/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_140/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_140/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_420/lstm_cell_420/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_420/lstm_cell_420/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_420/lstm_cell_420/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_421/lstm_cell_421/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_421/lstm_cell_421/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_421/lstm_cell_421/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_422/lstm_cell_422/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_422/lstm_cell_422/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_422/lstm_cell_422/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_140/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_140/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_420/lstm_cell_420/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_420/lstm_cell_420/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_420/lstm_cell_420/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_421/lstm_cell_421/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_421/lstm_cell_421/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_421/lstm_cell_421/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_422/lstm_cell_422/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_422/lstm_cell_422/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_422/lstm_cell_422/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_420_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_420_inputlstm_420/lstm_cell_420/kernel'lstm_420/lstm_cell_420/recurrent_kernellstm_420/lstm_cell_420/biaslstm_421/lstm_cell_421/kernel'lstm_421/lstm_cell_421/recurrent_kernellstm_421/lstm_cell_421/biaslstm_422/lstm_cell_422/kernel'lstm_422/lstm_cell_422/recurrent_kernellstm_422/lstm_cell_422/biasdense_140/kerneldense_140/bias*
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
%__inference_signature_wrapper_3354176
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_140/kernel/Read/ReadVariableOp"dense_140/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_420/lstm_cell_420/kernel/Read/ReadVariableOp;lstm_420/lstm_cell_420/recurrent_kernel/Read/ReadVariableOp/lstm_420/lstm_cell_420/bias/Read/ReadVariableOp1lstm_421/lstm_cell_421/kernel/Read/ReadVariableOp;lstm_421/lstm_cell_421/recurrent_kernel/Read/ReadVariableOp/lstm_421/lstm_cell_421/bias/Read/ReadVariableOp1lstm_422/lstm_cell_422/kernel/Read/ReadVariableOp;lstm_422/lstm_cell_422/recurrent_kernel/Read/ReadVariableOp/lstm_422/lstm_cell_422/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_140/kernel/m/Read/ReadVariableOp)Adam/dense_140/bias/m/Read/ReadVariableOp8Adam/lstm_420/lstm_cell_420/kernel/m/Read/ReadVariableOpBAdam/lstm_420/lstm_cell_420/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_420/lstm_cell_420/bias/m/Read/ReadVariableOp8Adam/lstm_421/lstm_cell_421/kernel/m/Read/ReadVariableOpBAdam/lstm_421/lstm_cell_421/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_421/lstm_cell_421/bias/m/Read/ReadVariableOp8Adam/lstm_422/lstm_cell_422/kernel/m/Read/ReadVariableOpBAdam/lstm_422/lstm_cell_422/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_422/lstm_cell_422/bias/m/Read/ReadVariableOp+Adam/dense_140/kernel/v/Read/ReadVariableOp)Adam/dense_140/bias/v/Read/ReadVariableOp8Adam/lstm_420/lstm_cell_420/kernel/v/Read/ReadVariableOpBAdam/lstm_420/lstm_cell_420/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_420/lstm_cell_420/bias/v/Read/ReadVariableOp8Adam/lstm_421/lstm_cell_421/kernel/v/Read/ReadVariableOpBAdam/lstm_421/lstm_cell_421/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_421/lstm_cell_421/bias/v/Read/ReadVariableOp8Adam/lstm_422/lstm_cell_422/kernel/v/Read/ReadVariableOpBAdam/lstm_422/lstm_cell_422/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_422/lstm_cell_422/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3357388
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_140/kerneldense_140/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_420/lstm_cell_420/kernel'lstm_420/lstm_cell_420/recurrent_kernellstm_420/lstm_cell_420/biaslstm_421/lstm_cell_421/kernel'lstm_421/lstm_cell_421/recurrent_kernellstm_421/lstm_cell_421/biaslstm_422/lstm_cell_422/kernel'lstm_422/lstm_cell_422/recurrent_kernellstm_422/lstm_cell_422/biastotalcountAdam/dense_140/kernel/mAdam/dense_140/bias/m$Adam/lstm_420/lstm_cell_420/kernel/m.Adam/lstm_420/lstm_cell_420/recurrent_kernel/m"Adam/lstm_420/lstm_cell_420/bias/m$Adam/lstm_421/lstm_cell_421/kernel/m.Adam/lstm_421/lstm_cell_421/recurrent_kernel/m"Adam/lstm_421/lstm_cell_421/bias/m$Adam/lstm_422/lstm_cell_422/kernel/m.Adam/lstm_422/lstm_cell_422/recurrent_kernel/m"Adam/lstm_422/lstm_cell_422/bias/mAdam/dense_140/kernel/vAdam/dense_140/bias/v$Adam/lstm_420/lstm_cell_420/kernel/v.Adam/lstm_420/lstm_cell_420/recurrent_kernel/v"Adam/lstm_420/lstm_cell_420/bias/v$Adam/lstm_421/lstm_cell_421/kernel/v.Adam/lstm_421/lstm_cell_421/recurrent_kernel/v"Adam/lstm_421/lstm_cell_421/bias/v$Adam/lstm_422/lstm_cell_422/kernel/v.Adam/lstm_422/lstm_cell_422/recurrent_kernel/v"Adam/lstm_422/lstm_cell_422/bias/v*4
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
#__inference__traced_restore_3357518??+
?
?
while_cond_3352537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3352537___redundant_placeholder05
1while_while_cond_3352537___redundant_placeholder15
1while_while_cond_3352537___redundant_placeholder25
1while_while_cond_3352537___redundant_placeholder3
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
"__inference__wrapped_model_3351916
lstm_420_inputW
Dsequential_140_lstm_420_lstm_cell_552_matmul_readvariableop_resource:	?Y
Fsequential_140_lstm_420_lstm_cell_552_matmul_1_readvariableop_resource:	d?T
Esequential_140_lstm_420_lstm_cell_552_biasadd_readvariableop_resource:	?W
Dsequential_140_lstm_421_lstm_cell_553_matmul_readvariableop_resource:	d?Y
Fsequential_140_lstm_421_lstm_cell_553_matmul_1_readvariableop_resource:	2?T
Esequential_140_lstm_421_lstm_cell_553_biasadd_readvariableop_resource:	?V
Dsequential_140_lstm_422_lstm_cell_554_matmul_readvariableop_resource:2(X
Fsequential_140_lstm_422_lstm_cell_554_matmul_1_readvariableop_resource:
(S
Esequential_140_lstm_422_lstm_cell_554_biasadd_readvariableop_resource:(I
7sequential_140_dense_140_matmul_readvariableop_resource:
F
8sequential_140_dense_140_biasadd_readvariableop_resource:
identity??/sequential_140/dense_140/BiasAdd/ReadVariableOp?.sequential_140/dense_140/MatMul/ReadVariableOp?<sequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp?;sequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOp?=sequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp?sequential_140/lstm_420/while?<sequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp?;sequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOp?=sequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp?sequential_140/lstm_421/while?<sequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp?;sequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOp?=sequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp?sequential_140/lstm_422/while[
sequential_140/lstm_420/ShapeShapelstm_420_input*
T0*
_output_shapes
:u
+sequential_140/lstm_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_140/lstm_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_140/lstm_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_140/lstm_420/strided_sliceStridedSlice&sequential_140/lstm_420/Shape:output:04sequential_140/lstm_420/strided_slice/stack:output:06sequential_140/lstm_420/strided_slice/stack_1:output:06sequential_140/lstm_420/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_140/lstm_420/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_140/lstm_420/zeros/packedPack.sequential_140/lstm_420/strided_slice:output:0/sequential_140/lstm_420/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_140/lstm_420/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_420/zerosFill-sequential_140/lstm_420/zeros/packed:output:0,sequential_140/lstm_420/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_140/lstm_420/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_140/lstm_420/zeros_1/packedPack.sequential_140/lstm_420/strided_slice:output:01sequential_140/lstm_420/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_140/lstm_420/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_420/zeros_1Fill/sequential_140/lstm_420/zeros_1/packed:output:0.sequential_140/lstm_420/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_140/lstm_420/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_140/lstm_420/transpose	Transposelstm_420_input/sequential_140/lstm_420/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_140/lstm_420/Shape_1Shape%sequential_140/lstm_420/transpose:y:0*
T0*
_output_shapes
:w
-sequential_140/lstm_420/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_420/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_420/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_420/strided_slice_1StridedSlice(sequential_140/lstm_420/Shape_1:output:06sequential_140/lstm_420/strided_slice_1/stack:output:08sequential_140/lstm_420/strided_slice_1/stack_1:output:08sequential_140/lstm_420/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_140/lstm_420/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_140/lstm_420/TensorArrayV2TensorListReserve<sequential_140/lstm_420/TensorArrayV2/element_shape:output:00sequential_140/lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_140/lstm_420/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_140/lstm_420/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_140/lstm_420/transpose:y:0Vsequential_140/lstm_420/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_140/lstm_420/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_420/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_420/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_420/strided_slice_2StridedSlice%sequential_140/lstm_420/transpose:y:06sequential_140/lstm_420/strided_slice_2/stack:output:08sequential_140/lstm_420/strided_slice_2/stack_1:output:08sequential_140/lstm_420/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOpReadVariableOpDsequential_140_lstm_420_lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_140/lstm_420/lstm_cell_552/MatMulMatMul0sequential_140/lstm_420/strided_slice_2:output:0Csequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOpFsequential_140_lstm_420_lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_140/lstm_420/lstm_cell_552/MatMul_1MatMul&sequential_140/lstm_420/zeros:output:0Esequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_140/lstm_420/lstm_cell_552/addAddV26sequential_140/lstm_420/lstm_cell_552/MatMul:product:08sequential_140/lstm_420/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOpEsequential_140_lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_140/lstm_420/lstm_cell_552/BiasAddBiasAdd-sequential_140/lstm_420/lstm_cell_552/add:z:0Dsequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_140/lstm_420/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_140/lstm_420/lstm_cell_552/splitSplit>sequential_140/lstm_420/lstm_cell_552/split/split_dim:output:06sequential_140/lstm_420/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_140/lstm_420/lstm_cell_552/SigmoidSigmoid4sequential_140/lstm_420/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_140/lstm_420/lstm_cell_552/Sigmoid_1Sigmoid4sequential_140/lstm_420/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_140/lstm_420/lstm_cell_552/mulMul3sequential_140/lstm_420/lstm_cell_552/Sigmoid_1:y:0(sequential_140/lstm_420/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_140/lstm_420/lstm_cell_552/ReluRelu4sequential_140/lstm_420/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_140/lstm_420/lstm_cell_552/mul_1Mul1sequential_140/lstm_420/lstm_cell_552/Sigmoid:y:08sequential_140/lstm_420/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_140/lstm_420/lstm_cell_552/add_1AddV2-sequential_140/lstm_420/lstm_cell_552/mul:z:0/sequential_140/lstm_420/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_140/lstm_420/lstm_cell_552/Sigmoid_2Sigmoid4sequential_140/lstm_420/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_140/lstm_420/lstm_cell_552/Relu_1Relu/sequential_140/lstm_420/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_140/lstm_420/lstm_cell_552/mul_2Mul3sequential_140/lstm_420/lstm_cell_552/Sigmoid_2:y:0:sequential_140/lstm_420/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_140/lstm_420/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_140/lstm_420/TensorArrayV2_1TensorListReserve>sequential_140/lstm_420/TensorArrayV2_1/element_shape:output:00sequential_140/lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_140/lstm_420/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_140/lstm_420/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_140/lstm_420/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_140/lstm_420/whileWhile3sequential_140/lstm_420/while/loop_counter:output:09sequential_140/lstm_420/while/maximum_iterations:output:0%sequential_140/lstm_420/time:output:00sequential_140/lstm_420/TensorArrayV2_1:handle:0&sequential_140/lstm_420/zeros:output:0(sequential_140/lstm_420/zeros_1:output:00sequential_140/lstm_420/strided_slice_1:output:0Osequential_140/lstm_420/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_140_lstm_420_lstm_cell_552_matmul_readvariableop_resourceFsequential_140_lstm_420_lstm_cell_552_matmul_1_readvariableop_resourceEsequential_140_lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
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
*sequential_140_lstm_420_while_body_3351548*6
cond.R,
*sequential_140_lstm_420_while_cond_3351547*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_140/lstm_420/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_140/lstm_420/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_140/lstm_420/while:output:3Qsequential_140/lstm_420/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_140/lstm_420/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_140/lstm_420/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_420/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_420/strided_slice_3StridedSliceCsequential_140/lstm_420/TensorArrayV2Stack/TensorListStack:tensor:06sequential_140/lstm_420/strided_slice_3/stack:output:08sequential_140/lstm_420/strided_slice_3/stack_1:output:08sequential_140/lstm_420/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_140/lstm_420/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_140/lstm_420/transpose_1	TransposeCsequential_140/lstm_420/TensorArrayV2Stack/TensorListStack:tensor:01sequential_140/lstm_420/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_140/lstm_420/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_140/lstm_421/ShapeShape'sequential_140/lstm_420/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_140/lstm_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_140/lstm_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_140/lstm_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_140/lstm_421/strided_sliceStridedSlice&sequential_140/lstm_421/Shape:output:04sequential_140/lstm_421/strided_slice/stack:output:06sequential_140/lstm_421/strided_slice/stack_1:output:06sequential_140/lstm_421/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_140/lstm_421/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_140/lstm_421/zeros/packedPack.sequential_140/lstm_421/strided_slice:output:0/sequential_140/lstm_421/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_140/lstm_421/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_421/zerosFill-sequential_140/lstm_421/zeros/packed:output:0,sequential_140/lstm_421/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_140/lstm_421/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_140/lstm_421/zeros_1/packedPack.sequential_140/lstm_421/strided_slice:output:01sequential_140/lstm_421/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_140/lstm_421/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_421/zeros_1Fill/sequential_140/lstm_421/zeros_1/packed:output:0.sequential_140/lstm_421/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_140/lstm_421/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_140/lstm_421/transpose	Transpose'sequential_140/lstm_420/transpose_1:y:0/sequential_140/lstm_421/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_140/lstm_421/Shape_1Shape%sequential_140/lstm_421/transpose:y:0*
T0*
_output_shapes
:w
-sequential_140/lstm_421/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_421/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_421/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_421/strided_slice_1StridedSlice(sequential_140/lstm_421/Shape_1:output:06sequential_140/lstm_421/strided_slice_1/stack:output:08sequential_140/lstm_421/strided_slice_1/stack_1:output:08sequential_140/lstm_421/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_140/lstm_421/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_140/lstm_421/TensorArrayV2TensorListReserve<sequential_140/lstm_421/TensorArrayV2/element_shape:output:00sequential_140/lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_140/lstm_421/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_140/lstm_421/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_140/lstm_421/transpose:y:0Vsequential_140/lstm_421/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_140/lstm_421/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_421/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_421/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_421/strided_slice_2StridedSlice%sequential_140/lstm_421/transpose:y:06sequential_140/lstm_421/strided_slice_2/stack:output:08sequential_140/lstm_421/strided_slice_2/stack_1:output:08sequential_140/lstm_421/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOpReadVariableOpDsequential_140_lstm_421_lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_140/lstm_421/lstm_cell_553/MatMulMatMul0sequential_140/lstm_421/strided_slice_2:output:0Csequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOpFsequential_140_lstm_421_lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_140/lstm_421/lstm_cell_553/MatMul_1MatMul&sequential_140/lstm_421/zeros:output:0Esequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_140/lstm_421/lstm_cell_553/addAddV26sequential_140/lstm_421/lstm_cell_553/MatMul:product:08sequential_140/lstm_421/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOpEsequential_140_lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_140/lstm_421/lstm_cell_553/BiasAddBiasAdd-sequential_140/lstm_421/lstm_cell_553/add:z:0Dsequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_140/lstm_421/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_140/lstm_421/lstm_cell_553/splitSplit>sequential_140/lstm_421/lstm_cell_553/split/split_dim:output:06sequential_140/lstm_421/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_140/lstm_421/lstm_cell_553/SigmoidSigmoid4sequential_140/lstm_421/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_140/lstm_421/lstm_cell_553/Sigmoid_1Sigmoid4sequential_140/lstm_421/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_140/lstm_421/lstm_cell_553/mulMul3sequential_140/lstm_421/lstm_cell_553/Sigmoid_1:y:0(sequential_140/lstm_421/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_140/lstm_421/lstm_cell_553/ReluRelu4sequential_140/lstm_421/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_140/lstm_421/lstm_cell_553/mul_1Mul1sequential_140/lstm_421/lstm_cell_553/Sigmoid:y:08sequential_140/lstm_421/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_140/lstm_421/lstm_cell_553/add_1AddV2-sequential_140/lstm_421/lstm_cell_553/mul:z:0/sequential_140/lstm_421/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_140/lstm_421/lstm_cell_553/Sigmoid_2Sigmoid4sequential_140/lstm_421/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_140/lstm_421/lstm_cell_553/Relu_1Relu/sequential_140/lstm_421/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_140/lstm_421/lstm_cell_553/mul_2Mul3sequential_140/lstm_421/lstm_cell_553/Sigmoid_2:y:0:sequential_140/lstm_421/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_140/lstm_421/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_140/lstm_421/TensorArrayV2_1TensorListReserve>sequential_140/lstm_421/TensorArrayV2_1/element_shape:output:00sequential_140/lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_140/lstm_421/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_140/lstm_421/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_140/lstm_421/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_140/lstm_421/whileWhile3sequential_140/lstm_421/while/loop_counter:output:09sequential_140/lstm_421/while/maximum_iterations:output:0%sequential_140/lstm_421/time:output:00sequential_140/lstm_421/TensorArrayV2_1:handle:0&sequential_140/lstm_421/zeros:output:0(sequential_140/lstm_421/zeros_1:output:00sequential_140/lstm_421/strided_slice_1:output:0Osequential_140/lstm_421/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_140_lstm_421_lstm_cell_553_matmul_readvariableop_resourceFsequential_140_lstm_421_lstm_cell_553_matmul_1_readvariableop_resourceEsequential_140_lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
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
*sequential_140_lstm_421_while_body_3351687*6
cond.R,
*sequential_140_lstm_421_while_cond_3351686*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_140/lstm_421/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_140/lstm_421/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_140/lstm_421/while:output:3Qsequential_140/lstm_421/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_140/lstm_421/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_140/lstm_421/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_421/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_421/strided_slice_3StridedSliceCsequential_140/lstm_421/TensorArrayV2Stack/TensorListStack:tensor:06sequential_140/lstm_421/strided_slice_3/stack:output:08sequential_140/lstm_421/strided_slice_3/stack_1:output:08sequential_140/lstm_421/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_140/lstm_421/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_140/lstm_421/transpose_1	TransposeCsequential_140/lstm_421/TensorArrayV2Stack/TensorListStack:tensor:01sequential_140/lstm_421/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_140/lstm_421/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_140/lstm_422/ShapeShape'sequential_140/lstm_421/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_140/lstm_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_140/lstm_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_140/lstm_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_140/lstm_422/strided_sliceStridedSlice&sequential_140/lstm_422/Shape:output:04sequential_140/lstm_422/strided_slice/stack:output:06sequential_140/lstm_422/strided_slice/stack_1:output:06sequential_140/lstm_422/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_140/lstm_422/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_140/lstm_422/zeros/packedPack.sequential_140/lstm_422/strided_slice:output:0/sequential_140/lstm_422/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_140/lstm_422/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_422/zerosFill-sequential_140/lstm_422/zeros/packed:output:0,sequential_140/lstm_422/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_140/lstm_422/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_140/lstm_422/zeros_1/packedPack.sequential_140/lstm_422/strided_slice:output:01sequential_140/lstm_422/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_140/lstm_422/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_140/lstm_422/zeros_1Fill/sequential_140/lstm_422/zeros_1/packed:output:0.sequential_140/lstm_422/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_140/lstm_422/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_140/lstm_422/transpose	Transpose'sequential_140/lstm_421/transpose_1:y:0/sequential_140/lstm_422/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_140/lstm_422/Shape_1Shape%sequential_140/lstm_422/transpose:y:0*
T0*
_output_shapes
:w
-sequential_140/lstm_422/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_422/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_422/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_422/strided_slice_1StridedSlice(sequential_140/lstm_422/Shape_1:output:06sequential_140/lstm_422/strided_slice_1/stack:output:08sequential_140/lstm_422/strided_slice_1/stack_1:output:08sequential_140/lstm_422/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_140/lstm_422/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_140/lstm_422/TensorArrayV2TensorListReserve<sequential_140/lstm_422/TensorArrayV2/element_shape:output:00sequential_140/lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_140/lstm_422/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_140/lstm_422/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_140/lstm_422/transpose:y:0Vsequential_140/lstm_422/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_140/lstm_422/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_422/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_140/lstm_422/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_422/strided_slice_2StridedSlice%sequential_140/lstm_422/transpose:y:06sequential_140/lstm_422/strided_slice_2/stack:output:08sequential_140/lstm_422/strided_slice_2/stack_1:output:08sequential_140/lstm_422/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOpReadVariableOpDsequential_140_lstm_422_lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_140/lstm_422/lstm_cell_554/MatMulMatMul0sequential_140/lstm_422/strided_slice_2:output:0Csequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOpFsequential_140_lstm_422_lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_140/lstm_422/lstm_cell_554/MatMul_1MatMul&sequential_140/lstm_422/zeros:output:0Esequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_140/lstm_422/lstm_cell_554/addAddV26sequential_140/lstm_422/lstm_cell_554/MatMul:product:08sequential_140/lstm_422/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOpEsequential_140_lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_140/lstm_422/lstm_cell_554/BiasAddBiasAdd-sequential_140/lstm_422/lstm_cell_554/add:z:0Dsequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_140/lstm_422/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_140/lstm_422/lstm_cell_554/splitSplit>sequential_140/lstm_422/lstm_cell_554/split/split_dim:output:06sequential_140/lstm_422/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_140/lstm_422/lstm_cell_554/SigmoidSigmoid4sequential_140/lstm_422/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_140/lstm_422/lstm_cell_554/Sigmoid_1Sigmoid4sequential_140/lstm_422/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_140/lstm_422/lstm_cell_554/mulMul3sequential_140/lstm_422/lstm_cell_554/Sigmoid_1:y:0(sequential_140/lstm_422/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_140/lstm_422/lstm_cell_554/ReluRelu4sequential_140/lstm_422/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_140/lstm_422/lstm_cell_554/mul_1Mul1sequential_140/lstm_422/lstm_cell_554/Sigmoid:y:08sequential_140/lstm_422/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_140/lstm_422/lstm_cell_554/add_1AddV2-sequential_140/lstm_422/lstm_cell_554/mul:z:0/sequential_140/lstm_422/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_140/lstm_422/lstm_cell_554/Sigmoid_2Sigmoid4sequential_140/lstm_422/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_140/lstm_422/lstm_cell_554/Relu_1Relu/sequential_140/lstm_422/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_140/lstm_422/lstm_cell_554/mul_2Mul3sequential_140/lstm_422/lstm_cell_554/Sigmoid_2:y:0:sequential_140/lstm_422/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_140/lstm_422/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_140/lstm_422/TensorArrayV2_1TensorListReserve>sequential_140/lstm_422/TensorArrayV2_1/element_shape:output:00sequential_140/lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_140/lstm_422/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_140/lstm_422/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_140/lstm_422/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_140/lstm_422/whileWhile3sequential_140/lstm_422/while/loop_counter:output:09sequential_140/lstm_422/while/maximum_iterations:output:0%sequential_140/lstm_422/time:output:00sequential_140/lstm_422/TensorArrayV2_1:handle:0&sequential_140/lstm_422/zeros:output:0(sequential_140/lstm_422/zeros_1:output:00sequential_140/lstm_422/strided_slice_1:output:0Osequential_140/lstm_422/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_140_lstm_422_lstm_cell_554_matmul_readvariableop_resourceFsequential_140_lstm_422_lstm_cell_554_matmul_1_readvariableop_resourceEsequential_140_lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
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
*sequential_140_lstm_422_while_body_3351826*6
cond.R,
*sequential_140_lstm_422_while_cond_3351825*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_140/lstm_422/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_140/lstm_422/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_140/lstm_422/while:output:3Qsequential_140/lstm_422/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_140/lstm_422/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_140/lstm_422/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_140/lstm_422/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_140/lstm_422/strided_slice_3StridedSliceCsequential_140/lstm_422/TensorArrayV2Stack/TensorListStack:tensor:06sequential_140/lstm_422/strided_slice_3/stack:output:08sequential_140/lstm_422/strided_slice_3/stack_1:output:08sequential_140/lstm_422/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_140/lstm_422/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_140/lstm_422/transpose_1	TransposeCsequential_140/lstm_422/TensorArrayV2Stack/TensorListStack:tensor:01sequential_140/lstm_422/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_140/lstm_422/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_140/dense_140/MatMul/ReadVariableOpReadVariableOp7sequential_140_dense_140_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_140/dense_140/MatMulMatMul0sequential_140/lstm_422/strided_slice_3:output:06sequential_140/dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_140/dense_140/BiasAdd/ReadVariableOpReadVariableOp8sequential_140_dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_140/dense_140/BiasAddBiasAdd)sequential_140/dense_140/MatMul:product:07sequential_140/dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_140/dense_140/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_140/dense_140/BiasAdd/ReadVariableOp/^sequential_140/dense_140/MatMul/ReadVariableOp=^sequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp<^sequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOp>^sequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp^sequential_140/lstm_420/while=^sequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp<^sequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOp>^sequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp^sequential_140/lstm_421/while=^sequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp<^sequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOp>^sequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp^sequential_140/lstm_422/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_140/dense_140/BiasAdd/ReadVariableOp/sequential_140/dense_140/BiasAdd/ReadVariableOp2`
.sequential_140/dense_140/MatMul/ReadVariableOp.sequential_140/dense_140/MatMul/ReadVariableOp2|
<sequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp<sequential_140/lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp2z
;sequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOp;sequential_140/lstm_420/lstm_cell_552/MatMul/ReadVariableOp2~
=sequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp=sequential_140/lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp2>
sequential_140/lstm_420/whilesequential_140/lstm_420/while2|
<sequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp<sequential_140/lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp2z
;sequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOp;sequential_140/lstm_421/lstm_cell_553/MatMul/ReadVariableOp2~
=sequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp=sequential_140/lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp2>
sequential_140/lstm_421/whilesequential_140/lstm_421/while2|
<sequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp<sequential_140/lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp2z
;sequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOp;sequential_140/lstm_422/lstm_cell_554/MatMul/ReadVariableOp2~
=sequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp=sequential_140/lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp2>
sequential_140/lstm_422/whilesequential_140/lstm_422/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_420_input
?
?
*__inference_lstm_422_layer_call_fn_3356338
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3352957o
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3352066

inputs(
lstm_cell_552_3351984:	?(
lstm_cell_552_3351986:	d?$
lstm_cell_552_3351988:	?
identity??%lstm_cell_552/StatefulPartitionedCall?while;
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
%lstm_cell_552/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_552_3351984lstm_cell_552_3351986lstm_cell_552_3351988*
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3351983n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_552_3351984lstm_cell_552_3351986lstm_cell_552_3351988*
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
while_body_3351997*
condR
while_cond_3351996*K
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
NoOpNoOp&^lstm_cell_552/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_552/StatefulPartitionedCall%lstm_cell_552/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353115

inputs?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3353031*
condR
while_cond_3353030*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_422_layer_call_fn_3356349

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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353415o
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
?C
?

lstm_422_while_body_3354994.
*lstm_422_while_lstm_422_while_loop_counter4
0lstm_422_while_lstm_422_while_maximum_iterations
lstm_422_while_placeholder 
lstm_422_while_placeholder_1 
lstm_422_while_placeholder_2 
lstm_422_while_placeholder_3-
)lstm_422_while_lstm_422_strided_slice_1_0i
elstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0:2(Q
?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(L
>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0:(
lstm_422_while_identity
lstm_422_while_identity_1
lstm_422_while_identity_2
lstm_422_while_identity_3
lstm_422_while_identity_4
lstm_422_while_identity_5+
'lstm_422_while_lstm_422_strided_slice_1g
clstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensorM
;lstm_422_while_lstm_cell_554_matmul_readvariableop_resource:2(O
=lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource:
(J
<lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource:(??3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp?2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp?4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp?
@lstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_422/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0lstm_422_while_placeholderIlstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_422/while/lstm_cell_554/MatMulMatMul9lstm_422/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_422/while/lstm_cell_554/MatMul_1MatMullstm_422_while_placeholder_2<lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_422/while/lstm_cell_554/addAddV2-lstm_422/while/lstm_cell_554/MatMul:product:0/lstm_422/while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_422/while/lstm_cell_554/BiasAddBiasAdd$lstm_422/while/lstm_cell_554/add:z:0;lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_422/while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_422/while/lstm_cell_554/splitSplit5lstm_422/while/lstm_cell_554/split/split_dim:output:0-lstm_422/while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_422/while/lstm_cell_554/SigmoidSigmoid+lstm_422/while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_422/while/lstm_cell_554/Sigmoid_1Sigmoid+lstm_422/while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_422/while/lstm_cell_554/mulMul*lstm_422/while/lstm_cell_554/Sigmoid_1:y:0lstm_422_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_422/while/lstm_cell_554/ReluRelu+lstm_422/while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/mul_1Mul(lstm_422/while/lstm_cell_554/Sigmoid:y:0/lstm_422/while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/add_1AddV2$lstm_422/while/lstm_cell_554/mul:z:0&lstm_422/while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_422/while/lstm_cell_554/Sigmoid_2Sigmoid+lstm_422/while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_422/while/lstm_cell_554/Relu_1Relu&lstm_422/while/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/mul_2Mul*lstm_422/while/lstm_cell_554/Sigmoid_2:y:01lstm_422/while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_422/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_422_while_placeholder_1lstm_422_while_placeholder&lstm_422/while/lstm_cell_554/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_422/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_422/while/addAddV2lstm_422_while_placeholderlstm_422/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_422/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_422/while/add_1AddV2*lstm_422_while_lstm_422_while_loop_counterlstm_422/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_422/while/IdentityIdentitylstm_422/while/add_1:z:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_1Identity0lstm_422_while_lstm_422_while_maximum_iterations^lstm_422/while/NoOp*
T0*
_output_shapes
: t
lstm_422/while/Identity_2Identitylstm_422/while/add:z:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_3IdentityClstm_422/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_4Identity&lstm_422/while/lstm_cell_554/mul_2:z:0^lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_422/while/Identity_5Identity&lstm_422/while/lstm_cell_554/add_1:z:0^lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_422/while/NoOpNoOp4^lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp3^lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp5^lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_422_while_identity lstm_422/while/Identity:output:0"?
lstm_422_while_identity_1"lstm_422/while/Identity_1:output:0"?
lstm_422_while_identity_2"lstm_422/while/Identity_2:output:0"?
lstm_422_while_identity_3"lstm_422/while/Identity_3:output:0"?
lstm_422_while_identity_4"lstm_422/while/Identity_4:output:0"?
lstm_422_while_identity_5"lstm_422/while/Identity_5:output:0"T
'lstm_422_while_lstm_422_strided_slice_1)lstm_422_while_lstm_422_strided_slice_1_0"~
<lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0"?
=lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0"|
;lstm_422_while_lstm_cell_554_matmul_readvariableop_resource=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0"?
clstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensorelstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp2h
2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp2l
4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3353330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353330___redundant_placeholder05
1while_while_cond_3353330___redundant_placeholder15
1while_while_cond_3353330___redundant_placeholder25
1while_while_cond_3353330___redundant_placeholder3
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
*__inference_lstm_420_layer_call_fn_3355095
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3352066|
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
?
F__inference_dense_140_layer_call_and_return_conditional_losses_3356951

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
while_body_3353031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353631

inputs>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3353547*
condR
while_cond_3353546*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354111
lstm_420_input#
lstm_420_3354084:	?#
lstm_420_3354086:	d?
lstm_420_3354088:	?#
lstm_421_3354091:	d?#
lstm_421_3354093:	2?
lstm_421_3354095:	?"
lstm_422_3354098:2("
lstm_422_3354100:
(
lstm_422_3354102:(#
dense_140_3354105:

dense_140_3354107:
identity??!dense_140/StatefulPartitionedCall? lstm_420/StatefulPartitionedCall? lstm_421/StatefulPartitionedCall? lstm_422/StatefulPartitionedCall?
 lstm_420/StatefulPartitionedCallStatefulPartitionedCalllstm_420_inputlstm_420_3354084lstm_420_3354086lstm_420_3354088*
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353115?
 lstm_421/StatefulPartitionedCallStatefulPartitionedCall)lstm_420/StatefulPartitionedCall:output:0lstm_421_3354091lstm_421_3354093lstm_421_3354095*
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353265?
 lstm_422/StatefulPartitionedCallStatefulPartitionedCall)lstm_421/StatefulPartitionedCall:output:0lstm_422_3354098lstm_422_3354100lstm_422_3354102*
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353415?
!dense_140/StatefulPartitionedCallStatefulPartitionedCall)lstm_422/StatefulPartitionedCall:output:0dense_140_3354105dense_140_3354107*
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
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433y
IdentityIdentity*dense_140/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_140/StatefulPartitionedCall!^lstm_420/StatefulPartitionedCall!^lstm_421/StatefulPartitionedCall!^lstm_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2D
 lstm_420/StatefulPartitionedCall lstm_420/StatefulPartitionedCall2D
 lstm_421/StatefulPartitionedCall lstm_421/StatefulPartitionedCall2D
 lstm_422/StatefulPartitionedCall lstm_422/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_420_input
?
?
while_cond_3353030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353030___redundant_placeholder05
1while_while_cond_3353030___redundant_placeholder15
1while_while_cond_3353030___redundant_placeholder25
1while_while_cond_3353030___redundant_placeholder3
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
while_body_3353547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3352607

inputs(
lstm_cell_553_3352525:	d?(
lstm_cell_553_3352527:	2?$
lstm_cell_553_3352529:	?
identity??%lstm_cell_553/StatefulPartitionedCall?while;
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
%lstm_cell_553/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_553_3352525lstm_cell_553_3352527lstm_cell_553_3352529*
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352479n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_553_3352525lstm_cell_553_3352527lstm_cell_553_3352529*
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
while_body_3352538*
condR
while_cond_3352537*K
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
NoOpNoOp&^lstm_cell_553/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_553/StatefulPartitionedCall%lstm_cell_553/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?T
?
*sequential_140_lstm_420_while_body_3351548L
Hsequential_140_lstm_420_while_sequential_140_lstm_420_while_loop_counterR
Nsequential_140_lstm_420_while_sequential_140_lstm_420_while_maximum_iterations-
)sequential_140_lstm_420_while_placeholder/
+sequential_140_lstm_420_while_placeholder_1/
+sequential_140_lstm_420_while_placeholder_2/
+sequential_140_lstm_420_while_placeholder_3K
Gsequential_140_lstm_420_while_sequential_140_lstm_420_strided_slice_1_0?
?sequential_140_lstm_420_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_420_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_140_lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0:	?a
Nsequential_140_lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?\
Msequential_140_lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0:	?*
&sequential_140_lstm_420_while_identity,
(sequential_140_lstm_420_while_identity_1,
(sequential_140_lstm_420_while_identity_2,
(sequential_140_lstm_420_while_identity_3,
(sequential_140_lstm_420_while_identity_4,
(sequential_140_lstm_420_while_identity_5I
Esequential_140_lstm_420_while_sequential_140_lstm_420_strided_slice_1?
?sequential_140_lstm_420_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_420_tensorarrayunstack_tensorlistfromtensor]
Jsequential_140_lstm_420_while_lstm_cell_552_matmul_readvariableop_resource:	?_
Lsequential_140_lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource:	d?Z
Ksequential_140_lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource:	???Bsequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp?Asequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp?Csequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp?
Osequential_140/lstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_140/lstm_420/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_140_lstm_420_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_420_tensorarrayunstack_tensorlistfromtensor_0)sequential_140_lstm_420_while_placeholderXsequential_140/lstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOpLsequential_140_lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_140/lstm_420/while/lstm_cell_552/MatMulMatMulHsequential_140/lstm_420/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOpNsequential_140_lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_140/lstm_420/while/lstm_cell_552/MatMul_1MatMul+sequential_140_lstm_420_while_placeholder_2Ksequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_140/lstm_420/while/lstm_cell_552/addAddV2<sequential_140/lstm_420/while/lstm_cell_552/MatMul:product:0>sequential_140/lstm_420/while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOpMsequential_140_lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_140/lstm_420/while/lstm_cell_552/BiasAddBiasAdd3sequential_140/lstm_420/while/lstm_cell_552/add:z:0Jsequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_140/lstm_420/while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_140/lstm_420/while/lstm_cell_552/splitSplitDsequential_140/lstm_420/while/lstm_cell_552/split/split_dim:output:0<sequential_140/lstm_420/while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_140/lstm_420/while/lstm_cell_552/SigmoidSigmoid:sequential_140/lstm_420/while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_140/lstm_420/while/lstm_cell_552/Sigmoid_1Sigmoid:sequential_140/lstm_420/while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_140/lstm_420/while/lstm_cell_552/mulMul9sequential_140/lstm_420/while/lstm_cell_552/Sigmoid_1:y:0+sequential_140_lstm_420_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_140/lstm_420/while/lstm_cell_552/ReluRelu:sequential_140/lstm_420/while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_140/lstm_420/while/lstm_cell_552/mul_1Mul7sequential_140/lstm_420/while/lstm_cell_552/Sigmoid:y:0>sequential_140/lstm_420/while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_140/lstm_420/while/lstm_cell_552/add_1AddV23sequential_140/lstm_420/while/lstm_cell_552/mul:z:05sequential_140/lstm_420/while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_140/lstm_420/while/lstm_cell_552/Sigmoid_2Sigmoid:sequential_140/lstm_420/while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_140/lstm_420/while/lstm_cell_552/Relu_1Relu5sequential_140/lstm_420/while/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_140/lstm_420/while/lstm_cell_552/mul_2Mul9sequential_140/lstm_420/while/lstm_cell_552/Sigmoid_2:y:0@sequential_140/lstm_420/while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_140/lstm_420/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_140_lstm_420_while_placeholder_1)sequential_140_lstm_420_while_placeholder5sequential_140/lstm_420/while/lstm_cell_552/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_140/lstm_420/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_140/lstm_420/while/addAddV2)sequential_140_lstm_420_while_placeholder,sequential_140/lstm_420/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_140/lstm_420/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_140/lstm_420/while/add_1AddV2Hsequential_140_lstm_420_while_sequential_140_lstm_420_while_loop_counter.sequential_140/lstm_420/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_140/lstm_420/while/IdentityIdentity'sequential_140/lstm_420/while/add_1:z:0#^sequential_140/lstm_420/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_420/while/Identity_1IdentityNsequential_140_lstm_420_while_sequential_140_lstm_420_while_maximum_iterations#^sequential_140/lstm_420/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_420/while/Identity_2Identity%sequential_140/lstm_420/while/add:z:0#^sequential_140/lstm_420/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_420/while/Identity_3IdentityRsequential_140/lstm_420/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_140/lstm_420/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_420/while/Identity_4Identity5sequential_140/lstm_420/while/lstm_cell_552/mul_2:z:0#^sequential_140/lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_140/lstm_420/while/Identity_5Identity5sequential_140/lstm_420/while/lstm_cell_552/add_1:z:0#^sequential_140/lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_140/lstm_420/while/NoOpNoOpC^sequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOpB^sequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOpD^sequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_140_lstm_420_while_identity/sequential_140/lstm_420/while/Identity:output:0"]
(sequential_140_lstm_420_while_identity_11sequential_140/lstm_420/while/Identity_1:output:0"]
(sequential_140_lstm_420_while_identity_21sequential_140/lstm_420/while/Identity_2:output:0"]
(sequential_140_lstm_420_while_identity_31sequential_140/lstm_420/while/Identity_3:output:0"]
(sequential_140_lstm_420_while_identity_41sequential_140/lstm_420/while/Identity_4:output:0"]
(sequential_140_lstm_420_while_identity_51sequential_140/lstm_420/while/Identity_5:output:0"?
Ksequential_140_lstm_420_while_lstm_cell_552_biasadd_readvariableop_resourceMsequential_140_lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0"?
Lsequential_140_lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resourceNsequential_140_lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0"?
Jsequential_140_lstm_420_while_lstm_cell_552_matmul_readvariableop_resourceLsequential_140_lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0"?
Esequential_140_lstm_420_while_sequential_140_lstm_420_strided_slice_1Gsequential_140_lstm_420_while_sequential_140_lstm_420_strided_slice_1_0"?
?sequential_140_lstm_420_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_420_tensorarrayunstack_tensorlistfromtensor?sequential_140_lstm_420_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_420_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOpBsequential_140/lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp2?
Asequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOpAsequential_140/lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp2?
Csequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOpCsequential_140/lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_422_layer_call_fn_3356327
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3352766o
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

?
%__inference_signature_wrapper_3354176
lstm_420_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3351916o
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
_user_specified_namelstm_420_input
?
?
while_cond_3356088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356088___redundant_placeholder05
1while_while_cond_3356088___redundant_placeholder15
1while_while_cond_3356088___redundant_placeholder25
1while_while_cond_3356088___redundant_placeholder3
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3355887
inputs_0?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3355803*
condR
while_cond_3355802*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_420_while_body_3354716.
*lstm_420_while_lstm_420_while_loop_counter4
0lstm_420_while_lstm_420_while_maximum_iterations
lstm_420_while_placeholder 
lstm_420_while_placeholder_1 
lstm_420_while_placeholder_2 
lstm_420_while_placeholder_3-
)lstm_420_while_lstm_420_strided_slice_1_0i
elstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0:	?R
?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?M
>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
lstm_420_while_identity
lstm_420_while_identity_1
lstm_420_while_identity_2
lstm_420_while_identity_3
lstm_420_while_identity_4
lstm_420_while_identity_5+
'lstm_420_while_lstm_420_strided_slice_1g
clstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensorN
;lstm_420_while_lstm_cell_552_matmul_readvariableop_resource:	?P
=lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource:	d?K
<lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource:	???3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp?2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp?4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp?
@lstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_420/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0lstm_420_while_placeholderIlstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_420/while/lstm_cell_552/MatMulMatMul9lstm_420/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_420/while/lstm_cell_552/MatMul_1MatMullstm_420_while_placeholder_2<lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_420/while/lstm_cell_552/addAddV2-lstm_420/while/lstm_cell_552/MatMul:product:0/lstm_420/while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_420/while/lstm_cell_552/BiasAddBiasAdd$lstm_420/while/lstm_cell_552/add:z:0;lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_420/while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_420/while/lstm_cell_552/splitSplit5lstm_420/while/lstm_cell_552/split/split_dim:output:0-lstm_420/while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_420/while/lstm_cell_552/SigmoidSigmoid+lstm_420/while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_420/while/lstm_cell_552/Sigmoid_1Sigmoid+lstm_420/while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_420/while/lstm_cell_552/mulMul*lstm_420/while/lstm_cell_552/Sigmoid_1:y:0lstm_420_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_420/while/lstm_cell_552/ReluRelu+lstm_420/while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/mul_1Mul(lstm_420/while/lstm_cell_552/Sigmoid:y:0/lstm_420/while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/add_1AddV2$lstm_420/while/lstm_cell_552/mul:z:0&lstm_420/while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_420/while/lstm_cell_552/Sigmoid_2Sigmoid+lstm_420/while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_420/while/lstm_cell_552/Relu_1Relu&lstm_420/while/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/mul_2Mul*lstm_420/while/lstm_cell_552/Sigmoid_2:y:01lstm_420/while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_420/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_420_while_placeholder_1lstm_420_while_placeholder&lstm_420/while/lstm_cell_552/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_420/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_420/while/addAddV2lstm_420_while_placeholderlstm_420/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_420/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_420/while/add_1AddV2*lstm_420_while_lstm_420_while_loop_counterlstm_420/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_420/while/IdentityIdentitylstm_420/while/add_1:z:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_1Identity0lstm_420_while_lstm_420_while_maximum_iterations^lstm_420/while/NoOp*
T0*
_output_shapes
: t
lstm_420/while/Identity_2Identitylstm_420/while/add:z:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_3IdentityClstm_420/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_4Identity&lstm_420/while/lstm_cell_552/mul_2:z:0^lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_420/while/Identity_5Identity&lstm_420/while/lstm_cell_552/add_1:z:0^lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_420/while/NoOpNoOp4^lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp3^lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp5^lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_420_while_identity lstm_420/while/Identity:output:0"?
lstm_420_while_identity_1"lstm_420/while/Identity_1:output:0"?
lstm_420_while_identity_2"lstm_420/while/Identity_2:output:0"?
lstm_420_while_identity_3"lstm_420/while/Identity_3:output:0"?
lstm_420_while_identity_4"lstm_420/while/Identity_4:output:0"?
lstm_420_while_identity_5"lstm_420/while/Identity_5:output:0"T
'lstm_420_while_lstm_420_strided_slice_1)lstm_420_while_lstm_420_strided_slice_1_0"~
<lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0"?
=lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0"|
;lstm_420_while_lstm_cell_552_matmul_readvariableop_resource=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0"?
clstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensorelstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp2h
2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp2l
4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_420_layer_call_fn_3355117

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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353115s
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355414
inputs_0?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3355330*
condR
while_cond_3355329*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_3357518
file_prefix3
!assignvariableop_dense_140_kernel:
/
!assignvariableop_1_dense_140_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_420_lstm_cell_420_kernel:	?M
:assignvariableop_8_lstm_420_lstm_cell_420_recurrent_kernel:	d?=
.assignvariableop_9_lstm_420_lstm_cell_420_bias:	?D
1assignvariableop_10_lstm_421_lstm_cell_421_kernel:	d?N
;assignvariableop_11_lstm_421_lstm_cell_421_recurrent_kernel:	2?>
/assignvariableop_12_lstm_421_lstm_cell_421_bias:	?C
1assignvariableop_13_lstm_422_lstm_cell_422_kernel:2(M
;assignvariableop_14_lstm_422_lstm_cell_422_recurrent_kernel:
(=
/assignvariableop_15_lstm_422_lstm_cell_422_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_140_kernel_m:
7
)assignvariableop_19_adam_dense_140_bias_m:K
8assignvariableop_20_adam_lstm_420_lstm_cell_420_kernel_m:	?U
Bassignvariableop_21_adam_lstm_420_lstm_cell_420_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_420_lstm_cell_420_bias_m:	?K
8assignvariableop_23_adam_lstm_421_lstm_cell_421_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_421_lstm_cell_421_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_421_lstm_cell_421_bias_m:	?J
8assignvariableop_26_adam_lstm_422_lstm_cell_422_kernel_m:2(T
Bassignvariableop_27_adam_lstm_422_lstm_cell_422_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_422_lstm_cell_422_bias_m:(=
+assignvariableop_29_adam_dense_140_kernel_v:
7
)assignvariableop_30_adam_dense_140_bias_v:K
8assignvariableop_31_adam_lstm_420_lstm_cell_420_kernel_v:	?U
Bassignvariableop_32_adam_lstm_420_lstm_cell_420_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_420_lstm_cell_420_bias_v:	?K
8assignvariableop_34_adam_lstm_421_lstm_cell_421_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_421_lstm_cell_421_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_421_lstm_cell_421_bias_v:	?J
8assignvariableop_37_adam_lstm_422_lstm_cell_422_kernel_v:2(T
Bassignvariableop_38_adam_lstm_422_lstm_cell_422_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_422_lstm_cell_422_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_140_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_140_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_420_lstm_cell_420_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_420_lstm_cell_420_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_420_lstm_cell_420_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_421_lstm_cell_421_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_421_lstm_cell_421_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_421_lstm_cell_421_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_422_lstm_cell_422_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_422_lstm_cell_422_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_422_lstm_cell_422_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_140_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_140_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_420_lstm_cell_420_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_420_lstm_cell_420_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_420_lstm_cell_420_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_421_lstm_cell_421_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_421_lstm_cell_421_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_421_lstm_cell_421_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_422_lstm_cell_422_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_422_lstm_cell_422_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_422_lstm_cell_422_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_140_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_140_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_420_lstm_cell_420_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_420_lstm_cell_420_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_420_lstm_cell_420_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_421_lstm_cell_421_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_421_lstm_cell_421_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_421_lstm_cell_421_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_422_lstm_cell_422_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_422_lstm_cell_422_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_422_lstm_cell_422_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433

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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357147

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

?
0__inference_sequential_140_layer_call_fn_3353465
lstm_420_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3353440o
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
_user_specified_namelstm_420_input
?8
?
while_body_3355473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_420_layer_call_fn_3355106
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3352257|
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
lstm_421_while_cond_3354427.
*lstm_421_while_lstm_421_while_loop_counter4
0lstm_421_while_lstm_421_while_maximum_iterations
lstm_421_while_placeholder 
lstm_421_while_placeholder_1 
lstm_421_while_placeholder_2 
lstm_421_while_placeholder_30
,lstm_421_while_less_lstm_421_strided_slice_1G
Clstm_421_while_lstm_421_while_cond_3354427___redundant_placeholder0G
Clstm_421_while_lstm_421_while_cond_3354427___redundant_placeholder1G
Clstm_421_while_lstm_421_while_cond_3354427___redundant_placeholder2G
Clstm_421_while_lstm_421_while_cond_3354427___redundant_placeholder3
lstm_421_while_identity
?
lstm_421/while/LessLesslstm_421_while_placeholder,lstm_421_while_less_lstm_421_strided_slice_1*
T0*
_output_shapes
: ]
lstm_421/while/IdentityIdentitylstm_421/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_421_while_identity lstm_421/while/Identity:output:0*(
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
while_cond_3353546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353546___redundant_placeholder05
1while_while_cond_3353546___redundant_placeholder15
1while_while_cond_3353546___redundant_placeholder25
1while_while_cond_3353546___redundant_placeholder3
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
lstm_420_while_cond_3354288.
*lstm_420_while_lstm_420_while_loop_counter4
0lstm_420_while_lstm_420_while_maximum_iterations
lstm_420_while_placeholder 
lstm_420_while_placeholder_1 
lstm_420_while_placeholder_2 
lstm_420_while_placeholder_30
,lstm_420_while_less_lstm_420_strided_slice_1G
Clstm_420_while_lstm_420_while_cond_3354288___redundant_placeholder0G
Clstm_420_while_lstm_420_while_cond_3354288___redundant_placeholder1G
Clstm_420_while_lstm_420_while_cond_3354288___redundant_placeholder2G
Clstm_420_while_lstm_420_while_cond_3354288___redundant_placeholder3
lstm_420_while_identity
?
lstm_420/while/LessLesslstm_420_while_placeholder,lstm_420_while_less_lstm_420_strided_slice_1*
T0*
_output_shapes
: ]
lstm_420/while/IdentityIdentitylstm_420/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_420_while_identity lstm_420/while/Identity:output:0*(
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
0__inference_sequential_140_layer_call_fn_3354230

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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354029o
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
while_body_3353181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3352188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_552_3352212_0:	?0
while_lstm_cell_552_3352214_0:	d?,
while_lstm_cell_552_3352216_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_552_3352212:	?.
while_lstm_cell_552_3352214:	d?*
while_lstm_cell_552_3352216:	???+while/lstm_cell_552/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_552/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_552_3352212_0while_lstm_cell_552_3352214_0while_lstm_cell_552_3352216_0*
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3352129?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_552/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_552/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_552/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_552/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_552_3352212while_lstm_cell_552_3352212_0"<
while_lstm_cell_552_3352214while_lstm_cell_552_3352214_0"<
while_lstm_cell_552_3352216while_lstm_cell_552_3352216_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_552/StatefulPartitionedCall+while/lstm_cell_552/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_421_layer_call_fn_3355711
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3352416|
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
while_body_3356705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3352957

inputs'
lstm_cell_554_3352875:2('
lstm_cell_554_3352877:
(#
lstm_cell_554_3352879:(
identity??%lstm_cell_554/StatefulPartitionedCall?while;
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
%lstm_cell_554/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_554_3352875lstm_cell_554_3352877lstm_cell_554_3352879*
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352829n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_554_3352875lstm_cell_554_3352877lstm_cell_554_3352879*
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
while_body_3352888*
condR
while_cond_3352887*K
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
NoOpNoOp&^lstm_cell_554/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_554/StatefulPartitionedCall%lstm_cell_554/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3353331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357213

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
/__inference_lstm_cell_554_layer_call_fn_3357164

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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352683o
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
while_cond_3355615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355615___redundant_placeholder05
1while_while_cond_3355615___redundant_placeholder15
1while_while_cond_3355615___redundant_placeholder25
1while_while_cond_3355615___redundant_placeholder3
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
lstm_421_while_cond_3354854.
*lstm_421_while_lstm_421_while_loop_counter4
0lstm_421_while_lstm_421_while_maximum_iterations
lstm_421_while_placeholder 
lstm_421_while_placeholder_1 
lstm_421_while_placeholder_2 
lstm_421_while_placeholder_30
,lstm_421_while_less_lstm_421_strided_slice_1G
Clstm_421_while_lstm_421_while_cond_3354854___redundant_placeholder0G
Clstm_421_while_lstm_421_while_cond_3354854___redundant_placeholder1G
Clstm_421_while_lstm_421_while_cond_3354854___redundant_placeholder2G
Clstm_421_while_lstm_421_while_cond_3354854___redundant_placeholder3
lstm_421_while_identity
?
lstm_421/while/LessLesslstm_421_while_placeholder,lstm_421_while_less_lstm_421_strided_slice_1*
T0*
_output_shapes
: ]
lstm_421/while/IdentityIdentitylstm_421/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_421_while_identity lstm_421/while/Identity:output:0*(
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357245

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

?
0__inference_sequential_140_layer_call_fn_3354081
lstm_420_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354029o
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
_user_specified_namelstm_420_input
?8
?
while_body_3353877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352479

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
?
?
*__inference_lstm_422_layer_call_fn_3356360

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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353631o
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356789

inputs>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3356705*
condR
while_cond_3356704*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354029

inputs#
lstm_420_3354002:	?#
lstm_420_3354004:	d?
lstm_420_3354006:	?#
lstm_421_3354009:	d?#
lstm_421_3354011:	2?
lstm_421_3354013:	?"
lstm_422_3354016:2("
lstm_422_3354018:
(
lstm_422_3354020:(#
dense_140_3354023:

dense_140_3354025:
identity??!dense_140/StatefulPartitionedCall? lstm_420/StatefulPartitionedCall? lstm_421/StatefulPartitionedCall? lstm_422/StatefulPartitionedCall?
 lstm_420/StatefulPartitionedCallStatefulPartitionedCallinputslstm_420_3354002lstm_420_3354004lstm_420_3354006*
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353961?
 lstm_421/StatefulPartitionedCallStatefulPartitionedCall)lstm_420/StatefulPartitionedCall:output:0lstm_421_3354009lstm_421_3354011lstm_421_3354013*
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353796?
 lstm_422/StatefulPartitionedCallStatefulPartitionedCall)lstm_421/StatefulPartitionedCall:output:0lstm_422_3354016lstm_422_3354018lstm_422_3354020*
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353631?
!dense_140/StatefulPartitionedCallStatefulPartitionedCall)lstm_422/StatefulPartitionedCall:output:0dense_140_3354023dense_140_3354025*
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
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433y
IdentityIdentity*dense_140/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_140/StatefulPartitionedCall!^lstm_420/StatefulPartitionedCall!^lstm_421/StatefulPartitionedCall!^lstm_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2D
 lstm_420/StatefulPartitionedCall lstm_420/StatefulPartitionedCall2D
 lstm_421/StatefulPartitionedCall lstm_421/StatefulPartitionedCall2D
 lstm_422/StatefulPartitionedCall lstm_422/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3355330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357017

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
while_body_3352697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_554_3352721_0:2(/
while_lstm_cell_554_3352723_0:
(+
while_lstm_cell_554_3352725_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_554_3352721:2(-
while_lstm_cell_554_3352723:
()
while_lstm_cell_554_3352725:(??+while/lstm_cell_554/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_554/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_554_3352721_0while_lstm_cell_554_3352723_0while_lstm_cell_554_3352725_0*
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352683?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_554/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_554/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_554/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_554/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_554_3352721while_lstm_cell_554_3352721_0"<
while_lstm_cell_554_3352723while_lstm_cell_554_3352723_0"<
while_lstm_cell_554_3352725while_lstm_cell_554_3352725_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_554/StatefulPartitionedCall+while/lstm_cell_554/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3353711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353711___redundant_placeholder05
1while_while_cond_3353711___redundant_placeholder15
1while_while_cond_3353711___redundant_placeholder25
1while_while_cond_3353711___redundant_placeholder3
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
*sequential_140_lstm_420_while_cond_3351547L
Hsequential_140_lstm_420_while_sequential_140_lstm_420_while_loop_counterR
Nsequential_140_lstm_420_while_sequential_140_lstm_420_while_maximum_iterations-
)sequential_140_lstm_420_while_placeholder/
+sequential_140_lstm_420_while_placeholder_1/
+sequential_140_lstm_420_while_placeholder_2/
+sequential_140_lstm_420_while_placeholder_3N
Jsequential_140_lstm_420_while_less_sequential_140_lstm_420_strided_slice_1e
asequential_140_lstm_420_while_sequential_140_lstm_420_while_cond_3351547___redundant_placeholder0e
asequential_140_lstm_420_while_sequential_140_lstm_420_while_cond_3351547___redundant_placeholder1e
asequential_140_lstm_420_while_sequential_140_lstm_420_while_cond_3351547___redundant_placeholder2e
asequential_140_lstm_420_while_sequential_140_lstm_420_while_cond_3351547___redundant_placeholder3*
&sequential_140_lstm_420_while_identity
?
"sequential_140/lstm_420/while/LessLess)sequential_140_lstm_420_while_placeholderJsequential_140_lstm_420_while_less_sequential_140_lstm_420_strided_slice_1*
T0*
_output_shapes
: {
&sequential_140/lstm_420/while/IdentityIdentity&sequential_140/lstm_420/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_140_lstm_420_while_identity/sequential_140/lstm_420/while/Identity:output:0*(
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
while_cond_3355802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355802___redundant_placeholder05
1while_while_cond_3355802___redundant_placeholder15
1while_while_cond_3355802___redundant_placeholder25
1while_while_cond_3355802___redundant_placeholder3
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
*sequential_140_lstm_421_while_cond_3351686L
Hsequential_140_lstm_421_while_sequential_140_lstm_421_while_loop_counterR
Nsequential_140_lstm_421_while_sequential_140_lstm_421_while_maximum_iterations-
)sequential_140_lstm_421_while_placeholder/
+sequential_140_lstm_421_while_placeholder_1/
+sequential_140_lstm_421_while_placeholder_2/
+sequential_140_lstm_421_while_placeholder_3N
Jsequential_140_lstm_421_while_less_sequential_140_lstm_421_strided_slice_1e
asequential_140_lstm_421_while_sequential_140_lstm_421_while_cond_3351686___redundant_placeholder0e
asequential_140_lstm_421_while_sequential_140_lstm_421_while_cond_3351686___redundant_placeholder1e
asequential_140_lstm_421_while_sequential_140_lstm_421_while_cond_3351686___redundant_placeholder2e
asequential_140_lstm_421_while_sequential_140_lstm_421_while_cond_3351686___redundant_placeholder3*
&sequential_140_lstm_421_while_identity
?
"sequential_140/lstm_421/while/LessLess)sequential_140_lstm_421_while_placeholderJsequential_140_lstm_421_while_less_sequential_140_lstm_421_strided_slice_1*
T0*
_output_shapes
: {
&sequential_140/lstm_421/while/IdentityIdentity&sequential_140/lstm_421/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_140_lstm_421_while_identity/sequential_140/lstm_421/while/Identity:output:0*(
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
*__inference_lstm_421_layer_call_fn_3355722
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3352607|
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
*sequential_140_lstm_422_while_cond_3351825L
Hsequential_140_lstm_422_while_sequential_140_lstm_422_while_loop_counterR
Nsequential_140_lstm_422_while_sequential_140_lstm_422_while_maximum_iterations-
)sequential_140_lstm_422_while_placeholder/
+sequential_140_lstm_422_while_placeholder_1/
+sequential_140_lstm_422_while_placeholder_2/
+sequential_140_lstm_422_while_placeholder_3N
Jsequential_140_lstm_422_while_less_sequential_140_lstm_422_strided_slice_1e
asequential_140_lstm_422_while_sequential_140_lstm_422_while_cond_3351825___redundant_placeholder0e
asequential_140_lstm_422_while_sequential_140_lstm_422_while_cond_3351825___redundant_placeholder1e
asequential_140_lstm_422_while_sequential_140_lstm_422_while_cond_3351825___redundant_placeholder2e
asequential_140_lstm_422_while_sequential_140_lstm_422_while_cond_3351825___redundant_placeholder3*
&sequential_140_lstm_422_while_identity
?
"sequential_140/lstm_422/while/LessLess)sequential_140_lstm_422_while_placeholderJsequential_140_lstm_422_while_less_sequential_140_lstm_422_strided_slice_1*
T0*
_output_shapes
: {
&sequential_140/lstm_422/while/IdentityIdentity&sequential_140/lstm_422/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_140_lstm_422_while_identity/sequential_140/lstm_422/while/Identity:output:0*(
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
while_body_3356089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_553_layer_call_fn_3357066

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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352333o
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
while_body_3356419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_3357388
file_prefix/
+savev2_dense_140_kernel_read_readvariableop-
)savev2_dense_140_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_420_lstm_cell_420_kernel_read_readvariableopF
Bsavev2_lstm_420_lstm_cell_420_recurrent_kernel_read_readvariableop:
6savev2_lstm_420_lstm_cell_420_bias_read_readvariableop<
8savev2_lstm_421_lstm_cell_421_kernel_read_readvariableopF
Bsavev2_lstm_421_lstm_cell_421_recurrent_kernel_read_readvariableop:
6savev2_lstm_421_lstm_cell_421_bias_read_readvariableop<
8savev2_lstm_422_lstm_cell_422_kernel_read_readvariableopF
Bsavev2_lstm_422_lstm_cell_422_recurrent_kernel_read_readvariableop:
6savev2_lstm_422_lstm_cell_422_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_140_kernel_m_read_readvariableop4
0savev2_adam_dense_140_bias_m_read_readvariableopC
?savev2_adam_lstm_420_lstm_cell_420_kernel_m_read_readvariableopM
Isavev2_adam_lstm_420_lstm_cell_420_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_420_lstm_cell_420_bias_m_read_readvariableopC
?savev2_adam_lstm_421_lstm_cell_421_kernel_m_read_readvariableopM
Isavev2_adam_lstm_421_lstm_cell_421_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_421_lstm_cell_421_bias_m_read_readvariableopC
?savev2_adam_lstm_422_lstm_cell_422_kernel_m_read_readvariableopM
Isavev2_adam_lstm_422_lstm_cell_422_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_422_lstm_cell_422_bias_m_read_readvariableop6
2savev2_adam_dense_140_kernel_v_read_readvariableop4
0savev2_adam_dense_140_bias_v_read_readvariableopC
?savev2_adam_lstm_420_lstm_cell_420_kernel_v_read_readvariableopM
Isavev2_adam_lstm_420_lstm_cell_420_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_420_lstm_cell_420_bias_v_read_readvariableopC
?savev2_adam_lstm_421_lstm_cell_421_kernel_v_read_readvariableopM
Isavev2_adam_lstm_421_lstm_cell_421_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_421_lstm_cell_421_bias_v_read_readvariableopC
?savev2_adam_lstm_422_lstm_cell_422_kernel_v_read_readvariableopM
Isavev2_adam_lstm_422_lstm_cell_422_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_422_lstm_cell_422_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_140_kernel_read_readvariableop)savev2_dense_140_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_420_lstm_cell_420_kernel_read_readvariableopBsavev2_lstm_420_lstm_cell_420_recurrent_kernel_read_readvariableop6savev2_lstm_420_lstm_cell_420_bias_read_readvariableop8savev2_lstm_421_lstm_cell_421_kernel_read_readvariableopBsavev2_lstm_421_lstm_cell_421_recurrent_kernel_read_readvariableop6savev2_lstm_421_lstm_cell_421_bias_read_readvariableop8savev2_lstm_422_lstm_cell_422_kernel_read_readvariableopBsavev2_lstm_422_lstm_cell_422_recurrent_kernel_read_readvariableop6savev2_lstm_422_lstm_cell_422_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_140_kernel_m_read_readvariableop0savev2_adam_dense_140_bias_m_read_readvariableop?savev2_adam_lstm_420_lstm_cell_420_kernel_m_read_readvariableopIsavev2_adam_lstm_420_lstm_cell_420_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_420_lstm_cell_420_bias_m_read_readvariableop?savev2_adam_lstm_421_lstm_cell_421_kernel_m_read_readvariableopIsavev2_adam_lstm_421_lstm_cell_421_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_421_lstm_cell_421_bias_m_read_readvariableop?savev2_adam_lstm_422_lstm_cell_422_kernel_m_read_readvariableopIsavev2_adam_lstm_422_lstm_cell_422_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_422_lstm_cell_422_bias_m_read_readvariableop2savev2_adam_dense_140_kernel_v_read_readvariableop0savev2_adam_dense_140_bias_v_read_readvariableop?savev2_adam_lstm_420_lstm_cell_420_kernel_v_read_readvariableopIsavev2_adam_lstm_420_lstm_cell_420_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_420_lstm_cell_420_bias_v_read_readvariableop?savev2_adam_lstm_421_lstm_cell_421_kernel_v_read_readvariableopIsavev2_adam_lstm_421_lstm_cell_421_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_421_lstm_cell_421_bias_v_read_readvariableop?savev2_adam_lstm_422_lstm_cell_422_kernel_v_read_readvariableopIsavev2_adam_lstm_422_lstm_cell_422_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_422_lstm_cell_422_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_3355472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355472___redundant_placeholder05
1while_while_cond_3355472___redundant_placeholder15
1while_while_cond_3355472___redundant_placeholder25
1while_while_cond_3355472___redundant_placeholder3
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
while_body_3356562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3352346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3352346___redundant_placeholder05
1while_while_cond_3352346___redundant_placeholder15
1while_while_cond_3352346___redundant_placeholder25
1while_while_cond_3352346___redundant_placeholder3
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
+__inference_dense_140_layer_call_fn_3356941

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
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433o
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
?K
?
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355271
inputs_0?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3355187*
condR
while_cond_3355186*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_421_layer_call_fn_3355744

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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353796s
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
?J
?
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353265

inputs?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3353181*
condR
while_cond_3353180*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3356418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356418___redundant_placeholder05
1while_while_cond_3356418___redundant_placeholder15
1while_while_cond_3356418___redundant_placeholder25
1while_while_cond_3356418___redundant_placeholder3
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357049

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
?T
?
*sequential_140_lstm_421_while_body_3351687L
Hsequential_140_lstm_421_while_sequential_140_lstm_421_while_loop_counterR
Nsequential_140_lstm_421_while_sequential_140_lstm_421_while_maximum_iterations-
)sequential_140_lstm_421_while_placeholder/
+sequential_140_lstm_421_while_placeholder_1/
+sequential_140_lstm_421_while_placeholder_2/
+sequential_140_lstm_421_while_placeholder_3K
Gsequential_140_lstm_421_while_sequential_140_lstm_421_strided_slice_1_0?
?sequential_140_lstm_421_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_421_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_140_lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0:	d?a
Nsequential_140_lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?\
Msequential_140_lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0:	?*
&sequential_140_lstm_421_while_identity,
(sequential_140_lstm_421_while_identity_1,
(sequential_140_lstm_421_while_identity_2,
(sequential_140_lstm_421_while_identity_3,
(sequential_140_lstm_421_while_identity_4,
(sequential_140_lstm_421_while_identity_5I
Esequential_140_lstm_421_while_sequential_140_lstm_421_strided_slice_1?
?sequential_140_lstm_421_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_421_tensorarrayunstack_tensorlistfromtensor]
Jsequential_140_lstm_421_while_lstm_cell_553_matmul_readvariableop_resource:	d?_
Lsequential_140_lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource:	2?Z
Ksequential_140_lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource:	???Bsequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp?Asequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp?Csequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp?
Osequential_140/lstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_140/lstm_421/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_140_lstm_421_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_421_tensorarrayunstack_tensorlistfromtensor_0)sequential_140_lstm_421_while_placeholderXsequential_140/lstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOpLsequential_140_lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_140/lstm_421/while/lstm_cell_553/MatMulMatMulHsequential_140/lstm_421/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOpNsequential_140_lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_140/lstm_421/while/lstm_cell_553/MatMul_1MatMul+sequential_140_lstm_421_while_placeholder_2Ksequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_140/lstm_421/while/lstm_cell_553/addAddV2<sequential_140/lstm_421/while/lstm_cell_553/MatMul:product:0>sequential_140/lstm_421/while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOpMsequential_140_lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_140/lstm_421/while/lstm_cell_553/BiasAddBiasAdd3sequential_140/lstm_421/while/lstm_cell_553/add:z:0Jsequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_140/lstm_421/while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_140/lstm_421/while/lstm_cell_553/splitSplitDsequential_140/lstm_421/while/lstm_cell_553/split/split_dim:output:0<sequential_140/lstm_421/while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_140/lstm_421/while/lstm_cell_553/SigmoidSigmoid:sequential_140/lstm_421/while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_140/lstm_421/while/lstm_cell_553/Sigmoid_1Sigmoid:sequential_140/lstm_421/while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_140/lstm_421/while/lstm_cell_553/mulMul9sequential_140/lstm_421/while/lstm_cell_553/Sigmoid_1:y:0+sequential_140_lstm_421_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_140/lstm_421/while/lstm_cell_553/ReluRelu:sequential_140/lstm_421/while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_140/lstm_421/while/lstm_cell_553/mul_1Mul7sequential_140/lstm_421/while/lstm_cell_553/Sigmoid:y:0>sequential_140/lstm_421/while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_140/lstm_421/while/lstm_cell_553/add_1AddV23sequential_140/lstm_421/while/lstm_cell_553/mul:z:05sequential_140/lstm_421/while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_140/lstm_421/while/lstm_cell_553/Sigmoid_2Sigmoid:sequential_140/lstm_421/while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_140/lstm_421/while/lstm_cell_553/Relu_1Relu5sequential_140/lstm_421/while/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_140/lstm_421/while/lstm_cell_553/mul_2Mul9sequential_140/lstm_421/while/lstm_cell_553/Sigmoid_2:y:0@sequential_140/lstm_421/while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_140/lstm_421/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_140_lstm_421_while_placeholder_1)sequential_140_lstm_421_while_placeholder5sequential_140/lstm_421/while/lstm_cell_553/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_140/lstm_421/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_140/lstm_421/while/addAddV2)sequential_140_lstm_421_while_placeholder,sequential_140/lstm_421/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_140/lstm_421/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_140/lstm_421/while/add_1AddV2Hsequential_140_lstm_421_while_sequential_140_lstm_421_while_loop_counter.sequential_140/lstm_421/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_140/lstm_421/while/IdentityIdentity'sequential_140/lstm_421/while/add_1:z:0#^sequential_140/lstm_421/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_421/while/Identity_1IdentityNsequential_140_lstm_421_while_sequential_140_lstm_421_while_maximum_iterations#^sequential_140/lstm_421/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_421/while/Identity_2Identity%sequential_140/lstm_421/while/add:z:0#^sequential_140/lstm_421/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_421/while/Identity_3IdentityRsequential_140/lstm_421/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_140/lstm_421/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_421/while/Identity_4Identity5sequential_140/lstm_421/while/lstm_cell_553/mul_2:z:0#^sequential_140/lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_140/lstm_421/while/Identity_5Identity5sequential_140/lstm_421/while/lstm_cell_553/add_1:z:0#^sequential_140/lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_140/lstm_421/while/NoOpNoOpC^sequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOpB^sequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOpD^sequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_140_lstm_421_while_identity/sequential_140/lstm_421/while/Identity:output:0"]
(sequential_140_lstm_421_while_identity_11sequential_140/lstm_421/while/Identity_1:output:0"]
(sequential_140_lstm_421_while_identity_21sequential_140/lstm_421/while/Identity_2:output:0"]
(sequential_140_lstm_421_while_identity_31sequential_140/lstm_421/while/Identity_3:output:0"]
(sequential_140_lstm_421_while_identity_41sequential_140/lstm_421/while/Identity_4:output:0"]
(sequential_140_lstm_421_while_identity_51sequential_140/lstm_421/while/Identity_5:output:0"?
Ksequential_140_lstm_421_while_lstm_cell_553_biasadd_readvariableop_resourceMsequential_140_lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0"?
Lsequential_140_lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resourceNsequential_140_lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0"?
Jsequential_140_lstm_421_while_lstm_cell_553_matmul_readvariableop_resourceLsequential_140_lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0"?
Esequential_140_lstm_421_while_sequential_140_lstm_421_strided_slice_1Gsequential_140_lstm_421_while_sequential_140_lstm_421_strided_slice_1_0"?
?sequential_140_lstm_421_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_421_tensorarrayunstack_tensorlistfromtensor?sequential_140_lstm_421_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_421_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOpBsequential_140/lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp2?
Asequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOpAsequential_140/lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp2?
Csequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOpCsequential_140/lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3355084

inputsH
5lstm_420_lstm_cell_552_matmul_readvariableop_resource:	?J
7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource:	d?E
6lstm_420_lstm_cell_552_biasadd_readvariableop_resource:	?H
5lstm_421_lstm_cell_553_matmul_readvariableop_resource:	d?J
7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource:	2?E
6lstm_421_lstm_cell_553_biasadd_readvariableop_resource:	?G
5lstm_422_lstm_cell_554_matmul_readvariableop_resource:2(I
7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource:
(D
6lstm_422_lstm_cell_554_biasadd_readvariableop_resource:(:
(dense_140_matmul_readvariableop_resource:
7
)dense_140_biasadd_readvariableop_resource:
identity?? dense_140/BiasAdd/ReadVariableOp?dense_140/MatMul/ReadVariableOp?-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp?,lstm_420/lstm_cell_552/MatMul/ReadVariableOp?.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp?lstm_420/while?-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp?,lstm_421/lstm_cell_553/MatMul/ReadVariableOp?.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp?lstm_421/while?-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp?,lstm_422/lstm_cell_554/MatMul/ReadVariableOp?.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp?lstm_422/whileD
lstm_420/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_sliceStridedSlicelstm_420/Shape:output:0%lstm_420/strided_slice/stack:output:0'lstm_420/strided_slice/stack_1:output:0'lstm_420/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_420/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_420/zeros/packedPacklstm_420/strided_slice:output:0 lstm_420/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_420/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_420/zerosFilllstm_420/zeros/packed:output:0lstm_420/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_420/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_420/zeros_1/packedPacklstm_420/strided_slice:output:0"lstm_420/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_420/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_420/zeros_1Fill lstm_420/zeros_1/packed:output:0lstm_420/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_420/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_420/transpose	Transposeinputs lstm_420/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_420/Shape_1Shapelstm_420/transpose:y:0*
T0*
_output_shapes
:h
lstm_420/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_420/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_1StridedSlicelstm_420/Shape_1:output:0'lstm_420/strided_slice_1/stack:output:0)lstm_420/strided_slice_1/stack_1:output:0)lstm_420/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_420/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_420/TensorArrayV2TensorListReserve-lstm_420/TensorArrayV2/element_shape:output:0!lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_420/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_420/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_420/transpose:y:0Glstm_420/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_420/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_420/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_2StridedSlicelstm_420/transpose:y:0'lstm_420/strided_slice_2/stack:output:0)lstm_420/strided_slice_2/stack_1:output:0)lstm_420/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_420/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp5lstm_420_lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_420/lstm_cell_552/MatMulMatMul!lstm_420/strided_slice_2:output:04lstm_420/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_420/lstm_cell_552/MatMul_1MatMullstm_420/zeros:output:06lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_420/lstm_cell_552/addAddV2'lstm_420/lstm_cell_552/MatMul:product:0)lstm_420/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp6lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_420/lstm_cell_552/BiasAddBiasAddlstm_420/lstm_cell_552/add:z:05lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_420/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_420/lstm_cell_552/splitSplit/lstm_420/lstm_cell_552/split/split_dim:output:0'lstm_420/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_420/lstm_cell_552/SigmoidSigmoid%lstm_420/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_420/lstm_cell_552/Sigmoid_1Sigmoid%lstm_420/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mulMul$lstm_420/lstm_cell_552/Sigmoid_1:y:0lstm_420/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_420/lstm_cell_552/ReluRelu%lstm_420/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mul_1Mul"lstm_420/lstm_cell_552/Sigmoid:y:0)lstm_420/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/add_1AddV2lstm_420/lstm_cell_552/mul:z:0 lstm_420/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_420/lstm_cell_552/Sigmoid_2Sigmoid%lstm_420/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_420/lstm_cell_552/Relu_1Relu lstm_420/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mul_2Mul$lstm_420/lstm_cell_552/Sigmoid_2:y:0+lstm_420/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_420/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_420/TensorArrayV2_1TensorListReserve/lstm_420/TensorArrayV2_1/element_shape:output:0!lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_420/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_420/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_420/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_420/whileWhile$lstm_420/while/loop_counter:output:0*lstm_420/while/maximum_iterations:output:0lstm_420/time:output:0!lstm_420/TensorArrayV2_1:handle:0lstm_420/zeros:output:0lstm_420/zeros_1:output:0!lstm_420/strided_slice_1:output:0@lstm_420/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_420_lstm_cell_552_matmul_readvariableop_resource7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource6lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
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
lstm_420_while_body_3354716*'
condR
lstm_420_while_cond_3354715*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_420/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_420/TensorArrayV2Stack/TensorListStackTensorListStacklstm_420/while:output:3Blstm_420/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_420/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_420/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_3StridedSlice4lstm_420/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_420/strided_slice_3/stack:output:0)lstm_420/strided_slice_3/stack_1:output:0)lstm_420/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_420/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_420/transpose_1	Transpose4lstm_420/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_420/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_420/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_421/ShapeShapelstm_420/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_sliceStridedSlicelstm_421/Shape:output:0%lstm_421/strided_slice/stack:output:0'lstm_421/strided_slice/stack_1:output:0'lstm_421/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_421/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_421/zeros/packedPacklstm_421/strided_slice:output:0 lstm_421/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_421/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_421/zerosFilllstm_421/zeros/packed:output:0lstm_421/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_421/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_421/zeros_1/packedPacklstm_421/strided_slice:output:0"lstm_421/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_421/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_421/zeros_1Fill lstm_421/zeros_1/packed:output:0lstm_421/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_421/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_421/transpose	Transposelstm_420/transpose_1:y:0 lstm_421/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_421/Shape_1Shapelstm_421/transpose:y:0*
T0*
_output_shapes
:h
lstm_421/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_421/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_1StridedSlicelstm_421/Shape_1:output:0'lstm_421/strided_slice_1/stack:output:0)lstm_421/strided_slice_1/stack_1:output:0)lstm_421/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_421/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_421/TensorArrayV2TensorListReserve-lstm_421/TensorArrayV2/element_shape:output:0!lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_421/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_421/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_421/transpose:y:0Glstm_421/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_421/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_421/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_2StridedSlicelstm_421/transpose:y:0'lstm_421/strided_slice_2/stack:output:0)lstm_421/strided_slice_2/stack_1:output:0)lstm_421/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_421/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp5lstm_421_lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_421/lstm_cell_553/MatMulMatMul!lstm_421/strided_slice_2:output:04lstm_421/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_421/lstm_cell_553/MatMul_1MatMullstm_421/zeros:output:06lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_421/lstm_cell_553/addAddV2'lstm_421/lstm_cell_553/MatMul:product:0)lstm_421/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp6lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_421/lstm_cell_553/BiasAddBiasAddlstm_421/lstm_cell_553/add:z:05lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_421/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_421/lstm_cell_553/splitSplit/lstm_421/lstm_cell_553/split/split_dim:output:0'lstm_421/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_421/lstm_cell_553/SigmoidSigmoid%lstm_421/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_421/lstm_cell_553/Sigmoid_1Sigmoid%lstm_421/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mulMul$lstm_421/lstm_cell_553/Sigmoid_1:y:0lstm_421/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_421/lstm_cell_553/ReluRelu%lstm_421/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mul_1Mul"lstm_421/lstm_cell_553/Sigmoid:y:0)lstm_421/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/add_1AddV2lstm_421/lstm_cell_553/mul:z:0 lstm_421/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_421/lstm_cell_553/Sigmoid_2Sigmoid%lstm_421/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_421/lstm_cell_553/Relu_1Relu lstm_421/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mul_2Mul$lstm_421/lstm_cell_553/Sigmoid_2:y:0+lstm_421/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_421/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_421/TensorArrayV2_1TensorListReserve/lstm_421/TensorArrayV2_1/element_shape:output:0!lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_421/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_421/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_421/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_421/whileWhile$lstm_421/while/loop_counter:output:0*lstm_421/while/maximum_iterations:output:0lstm_421/time:output:0!lstm_421/TensorArrayV2_1:handle:0lstm_421/zeros:output:0lstm_421/zeros_1:output:0!lstm_421/strided_slice_1:output:0@lstm_421/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_421_lstm_cell_553_matmul_readvariableop_resource7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource6lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
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
lstm_421_while_body_3354855*'
condR
lstm_421_while_cond_3354854*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_421/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_421/TensorArrayV2Stack/TensorListStackTensorListStacklstm_421/while:output:3Blstm_421/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_421/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_421/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_3StridedSlice4lstm_421/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_421/strided_slice_3/stack:output:0)lstm_421/strided_slice_3/stack_1:output:0)lstm_421/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_421/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_421/transpose_1	Transpose4lstm_421/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_421/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_421/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_422/ShapeShapelstm_421/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_sliceStridedSlicelstm_422/Shape:output:0%lstm_422/strided_slice/stack:output:0'lstm_422/strided_slice/stack_1:output:0'lstm_422/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_422/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_422/zeros/packedPacklstm_422/strided_slice:output:0 lstm_422/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_422/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_422/zerosFilllstm_422/zeros/packed:output:0lstm_422/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_422/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_422/zeros_1/packedPacklstm_422/strided_slice:output:0"lstm_422/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_422/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_422/zeros_1Fill lstm_422/zeros_1/packed:output:0lstm_422/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_422/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_422/transpose	Transposelstm_421/transpose_1:y:0 lstm_422/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_422/Shape_1Shapelstm_422/transpose:y:0*
T0*
_output_shapes
:h
lstm_422/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_422/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_1StridedSlicelstm_422/Shape_1:output:0'lstm_422/strided_slice_1/stack:output:0)lstm_422/strided_slice_1/stack_1:output:0)lstm_422/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_422/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_422/TensorArrayV2TensorListReserve-lstm_422/TensorArrayV2/element_shape:output:0!lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_422/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_422/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_422/transpose:y:0Glstm_422/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_422/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_422/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_2StridedSlicelstm_422/transpose:y:0'lstm_422/strided_slice_2/stack:output:0)lstm_422/strided_slice_2/stack_1:output:0)lstm_422/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_422/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp5lstm_422_lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_422/lstm_cell_554/MatMulMatMul!lstm_422/strided_slice_2:output:04lstm_422/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_422/lstm_cell_554/MatMul_1MatMullstm_422/zeros:output:06lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_422/lstm_cell_554/addAddV2'lstm_422/lstm_cell_554/MatMul:product:0)lstm_422/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp6lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_422/lstm_cell_554/BiasAddBiasAddlstm_422/lstm_cell_554/add:z:05lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_422/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_422/lstm_cell_554/splitSplit/lstm_422/lstm_cell_554/split/split_dim:output:0'lstm_422/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_422/lstm_cell_554/SigmoidSigmoid%lstm_422/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_422/lstm_cell_554/Sigmoid_1Sigmoid%lstm_422/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mulMul$lstm_422/lstm_cell_554/Sigmoid_1:y:0lstm_422/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_422/lstm_cell_554/ReluRelu%lstm_422/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mul_1Mul"lstm_422/lstm_cell_554/Sigmoid:y:0)lstm_422/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/add_1AddV2lstm_422/lstm_cell_554/mul:z:0 lstm_422/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_422/lstm_cell_554/Sigmoid_2Sigmoid%lstm_422/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_422/lstm_cell_554/Relu_1Relu lstm_422/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mul_2Mul$lstm_422/lstm_cell_554/Sigmoid_2:y:0+lstm_422/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_422/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_422/TensorArrayV2_1TensorListReserve/lstm_422/TensorArrayV2_1/element_shape:output:0!lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_422/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_422/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_422/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_422/whileWhile$lstm_422/while/loop_counter:output:0*lstm_422/while/maximum_iterations:output:0lstm_422/time:output:0!lstm_422/TensorArrayV2_1:handle:0lstm_422/zeros:output:0lstm_422/zeros_1:output:0!lstm_422/strided_slice_1:output:0@lstm_422/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_422_lstm_cell_554_matmul_readvariableop_resource7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource6lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
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
lstm_422_while_body_3354994*'
condR
lstm_422_while_cond_3354993*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_422/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_422/TensorArrayV2Stack/TensorListStackTensorListStacklstm_422/while:output:3Blstm_422/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_422/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_422/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_3StridedSlice4lstm_422/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_422/strided_slice_3/stack:output:0)lstm_422/strided_slice_3/stack_1:output:0)lstm_422/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_422/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_422/transpose_1	Transpose4lstm_422/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_422/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_422/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_140/MatMulMatMul!lstm_422/strided_slice_3:output:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_140/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp.^lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp-^lstm_420/lstm_cell_552/MatMul/ReadVariableOp/^lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp^lstm_420/while.^lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp-^lstm_421/lstm_cell_553/MatMul/ReadVariableOp/^lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp^lstm_421/while.^lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp-^lstm_422/lstm_cell_554/MatMul/ReadVariableOp/^lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp^lstm_422/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2^
-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp2\
,lstm_420/lstm_cell_552/MatMul/ReadVariableOp,lstm_420/lstm_cell_552/MatMul/ReadVariableOp2`
.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp2 
lstm_420/whilelstm_420/while2^
-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp2\
,lstm_421/lstm_cell_553/MatMul/ReadVariableOp,lstm_421/lstm_cell_553/MatMul/ReadVariableOp2`
.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp2 
lstm_421/whilelstm_421/while2^
-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp2\
,lstm_422/lstm_cell_554/MatMul/ReadVariableOp,lstm_422/lstm_cell_554/MatMul/ReadVariableOp2`
.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp2 
lstm_422/whilelstm_422/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3351997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_552_3352021_0:	?0
while_lstm_cell_552_3352023_0:	d?,
while_lstm_cell_552_3352025_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_552_3352021:	?.
while_lstm_cell_552_3352023:	d?*
while_lstm_cell_552_3352025:	???+while/lstm_cell_552/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_552/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_552_3352021_0while_lstm_cell_552_3352023_0while_lstm_cell_552_3352025_0*
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3351983?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_552/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_552/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_552/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_552/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_552_3352021while_lstm_cell_552_3352021_0"<
while_lstm_cell_552_3352023while_lstm_cell_552_3352023_0"<
while_lstm_cell_552_3352025while_lstm_cell_552_3352025_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_552/StatefulPartitionedCall+while/lstm_cell_552/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3356848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_554_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_554_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_554_matmul_readvariableop_resource:2(F
4while_lstm_cell_554_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_554_biasadd_readvariableop_resource:(??*while/lstm_cell_554/BiasAdd/ReadVariableOp?)while/lstm_cell_554/MatMul/ReadVariableOp?+while/lstm_cell_554/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_554/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_554/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_554/addAddV2$while/lstm_cell_554/MatMul:product:0&while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_554/BiasAddBiasAddwhile/lstm_cell_554/add:z:02while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_554/splitSplit,while/lstm_cell_554/split/split_dim:output:0$while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_554/SigmoidSigmoid"while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_1Sigmoid"while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mulMul!while/lstm_cell_554/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_554/ReluRelu"while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_1Mulwhile/lstm_cell_554/Sigmoid:y:0&while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/add_1AddV2while/lstm_cell_554/mul:z:0while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_554/Sigmoid_2Sigmoid"while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_554/Relu_1Reluwhile/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_554/mul_2Mul!while/lstm_cell_554/Sigmoid_2:y:0(while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_554/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_554/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_554/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_554/BiasAdd/ReadVariableOp*^while/lstm_cell_554/MatMul/ReadVariableOp,^while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_554_biasadd_readvariableop_resource5while_lstm_cell_554_biasadd_readvariableop_resource_0"n
4while_lstm_cell_554_matmul_1_readvariableop_resource6while_lstm_cell_554_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_554_matmul_readvariableop_resource4while_lstm_cell_554_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_554/BiasAdd/ReadVariableOp*while/lstm_cell_554/BiasAdd/ReadVariableOp2V
)while/lstm_cell_554/MatMul/ReadVariableOp)while/lstm_cell_554/MatMul/ReadVariableOp2Z
+while/lstm_cell_554/MatMul_1/ReadVariableOp+while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352333

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
?#
?
while_body_3352888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_554_3352912_0:2(/
while_lstm_cell_554_3352914_0:
(+
while_lstm_cell_554_3352916_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_554_3352912:2(-
while_lstm_cell_554_3352914:
()
while_lstm_cell_554_3352916:(??+while/lstm_cell_554/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_554/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_554_3352912_0while_lstm_cell_554_3352914_0while_lstm_cell_554_3352916_0*
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352829?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_554/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_554/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_554/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_554/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_554_3352912while_lstm_cell_554_3352912_0"<
while_lstm_cell_554_3352914while_lstm_cell_554_3352914_0"<
while_lstm_cell_554_3352916while_lstm_cell_554_3352916_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_554/StatefulPartitionedCall+while/lstm_cell_554/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_422_while_cond_3354566.
*lstm_422_while_lstm_422_while_loop_counter4
0lstm_422_while_lstm_422_while_maximum_iterations
lstm_422_while_placeholder 
lstm_422_while_placeholder_1 
lstm_422_while_placeholder_2 
lstm_422_while_placeholder_30
,lstm_422_while_less_lstm_422_strided_slice_1G
Clstm_422_while_lstm_422_while_cond_3354566___redundant_placeholder0G
Clstm_422_while_lstm_422_while_cond_3354566___redundant_placeholder1G
Clstm_422_while_lstm_422_while_cond_3354566___redundant_placeholder2G
Clstm_422_while_lstm_422_while_cond_3354566___redundant_placeholder3
lstm_422_while_identity
?
lstm_422/while/LessLesslstm_422_while_placeholder,lstm_422_while_less_lstm_422_strided_slice_1*
T0*
_output_shapes
: ]
lstm_422/while/IdentityIdentitylstm_422/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_422_while_identity lstm_422/while/Identity:output:0*(
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357115

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

?
0__inference_sequential_140_layer_call_fn_3354203

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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3353440o
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353961

inputs?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3353877*
condR
while_cond_3353876*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_421_while_body_3354855.
*lstm_421_while_lstm_421_while_loop_counter4
0lstm_421_while_lstm_421_while_maximum_iterations
lstm_421_while_placeholder 
lstm_421_while_placeholder_1 
lstm_421_while_placeholder_2 
lstm_421_while_placeholder_3-
)lstm_421_while_lstm_421_strided_slice_1_0i
elstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0:	d?R
?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?M
>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
lstm_421_while_identity
lstm_421_while_identity_1
lstm_421_while_identity_2
lstm_421_while_identity_3
lstm_421_while_identity_4
lstm_421_while_identity_5+
'lstm_421_while_lstm_421_strided_slice_1g
clstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensorN
;lstm_421_while_lstm_cell_553_matmul_readvariableop_resource:	d?P
=lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource:	2?K
<lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource:	???3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp?2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp?4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp?
@lstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_421/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0lstm_421_while_placeholderIlstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_421/while/lstm_cell_553/MatMulMatMul9lstm_421/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_421/while/lstm_cell_553/MatMul_1MatMullstm_421_while_placeholder_2<lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_421/while/lstm_cell_553/addAddV2-lstm_421/while/lstm_cell_553/MatMul:product:0/lstm_421/while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_421/while/lstm_cell_553/BiasAddBiasAdd$lstm_421/while/lstm_cell_553/add:z:0;lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_421/while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_421/while/lstm_cell_553/splitSplit5lstm_421/while/lstm_cell_553/split/split_dim:output:0-lstm_421/while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_421/while/lstm_cell_553/SigmoidSigmoid+lstm_421/while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_421/while/lstm_cell_553/Sigmoid_1Sigmoid+lstm_421/while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_421/while/lstm_cell_553/mulMul*lstm_421/while/lstm_cell_553/Sigmoid_1:y:0lstm_421_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_421/while/lstm_cell_553/ReluRelu+lstm_421/while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/mul_1Mul(lstm_421/while/lstm_cell_553/Sigmoid:y:0/lstm_421/while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/add_1AddV2$lstm_421/while/lstm_cell_553/mul:z:0&lstm_421/while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_421/while/lstm_cell_553/Sigmoid_2Sigmoid+lstm_421/while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_421/while/lstm_cell_553/Relu_1Relu&lstm_421/while/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/mul_2Mul*lstm_421/while/lstm_cell_553/Sigmoid_2:y:01lstm_421/while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_421/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_421_while_placeholder_1lstm_421_while_placeholder&lstm_421/while/lstm_cell_553/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_421/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_421/while/addAddV2lstm_421_while_placeholderlstm_421/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_421/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_421/while/add_1AddV2*lstm_421_while_lstm_421_while_loop_counterlstm_421/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_421/while/IdentityIdentitylstm_421/while/add_1:z:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_1Identity0lstm_421_while_lstm_421_while_maximum_iterations^lstm_421/while/NoOp*
T0*
_output_shapes
: t
lstm_421/while/Identity_2Identitylstm_421/while/add:z:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_3IdentityClstm_421/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_4Identity&lstm_421/while/lstm_cell_553/mul_2:z:0^lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_421/while/Identity_5Identity&lstm_421/while/lstm_cell_553/add_1:z:0^lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_421/while/NoOpNoOp4^lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp3^lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp5^lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_421_while_identity lstm_421/while/Identity:output:0"?
lstm_421_while_identity_1"lstm_421/while/Identity_1:output:0"?
lstm_421_while_identity_2"lstm_421/while/Identity_2:output:0"?
lstm_421_while_identity_3"lstm_421/while/Identity_3:output:0"?
lstm_421_while_identity_4"lstm_421/while/Identity_4:output:0"?
lstm_421_while_identity_5"lstm_421/while/Identity_5:output:0"T
'lstm_421_while_lstm_421_strided_slice_1)lstm_421_while_lstm_421_strided_slice_1_0"~
<lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0"?
=lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0"|
;lstm_421_while_lstm_cell_553_matmul_readvariableop_resource=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0"?
clstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensorelstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp2h
2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp2l
4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355700

inputs?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3355616*
condR
while_cond_3355615*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356932

inputs>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3356848*
condR
while_cond_3356847*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_140_lstm_422_while_body_3351826L
Hsequential_140_lstm_422_while_sequential_140_lstm_422_while_loop_counterR
Nsequential_140_lstm_422_while_sequential_140_lstm_422_while_maximum_iterations-
)sequential_140_lstm_422_while_placeholder/
+sequential_140_lstm_422_while_placeholder_1/
+sequential_140_lstm_422_while_placeholder_2/
+sequential_140_lstm_422_while_placeholder_3K
Gsequential_140_lstm_422_while_sequential_140_lstm_422_strided_slice_1_0?
?sequential_140_lstm_422_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_422_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_140_lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0:2(`
Nsequential_140_lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0:
([
Msequential_140_lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0:(*
&sequential_140_lstm_422_while_identity,
(sequential_140_lstm_422_while_identity_1,
(sequential_140_lstm_422_while_identity_2,
(sequential_140_lstm_422_while_identity_3,
(sequential_140_lstm_422_while_identity_4,
(sequential_140_lstm_422_while_identity_5I
Esequential_140_lstm_422_while_sequential_140_lstm_422_strided_slice_1?
?sequential_140_lstm_422_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_422_tensorarrayunstack_tensorlistfromtensor\
Jsequential_140_lstm_422_while_lstm_cell_554_matmul_readvariableop_resource:2(^
Lsequential_140_lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource:
(Y
Ksequential_140_lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource:(??Bsequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp?Asequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp?Csequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp?
Osequential_140/lstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_140/lstm_422/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_140_lstm_422_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_422_tensorarrayunstack_tensorlistfromtensor_0)sequential_140_lstm_422_while_placeholderXsequential_140/lstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOpLsequential_140_lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_140/lstm_422/while/lstm_cell_554/MatMulMatMulHsequential_140/lstm_422/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOpNsequential_140_lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_140/lstm_422/while/lstm_cell_554/MatMul_1MatMul+sequential_140_lstm_422_while_placeholder_2Ksequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_140/lstm_422/while/lstm_cell_554/addAddV2<sequential_140/lstm_422/while/lstm_cell_554/MatMul:product:0>sequential_140/lstm_422/while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOpMsequential_140_lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_140/lstm_422/while/lstm_cell_554/BiasAddBiasAdd3sequential_140/lstm_422/while/lstm_cell_554/add:z:0Jsequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_140/lstm_422/while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_140/lstm_422/while/lstm_cell_554/splitSplitDsequential_140/lstm_422/while/lstm_cell_554/split/split_dim:output:0<sequential_140/lstm_422/while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_140/lstm_422/while/lstm_cell_554/SigmoidSigmoid:sequential_140/lstm_422/while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_140/lstm_422/while/lstm_cell_554/Sigmoid_1Sigmoid:sequential_140/lstm_422/while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_140/lstm_422/while/lstm_cell_554/mulMul9sequential_140/lstm_422/while/lstm_cell_554/Sigmoid_1:y:0+sequential_140_lstm_422_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_140/lstm_422/while/lstm_cell_554/ReluRelu:sequential_140/lstm_422/while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_140/lstm_422/while/lstm_cell_554/mul_1Mul7sequential_140/lstm_422/while/lstm_cell_554/Sigmoid:y:0>sequential_140/lstm_422/while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_140/lstm_422/while/lstm_cell_554/add_1AddV23sequential_140/lstm_422/while/lstm_cell_554/mul:z:05sequential_140/lstm_422/while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_140/lstm_422/while/lstm_cell_554/Sigmoid_2Sigmoid:sequential_140/lstm_422/while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_140/lstm_422/while/lstm_cell_554/Relu_1Relu5sequential_140/lstm_422/while/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_140/lstm_422/while/lstm_cell_554/mul_2Mul9sequential_140/lstm_422/while/lstm_cell_554/Sigmoid_2:y:0@sequential_140/lstm_422/while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_140/lstm_422/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_140_lstm_422_while_placeholder_1)sequential_140_lstm_422_while_placeholder5sequential_140/lstm_422/while/lstm_cell_554/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_140/lstm_422/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_140/lstm_422/while/addAddV2)sequential_140_lstm_422_while_placeholder,sequential_140/lstm_422/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_140/lstm_422/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_140/lstm_422/while/add_1AddV2Hsequential_140_lstm_422_while_sequential_140_lstm_422_while_loop_counter.sequential_140/lstm_422/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_140/lstm_422/while/IdentityIdentity'sequential_140/lstm_422/while/add_1:z:0#^sequential_140/lstm_422/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_422/while/Identity_1IdentityNsequential_140_lstm_422_while_sequential_140_lstm_422_while_maximum_iterations#^sequential_140/lstm_422/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_422/while/Identity_2Identity%sequential_140/lstm_422/while/add:z:0#^sequential_140/lstm_422/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_422/while/Identity_3IdentityRsequential_140/lstm_422/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_140/lstm_422/while/NoOp*
T0*
_output_shapes
: ?
(sequential_140/lstm_422/while/Identity_4Identity5sequential_140/lstm_422/while/lstm_cell_554/mul_2:z:0#^sequential_140/lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_140/lstm_422/while/Identity_5Identity5sequential_140/lstm_422/while/lstm_cell_554/add_1:z:0#^sequential_140/lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_140/lstm_422/while/NoOpNoOpC^sequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOpB^sequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOpD^sequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_140_lstm_422_while_identity/sequential_140/lstm_422/while/Identity:output:0"]
(sequential_140_lstm_422_while_identity_11sequential_140/lstm_422/while/Identity_1:output:0"]
(sequential_140_lstm_422_while_identity_21sequential_140/lstm_422/while/Identity_2:output:0"]
(sequential_140_lstm_422_while_identity_31sequential_140/lstm_422/while/Identity_3:output:0"]
(sequential_140_lstm_422_while_identity_41sequential_140/lstm_422/while/Identity_4:output:0"]
(sequential_140_lstm_422_while_identity_51sequential_140/lstm_422/while/Identity_5:output:0"?
Ksequential_140_lstm_422_while_lstm_cell_554_biasadd_readvariableop_resourceMsequential_140_lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0"?
Lsequential_140_lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resourceNsequential_140_lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0"?
Jsequential_140_lstm_422_while_lstm_cell_554_matmul_readvariableop_resourceLsequential_140_lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0"?
Esequential_140_lstm_422_while_sequential_140_lstm_422_strided_slice_1Gsequential_140_lstm_422_while_sequential_140_lstm_422_strided_slice_1_0"?
?sequential_140_lstm_422_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_422_tensorarrayunstack_tensorlistfromtensor?sequential_140_lstm_422_while_tensorarrayv2read_tensorlistgetitem_sequential_140_lstm_422_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOpBsequential_140/lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp2?
Asequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOpAsequential_140/lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp2?
Csequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOpCsequential_140/lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353415

inputs>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3353331*
condR
while_cond_3353330*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_420_layer_call_fn_3355128

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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353961s
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
while_body_3353712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3352347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_553_3352371_0:	d?0
while_lstm_cell_553_3352373_0:	2?,
while_lstm_cell_553_3352375_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_553_3352371:	d?.
while_lstm_cell_553_3352373:	2?*
while_lstm_cell_553_3352375:	???+while/lstm_cell_553/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_553/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_553_3352371_0while_lstm_cell_553_3352373_0while_lstm_cell_553_3352375_0*
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352333?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_553/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_553/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_553/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_553/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_553_3352371while_lstm_cell_553_3352371_0"<
while_lstm_cell_553_3352373while_lstm_cell_553_3352373_0"<
while_lstm_cell_553_3352375while_lstm_cell_553_3352375_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_553/StatefulPartitionedCall+while/lstm_cell_553/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_421_layer_call_fn_3355733

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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353265s
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
while_body_3355803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3353440

inputs#
lstm_420_3353116:	?#
lstm_420_3353118:	d?
lstm_420_3353120:	?#
lstm_421_3353266:	d?#
lstm_421_3353268:	2?
lstm_421_3353270:	?"
lstm_422_3353416:2("
lstm_422_3353418:
(
lstm_422_3353420:(#
dense_140_3353434:

dense_140_3353436:
identity??!dense_140/StatefulPartitionedCall? lstm_420/StatefulPartitionedCall? lstm_421/StatefulPartitionedCall? lstm_422/StatefulPartitionedCall?
 lstm_420/StatefulPartitionedCallStatefulPartitionedCallinputslstm_420_3353116lstm_420_3353118lstm_420_3353120*
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353115?
 lstm_421/StatefulPartitionedCallStatefulPartitionedCall)lstm_420/StatefulPartitionedCall:output:0lstm_421_3353266lstm_421_3353268lstm_421_3353270*
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353265?
 lstm_422/StatefulPartitionedCallStatefulPartitionedCall)lstm_421/StatefulPartitionedCall:output:0lstm_422_3353416lstm_422_3353418lstm_422_3353420*
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353415?
!dense_140/StatefulPartitionedCallStatefulPartitionedCall)lstm_422/StatefulPartitionedCall:output:0dense_140_3353434dense_140_3353436*
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
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433y
IdentityIdentity*dense_140/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_140/StatefulPartitionedCall!^lstm_420/StatefulPartitionedCall!^lstm_421/StatefulPartitionedCall!^lstm_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2D
 lstm_420/StatefulPartitionedCall lstm_420/StatefulPartitionedCall2D
 lstm_421/StatefulPartitionedCall lstm_421/StatefulPartitionedCall2D
 lstm_422/StatefulPartitionedCall lstm_422/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353796

inputs?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3353712*
condR
while_cond_3353711*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3355945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355945___redundant_placeholder05
1while_while_cond_3355945___redundant_placeholder15
1while_while_cond_3355945___redundant_placeholder25
1while_while_cond_3355945___redundant_placeholder3
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355557

inputs?
,lstm_cell_552_matmul_readvariableop_resource:	?A
.lstm_cell_552_matmul_1_readvariableop_resource:	d?<
-lstm_cell_552_biasadd_readvariableop_resource:	?
identity??$lstm_cell_552/BiasAdd/ReadVariableOp?#lstm_cell_552/MatMul/ReadVariableOp?%lstm_cell_552/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_552/MatMul/ReadVariableOpReadVariableOp,lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_552/MatMulMatMulstrided_slice_2:output:0+lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_552/MatMul_1MatMulzeros:output:0-lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_552/addAddV2lstm_cell_552/MatMul:product:0 lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_552/BiasAddBiasAddlstm_cell_552/add:z:0,lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_552/splitSplit&lstm_cell_552/split/split_dim:output:0lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_552/SigmoidSigmoidlstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_1Sigmoidlstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_552/mulMullstm_cell_552/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_552/ReluRelulstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_1Mullstm_cell_552/Sigmoid:y:0 lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_552/add_1AddV2lstm_cell_552/mul:z:0lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_552/Sigmoid_2Sigmoidlstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_552/Relu_1Relulstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_552/mul_2Mullstm_cell_552/Sigmoid_2:y:0"lstm_cell_552/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_552_matmul_readvariableop_resource.lstm_cell_552_matmul_1_readvariableop_resource-lstm_cell_552_biasadd_readvariableop_resource*
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
while_body_3355473*
condR
while_cond_3355472*K
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
NoOpNoOp%^lstm_cell_552/BiasAdd/ReadVariableOp$^lstm_cell_552/MatMul/ReadVariableOp&^lstm_cell_552/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_552/BiasAdd/ReadVariableOp$lstm_cell_552/BiasAdd/ReadVariableOp2J
#lstm_cell_552/MatMul/ReadVariableOp#lstm_cell_552/MatMul/ReadVariableOp2N
%lstm_cell_552/MatMul_1/ReadVariableOp%lstm_cell_552/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3356704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356704___redundant_placeholder05
1while_while_cond_3356704___redundant_placeholder15
1while_while_cond_3356704___redundant_placeholder25
1while_while_cond_3356704___redundant_placeholder3
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
while_cond_3352887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3352887___redundant_placeholder05
1while_while_cond_3352887___redundant_placeholder15
1while_while_cond_3352887___redundant_placeholder25
1while_while_cond_3352887___redundant_placeholder3
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
while_cond_3356561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356561___redundant_placeholder05
1while_while_cond_3356561___redundant_placeholder15
1while_while_cond_3356561___redundant_placeholder25
1while_while_cond_3356561___redundant_placeholder3
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352683

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

?
lstm_420_while_cond_3354715.
*lstm_420_while_lstm_420_while_loop_counter4
0lstm_420_while_lstm_420_while_maximum_iterations
lstm_420_while_placeholder 
lstm_420_while_placeholder_1 
lstm_420_while_placeholder_2 
lstm_420_while_placeholder_30
,lstm_420_while_less_lstm_420_strided_slice_1G
Clstm_420_while_lstm_420_while_cond_3354715___redundant_placeholder0G
Clstm_420_while_lstm_420_while_cond_3354715___redundant_placeholder1G
Clstm_420_while_lstm_420_while_cond_3354715___redundant_placeholder2G
Clstm_420_while_lstm_420_while_cond_3354715___redundant_placeholder3
lstm_420_while_identity
?
lstm_420/while/LessLesslstm_420_while_placeholder,lstm_420_while_less_lstm_420_strided_slice_1*
T0*
_output_shapes
: ]
lstm_420/while/IdentityIdentitylstm_420/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_420_while_identity lstm_420/while/Identity:output:0*(
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356503
inputs_0>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3356419*
condR
while_cond_3356418*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356646
inputs_0>
,lstm_cell_554_matmul_readvariableop_resource:2(@
.lstm_cell_554_matmul_1_readvariableop_resource:
(;
-lstm_cell_554_biasadd_readvariableop_resource:(
identity??$lstm_cell_554/BiasAdd/ReadVariableOp?#lstm_cell_554/MatMul/ReadVariableOp?%lstm_cell_554/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_554/MatMul/ReadVariableOpReadVariableOp,lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_554/MatMulMatMulstrided_slice_2:output:0+lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_554/MatMul_1MatMulzeros:output:0-lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_554/addAddV2lstm_cell_554/MatMul:product:0 lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_554/BiasAddBiasAddlstm_cell_554/add:z:0,lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_554/splitSplit&lstm_cell_554/split/split_dim:output:0lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_554/SigmoidSigmoidlstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_1Sigmoidlstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_554/mulMullstm_cell_554/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_554/ReluRelulstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_1Mullstm_cell_554/Sigmoid:y:0 lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_554/add_1AddV2lstm_cell_554/mul:z:0lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_554/Sigmoid_2Sigmoidlstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_554/Relu_1Relulstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_554/mul_2Mullstm_cell_554/Sigmoid_2:y:0"lstm_cell_554/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_554_matmul_readvariableop_resource.lstm_cell_554_matmul_1_readvariableop_resource-lstm_cell_554_biasadd_readvariableop_resource*
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
while_body_3356562*
condR
while_cond_3356561*K
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
NoOpNoOp%^lstm_cell_554/BiasAdd/ReadVariableOp$^lstm_cell_554/MatMul/ReadVariableOp&^lstm_cell_554/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_554/BiasAdd/ReadVariableOp$lstm_cell_554/BiasAdd/ReadVariableOp2J
#lstm_cell_554/MatMul/ReadVariableOp#lstm_cell_554/MatMul/ReadVariableOp2N
%lstm_cell_554/MatMul_1/ReadVariableOp%lstm_cell_554/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_552_layer_call_fn_3356985

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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3352129o
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3351983

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
while_cond_3356231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356231___redundant_placeholder05
1while_while_cond_3356231___redundant_placeholder15
1while_while_cond_3356231___redundant_placeholder25
1while_while_cond_3356231___redundant_placeholder3
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
/__inference_lstm_cell_552_layer_call_fn_3356968

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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3351983o
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354657

inputsH
5lstm_420_lstm_cell_552_matmul_readvariableop_resource:	?J
7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource:	d?E
6lstm_420_lstm_cell_552_biasadd_readvariableop_resource:	?H
5lstm_421_lstm_cell_553_matmul_readvariableop_resource:	d?J
7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource:	2?E
6lstm_421_lstm_cell_553_biasadd_readvariableop_resource:	?G
5lstm_422_lstm_cell_554_matmul_readvariableop_resource:2(I
7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource:
(D
6lstm_422_lstm_cell_554_biasadd_readvariableop_resource:(:
(dense_140_matmul_readvariableop_resource:
7
)dense_140_biasadd_readvariableop_resource:
identity?? dense_140/BiasAdd/ReadVariableOp?dense_140/MatMul/ReadVariableOp?-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp?,lstm_420/lstm_cell_552/MatMul/ReadVariableOp?.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp?lstm_420/while?-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp?,lstm_421/lstm_cell_553/MatMul/ReadVariableOp?.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp?lstm_421/while?-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp?,lstm_422/lstm_cell_554/MatMul/ReadVariableOp?.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp?lstm_422/whileD
lstm_420/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_sliceStridedSlicelstm_420/Shape:output:0%lstm_420/strided_slice/stack:output:0'lstm_420/strided_slice/stack_1:output:0'lstm_420/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_420/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_420/zeros/packedPacklstm_420/strided_slice:output:0 lstm_420/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_420/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_420/zerosFilllstm_420/zeros/packed:output:0lstm_420/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_420/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_420/zeros_1/packedPacklstm_420/strided_slice:output:0"lstm_420/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_420/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_420/zeros_1Fill lstm_420/zeros_1/packed:output:0lstm_420/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_420/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_420/transpose	Transposeinputs lstm_420/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_420/Shape_1Shapelstm_420/transpose:y:0*
T0*
_output_shapes
:h
lstm_420/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_420/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_1StridedSlicelstm_420/Shape_1:output:0'lstm_420/strided_slice_1/stack:output:0)lstm_420/strided_slice_1/stack_1:output:0)lstm_420/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_420/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_420/TensorArrayV2TensorListReserve-lstm_420/TensorArrayV2/element_shape:output:0!lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_420/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_420/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_420/transpose:y:0Glstm_420/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_420/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_420/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_2StridedSlicelstm_420/transpose:y:0'lstm_420/strided_slice_2/stack:output:0)lstm_420/strided_slice_2/stack_1:output:0)lstm_420/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_420/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp5lstm_420_lstm_cell_552_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_420/lstm_cell_552/MatMulMatMul!lstm_420/strided_slice_2:output:04lstm_420/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_420/lstm_cell_552/MatMul_1MatMullstm_420/zeros:output:06lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_420/lstm_cell_552/addAddV2'lstm_420/lstm_cell_552/MatMul:product:0)lstm_420/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp6lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_420/lstm_cell_552/BiasAddBiasAddlstm_420/lstm_cell_552/add:z:05lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_420/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_420/lstm_cell_552/splitSplit/lstm_420/lstm_cell_552/split/split_dim:output:0'lstm_420/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_420/lstm_cell_552/SigmoidSigmoid%lstm_420/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_420/lstm_cell_552/Sigmoid_1Sigmoid%lstm_420/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mulMul$lstm_420/lstm_cell_552/Sigmoid_1:y:0lstm_420/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_420/lstm_cell_552/ReluRelu%lstm_420/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mul_1Mul"lstm_420/lstm_cell_552/Sigmoid:y:0)lstm_420/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/add_1AddV2lstm_420/lstm_cell_552/mul:z:0 lstm_420/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_420/lstm_cell_552/Sigmoid_2Sigmoid%lstm_420/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_420/lstm_cell_552/Relu_1Relu lstm_420/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_420/lstm_cell_552/mul_2Mul$lstm_420/lstm_cell_552/Sigmoid_2:y:0+lstm_420/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_420/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_420/TensorArrayV2_1TensorListReserve/lstm_420/TensorArrayV2_1/element_shape:output:0!lstm_420/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_420/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_420/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_420/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_420/whileWhile$lstm_420/while/loop_counter:output:0*lstm_420/while/maximum_iterations:output:0lstm_420/time:output:0!lstm_420/TensorArrayV2_1:handle:0lstm_420/zeros:output:0lstm_420/zeros_1:output:0!lstm_420/strided_slice_1:output:0@lstm_420/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_420_lstm_cell_552_matmul_readvariableop_resource7lstm_420_lstm_cell_552_matmul_1_readvariableop_resource6lstm_420_lstm_cell_552_biasadd_readvariableop_resource*
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
lstm_420_while_body_3354289*'
condR
lstm_420_while_cond_3354288*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_420/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_420/TensorArrayV2Stack/TensorListStackTensorListStacklstm_420/while:output:3Blstm_420/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_420/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_420/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_420/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_420/strided_slice_3StridedSlice4lstm_420/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_420/strided_slice_3/stack:output:0)lstm_420/strided_slice_3/stack_1:output:0)lstm_420/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_420/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_420/transpose_1	Transpose4lstm_420/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_420/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_420/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_421/ShapeShapelstm_420/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_sliceStridedSlicelstm_421/Shape:output:0%lstm_421/strided_slice/stack:output:0'lstm_421/strided_slice/stack_1:output:0'lstm_421/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_421/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_421/zeros/packedPacklstm_421/strided_slice:output:0 lstm_421/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_421/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_421/zerosFilllstm_421/zeros/packed:output:0lstm_421/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_421/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_421/zeros_1/packedPacklstm_421/strided_slice:output:0"lstm_421/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_421/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_421/zeros_1Fill lstm_421/zeros_1/packed:output:0lstm_421/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_421/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_421/transpose	Transposelstm_420/transpose_1:y:0 lstm_421/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_421/Shape_1Shapelstm_421/transpose:y:0*
T0*
_output_shapes
:h
lstm_421/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_421/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_1StridedSlicelstm_421/Shape_1:output:0'lstm_421/strided_slice_1/stack:output:0)lstm_421/strided_slice_1/stack_1:output:0)lstm_421/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_421/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_421/TensorArrayV2TensorListReserve-lstm_421/TensorArrayV2/element_shape:output:0!lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_421/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_421/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_421/transpose:y:0Glstm_421/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_421/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_421/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_2StridedSlicelstm_421/transpose:y:0'lstm_421/strided_slice_2/stack:output:0)lstm_421/strided_slice_2/stack_1:output:0)lstm_421/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_421/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp5lstm_421_lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_421/lstm_cell_553/MatMulMatMul!lstm_421/strided_slice_2:output:04lstm_421/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_421/lstm_cell_553/MatMul_1MatMullstm_421/zeros:output:06lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_421/lstm_cell_553/addAddV2'lstm_421/lstm_cell_553/MatMul:product:0)lstm_421/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp6lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_421/lstm_cell_553/BiasAddBiasAddlstm_421/lstm_cell_553/add:z:05lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_421/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_421/lstm_cell_553/splitSplit/lstm_421/lstm_cell_553/split/split_dim:output:0'lstm_421/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_421/lstm_cell_553/SigmoidSigmoid%lstm_421/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_421/lstm_cell_553/Sigmoid_1Sigmoid%lstm_421/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mulMul$lstm_421/lstm_cell_553/Sigmoid_1:y:0lstm_421/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_421/lstm_cell_553/ReluRelu%lstm_421/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mul_1Mul"lstm_421/lstm_cell_553/Sigmoid:y:0)lstm_421/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/add_1AddV2lstm_421/lstm_cell_553/mul:z:0 lstm_421/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_421/lstm_cell_553/Sigmoid_2Sigmoid%lstm_421/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_421/lstm_cell_553/Relu_1Relu lstm_421/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_421/lstm_cell_553/mul_2Mul$lstm_421/lstm_cell_553/Sigmoid_2:y:0+lstm_421/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_421/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_421/TensorArrayV2_1TensorListReserve/lstm_421/TensorArrayV2_1/element_shape:output:0!lstm_421/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_421/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_421/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_421/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_421/whileWhile$lstm_421/while/loop_counter:output:0*lstm_421/while/maximum_iterations:output:0lstm_421/time:output:0!lstm_421/TensorArrayV2_1:handle:0lstm_421/zeros:output:0lstm_421/zeros_1:output:0!lstm_421/strided_slice_1:output:0@lstm_421/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_421_lstm_cell_553_matmul_readvariableop_resource7lstm_421_lstm_cell_553_matmul_1_readvariableop_resource6lstm_421_lstm_cell_553_biasadd_readvariableop_resource*
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
lstm_421_while_body_3354428*'
condR
lstm_421_while_cond_3354427*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_421/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_421/TensorArrayV2Stack/TensorListStackTensorListStacklstm_421/while:output:3Blstm_421/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_421/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_421/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_421/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_421/strided_slice_3StridedSlice4lstm_421/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_421/strided_slice_3/stack:output:0)lstm_421/strided_slice_3/stack_1:output:0)lstm_421/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_421/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_421/transpose_1	Transpose4lstm_421/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_421/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_421/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_422/ShapeShapelstm_421/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_sliceStridedSlicelstm_422/Shape:output:0%lstm_422/strided_slice/stack:output:0'lstm_422/strided_slice/stack_1:output:0'lstm_422/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_422/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_422/zeros/packedPacklstm_422/strided_slice:output:0 lstm_422/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_422/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_422/zerosFilllstm_422/zeros/packed:output:0lstm_422/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_422/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_422/zeros_1/packedPacklstm_422/strided_slice:output:0"lstm_422/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_422/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_422/zeros_1Fill lstm_422/zeros_1/packed:output:0lstm_422/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_422/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_422/transpose	Transposelstm_421/transpose_1:y:0 lstm_422/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_422/Shape_1Shapelstm_422/transpose:y:0*
T0*
_output_shapes
:h
lstm_422/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_422/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_1StridedSlicelstm_422/Shape_1:output:0'lstm_422/strided_slice_1/stack:output:0)lstm_422/strided_slice_1/stack_1:output:0)lstm_422/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_422/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_422/TensorArrayV2TensorListReserve-lstm_422/TensorArrayV2/element_shape:output:0!lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_422/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_422/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_422/transpose:y:0Glstm_422/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_422/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_422/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_2StridedSlicelstm_422/transpose:y:0'lstm_422/strided_slice_2/stack:output:0)lstm_422/strided_slice_2/stack_1:output:0)lstm_422/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_422/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp5lstm_422_lstm_cell_554_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_422/lstm_cell_554/MatMulMatMul!lstm_422/strided_slice_2:output:04lstm_422/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_422/lstm_cell_554/MatMul_1MatMullstm_422/zeros:output:06lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_422/lstm_cell_554/addAddV2'lstm_422/lstm_cell_554/MatMul:product:0)lstm_422/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp6lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_422/lstm_cell_554/BiasAddBiasAddlstm_422/lstm_cell_554/add:z:05lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_422/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_422/lstm_cell_554/splitSplit/lstm_422/lstm_cell_554/split/split_dim:output:0'lstm_422/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_422/lstm_cell_554/SigmoidSigmoid%lstm_422/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_422/lstm_cell_554/Sigmoid_1Sigmoid%lstm_422/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mulMul$lstm_422/lstm_cell_554/Sigmoid_1:y:0lstm_422/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_422/lstm_cell_554/ReluRelu%lstm_422/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mul_1Mul"lstm_422/lstm_cell_554/Sigmoid:y:0)lstm_422/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/add_1AddV2lstm_422/lstm_cell_554/mul:z:0 lstm_422/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_422/lstm_cell_554/Sigmoid_2Sigmoid%lstm_422/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_422/lstm_cell_554/Relu_1Relu lstm_422/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_422/lstm_cell_554/mul_2Mul$lstm_422/lstm_cell_554/Sigmoid_2:y:0+lstm_422/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_422/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_422/TensorArrayV2_1TensorListReserve/lstm_422/TensorArrayV2_1/element_shape:output:0!lstm_422/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_422/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_422/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_422/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_422/whileWhile$lstm_422/while/loop_counter:output:0*lstm_422/while/maximum_iterations:output:0lstm_422/time:output:0!lstm_422/TensorArrayV2_1:handle:0lstm_422/zeros:output:0lstm_422/zeros_1:output:0!lstm_422/strided_slice_1:output:0@lstm_422/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_422_lstm_cell_554_matmul_readvariableop_resource7lstm_422_lstm_cell_554_matmul_1_readvariableop_resource6lstm_422_lstm_cell_554_biasadd_readvariableop_resource*
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
lstm_422_while_body_3354567*'
condR
lstm_422_while_cond_3354566*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_422/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_422/TensorArrayV2Stack/TensorListStackTensorListStacklstm_422/while:output:3Blstm_422/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_422/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_422/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_422/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_422/strided_slice_3StridedSlice4lstm_422/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_422/strided_slice_3/stack:output:0)lstm_422/strided_slice_3/stack_1:output:0)lstm_422/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_422/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_422/transpose_1	Transpose4lstm_422/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_422/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_422/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_140/MatMulMatMul!lstm_422/strided_slice_3:output:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_140/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp.^lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp-^lstm_420/lstm_cell_552/MatMul/ReadVariableOp/^lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp^lstm_420/while.^lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp-^lstm_421/lstm_cell_553/MatMul/ReadVariableOp/^lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp^lstm_421/while.^lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp-^lstm_422/lstm_cell_554/MatMul/ReadVariableOp/^lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp^lstm_422/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2^
-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp-lstm_420/lstm_cell_552/BiasAdd/ReadVariableOp2\
,lstm_420/lstm_cell_552/MatMul/ReadVariableOp,lstm_420/lstm_cell_552/MatMul/ReadVariableOp2`
.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp.lstm_420/lstm_cell_552/MatMul_1/ReadVariableOp2 
lstm_420/whilelstm_420/while2^
-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp-lstm_421/lstm_cell_553/BiasAdd/ReadVariableOp2\
,lstm_421/lstm_cell_553/MatMul/ReadVariableOp,lstm_421/lstm_cell_553/MatMul/ReadVariableOp2`
.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp.lstm_421/lstm_cell_553/MatMul_1/ReadVariableOp2 
lstm_421/whilelstm_421/while2^
-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp-lstm_422/lstm_cell_554/BiasAdd/ReadVariableOp2\
,lstm_422/lstm_cell_554/MatMul/ReadVariableOp,lstm_422/lstm_cell_554/MatMul/ReadVariableOp2`
.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp.lstm_422/lstm_cell_554/MatMul_1/ReadVariableOp2 
lstm_422/whilelstm_422/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356173

inputs?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3356089*
condR
while_cond_3356088*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3351996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3351996___redundant_placeholder05
1while_while_cond_3351996___redundant_placeholder15
1while_while_cond_3351996___redundant_placeholder25
1while_while_cond_3351996___redundant_placeholder3
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3352416

inputs(
lstm_cell_553_3352334:	d?(
lstm_cell_553_3352336:	2?$
lstm_cell_553_3352338:	?
identity??%lstm_cell_553/StatefulPartitionedCall?while;
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
%lstm_cell_553/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_553_3352334lstm_cell_553_3352336lstm_cell_553_3352338*
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352333n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_553_3352334lstm_cell_553_3352336lstm_cell_553_3352338*
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
while_body_3352347*
condR
while_cond_3352346*K
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
NoOpNoOp&^lstm_cell_553/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_553/StatefulPartitionedCall%lstm_cell_553/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3353876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353876___redundant_placeholder05
1while_while_cond_3353876___redundant_placeholder15
1while_while_cond_3353876___redundant_placeholder25
1while_while_cond_3353876___redundant_placeholder3
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
/__inference_lstm_cell_553_layer_call_fn_3357083

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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352479o
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
?
while_cond_3355186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355186___redundant_placeholder05
1while_while_cond_3355186___redundant_placeholder15
1while_while_cond_3355186___redundant_placeholder25
1while_while_cond_3355186___redundant_placeholder3
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

lstm_420_while_body_3354289.
*lstm_420_while_lstm_420_while_loop_counter4
0lstm_420_while_lstm_420_while_maximum_iterations
lstm_420_while_placeholder 
lstm_420_while_placeholder_1 
lstm_420_while_placeholder_2 
lstm_420_while_placeholder_3-
)lstm_420_while_lstm_420_strided_slice_1_0i
elstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0:	?R
?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?M
>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
lstm_420_while_identity
lstm_420_while_identity_1
lstm_420_while_identity_2
lstm_420_while_identity_3
lstm_420_while_identity_4
lstm_420_while_identity_5+
'lstm_420_while_lstm_420_strided_slice_1g
clstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensorN
;lstm_420_while_lstm_cell_552_matmul_readvariableop_resource:	?P
=lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource:	d?K
<lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource:	???3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp?2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp?4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp?
@lstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_420/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0lstm_420_while_placeholderIlstm_420/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_420/while/lstm_cell_552/MatMulMatMul9lstm_420/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_420/while/lstm_cell_552/MatMul_1MatMullstm_420_while_placeholder_2<lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_420/while/lstm_cell_552/addAddV2-lstm_420/while/lstm_cell_552/MatMul:product:0/lstm_420/while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_420/while/lstm_cell_552/BiasAddBiasAdd$lstm_420/while/lstm_cell_552/add:z:0;lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_420/while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_420/while/lstm_cell_552/splitSplit5lstm_420/while/lstm_cell_552/split/split_dim:output:0-lstm_420/while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_420/while/lstm_cell_552/SigmoidSigmoid+lstm_420/while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_420/while/lstm_cell_552/Sigmoid_1Sigmoid+lstm_420/while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_420/while/lstm_cell_552/mulMul*lstm_420/while/lstm_cell_552/Sigmoid_1:y:0lstm_420_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_420/while/lstm_cell_552/ReluRelu+lstm_420/while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/mul_1Mul(lstm_420/while/lstm_cell_552/Sigmoid:y:0/lstm_420/while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/add_1AddV2$lstm_420/while/lstm_cell_552/mul:z:0&lstm_420/while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_420/while/lstm_cell_552/Sigmoid_2Sigmoid+lstm_420/while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_420/while/lstm_cell_552/Relu_1Relu&lstm_420/while/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_420/while/lstm_cell_552/mul_2Mul*lstm_420/while/lstm_cell_552/Sigmoid_2:y:01lstm_420/while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_420/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_420_while_placeholder_1lstm_420_while_placeholder&lstm_420/while/lstm_cell_552/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_420/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_420/while/addAddV2lstm_420_while_placeholderlstm_420/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_420/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_420/while/add_1AddV2*lstm_420_while_lstm_420_while_loop_counterlstm_420/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_420/while/IdentityIdentitylstm_420/while/add_1:z:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_1Identity0lstm_420_while_lstm_420_while_maximum_iterations^lstm_420/while/NoOp*
T0*
_output_shapes
: t
lstm_420/while/Identity_2Identitylstm_420/while/add:z:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_3IdentityClstm_420/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_420/while/NoOp*
T0*
_output_shapes
: ?
lstm_420/while/Identity_4Identity&lstm_420/while/lstm_cell_552/mul_2:z:0^lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_420/while/Identity_5Identity&lstm_420/while/lstm_cell_552/add_1:z:0^lstm_420/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_420/while/NoOpNoOp4^lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp3^lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp5^lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_420_while_identity lstm_420/while/Identity:output:0"?
lstm_420_while_identity_1"lstm_420/while/Identity_1:output:0"?
lstm_420_while_identity_2"lstm_420/while/Identity_2:output:0"?
lstm_420_while_identity_3"lstm_420/while/Identity_3:output:0"?
lstm_420_while_identity_4"lstm_420/while/Identity_4:output:0"?
lstm_420_while_identity_5"lstm_420/while/Identity_5:output:0"T
'lstm_420_while_lstm_420_strided_slice_1)lstm_420_while_lstm_420_strided_slice_1_0"~
<lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource>lstm_420_while_lstm_cell_552_biasadd_readvariableop_resource_0"?
=lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource?lstm_420_while_lstm_cell_552_matmul_1_readvariableop_resource_0"|
;lstm_420_while_lstm_cell_552_matmul_readvariableop_resource=lstm_420_while_lstm_cell_552_matmul_readvariableop_resource_0"?
clstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensorelstm_420_while_tensorarrayv2read_tensorlistgetitem_lstm_420_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp3lstm_420/while/lstm_cell_552/BiasAdd/ReadVariableOp2h
2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp2lstm_420/while/lstm_cell_552/MatMul/ReadVariableOp2l
4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp4lstm_420/while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356030
inputs_0?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3355946*
condR
while_cond_3355945*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354141
lstm_420_input#
lstm_420_3354114:	?#
lstm_420_3354116:	d?
lstm_420_3354118:	?#
lstm_421_3354121:	d?#
lstm_421_3354123:	2?
lstm_421_3354125:	?"
lstm_422_3354128:2("
lstm_422_3354130:
(
lstm_422_3354132:(#
dense_140_3354135:

dense_140_3354137:
identity??!dense_140/StatefulPartitionedCall? lstm_420/StatefulPartitionedCall? lstm_421/StatefulPartitionedCall? lstm_422/StatefulPartitionedCall?
 lstm_420/StatefulPartitionedCallStatefulPartitionedCalllstm_420_inputlstm_420_3354114lstm_420_3354116lstm_420_3354118*
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3353961?
 lstm_421/StatefulPartitionedCallStatefulPartitionedCall)lstm_420/StatefulPartitionedCall:output:0lstm_421_3354121lstm_421_3354123lstm_421_3354125*
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3353796?
 lstm_422/StatefulPartitionedCallStatefulPartitionedCall)lstm_421/StatefulPartitionedCall:output:0lstm_422_3354128lstm_422_3354130lstm_422_3354132*
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3353631?
!dense_140/StatefulPartitionedCallStatefulPartitionedCall)lstm_422/StatefulPartitionedCall:output:0dense_140_3354135dense_140_3354137*
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
F__inference_dense_140_layer_call_and_return_conditional_losses_3353433y
IdentityIdentity*dense_140/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_140/StatefulPartitionedCall!^lstm_420/StatefulPartitionedCall!^lstm_421/StatefulPartitionedCall!^lstm_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2D
 lstm_420/StatefulPartitionedCall lstm_420/StatefulPartitionedCall2D
 lstm_421/StatefulPartitionedCall lstm_421/StatefulPartitionedCall2D
 lstm_422/StatefulPartitionedCall lstm_422/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_420_input
?8
?
while_body_3355187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3355946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3352696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3352696___redundant_placeholder05
1while_while_cond_3352696___redundant_placeholder15
1while_while_cond_3352696___redundant_placeholder25
1while_while_cond_3352696___redundant_placeholder3
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

lstm_421_while_body_3354428.
*lstm_421_while_lstm_421_while_loop_counter4
0lstm_421_while_lstm_421_while_maximum_iterations
lstm_421_while_placeholder 
lstm_421_while_placeholder_1 
lstm_421_while_placeholder_2 
lstm_421_while_placeholder_3-
)lstm_421_while_lstm_421_strided_slice_1_0i
elstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0:	d?R
?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?M
>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
lstm_421_while_identity
lstm_421_while_identity_1
lstm_421_while_identity_2
lstm_421_while_identity_3
lstm_421_while_identity_4
lstm_421_while_identity_5+
'lstm_421_while_lstm_421_strided_slice_1g
clstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensorN
;lstm_421_while_lstm_cell_553_matmul_readvariableop_resource:	d?P
=lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource:	2?K
<lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource:	???3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp?2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp?4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp?
@lstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_421/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0lstm_421_while_placeholderIlstm_421/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_421/while/lstm_cell_553/MatMulMatMul9lstm_421/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_421/while/lstm_cell_553/MatMul_1MatMullstm_421_while_placeholder_2<lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_421/while/lstm_cell_553/addAddV2-lstm_421/while/lstm_cell_553/MatMul:product:0/lstm_421/while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_421/while/lstm_cell_553/BiasAddBiasAdd$lstm_421/while/lstm_cell_553/add:z:0;lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_421/while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_421/while/lstm_cell_553/splitSplit5lstm_421/while/lstm_cell_553/split/split_dim:output:0-lstm_421/while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_421/while/lstm_cell_553/SigmoidSigmoid+lstm_421/while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_421/while/lstm_cell_553/Sigmoid_1Sigmoid+lstm_421/while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_421/while/lstm_cell_553/mulMul*lstm_421/while/lstm_cell_553/Sigmoid_1:y:0lstm_421_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_421/while/lstm_cell_553/ReluRelu+lstm_421/while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/mul_1Mul(lstm_421/while/lstm_cell_553/Sigmoid:y:0/lstm_421/while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/add_1AddV2$lstm_421/while/lstm_cell_553/mul:z:0&lstm_421/while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_421/while/lstm_cell_553/Sigmoid_2Sigmoid+lstm_421/while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_421/while/lstm_cell_553/Relu_1Relu&lstm_421/while/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_421/while/lstm_cell_553/mul_2Mul*lstm_421/while/lstm_cell_553/Sigmoid_2:y:01lstm_421/while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_421/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_421_while_placeholder_1lstm_421_while_placeholder&lstm_421/while/lstm_cell_553/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_421/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_421/while/addAddV2lstm_421_while_placeholderlstm_421/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_421/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_421/while/add_1AddV2*lstm_421_while_lstm_421_while_loop_counterlstm_421/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_421/while/IdentityIdentitylstm_421/while/add_1:z:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_1Identity0lstm_421_while_lstm_421_while_maximum_iterations^lstm_421/while/NoOp*
T0*
_output_shapes
: t
lstm_421/while/Identity_2Identitylstm_421/while/add:z:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_3IdentityClstm_421/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_421/while/NoOp*
T0*
_output_shapes
: ?
lstm_421/while/Identity_4Identity&lstm_421/while/lstm_cell_553/mul_2:z:0^lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_421/while/Identity_5Identity&lstm_421/while/lstm_cell_553/add_1:z:0^lstm_421/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_421/while/NoOpNoOp4^lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp3^lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp5^lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_421_while_identity lstm_421/while/Identity:output:0"?
lstm_421_while_identity_1"lstm_421/while/Identity_1:output:0"?
lstm_421_while_identity_2"lstm_421/while/Identity_2:output:0"?
lstm_421_while_identity_3"lstm_421/while/Identity_3:output:0"?
lstm_421_while_identity_4"lstm_421/while/Identity_4:output:0"?
lstm_421_while_identity_5"lstm_421/while/Identity_5:output:0"T
'lstm_421_while_lstm_421_strided_slice_1)lstm_421_while_lstm_421_strided_slice_1_0"~
<lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource>lstm_421_while_lstm_cell_553_biasadd_readvariableop_resource_0"?
=lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource?lstm_421_while_lstm_cell_553_matmul_1_readvariableop_resource_0"|
;lstm_421_while_lstm_cell_553_matmul_readvariableop_resource=lstm_421_while_lstm_cell_553_matmul_readvariableop_resource_0"?
clstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensorelstm_421_while_tensorarrayv2read_tensorlistgetitem_lstm_421_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp3lstm_421/while/lstm_cell_553/BiasAdd/ReadVariableOp2h
2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp2lstm_421/while/lstm_cell_553/MatMul/ReadVariableOp2l
4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp4lstm_421/while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3352257

inputs(
lstm_cell_552_3352175:	?(
lstm_cell_552_3352177:	d?$
lstm_cell_552_3352179:	?
identity??%lstm_cell_552/StatefulPartitionedCall?while;
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
%lstm_cell_552/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_552_3352175lstm_cell_552_3352177lstm_cell_552_3352179*
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3352129n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_552_3352175lstm_cell_552_3352177lstm_cell_552_3352179*
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
while_body_3352188*
condR
while_cond_3352187*K
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
NoOpNoOp&^lstm_cell_552/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_552/StatefulPartitionedCall%lstm_cell_552/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_422_layer_call_and_return_conditional_losses_3352766

inputs'
lstm_cell_554_3352684:2('
lstm_cell_554_3352686:
(#
lstm_cell_554_3352688:(
identity??%lstm_cell_554/StatefulPartitionedCall?while;
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
%lstm_cell_554/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_554_3352684lstm_cell_554_3352686lstm_cell_554_3352688*
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352683n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_554_3352684lstm_cell_554_3352686lstm_cell_554_3352688*
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
while_body_3352697*
condR
while_cond_3352696*K
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
NoOpNoOp&^lstm_cell_554/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_554/StatefulPartitionedCall%lstm_cell_554/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3356232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_553_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_553_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_553_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_553_matmul_readvariableop_resource:	d?G
4while_lstm_cell_553_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_553_biasadd_readvariableop_resource:	???*while/lstm_cell_553/BiasAdd/ReadVariableOp?)while/lstm_cell_553/MatMul/ReadVariableOp?+while/lstm_cell_553/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_553/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_553_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_553/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_553_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_553/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_553/addAddV2$while/lstm_cell_553/MatMul:product:0&while/lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_553_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_553/BiasAddBiasAddwhile/lstm_cell_553/add:z:02while/lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_553/splitSplit,while/lstm_cell_553/split/split_dim:output:0$while/lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_553/SigmoidSigmoid"while/lstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_1Sigmoid"while/lstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mulMul!while/lstm_cell_553/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_553/ReluRelu"while/lstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_1Mulwhile/lstm_cell_553/Sigmoid:y:0&while/lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/add_1AddV2while/lstm_cell_553/mul:z:0while/lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_553/Sigmoid_2Sigmoid"while/lstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_553/Relu_1Reluwhile/lstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_553/mul_2Mul!while/lstm_cell_553/Sigmoid_2:y:0(while/lstm_cell_553/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_553/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_553/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_553/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_553/BiasAdd/ReadVariableOp*^while/lstm_cell_553/MatMul/ReadVariableOp,^while/lstm_cell_553/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_553_biasadd_readvariableop_resource5while_lstm_cell_553_biasadd_readvariableop_resource_0"n
4while_lstm_cell_553_matmul_1_readvariableop_resource6while_lstm_cell_553_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_553_matmul_readvariableop_resource4while_lstm_cell_553_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_553/BiasAdd/ReadVariableOp*while/lstm_cell_553/BiasAdd/ReadVariableOp2V
)while/lstm_cell_553/MatMul/ReadVariableOp)while/lstm_cell_553/MatMul/ReadVariableOp2Z
+while/lstm_cell_553/MatMul_1/ReadVariableOp+while/lstm_cell_553/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_422_while_body_3354567.
*lstm_422_while_lstm_422_while_loop_counter4
0lstm_422_while_lstm_422_while_maximum_iterations
lstm_422_while_placeholder 
lstm_422_while_placeholder_1 
lstm_422_while_placeholder_2 
lstm_422_while_placeholder_3-
)lstm_422_while_lstm_422_strided_slice_1_0i
elstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0:2(Q
?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0:
(L
>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0:(
lstm_422_while_identity
lstm_422_while_identity_1
lstm_422_while_identity_2
lstm_422_while_identity_3
lstm_422_while_identity_4
lstm_422_while_identity_5+
'lstm_422_while_lstm_422_strided_slice_1g
clstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensorM
;lstm_422_while_lstm_cell_554_matmul_readvariableop_resource:2(O
=lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource:
(J
<lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource:(??3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp?2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp?4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp?
@lstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_422/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0lstm_422_while_placeholderIlstm_422/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOpReadVariableOp=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_422/while/lstm_cell_554/MatMulMatMul9lstm_422/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOpReadVariableOp?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_422/while/lstm_cell_554/MatMul_1MatMullstm_422_while_placeholder_2<lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_422/while/lstm_cell_554/addAddV2-lstm_422/while/lstm_cell_554/MatMul:product:0/lstm_422/while/lstm_cell_554/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOpReadVariableOp>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_422/while/lstm_cell_554/BiasAddBiasAdd$lstm_422/while/lstm_cell_554/add:z:0;lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_422/while/lstm_cell_554/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_422/while/lstm_cell_554/splitSplit5lstm_422/while/lstm_cell_554/split/split_dim:output:0-lstm_422/while/lstm_cell_554/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_422/while/lstm_cell_554/SigmoidSigmoid+lstm_422/while/lstm_cell_554/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_422/while/lstm_cell_554/Sigmoid_1Sigmoid+lstm_422/while/lstm_cell_554/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_422/while/lstm_cell_554/mulMul*lstm_422/while/lstm_cell_554/Sigmoid_1:y:0lstm_422_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_422/while/lstm_cell_554/ReluRelu+lstm_422/while/lstm_cell_554/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/mul_1Mul(lstm_422/while/lstm_cell_554/Sigmoid:y:0/lstm_422/while/lstm_cell_554/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/add_1AddV2$lstm_422/while/lstm_cell_554/mul:z:0&lstm_422/while/lstm_cell_554/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_422/while/lstm_cell_554/Sigmoid_2Sigmoid+lstm_422/while/lstm_cell_554/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_422/while/lstm_cell_554/Relu_1Relu&lstm_422/while/lstm_cell_554/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_422/while/lstm_cell_554/mul_2Mul*lstm_422/while/lstm_cell_554/Sigmoid_2:y:01lstm_422/while/lstm_cell_554/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_422/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_422_while_placeholder_1lstm_422_while_placeholder&lstm_422/while/lstm_cell_554/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_422/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_422/while/addAddV2lstm_422_while_placeholderlstm_422/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_422/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_422/while/add_1AddV2*lstm_422_while_lstm_422_while_loop_counterlstm_422/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_422/while/IdentityIdentitylstm_422/while/add_1:z:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_1Identity0lstm_422_while_lstm_422_while_maximum_iterations^lstm_422/while/NoOp*
T0*
_output_shapes
: t
lstm_422/while/Identity_2Identitylstm_422/while/add:z:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_3IdentityClstm_422/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_422/while/NoOp*
T0*
_output_shapes
: ?
lstm_422/while/Identity_4Identity&lstm_422/while/lstm_cell_554/mul_2:z:0^lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_422/while/Identity_5Identity&lstm_422/while/lstm_cell_554/add_1:z:0^lstm_422/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_422/while/NoOpNoOp4^lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp3^lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp5^lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_422_while_identity lstm_422/while/Identity:output:0"?
lstm_422_while_identity_1"lstm_422/while/Identity_1:output:0"?
lstm_422_while_identity_2"lstm_422/while/Identity_2:output:0"?
lstm_422_while_identity_3"lstm_422/while/Identity_3:output:0"?
lstm_422_while_identity_4"lstm_422/while/Identity_4:output:0"?
lstm_422_while_identity_5"lstm_422/while/Identity_5:output:0"T
'lstm_422_while_lstm_422_strided_slice_1)lstm_422_while_lstm_422_strided_slice_1_0"~
<lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource>lstm_422_while_lstm_cell_554_biasadd_readvariableop_resource_0"?
=lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource?lstm_422_while_lstm_cell_554_matmul_1_readvariableop_resource_0"|
;lstm_422_while_lstm_cell_554_matmul_readvariableop_resource=lstm_422_while_lstm_cell_554_matmul_readvariableop_resource_0"?
clstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensorelstm_422_while_tensorarrayv2read_tensorlistgetitem_lstm_422_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp3lstm_422/while/lstm_cell_554/BiasAdd/ReadVariableOp2h
2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp2lstm_422/while/lstm_cell_554/MatMul/ReadVariableOp2l
4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp4lstm_422/while/lstm_cell_554/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3355329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3355329___redundant_placeholder05
1while_while_cond_3355329___redundant_placeholder15
1while_while_cond_3355329___redundant_placeholder25
1while_while_cond_3355329___redundant_placeholder3
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3352129

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

?
lstm_422_while_cond_3354993.
*lstm_422_while_lstm_422_while_loop_counter4
0lstm_422_while_lstm_422_while_maximum_iterations
lstm_422_while_placeholder 
lstm_422_while_placeholder_1 
lstm_422_while_placeholder_2 
lstm_422_while_placeholder_30
,lstm_422_while_less_lstm_422_strided_slice_1G
Clstm_422_while_lstm_422_while_cond_3354993___redundant_placeholder0G
Clstm_422_while_lstm_422_while_cond_3354993___redundant_placeholder1G
Clstm_422_while_lstm_422_while_cond_3354993___redundant_placeholder2G
Clstm_422_while_lstm_422_while_cond_3354993___redundant_placeholder3
lstm_422_while_identity
?
lstm_422/while/LessLesslstm_422_while_placeholder,lstm_422_while_less_lstm_422_strided_slice_1*
T0*
_output_shapes
: ]
lstm_422/while/IdentityIdentitylstm_422/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_422_while_identity lstm_422/while/Identity:output:0*(
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
while_body_3355616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_552_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_552_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_552_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_552_matmul_readvariableop_resource:	?G
4while_lstm_cell_552_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_552_biasadd_readvariableop_resource:	???*while/lstm_cell_552/BiasAdd/ReadVariableOp?)while/lstm_cell_552/MatMul/ReadVariableOp?+while/lstm_cell_552/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_552/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_552_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_552/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_552/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_552/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_552_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_552/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_552/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_552/addAddV2$while/lstm_cell_552/MatMul:product:0&while/lstm_cell_552/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_552/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_552_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_552/BiasAddBiasAddwhile/lstm_cell_552/add:z:02while/lstm_cell_552/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_552/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_552/splitSplit,while/lstm_cell_552/split/split_dim:output:0$while/lstm_cell_552/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_552/SigmoidSigmoid"while/lstm_cell_552/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_1Sigmoid"while/lstm_cell_552/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mulMul!while/lstm_cell_552/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_552/ReluRelu"while/lstm_cell_552/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_1Mulwhile/lstm_cell_552/Sigmoid:y:0&while/lstm_cell_552/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/add_1AddV2while/lstm_cell_552/mul:z:0while/lstm_cell_552/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_552/Sigmoid_2Sigmoid"while/lstm_cell_552/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_552/Relu_1Reluwhile/lstm_cell_552/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_552/mul_2Mul!while/lstm_cell_552/Sigmoid_2:y:0(while/lstm_cell_552/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_552/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_552/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_552/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_552/BiasAdd/ReadVariableOp*^while/lstm_cell_552/MatMul/ReadVariableOp,^while/lstm_cell_552/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_552_biasadd_readvariableop_resource5while_lstm_cell_552_biasadd_readvariableop_resource_0"n
4while_lstm_cell_552_matmul_1_readvariableop_resource6while_lstm_cell_552_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_552_matmul_readvariableop_resource4while_lstm_cell_552_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_552/BiasAdd/ReadVariableOp*while/lstm_cell_552/BiasAdd/ReadVariableOp2V
)while/lstm_cell_552/MatMul/ReadVariableOp)while/lstm_cell_552/MatMul/ReadVariableOp2Z
+while/lstm_cell_552/MatMul_1/ReadVariableOp+while/lstm_cell_552/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352829

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
?J
?
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356316

inputs?
,lstm_cell_553_matmul_readvariableop_resource:	d?A
.lstm_cell_553_matmul_1_readvariableop_resource:	2?<
-lstm_cell_553_biasadd_readvariableop_resource:	?
identity??$lstm_cell_553/BiasAdd/ReadVariableOp?#lstm_cell_553/MatMul/ReadVariableOp?%lstm_cell_553/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_553/MatMul/ReadVariableOpReadVariableOp,lstm_cell_553_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_553/MatMulMatMulstrided_slice_2:output:0+lstm_cell_553/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_553/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_553_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_553/MatMul_1MatMulzeros:output:0-lstm_cell_553/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_553/addAddV2lstm_cell_553/MatMul:product:0 lstm_cell_553/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_553/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_553_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_553/BiasAddBiasAddlstm_cell_553/add:z:0,lstm_cell_553/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_553/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_553/splitSplit&lstm_cell_553/split/split_dim:output:0lstm_cell_553/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_553/SigmoidSigmoidlstm_cell_553/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_1Sigmoidlstm_cell_553/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_553/mulMullstm_cell_553/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_553/ReluRelulstm_cell_553/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_1Mullstm_cell_553/Sigmoid:y:0 lstm_cell_553/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_553/add_1AddV2lstm_cell_553/mul:z:0lstm_cell_553/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_553/Sigmoid_2Sigmoidlstm_cell_553/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_553/Relu_1Relulstm_cell_553/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_553/mul_2Mullstm_cell_553/Sigmoid_2:y:0"lstm_cell_553/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_553_matmul_readvariableop_resource.lstm_cell_553_matmul_1_readvariableop_resource-lstm_cell_553_biasadd_readvariableop_resource*
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
while_body_3356232*
condR
while_cond_3356231*K
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
NoOpNoOp%^lstm_cell_553/BiasAdd/ReadVariableOp$^lstm_cell_553/MatMul/ReadVariableOp&^lstm_cell_553/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_553/BiasAdd/ReadVariableOp$lstm_cell_553/BiasAdd/ReadVariableOp2J
#lstm_cell_553/MatMul/ReadVariableOp#lstm_cell_553/MatMul/ReadVariableOp2N
%lstm_cell_553/MatMul_1/ReadVariableOp%lstm_cell_553/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3352538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_553_3352562_0:	d?0
while_lstm_cell_553_3352564_0:	2?,
while_lstm_cell_553_3352566_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_553_3352562:	d?.
while_lstm_cell_553_3352564:	2?*
while_lstm_cell_553_3352566:	???+while/lstm_cell_553/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_553/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_553_3352562_0while_lstm_cell_553_3352564_0while_lstm_cell_553_3352566_0*
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3352479?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_553/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_553/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_553/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_553/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_553_3352562while_lstm_cell_553_3352562_0"<
while_lstm_cell_553_3352564while_lstm_cell_553_3352564_0"<
while_lstm_cell_553_3352566while_lstm_cell_553_3352566_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_553/StatefulPartitionedCall+while/lstm_cell_553/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3353180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3353180___redundant_placeholder05
1while_while_cond_3353180___redundant_placeholder15
1while_while_cond_3353180___redundant_placeholder25
1while_while_cond_3353180___redundant_placeholder3
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
while_cond_3356847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3356847___redundant_placeholder05
1while_while_cond_3356847___redundant_placeholder15
1while_while_cond_3356847___redundant_placeholder25
1while_while_cond_3356847___redundant_placeholder3
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
/__inference_lstm_cell_554_layer_call_fn_3357181

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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3352829o
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
while_cond_3352187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3352187___redundant_placeholder05
1while_while_cond_3352187___redundant_placeholder15
1while_while_cond_3352187___redundant_placeholder25
1while_while_cond_3352187___redundant_placeholder3
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
lstm_420_input;
 serving_default_lstm_420_input:0?????????=
	dense_1400
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
2dense_140/kernel
:2dense_140/bias
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
0:.	?2lstm_420/lstm_cell_420/kernel
::8	d?2'lstm_420/lstm_cell_420/recurrent_kernel
*:(?2lstm_420/lstm_cell_420/bias
0:.	d?2lstm_421/lstm_cell_421/kernel
::8	2?2'lstm_421/lstm_cell_421/recurrent_kernel
*:(?2lstm_421/lstm_cell_421/bias
/:-2(2lstm_422/lstm_cell_422/kernel
9:7
(2'lstm_422/lstm_cell_422/recurrent_kernel
):'(2lstm_422/lstm_cell_422/bias
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
2Adam/dense_140/kernel/m
!:2Adam/dense_140/bias/m
5:3	?2$Adam/lstm_420/lstm_cell_420/kernel/m
?:=	d?2.Adam/lstm_420/lstm_cell_420/recurrent_kernel/m
/:-?2"Adam/lstm_420/lstm_cell_420/bias/m
5:3	d?2$Adam/lstm_421/lstm_cell_421/kernel/m
?:=	2?2.Adam/lstm_421/lstm_cell_421/recurrent_kernel/m
/:-?2"Adam/lstm_421/lstm_cell_421/bias/m
4:22(2$Adam/lstm_422/lstm_cell_422/kernel/m
>:<
(2.Adam/lstm_422/lstm_cell_422/recurrent_kernel/m
.:,(2"Adam/lstm_422/lstm_cell_422/bias/m
':%
2Adam/dense_140/kernel/v
!:2Adam/dense_140/bias/v
5:3	?2$Adam/lstm_420/lstm_cell_420/kernel/v
?:=	d?2.Adam/lstm_420/lstm_cell_420/recurrent_kernel/v
/:-?2"Adam/lstm_420/lstm_cell_420/bias/v
5:3	d?2$Adam/lstm_421/lstm_cell_421/kernel/v
?:=	2?2.Adam/lstm_421/lstm_cell_421/recurrent_kernel/v
/:-?2"Adam/lstm_421/lstm_cell_421/bias/v
4:22(2$Adam/lstm_422/lstm_cell_422/kernel/v
>:<
(2.Adam/lstm_422/lstm_cell_422/recurrent_kernel/v
.:,(2"Adam/lstm_422/lstm_cell_422/bias/v
?2?
0__inference_sequential_140_layer_call_fn_3353465
0__inference_sequential_140_layer_call_fn_3354203
0__inference_sequential_140_layer_call_fn_3354230
0__inference_sequential_140_layer_call_fn_3354081?
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354657
K__inference_sequential_140_layer_call_and_return_conditional_losses_3355084
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354111
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354141?
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
"__inference__wrapped_model_3351916lstm_420_input"?
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
*__inference_lstm_420_layer_call_fn_3355095
*__inference_lstm_420_layer_call_fn_3355106
*__inference_lstm_420_layer_call_fn_3355117
*__inference_lstm_420_layer_call_fn_3355128?
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355271
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355414
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355557
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355700?
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
*__inference_lstm_421_layer_call_fn_3355711
*__inference_lstm_421_layer_call_fn_3355722
*__inference_lstm_421_layer_call_fn_3355733
*__inference_lstm_421_layer_call_fn_3355744?
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3355887
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356030
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356173
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356316?
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
*__inference_lstm_422_layer_call_fn_3356327
*__inference_lstm_422_layer_call_fn_3356338
*__inference_lstm_422_layer_call_fn_3356349
*__inference_lstm_422_layer_call_fn_3356360?
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356503
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356646
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356789
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356932?
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
+__inference_dense_140_layer_call_fn_3356941?
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
F__inference_dense_140_layer_call_and_return_conditional_losses_3356951?
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
%__inference_signature_wrapper_3354176lstm_420_input"?
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
/__inference_lstm_cell_552_layer_call_fn_3356968
/__inference_lstm_cell_552_layer_call_fn_3356985?
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357017
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357049?
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
/__inference_lstm_cell_553_layer_call_fn_3357066
/__inference_lstm_cell_553_layer_call_fn_3357083?
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357115
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357147?
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
/__inference_lstm_cell_554_layer_call_fn_3357164
/__inference_lstm_cell_554_layer_call_fn_3357181?
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357213
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357245?
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
"__inference__wrapped_model_3351916?-./012345!";?8
1?.
,?)
lstm_420_input?????????
? "5?2
0
	dense_140#? 
	dense_140??????????
F__inference_dense_140_layer_call_and_return_conditional_losses_3356951\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_140_layer_call_fn_3356941O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355271?-./O?L
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355414?-./O?L
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355557q-./??<
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
E__inference_lstm_420_layer_call_and_return_conditional_losses_3355700q-./??<
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
*__inference_lstm_420_layer_call_fn_3355095}-./O?L
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
*__inference_lstm_420_layer_call_fn_3355106}-./O?L
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
*__inference_lstm_420_layer_call_fn_3355117d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_420_layer_call_fn_3355128d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_421_layer_call_and_return_conditional_losses_3355887?012O?L
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356030?012O?L
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356173q012??<
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
E__inference_lstm_421_layer_call_and_return_conditional_losses_3356316q012??<
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
*__inference_lstm_421_layer_call_fn_3355711}012O?L
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
*__inference_lstm_421_layer_call_fn_3355722}012O?L
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
*__inference_lstm_421_layer_call_fn_3355733d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_421_layer_call_fn_3355744d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356503}345O?L
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356646}345O?L
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356789m345??<
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
E__inference_lstm_422_layer_call_and_return_conditional_losses_3356932m345??<
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
*__inference_lstm_422_layer_call_fn_3356327p345O?L
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
*__inference_lstm_422_layer_call_fn_3356338p345O?L
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
*__inference_lstm_422_layer_call_fn_3356349`345??<
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
*__inference_lstm_422_layer_call_fn_3356360`345??<
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357017?-./??}
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
J__inference_lstm_cell_552_layer_call_and_return_conditional_losses_3357049?-./??}
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
/__inference_lstm_cell_552_layer_call_fn_3356968?-./??}
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
/__inference_lstm_cell_552_layer_call_fn_3356985?-./??}
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357115?012??}
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
J__inference_lstm_cell_553_layer_call_and_return_conditional_losses_3357147?012??}
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
/__inference_lstm_cell_553_layer_call_fn_3357066?012??}
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
/__inference_lstm_cell_553_layer_call_fn_3357083?012??}
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357213?345??}
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
J__inference_lstm_cell_554_layer_call_and_return_conditional_losses_3357245?345??}
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
/__inference_lstm_cell_554_layer_call_fn_3357164?345??}
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
/__inference_lstm_cell_554_layer_call_fn_3357181?345??}
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354111y-./012345!"C?@
9?6
,?)
lstm_420_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354141y-./012345!"C?@
9?6
,?)
lstm_420_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_140_layer_call_and_return_conditional_losses_3354657q-./012345!";?8
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
K__inference_sequential_140_layer_call_and_return_conditional_losses_3355084q-./012345!";?8
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
0__inference_sequential_140_layer_call_fn_3353465l-./012345!"C?@
9?6
,?)
lstm_420_input?????????
p 

 
? "???????????
0__inference_sequential_140_layer_call_fn_3354081l-./012345!"C?@
9?6
,?)
lstm_420_input?????????
p

 
? "???????????
0__inference_sequential_140_layer_call_fn_3354203d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_140_layer_call_fn_3354230d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3354176?-./012345!"M?J
? 
C?@
>
lstm_420_input,?)
lstm_420_input?????????"5?2
0
	dense_140#? 
	dense_140?????????