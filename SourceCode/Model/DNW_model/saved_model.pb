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
dense_223/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_223/kernel
u
$dense_223/kernel/Read/ReadVariableOpReadVariableOpdense_223/kernel*
_output_shapes

:
*
dtype0
t
dense_223/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_223/bias
m
"dense_223/bias/Read/ReadVariableOpReadVariableOpdense_223/bias*
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
lstm_669/lstm_cell_669/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_669/lstm_cell_669/kernel
?
1lstm_669/lstm_cell_669/kernel/Read/ReadVariableOpReadVariableOplstm_669/lstm_cell_669/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_669/lstm_cell_669/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_669/lstm_cell_669/recurrent_kernel
?
;lstm_669/lstm_cell_669/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_669/lstm_cell_669/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_669/lstm_cell_669/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_669/lstm_cell_669/bias
?
/lstm_669/lstm_cell_669/bias/Read/ReadVariableOpReadVariableOplstm_669/lstm_cell_669/bias*
_output_shapes	
:?*
dtype0
?
lstm_670/lstm_cell_670/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_670/lstm_cell_670/kernel
?
1lstm_670/lstm_cell_670/kernel/Read/ReadVariableOpReadVariableOplstm_670/lstm_cell_670/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_670/lstm_cell_670/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_670/lstm_cell_670/recurrent_kernel
?
;lstm_670/lstm_cell_670/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_670/lstm_cell_670/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_670/lstm_cell_670/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_670/lstm_cell_670/bias
?
/lstm_670/lstm_cell_670/bias/Read/ReadVariableOpReadVariableOplstm_670/lstm_cell_670/bias*
_output_shapes	
:?*
dtype0
?
lstm_671/lstm_cell_671/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_671/lstm_cell_671/kernel
?
1lstm_671/lstm_cell_671/kernel/Read/ReadVariableOpReadVariableOplstm_671/lstm_cell_671/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_671/lstm_cell_671/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_671/lstm_cell_671/recurrent_kernel
?
;lstm_671/lstm_cell_671/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_671/lstm_cell_671/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_671/lstm_cell_671/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_671/lstm_cell_671/bias
?
/lstm_671/lstm_cell_671/bias/Read/ReadVariableOpReadVariableOplstm_671/lstm_cell_671/bias*
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
Adam/dense_223/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_223/kernel/m
?
+Adam/dense_223/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_223/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_223/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_223/bias/m
{
)Adam/dense_223/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_223/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_669/lstm_cell_669/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_669/lstm_cell_669/kernel/m
?
8Adam/lstm_669/lstm_cell_669/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_669/lstm_cell_669/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_669/lstm_cell_669/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_669/lstm_cell_669/recurrent_kernel/m
?
BAdam/lstm_669/lstm_cell_669/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_669/lstm_cell_669/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_669/lstm_cell_669/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_669/lstm_cell_669/bias/m
?
6Adam/lstm_669/lstm_cell_669/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_669/lstm_cell_669/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_670/lstm_cell_670/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_670/lstm_cell_670/kernel/m
?
8Adam/lstm_670/lstm_cell_670/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_670/lstm_cell_670/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_670/lstm_cell_670/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_670/lstm_cell_670/recurrent_kernel/m
?
BAdam/lstm_670/lstm_cell_670/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_670/lstm_cell_670/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_670/lstm_cell_670/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_670/lstm_cell_670/bias/m
?
6Adam/lstm_670/lstm_cell_670/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_670/lstm_cell_670/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_671/lstm_cell_671/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_671/lstm_cell_671/kernel/m
?
8Adam/lstm_671/lstm_cell_671/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_671/lstm_cell_671/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_671/lstm_cell_671/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_671/lstm_cell_671/recurrent_kernel/m
?
BAdam/lstm_671/lstm_cell_671/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_671/lstm_cell_671/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_671/lstm_cell_671/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_671/lstm_cell_671/bias/m
?
6Adam/lstm_671/lstm_cell_671/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_671/lstm_cell_671/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_223/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_223/kernel/v
?
+Adam/dense_223/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_223/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_223/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_223/bias/v
{
)Adam/dense_223/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_223/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_669/lstm_cell_669/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_669/lstm_cell_669/kernel/v
?
8Adam/lstm_669/lstm_cell_669/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_669/lstm_cell_669/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_669/lstm_cell_669/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_669/lstm_cell_669/recurrent_kernel/v
?
BAdam/lstm_669/lstm_cell_669/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_669/lstm_cell_669/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_669/lstm_cell_669/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_669/lstm_cell_669/bias/v
?
6Adam/lstm_669/lstm_cell_669/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_669/lstm_cell_669/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_670/lstm_cell_670/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_670/lstm_cell_670/kernel/v
?
8Adam/lstm_670/lstm_cell_670/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_670/lstm_cell_670/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_670/lstm_cell_670/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_670/lstm_cell_670/recurrent_kernel/v
?
BAdam/lstm_670/lstm_cell_670/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_670/lstm_cell_670/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_670/lstm_cell_670/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_670/lstm_cell_670/bias/v
?
6Adam/lstm_670/lstm_cell_670/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_670/lstm_cell_670/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_671/lstm_cell_671/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_671/lstm_cell_671/kernel/v
?
8Adam/lstm_671/lstm_cell_671/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_671/lstm_cell_671/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_671/lstm_cell_671/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_671/lstm_cell_671/recurrent_kernel/v
?
BAdam/lstm_671/lstm_cell_671/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_671/lstm_cell_671/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_671/lstm_cell_671/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_671/lstm_cell_671/bias/v
?
6Adam/lstm_671/lstm_cell_671/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_671/lstm_cell_671/bias/v*
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
VARIABLE_VALUEdense_223/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_223/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_669/lstm_cell_669/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_669/lstm_cell_669/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_669/lstm_cell_669/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_670/lstm_cell_670/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_670/lstm_cell_670/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_670/lstm_cell_670/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_671/lstm_cell_671/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_671/lstm_cell_671/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_671/lstm_cell_671/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_223/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_223/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_669/lstm_cell_669/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_669/lstm_cell_669/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_669/lstm_cell_669/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_670/lstm_cell_670/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_670/lstm_cell_670/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_670/lstm_cell_670/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_671/lstm_cell_671/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_671/lstm_cell_671/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_671/lstm_cell_671/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_223/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_223/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_669/lstm_cell_669/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_669/lstm_cell_669/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_669/lstm_cell_669/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_670/lstm_cell_670/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_670/lstm_cell_670/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_670/lstm_cell_670/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_671/lstm_cell_671/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_671/lstm_cell_671/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_671/lstm_cell_671/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_669_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_669_inputlstm_669/lstm_cell_669/kernel'lstm_669/lstm_cell_669/recurrent_kernellstm_669/lstm_cell_669/biaslstm_670/lstm_cell_670/kernel'lstm_670/lstm_cell_670/recurrent_kernellstm_670/lstm_cell_670/biaslstm_671/lstm_cell_671/kernel'lstm_671/lstm_cell_671/recurrent_kernellstm_671/lstm_cell_671/biasdense_223/kerneldense_223/bias*
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
%__inference_signature_wrapper_3790681
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_223/kernel/Read/ReadVariableOp"dense_223/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_669/lstm_cell_669/kernel/Read/ReadVariableOp;lstm_669/lstm_cell_669/recurrent_kernel/Read/ReadVariableOp/lstm_669/lstm_cell_669/bias/Read/ReadVariableOp1lstm_670/lstm_cell_670/kernel/Read/ReadVariableOp;lstm_670/lstm_cell_670/recurrent_kernel/Read/ReadVariableOp/lstm_670/lstm_cell_670/bias/Read/ReadVariableOp1lstm_671/lstm_cell_671/kernel/Read/ReadVariableOp;lstm_671/lstm_cell_671/recurrent_kernel/Read/ReadVariableOp/lstm_671/lstm_cell_671/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_223/kernel/m/Read/ReadVariableOp)Adam/dense_223/bias/m/Read/ReadVariableOp8Adam/lstm_669/lstm_cell_669/kernel/m/Read/ReadVariableOpBAdam/lstm_669/lstm_cell_669/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_669/lstm_cell_669/bias/m/Read/ReadVariableOp8Adam/lstm_670/lstm_cell_670/kernel/m/Read/ReadVariableOpBAdam/lstm_670/lstm_cell_670/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_670/lstm_cell_670/bias/m/Read/ReadVariableOp8Adam/lstm_671/lstm_cell_671/kernel/m/Read/ReadVariableOpBAdam/lstm_671/lstm_cell_671/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_671/lstm_cell_671/bias/m/Read/ReadVariableOp+Adam/dense_223/kernel/v/Read/ReadVariableOp)Adam/dense_223/bias/v/Read/ReadVariableOp8Adam/lstm_669/lstm_cell_669/kernel/v/Read/ReadVariableOpBAdam/lstm_669/lstm_cell_669/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_669/lstm_cell_669/bias/v/Read/ReadVariableOp8Adam/lstm_670/lstm_cell_670/kernel/v/Read/ReadVariableOpBAdam/lstm_670/lstm_cell_670/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_670/lstm_cell_670/bias/v/Read/ReadVariableOp8Adam/lstm_671/lstm_cell_671/kernel/v/Read/ReadVariableOpBAdam/lstm_671/lstm_cell_671/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_671/lstm_cell_671/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3793893
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_223/kerneldense_223/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_669/lstm_cell_669/kernel'lstm_669/lstm_cell_669/recurrent_kernellstm_669/lstm_cell_669/biaslstm_670/lstm_cell_670/kernel'lstm_670/lstm_cell_670/recurrent_kernellstm_670/lstm_cell_670/biaslstm_671/lstm_cell_671/kernel'lstm_671/lstm_cell_671/recurrent_kernellstm_671/lstm_cell_671/biastotalcountAdam/dense_223/kernel/mAdam/dense_223/bias/m$Adam/lstm_669/lstm_cell_669/kernel/m.Adam/lstm_669/lstm_cell_669/recurrent_kernel/m"Adam/lstm_669/lstm_cell_669/bias/m$Adam/lstm_670/lstm_cell_670/kernel/m.Adam/lstm_670/lstm_cell_670/recurrent_kernel/m"Adam/lstm_670/lstm_cell_670/bias/m$Adam/lstm_671/lstm_cell_671/kernel/m.Adam/lstm_671/lstm_cell_671/recurrent_kernel/m"Adam/lstm_671/lstm_cell_671/bias/mAdam/dense_223/kernel/vAdam/dense_223/bias/v$Adam/lstm_669/lstm_cell_669/kernel/v.Adam/lstm_669/lstm_cell_669/recurrent_kernel/v"Adam/lstm_669/lstm_cell_669/bias/v$Adam/lstm_670/lstm_cell_670/kernel/v.Adam/lstm_670/lstm_cell_670/recurrent_kernel/v"Adam/lstm_670/lstm_cell_670/bias/v$Adam/lstm_671/lstm_cell_671/kernel/v.Adam/lstm_671/lstm_cell_671/recurrent_kernel/v"Adam/lstm_671/lstm_cell_671/bias/v*4
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
#__inference__traced_restore_3794023??+
?T
?
*sequential_223_lstm_670_while_body_3788192L
Hsequential_223_lstm_670_while_sequential_223_lstm_670_while_loop_counterR
Nsequential_223_lstm_670_while_sequential_223_lstm_670_while_maximum_iterations-
)sequential_223_lstm_670_while_placeholder/
+sequential_223_lstm_670_while_placeholder_1/
+sequential_223_lstm_670_while_placeholder_2/
+sequential_223_lstm_670_while_placeholder_3K
Gsequential_223_lstm_670_while_sequential_223_lstm_670_strided_slice_1_0?
?sequential_223_lstm_670_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_670_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_223_lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0:	d?a
Nsequential_223_lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?\
Msequential_223_lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0:	?*
&sequential_223_lstm_670_while_identity,
(sequential_223_lstm_670_while_identity_1,
(sequential_223_lstm_670_while_identity_2,
(sequential_223_lstm_670_while_identity_3,
(sequential_223_lstm_670_while_identity_4,
(sequential_223_lstm_670_while_identity_5I
Esequential_223_lstm_670_while_sequential_223_lstm_670_strided_slice_1?
?sequential_223_lstm_670_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_670_tensorarrayunstack_tensorlistfromtensor]
Jsequential_223_lstm_670_while_lstm_cell_625_matmul_readvariableop_resource:	d?_
Lsequential_223_lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource:	2?Z
Ksequential_223_lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource:	???Bsequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp?Asequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp?Csequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp?
Osequential_223/lstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_223/lstm_670/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_223_lstm_670_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_670_tensorarrayunstack_tensorlistfromtensor_0)sequential_223_lstm_670_while_placeholderXsequential_223/lstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOpLsequential_223_lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_223/lstm_670/while/lstm_cell_625/MatMulMatMulHsequential_223/lstm_670/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOpNsequential_223_lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_223/lstm_670/while/lstm_cell_625/MatMul_1MatMul+sequential_223_lstm_670_while_placeholder_2Ksequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_223/lstm_670/while/lstm_cell_625/addAddV2<sequential_223/lstm_670/while/lstm_cell_625/MatMul:product:0>sequential_223/lstm_670/while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOpMsequential_223_lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_223/lstm_670/while/lstm_cell_625/BiasAddBiasAdd3sequential_223/lstm_670/while/lstm_cell_625/add:z:0Jsequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_223/lstm_670/while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_223/lstm_670/while/lstm_cell_625/splitSplitDsequential_223/lstm_670/while/lstm_cell_625/split/split_dim:output:0<sequential_223/lstm_670/while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_223/lstm_670/while/lstm_cell_625/SigmoidSigmoid:sequential_223/lstm_670/while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_223/lstm_670/while/lstm_cell_625/Sigmoid_1Sigmoid:sequential_223/lstm_670/while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_223/lstm_670/while/lstm_cell_625/mulMul9sequential_223/lstm_670/while/lstm_cell_625/Sigmoid_1:y:0+sequential_223_lstm_670_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_223/lstm_670/while/lstm_cell_625/ReluRelu:sequential_223/lstm_670/while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_223/lstm_670/while/lstm_cell_625/mul_1Mul7sequential_223/lstm_670/while/lstm_cell_625/Sigmoid:y:0>sequential_223/lstm_670/while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_223/lstm_670/while/lstm_cell_625/add_1AddV23sequential_223/lstm_670/while/lstm_cell_625/mul:z:05sequential_223/lstm_670/while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_223/lstm_670/while/lstm_cell_625/Sigmoid_2Sigmoid:sequential_223/lstm_670/while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_223/lstm_670/while/lstm_cell_625/Relu_1Relu5sequential_223/lstm_670/while/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_223/lstm_670/while/lstm_cell_625/mul_2Mul9sequential_223/lstm_670/while/lstm_cell_625/Sigmoid_2:y:0@sequential_223/lstm_670/while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_223/lstm_670/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_223_lstm_670_while_placeholder_1)sequential_223_lstm_670_while_placeholder5sequential_223/lstm_670/while/lstm_cell_625/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_223/lstm_670/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_223/lstm_670/while/addAddV2)sequential_223_lstm_670_while_placeholder,sequential_223/lstm_670/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_223/lstm_670/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_223/lstm_670/while/add_1AddV2Hsequential_223_lstm_670_while_sequential_223_lstm_670_while_loop_counter.sequential_223/lstm_670/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_223/lstm_670/while/IdentityIdentity'sequential_223/lstm_670/while/add_1:z:0#^sequential_223/lstm_670/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_670/while/Identity_1IdentityNsequential_223_lstm_670_while_sequential_223_lstm_670_while_maximum_iterations#^sequential_223/lstm_670/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_670/while/Identity_2Identity%sequential_223/lstm_670/while/add:z:0#^sequential_223/lstm_670/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_670/while/Identity_3IdentityRsequential_223/lstm_670/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_223/lstm_670/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_670/while/Identity_4Identity5sequential_223/lstm_670/while/lstm_cell_625/mul_2:z:0#^sequential_223/lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_223/lstm_670/while/Identity_5Identity5sequential_223/lstm_670/while/lstm_cell_625/add_1:z:0#^sequential_223/lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_223/lstm_670/while/NoOpNoOpC^sequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOpB^sequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOpD^sequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_223_lstm_670_while_identity/sequential_223/lstm_670/while/Identity:output:0"]
(sequential_223_lstm_670_while_identity_11sequential_223/lstm_670/while/Identity_1:output:0"]
(sequential_223_lstm_670_while_identity_21sequential_223/lstm_670/while/Identity_2:output:0"]
(sequential_223_lstm_670_while_identity_31sequential_223/lstm_670/while/Identity_3:output:0"]
(sequential_223_lstm_670_while_identity_41sequential_223/lstm_670/while/Identity_4:output:0"]
(sequential_223_lstm_670_while_identity_51sequential_223/lstm_670/while/Identity_5:output:0"?
Ksequential_223_lstm_670_while_lstm_cell_625_biasadd_readvariableop_resourceMsequential_223_lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0"?
Lsequential_223_lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resourceNsequential_223_lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0"?
Jsequential_223_lstm_670_while_lstm_cell_625_matmul_readvariableop_resourceLsequential_223_lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0"?
Esequential_223_lstm_670_while_sequential_223_lstm_670_strided_slice_1Gsequential_223_lstm_670_while_sequential_223_lstm_670_strided_slice_1_0"?
?sequential_223_lstm_670_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_670_tensorarrayunstack_tensorlistfromtensor?sequential_223_lstm_670_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_670_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOpBsequential_223/lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp2?
Asequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOpAsequential_223/lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp2?
Csequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOpCsequential_223/lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_669_while_cond_3791220.
*lstm_669_while_lstm_669_while_loop_counter4
0lstm_669_while_lstm_669_while_maximum_iterations
lstm_669_while_placeholder 
lstm_669_while_placeholder_1 
lstm_669_while_placeholder_2 
lstm_669_while_placeholder_30
,lstm_669_while_less_lstm_669_strided_slice_1G
Clstm_669_while_lstm_669_while_cond_3791220___redundant_placeholder0G
Clstm_669_while_lstm_669_while_cond_3791220___redundant_placeholder1G
Clstm_669_while_lstm_669_while_cond_3791220___redundant_placeholder2G
Clstm_669_while_lstm_669_while_cond_3791220___redundant_placeholder3
lstm_669_while_identity
?
lstm_669/while/LessLesslstm_669_while_placeholder,lstm_669_while_less_lstm_669_strided_slice_1*
T0*
_output_shapes
: ]
lstm_669/while/IdentityIdentitylstm_669/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_669_while_identity lstm_669/while/Identity:output:0*(
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
while_cond_3793066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3793066___redundant_placeholder05
1while_while_cond_3793066___redundant_placeholder15
1while_while_cond_3793066___redundant_placeholder25
1while_while_cond_3793066___redundant_placeholder3
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
*__inference_lstm_670_layer_call_fn_3792249

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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3790301s
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792062

inputs?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3791978*
condR
while_cond_3791977*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_223_layer_call_fn_3789970
lstm_669_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_669_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3789945o
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
_user_specified_namelstm_669_input
?J
?
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793294

inputs>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3793210*
condR
while_cond_3793209*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3789392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789392___redundant_placeholder05
1while_while_cond_3789392___redundant_placeholder15
1while_while_cond_3789392___redundant_placeholder25
1while_while_cond_3789392___redundant_placeholder3
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793008
inputs_0>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3792924*
condR
while_cond_3792923*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_670_while_body_3791360.
*lstm_670_while_lstm_670_while_loop_counter4
0lstm_670_while_lstm_670_while_maximum_iterations
lstm_670_while_placeholder 
lstm_670_while_placeholder_1 
lstm_670_while_placeholder_2 
lstm_670_while_placeholder_3-
)lstm_670_while_lstm_670_strided_slice_1_0i
elstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0:	d?R
?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?M
>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
lstm_670_while_identity
lstm_670_while_identity_1
lstm_670_while_identity_2
lstm_670_while_identity_3
lstm_670_while_identity_4
lstm_670_while_identity_5+
'lstm_670_while_lstm_670_strided_slice_1g
clstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensorN
;lstm_670_while_lstm_cell_625_matmul_readvariableop_resource:	d?P
=lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource:	2?K
<lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource:	???3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp?2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp?4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp?
@lstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_670/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0lstm_670_while_placeholderIlstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_670/while/lstm_cell_625/MatMulMatMul9lstm_670/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_670/while/lstm_cell_625/MatMul_1MatMullstm_670_while_placeholder_2<lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_670/while/lstm_cell_625/addAddV2-lstm_670/while/lstm_cell_625/MatMul:product:0/lstm_670/while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_670/while/lstm_cell_625/BiasAddBiasAdd$lstm_670/while/lstm_cell_625/add:z:0;lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_670/while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_670/while/lstm_cell_625/splitSplit5lstm_670/while/lstm_cell_625/split/split_dim:output:0-lstm_670/while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_670/while/lstm_cell_625/SigmoidSigmoid+lstm_670/while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_670/while/lstm_cell_625/Sigmoid_1Sigmoid+lstm_670/while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_670/while/lstm_cell_625/mulMul*lstm_670/while/lstm_cell_625/Sigmoid_1:y:0lstm_670_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_670/while/lstm_cell_625/ReluRelu+lstm_670/while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/mul_1Mul(lstm_670/while/lstm_cell_625/Sigmoid:y:0/lstm_670/while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/add_1AddV2$lstm_670/while/lstm_cell_625/mul:z:0&lstm_670/while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_670/while/lstm_cell_625/Sigmoid_2Sigmoid+lstm_670/while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_670/while/lstm_cell_625/Relu_1Relu&lstm_670/while/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/mul_2Mul*lstm_670/while/lstm_cell_625/Sigmoid_2:y:01lstm_670/while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_670/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_670_while_placeholder_1lstm_670_while_placeholder&lstm_670/while/lstm_cell_625/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_670/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_670/while/addAddV2lstm_670_while_placeholderlstm_670/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_670/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_670/while/add_1AddV2*lstm_670_while_lstm_670_while_loop_counterlstm_670/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_670/while/IdentityIdentitylstm_670/while/add_1:z:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_1Identity0lstm_670_while_lstm_670_while_maximum_iterations^lstm_670/while/NoOp*
T0*
_output_shapes
: t
lstm_670/while/Identity_2Identitylstm_670/while/add:z:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_3IdentityClstm_670/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_4Identity&lstm_670/while/lstm_cell_625/mul_2:z:0^lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_670/while/Identity_5Identity&lstm_670/while/lstm_cell_625/add_1:z:0^lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_670/while/NoOpNoOp4^lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp3^lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp5^lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_670_while_identity lstm_670/while/Identity:output:0"?
lstm_670_while_identity_1"lstm_670/while/Identity_1:output:0"?
lstm_670_while_identity_2"lstm_670/while/Identity_2:output:0"?
lstm_670_while_identity_3"lstm_670/while/Identity_3:output:0"?
lstm_670_while_identity_4"lstm_670/while/Identity_4:output:0"?
lstm_670_while_identity_5"lstm_670/while/Identity_5:output:0"T
'lstm_670_while_lstm_670_strided_slice_1)lstm_670_while_lstm_670_strided_slice_1_0"~
<lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0"?
=lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0"|
;lstm_670_while_lstm_cell_625_matmul_readvariableop_resource=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0"?
clstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensorelstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp2h
2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp2l
4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_670_while_cond_3790932.
*lstm_670_while_lstm_670_while_loop_counter4
0lstm_670_while_lstm_670_while_maximum_iterations
lstm_670_while_placeholder 
lstm_670_while_placeholder_1 
lstm_670_while_placeholder_2 
lstm_670_while_placeholder_30
,lstm_670_while_less_lstm_670_strided_slice_1G
Clstm_670_while_lstm_670_while_cond_3790932___redundant_placeholder0G
Clstm_670_while_lstm_670_while_cond_3790932___redundant_placeholder1G
Clstm_670_while_lstm_670_while_cond_3790932___redundant_placeholder2G
Clstm_670_while_lstm_670_while_cond_3790932___redundant_placeholder3
lstm_670_while_identity
?
lstm_670/while/LessLesslstm_670_while_placeholder,lstm_670_while_less_lstm_670_strided_slice_1*
T0*
_output_shapes
: ]
lstm_670/while/IdentityIdentitylstm_670/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_670_while_identity lstm_670/while/Identity:output:0*(
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

lstm_669_while_body_3790794.
*lstm_669_while_lstm_669_while_loop_counter4
0lstm_669_while_lstm_669_while_maximum_iterations
lstm_669_while_placeholder 
lstm_669_while_placeholder_1 
lstm_669_while_placeholder_2 
lstm_669_while_placeholder_3-
)lstm_669_while_lstm_669_strided_slice_1_0i
elstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0:	?R
?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?M
>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
lstm_669_while_identity
lstm_669_while_identity_1
lstm_669_while_identity_2
lstm_669_while_identity_3
lstm_669_while_identity_4
lstm_669_while_identity_5+
'lstm_669_while_lstm_669_strided_slice_1g
clstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensorN
;lstm_669_while_lstm_cell_624_matmul_readvariableop_resource:	?P
=lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource:	d?K
<lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource:	???3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp?2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp?4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp?
@lstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_669/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0lstm_669_while_placeholderIlstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_669/while/lstm_cell_624/MatMulMatMul9lstm_669/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_669/while/lstm_cell_624/MatMul_1MatMullstm_669_while_placeholder_2<lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_669/while/lstm_cell_624/addAddV2-lstm_669/while/lstm_cell_624/MatMul:product:0/lstm_669/while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_669/while/lstm_cell_624/BiasAddBiasAdd$lstm_669/while/lstm_cell_624/add:z:0;lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_669/while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_669/while/lstm_cell_624/splitSplit5lstm_669/while/lstm_cell_624/split/split_dim:output:0-lstm_669/while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_669/while/lstm_cell_624/SigmoidSigmoid+lstm_669/while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_669/while/lstm_cell_624/Sigmoid_1Sigmoid+lstm_669/while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_669/while/lstm_cell_624/mulMul*lstm_669/while/lstm_cell_624/Sigmoid_1:y:0lstm_669_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_669/while/lstm_cell_624/ReluRelu+lstm_669/while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/mul_1Mul(lstm_669/while/lstm_cell_624/Sigmoid:y:0/lstm_669/while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/add_1AddV2$lstm_669/while/lstm_cell_624/mul:z:0&lstm_669/while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_669/while/lstm_cell_624/Sigmoid_2Sigmoid+lstm_669/while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_669/while/lstm_cell_624/Relu_1Relu&lstm_669/while/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/mul_2Mul*lstm_669/while/lstm_cell_624/Sigmoid_2:y:01lstm_669/while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_669/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_669_while_placeholder_1lstm_669_while_placeholder&lstm_669/while/lstm_cell_624/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_669/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_669/while/addAddV2lstm_669_while_placeholderlstm_669/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_669/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_669/while/add_1AddV2*lstm_669_while_lstm_669_while_loop_counterlstm_669/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_669/while/IdentityIdentitylstm_669/while/add_1:z:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_1Identity0lstm_669_while_lstm_669_while_maximum_iterations^lstm_669/while/NoOp*
T0*
_output_shapes
: t
lstm_669/while/Identity_2Identitylstm_669/while/add:z:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_3IdentityClstm_669/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_4Identity&lstm_669/while/lstm_cell_624/mul_2:z:0^lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_669/while/Identity_5Identity&lstm_669/while/lstm_cell_624/add_1:z:0^lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_669/while/NoOpNoOp4^lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp3^lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp5^lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_669_while_identity lstm_669/while/Identity:output:0"?
lstm_669_while_identity_1"lstm_669/while/Identity_1:output:0"?
lstm_669_while_identity_2"lstm_669/while/Identity_2:output:0"?
lstm_669_while_identity_3"lstm_669/while/Identity_3:output:0"?
lstm_669_while_identity_4"lstm_669/while/Identity_4:output:0"?
lstm_669_while_identity_5"lstm_669/while/Identity_5:output:0"T
'lstm_669_while_lstm_669_strided_slice_1)lstm_669_while_lstm_669_strided_slice_1_0"~
<lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0"?
=lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0"|
;lstm_669_while_lstm_cell_624_matmul_readvariableop_resource=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0"?
clstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensorelstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp2h
2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp2l
4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_671_while_body_3791499.
*lstm_671_while_lstm_671_while_loop_counter4
0lstm_671_while_lstm_671_while_maximum_iterations
lstm_671_while_placeholder 
lstm_671_while_placeholder_1 
lstm_671_while_placeholder_2 
lstm_671_while_placeholder_3-
)lstm_671_while_lstm_671_strided_slice_1_0i
elstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0:2(Q
?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(L
>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0:(
lstm_671_while_identity
lstm_671_while_identity_1
lstm_671_while_identity_2
lstm_671_while_identity_3
lstm_671_while_identity_4
lstm_671_while_identity_5+
'lstm_671_while_lstm_671_strided_slice_1g
clstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensorM
;lstm_671_while_lstm_cell_626_matmul_readvariableop_resource:2(O
=lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource:
(J
<lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource:(??3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp?2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp?4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp?
@lstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_671/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0lstm_671_while_placeholderIlstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_671/while/lstm_cell_626/MatMulMatMul9lstm_671/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_671/while/lstm_cell_626/MatMul_1MatMullstm_671_while_placeholder_2<lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_671/while/lstm_cell_626/addAddV2-lstm_671/while/lstm_cell_626/MatMul:product:0/lstm_671/while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_671/while/lstm_cell_626/BiasAddBiasAdd$lstm_671/while/lstm_cell_626/add:z:0;lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_671/while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_671/while/lstm_cell_626/splitSplit5lstm_671/while/lstm_cell_626/split/split_dim:output:0-lstm_671/while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_671/while/lstm_cell_626/SigmoidSigmoid+lstm_671/while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_671/while/lstm_cell_626/Sigmoid_1Sigmoid+lstm_671/while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_671/while/lstm_cell_626/mulMul*lstm_671/while/lstm_cell_626/Sigmoid_1:y:0lstm_671_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_671/while/lstm_cell_626/ReluRelu+lstm_671/while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/mul_1Mul(lstm_671/while/lstm_cell_626/Sigmoid:y:0/lstm_671/while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/add_1AddV2$lstm_671/while/lstm_cell_626/mul:z:0&lstm_671/while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_671/while/lstm_cell_626/Sigmoid_2Sigmoid+lstm_671/while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_671/while/lstm_cell_626/Relu_1Relu&lstm_671/while/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/mul_2Mul*lstm_671/while/lstm_cell_626/Sigmoid_2:y:01lstm_671/while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_671/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_671_while_placeholder_1lstm_671_while_placeholder&lstm_671/while/lstm_cell_626/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_671/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_671/while/addAddV2lstm_671_while_placeholderlstm_671/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_671/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_671/while/add_1AddV2*lstm_671_while_lstm_671_while_loop_counterlstm_671/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_671/while/IdentityIdentitylstm_671/while/add_1:z:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_1Identity0lstm_671_while_lstm_671_while_maximum_iterations^lstm_671/while/NoOp*
T0*
_output_shapes
: t
lstm_671/while/Identity_2Identitylstm_671/while/add:z:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_3IdentityClstm_671/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_4Identity&lstm_671/while/lstm_cell_626/mul_2:z:0^lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_671/while/Identity_5Identity&lstm_671/while/lstm_cell_626/add_1:z:0^lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_671/while/NoOpNoOp4^lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp3^lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp5^lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_671_while_identity lstm_671/while/Identity:output:0"?
lstm_671_while_identity_1"lstm_671/while/Identity_1:output:0"?
lstm_671_while_identity_2"lstm_671/while/Identity_2:output:0"?
lstm_671_while_identity_3"lstm_671/while/Identity_3:output:0"?
lstm_671_while_identity_4"lstm_671/while/Identity_4:output:0"?
lstm_671_while_identity_5"lstm_671/while/Identity_5:output:0"T
'lstm_671_while_lstm_671_strided_slice_1)lstm_671_while_lstm_671_strided_slice_1_0"~
<lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0"?
=lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0"|
;lstm_671_while_lstm_cell_626_matmul_readvariableop_resource=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0"?
clstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensorelstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp2h
2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp2l
4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3788762

inputs(
lstm_cell_624_3788680:	?(
lstm_cell_624_3788682:	d?$
lstm_cell_624_3788684:	?
identity??%lstm_cell_624/StatefulPartitionedCall?while;
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
%lstm_cell_624/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_624_3788680lstm_cell_624_3788682lstm_cell_624_3788684*
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788634n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_624_3788680lstm_cell_624_3788682lstm_cell_624_3788684*
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
while_body_3788693*
condR
while_cond_3788692*K
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
NoOpNoOp&^lstm_cell_624/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_624/StatefulPartitionedCall%lstm_cell_624/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3791691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3791691___redundant_placeholder05
1while_while_cond_3791691___redundant_placeholder15
1while_while_cond_3791691___redundant_placeholder25
1while_while_cond_3791691___redundant_placeholder3
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788488

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
while_body_3789686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_669_layer_call_fn_3791611
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3788762|
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
while_cond_3791834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3791834___redundant_placeholder05
1while_while_cond_3791834___redundant_placeholder15
1while_while_cond_3791834___redundant_placeholder25
1while_while_cond_3791834___redundant_placeholder3
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
lstm_670_while_cond_3791359.
*lstm_670_while_lstm_670_while_loop_counter4
0lstm_670_while_lstm_670_while_maximum_iterations
lstm_670_while_placeholder 
lstm_670_while_placeholder_1 
lstm_670_while_placeholder_2 
lstm_670_while_placeholder_30
,lstm_670_while_less_lstm_670_strided_slice_1G
Clstm_670_while_lstm_670_while_cond_3791359___redundant_placeholder0G
Clstm_670_while_lstm_670_while_cond_3791359___redundant_placeholder1G
Clstm_670_while_lstm_670_while_cond_3791359___redundant_placeholder2G
Clstm_670_while_lstm_670_while_cond_3791359___redundant_placeholder3
lstm_670_while_identity
?
lstm_670/while/LessLesslstm_670_while_placeholder,lstm_670_while_less_lstm_670_strided_slice_1*
T0*
_output_shapes
: ]
lstm_670/while/IdentityIdentitylstm_670/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_670_while_identity lstm_670/while/Identity:output:0*(
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
*__inference_lstm_671_layer_call_fn_3792854

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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789920o
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789112

inputs(
lstm_cell_625_3789030:	d?(
lstm_cell_625_3789032:	2?$
lstm_cell_625_3789034:	?
identity??%lstm_cell_625/StatefulPartitionedCall?while;
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
%lstm_cell_625/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_625_3789030lstm_cell_625_3789032lstm_cell_625_3789034*
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788984n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_625_3789030lstm_cell_625_3789032lstm_cell_625_3789034*
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
while_body_3789043*
condR
while_cond_3789042*K
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
NoOpNoOp&^lstm_cell_625/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_625/StatefulPartitionedCall%lstm_cell_625/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_669_layer_call_fn_3791600
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3788571|
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
?T
?
*sequential_223_lstm_671_while_body_3788331L
Hsequential_223_lstm_671_while_sequential_223_lstm_671_while_loop_counterR
Nsequential_223_lstm_671_while_sequential_223_lstm_671_while_maximum_iterations-
)sequential_223_lstm_671_while_placeholder/
+sequential_223_lstm_671_while_placeholder_1/
+sequential_223_lstm_671_while_placeholder_2/
+sequential_223_lstm_671_while_placeholder_3K
Gsequential_223_lstm_671_while_sequential_223_lstm_671_strided_slice_1_0?
?sequential_223_lstm_671_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_671_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_223_lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0:2(`
Nsequential_223_lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0:
([
Msequential_223_lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0:(*
&sequential_223_lstm_671_while_identity,
(sequential_223_lstm_671_while_identity_1,
(sequential_223_lstm_671_while_identity_2,
(sequential_223_lstm_671_while_identity_3,
(sequential_223_lstm_671_while_identity_4,
(sequential_223_lstm_671_while_identity_5I
Esequential_223_lstm_671_while_sequential_223_lstm_671_strided_slice_1?
?sequential_223_lstm_671_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_671_tensorarrayunstack_tensorlistfromtensor\
Jsequential_223_lstm_671_while_lstm_cell_626_matmul_readvariableop_resource:2(^
Lsequential_223_lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource:
(Y
Ksequential_223_lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource:(??Bsequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp?Asequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp?Csequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp?
Osequential_223/lstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_223/lstm_671/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_223_lstm_671_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_671_tensorarrayunstack_tensorlistfromtensor_0)sequential_223_lstm_671_while_placeholderXsequential_223/lstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOpLsequential_223_lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_223/lstm_671/while/lstm_cell_626/MatMulMatMulHsequential_223/lstm_671/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOpNsequential_223_lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_223/lstm_671/while/lstm_cell_626/MatMul_1MatMul+sequential_223_lstm_671_while_placeholder_2Ksequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_223/lstm_671/while/lstm_cell_626/addAddV2<sequential_223/lstm_671/while/lstm_cell_626/MatMul:product:0>sequential_223/lstm_671/while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOpMsequential_223_lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_223/lstm_671/while/lstm_cell_626/BiasAddBiasAdd3sequential_223/lstm_671/while/lstm_cell_626/add:z:0Jsequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_223/lstm_671/while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_223/lstm_671/while/lstm_cell_626/splitSplitDsequential_223/lstm_671/while/lstm_cell_626/split/split_dim:output:0<sequential_223/lstm_671/while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_223/lstm_671/while/lstm_cell_626/SigmoidSigmoid:sequential_223/lstm_671/while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_223/lstm_671/while/lstm_cell_626/Sigmoid_1Sigmoid:sequential_223/lstm_671/while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_223/lstm_671/while/lstm_cell_626/mulMul9sequential_223/lstm_671/while/lstm_cell_626/Sigmoid_1:y:0+sequential_223_lstm_671_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_223/lstm_671/while/lstm_cell_626/ReluRelu:sequential_223/lstm_671/while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_223/lstm_671/while/lstm_cell_626/mul_1Mul7sequential_223/lstm_671/while/lstm_cell_626/Sigmoid:y:0>sequential_223/lstm_671/while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_223/lstm_671/while/lstm_cell_626/add_1AddV23sequential_223/lstm_671/while/lstm_cell_626/mul:z:05sequential_223/lstm_671/while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_223/lstm_671/while/lstm_cell_626/Sigmoid_2Sigmoid:sequential_223/lstm_671/while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_223/lstm_671/while/lstm_cell_626/Relu_1Relu5sequential_223/lstm_671/while/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_223/lstm_671/while/lstm_cell_626/mul_2Mul9sequential_223/lstm_671/while/lstm_cell_626/Sigmoid_2:y:0@sequential_223/lstm_671/while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_223/lstm_671/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_223_lstm_671_while_placeholder_1)sequential_223_lstm_671_while_placeholder5sequential_223/lstm_671/while/lstm_cell_626/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_223/lstm_671/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_223/lstm_671/while/addAddV2)sequential_223_lstm_671_while_placeholder,sequential_223/lstm_671/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_223/lstm_671/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_223/lstm_671/while/add_1AddV2Hsequential_223_lstm_671_while_sequential_223_lstm_671_while_loop_counter.sequential_223/lstm_671/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_223/lstm_671/while/IdentityIdentity'sequential_223/lstm_671/while/add_1:z:0#^sequential_223/lstm_671/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_671/while/Identity_1IdentityNsequential_223_lstm_671_while_sequential_223_lstm_671_while_maximum_iterations#^sequential_223/lstm_671/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_671/while/Identity_2Identity%sequential_223/lstm_671/while/add:z:0#^sequential_223/lstm_671/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_671/while/Identity_3IdentityRsequential_223/lstm_671/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_223/lstm_671/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_671/while/Identity_4Identity5sequential_223/lstm_671/while/lstm_cell_626/mul_2:z:0#^sequential_223/lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_223/lstm_671/while/Identity_5Identity5sequential_223/lstm_671/while/lstm_cell_626/add_1:z:0#^sequential_223/lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_223/lstm_671/while/NoOpNoOpC^sequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOpB^sequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOpD^sequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_223_lstm_671_while_identity/sequential_223/lstm_671/while/Identity:output:0"]
(sequential_223_lstm_671_while_identity_11sequential_223/lstm_671/while/Identity_1:output:0"]
(sequential_223_lstm_671_while_identity_21sequential_223/lstm_671/while/Identity_2:output:0"]
(sequential_223_lstm_671_while_identity_31sequential_223/lstm_671/while/Identity_3:output:0"]
(sequential_223_lstm_671_while_identity_41sequential_223/lstm_671/while/Identity_4:output:0"]
(sequential_223_lstm_671_while_identity_51sequential_223/lstm_671/while/Identity_5:output:0"?
Ksequential_223_lstm_671_while_lstm_cell_626_biasadd_readvariableop_resourceMsequential_223_lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0"?
Lsequential_223_lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resourceNsequential_223_lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0"?
Jsequential_223_lstm_671_while_lstm_cell_626_matmul_readvariableop_resourceLsequential_223_lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0"?
Esequential_223_lstm_671_while_sequential_223_lstm_671_strided_slice_1Gsequential_223_lstm_671_while_sequential_223_lstm_671_strided_slice_1_0"?
?sequential_223_lstm_671_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_671_tensorarrayunstack_tensorlistfromtensor?sequential_223_lstm_671_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_671_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOpBsequential_223/lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp2?
Asequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOpAsequential_223/lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp2?
Csequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOpCsequential_223/lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3789945

inputs#
lstm_669_3789621:	?#
lstm_669_3789623:	d?
lstm_669_3789625:	?#
lstm_670_3789771:	d?#
lstm_670_3789773:	2?
lstm_670_3789775:	?"
lstm_671_3789921:2("
lstm_671_3789923:
(
lstm_671_3789925:(#
dense_223_3789939:

dense_223_3789941:
identity??!dense_223/StatefulPartitionedCall? lstm_669/StatefulPartitionedCall? lstm_670/StatefulPartitionedCall? lstm_671/StatefulPartitionedCall?
 lstm_669/StatefulPartitionedCallStatefulPartitionedCallinputslstm_669_3789621lstm_669_3789623lstm_669_3789625*
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3789620?
 lstm_670/StatefulPartitionedCallStatefulPartitionedCall)lstm_669/StatefulPartitionedCall:output:0lstm_670_3789771lstm_670_3789773lstm_670_3789775*
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789770?
 lstm_671/StatefulPartitionedCallStatefulPartitionedCall)lstm_670/StatefulPartitionedCall:output:0lstm_671_3789921lstm_671_3789923lstm_671_3789925*
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789920?
!dense_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_671/StatefulPartitionedCall:output:0dense_223_3789939dense_223_3789941*
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938y
IdentityIdentity*dense_223/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_223/StatefulPartitionedCall!^lstm_669/StatefulPartitionedCall!^lstm_670/StatefulPartitionedCall!^lstm_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_223/StatefulPartitionedCall!dense_223/StatefulPartitionedCall2D
 lstm_669/StatefulPartitionedCall lstm_669/StatefulPartitionedCall2D
 lstm_670/StatefulPartitionedCall lstm_670/StatefulPartitionedCall2D
 lstm_671/StatefulPartitionedCall lstm_671/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792392
inputs_0?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3792308*
condR
while_cond_3792307*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_671_while_cond_3791071.
*lstm_671_while_lstm_671_while_loop_counter4
0lstm_671_while_lstm_671_while_maximum_iterations
lstm_671_while_placeholder 
lstm_671_while_placeholder_1 
lstm_671_while_placeholder_2 
lstm_671_while_placeholder_30
,lstm_671_while_less_lstm_671_strided_slice_1G
Clstm_671_while_lstm_671_while_cond_3791071___redundant_placeholder0G
Clstm_671_while_lstm_671_while_cond_3791071___redundant_placeholder1G
Clstm_671_while_lstm_671_while_cond_3791071___redundant_placeholder2G
Clstm_671_while_lstm_671_while_cond_3791071___redundant_placeholder3
lstm_671_while_identity
?
lstm_671/while/LessLesslstm_671_while_placeholder,lstm_671_while_less_lstm_671_strided_slice_1*
T0*
_output_shapes
: ]
lstm_671/while/IdentityIdentitylstm_671/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_671_while_identity lstm_671/while/Identity:output:0*(
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3789620

inputs?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3789536*
condR
while_cond_3789535*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_669_layer_call_fn_3791622

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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3789620s
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
?#
?
while_body_3789202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_626_3789226_0:2(/
while_lstm_cell_626_3789228_0:
(+
while_lstm_cell_626_3789230_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_626_3789226:2(-
while_lstm_cell_626_3789228:
()
while_lstm_cell_626_3789230:(??+while/lstm_cell_626/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_626/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_626_3789226_0while_lstm_cell_626_3789228_0while_lstm_cell_626_3789230_0*
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789188?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_626/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_626/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_626/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_626/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_626_3789226while_lstm_cell_626_3789226_0"<
while_lstm_cell_626_3789228while_lstm_cell_626_3789228_0"<
while_lstm_cell_626_3789230while_lstm_cell_626_3789230_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_626/StatefulPartitionedCall+while/lstm_cell_626/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3791977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3791977___redundant_placeholder05
1while_while_cond_3791977___redundant_placeholder15
1while_while_cond_3791977___redundant_placeholder25
1while_while_cond_3791977___redundant_placeholder3
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789334

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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789770

inputs?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3789686*
condR
while_cond_3789685*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3792924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3790136

inputs>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3790052*
condR
while_cond_3790051*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3788502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_624_3788526_0:	?0
while_lstm_cell_624_3788528_0:	d?,
while_lstm_cell_624_3788530_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_624_3788526:	?.
while_lstm_cell_624_3788528:	d?*
while_lstm_cell_624_3788530:	???+while/lstm_cell_624/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_624/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_624_3788526_0while_lstm_cell_624_3788528_0while_lstm_cell_624_3788530_0*
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788488?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_624/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_624/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_624/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_624/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_624_3788526while_lstm_cell_624_3788526_0"<
while_lstm_cell_624_3788528while_lstm_cell_624_3788528_0"<
while_lstm_cell_624_3788530while_lstm_cell_624_3788530_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_624/StatefulPartitionedCall+while/lstm_cell_624/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_670_layer_call_fn_3792216
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3788921|
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
?
E__inference_lstm_669_layer_call_and_return_conditional_losses_3788571

inputs(
lstm_cell_624_3788489:	?(
lstm_cell_624_3788491:	d?$
lstm_cell_624_3788493:	?
identity??%lstm_cell_624/StatefulPartitionedCall?while;
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
%lstm_cell_624/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_624_3788489lstm_cell_624_3788491lstm_cell_624_3788493*
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788488n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_624_3788489lstm_cell_624_3788491lstm_cell_624_3788493*
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
while_body_3788502*
condR
while_cond_3788501*K
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
NoOpNoOp&^lstm_cell_624/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_624/StatefulPartitionedCall%lstm_cell_624/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3793209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3793209___redundant_placeholder05
1while_while_cond_3793209___redundant_placeholder15
1while_while_cond_3793209___redundant_placeholder25
1while_while_cond_3793209___redundant_placeholder3
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
*sequential_223_lstm_669_while_body_3788053L
Hsequential_223_lstm_669_while_sequential_223_lstm_669_while_loop_counterR
Nsequential_223_lstm_669_while_sequential_223_lstm_669_while_maximum_iterations-
)sequential_223_lstm_669_while_placeholder/
+sequential_223_lstm_669_while_placeholder_1/
+sequential_223_lstm_669_while_placeholder_2/
+sequential_223_lstm_669_while_placeholder_3K
Gsequential_223_lstm_669_while_sequential_223_lstm_669_strided_slice_1_0?
?sequential_223_lstm_669_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_669_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_223_lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0:	?a
Nsequential_223_lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?\
Msequential_223_lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0:	?*
&sequential_223_lstm_669_while_identity,
(sequential_223_lstm_669_while_identity_1,
(sequential_223_lstm_669_while_identity_2,
(sequential_223_lstm_669_while_identity_3,
(sequential_223_lstm_669_while_identity_4,
(sequential_223_lstm_669_while_identity_5I
Esequential_223_lstm_669_while_sequential_223_lstm_669_strided_slice_1?
?sequential_223_lstm_669_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_669_tensorarrayunstack_tensorlistfromtensor]
Jsequential_223_lstm_669_while_lstm_cell_624_matmul_readvariableop_resource:	?_
Lsequential_223_lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource:	d?Z
Ksequential_223_lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource:	???Bsequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp?Asequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp?Csequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp?
Osequential_223/lstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_223/lstm_669/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_223_lstm_669_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_669_tensorarrayunstack_tensorlistfromtensor_0)sequential_223_lstm_669_while_placeholderXsequential_223/lstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOpLsequential_223_lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_223/lstm_669/while/lstm_cell_624/MatMulMatMulHsequential_223/lstm_669/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOpNsequential_223_lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_223/lstm_669/while/lstm_cell_624/MatMul_1MatMul+sequential_223_lstm_669_while_placeholder_2Ksequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_223/lstm_669/while/lstm_cell_624/addAddV2<sequential_223/lstm_669/while/lstm_cell_624/MatMul:product:0>sequential_223/lstm_669/while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOpMsequential_223_lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_223/lstm_669/while/lstm_cell_624/BiasAddBiasAdd3sequential_223/lstm_669/while/lstm_cell_624/add:z:0Jsequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_223/lstm_669/while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_223/lstm_669/while/lstm_cell_624/splitSplitDsequential_223/lstm_669/while/lstm_cell_624/split/split_dim:output:0<sequential_223/lstm_669/while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_223/lstm_669/while/lstm_cell_624/SigmoidSigmoid:sequential_223/lstm_669/while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_223/lstm_669/while/lstm_cell_624/Sigmoid_1Sigmoid:sequential_223/lstm_669/while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_223/lstm_669/while/lstm_cell_624/mulMul9sequential_223/lstm_669/while/lstm_cell_624/Sigmoid_1:y:0+sequential_223_lstm_669_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_223/lstm_669/while/lstm_cell_624/ReluRelu:sequential_223/lstm_669/while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_223/lstm_669/while/lstm_cell_624/mul_1Mul7sequential_223/lstm_669/while/lstm_cell_624/Sigmoid:y:0>sequential_223/lstm_669/while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_223/lstm_669/while/lstm_cell_624/add_1AddV23sequential_223/lstm_669/while/lstm_cell_624/mul:z:05sequential_223/lstm_669/while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_223/lstm_669/while/lstm_cell_624/Sigmoid_2Sigmoid:sequential_223/lstm_669/while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_223/lstm_669/while/lstm_cell_624/Relu_1Relu5sequential_223/lstm_669/while/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_223/lstm_669/while/lstm_cell_624/mul_2Mul9sequential_223/lstm_669/while/lstm_cell_624/Sigmoid_2:y:0@sequential_223/lstm_669/while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_223/lstm_669/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_223_lstm_669_while_placeholder_1)sequential_223_lstm_669_while_placeholder5sequential_223/lstm_669/while/lstm_cell_624/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_223/lstm_669/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_223/lstm_669/while/addAddV2)sequential_223_lstm_669_while_placeholder,sequential_223/lstm_669/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_223/lstm_669/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_223/lstm_669/while/add_1AddV2Hsequential_223_lstm_669_while_sequential_223_lstm_669_while_loop_counter.sequential_223/lstm_669/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_223/lstm_669/while/IdentityIdentity'sequential_223/lstm_669/while/add_1:z:0#^sequential_223/lstm_669/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_669/while/Identity_1IdentityNsequential_223_lstm_669_while_sequential_223_lstm_669_while_maximum_iterations#^sequential_223/lstm_669/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_669/while/Identity_2Identity%sequential_223/lstm_669/while/add:z:0#^sequential_223/lstm_669/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_669/while/Identity_3IdentityRsequential_223/lstm_669/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_223/lstm_669/while/NoOp*
T0*
_output_shapes
: ?
(sequential_223/lstm_669/while/Identity_4Identity5sequential_223/lstm_669/while/lstm_cell_624/mul_2:z:0#^sequential_223/lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_223/lstm_669/while/Identity_5Identity5sequential_223/lstm_669/while/lstm_cell_624/add_1:z:0#^sequential_223/lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_223/lstm_669/while/NoOpNoOpC^sequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOpB^sequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOpD^sequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_223_lstm_669_while_identity/sequential_223/lstm_669/while/Identity:output:0"]
(sequential_223_lstm_669_while_identity_11sequential_223/lstm_669/while/Identity_1:output:0"]
(sequential_223_lstm_669_while_identity_21sequential_223/lstm_669/while/Identity_2:output:0"]
(sequential_223_lstm_669_while_identity_31sequential_223/lstm_669/while/Identity_3:output:0"]
(sequential_223_lstm_669_while_identity_41sequential_223/lstm_669/while/Identity_4:output:0"]
(sequential_223_lstm_669_while_identity_51sequential_223/lstm_669/while/Identity_5:output:0"?
Ksequential_223_lstm_669_while_lstm_cell_624_biasadd_readvariableop_resourceMsequential_223_lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0"?
Lsequential_223_lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resourceNsequential_223_lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0"?
Jsequential_223_lstm_669_while_lstm_cell_624_matmul_readvariableop_resourceLsequential_223_lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0"?
Esequential_223_lstm_669_while_sequential_223_lstm_669_strided_slice_1Gsequential_223_lstm_669_while_sequential_223_lstm_669_strided_slice_1_0"?
?sequential_223_lstm_669_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_669_tensorarrayunstack_tensorlistfromtensor?sequential_223_lstm_669_while_tensorarrayv2read_tensorlistgetitem_sequential_223_lstm_669_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOpBsequential_223/lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp2?
Asequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOpAsequential_223/lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp2?
Csequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOpCsequential_223/lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_624_layer_call_fn_3793473

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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788488o
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
while_body_3792737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3790381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3790381___redundant_placeholder05
1while_while_cond_3790381___redundant_placeholder15
1while_while_cond_3790381___redundant_placeholder25
1while_while_cond_3790381___redundant_placeholder3
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
while_body_3793210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3790301

inputs?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3790217*
condR
while_cond_3790216*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_223_lstm_669_while_cond_3788052L
Hsequential_223_lstm_669_while_sequential_223_lstm_669_while_loop_counterR
Nsequential_223_lstm_669_while_sequential_223_lstm_669_while_maximum_iterations-
)sequential_223_lstm_669_while_placeholder/
+sequential_223_lstm_669_while_placeholder_1/
+sequential_223_lstm_669_while_placeholder_2/
+sequential_223_lstm_669_while_placeholder_3N
Jsequential_223_lstm_669_while_less_sequential_223_lstm_669_strided_slice_1e
asequential_223_lstm_669_while_sequential_223_lstm_669_while_cond_3788052___redundant_placeholder0e
asequential_223_lstm_669_while_sequential_223_lstm_669_while_cond_3788052___redundant_placeholder1e
asequential_223_lstm_669_while_sequential_223_lstm_669_while_cond_3788052___redundant_placeholder2e
asequential_223_lstm_669_while_sequential_223_lstm_669_while_cond_3788052___redundant_placeholder3*
&sequential_223_lstm_669_while_identity
?
"sequential_223/lstm_669/while/LessLess)sequential_223_lstm_669_while_placeholderJsequential_223_lstm_669_while_less_sequential_223_lstm_669_strided_slice_1*
T0*
_output_shapes
: {
&sequential_223/lstm_669/while/IdentityIdentity&sequential_223/lstm_669/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_223_lstm_669_while_identity/sequential_223/lstm_669/while/Identity:output:0*(
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791919
inputs_0?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3791835*
condR
while_cond_3791834*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789462

inputs'
lstm_cell_626_3789380:2('
lstm_cell_626_3789382:
(#
lstm_cell_626_3789384:(
identity??%lstm_cell_626/StatefulPartitionedCall?while;
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
%lstm_cell_626/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_626_3789380lstm_cell_626_3789382lstm_cell_626_3789384*
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789334n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_626_3789380lstm_cell_626_3789382lstm_cell_626_3789384*
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
while_body_3789393*
condR
while_cond_3789392*K
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
NoOpNoOp&^lstm_cell_626/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_626/StatefulPartitionedCall%lstm_cell_626/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3792923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792923___redundant_placeholder05
1while_while_cond_3792923___redundant_placeholder15
1while_while_cond_3792923___redundant_placeholder25
1while_while_cond_3792923___redundant_placeholder3
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
while_cond_3792307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792307___redundant_placeholder05
1while_while_cond_3792307___redundant_placeholder15
1while_while_cond_3792307___redundant_placeholder25
1while_while_cond_3792307___redundant_placeholder3
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789920

inputs>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3789836*
condR
while_cond_3789835*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3790052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3790217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3788421
lstm_669_inputW
Dsequential_223_lstm_669_lstm_cell_624_matmul_readvariableop_resource:	?Y
Fsequential_223_lstm_669_lstm_cell_624_matmul_1_readvariableop_resource:	d?T
Esequential_223_lstm_669_lstm_cell_624_biasadd_readvariableop_resource:	?W
Dsequential_223_lstm_670_lstm_cell_625_matmul_readvariableop_resource:	d?Y
Fsequential_223_lstm_670_lstm_cell_625_matmul_1_readvariableop_resource:	2?T
Esequential_223_lstm_670_lstm_cell_625_biasadd_readvariableop_resource:	?V
Dsequential_223_lstm_671_lstm_cell_626_matmul_readvariableop_resource:2(X
Fsequential_223_lstm_671_lstm_cell_626_matmul_1_readvariableop_resource:
(S
Esequential_223_lstm_671_lstm_cell_626_biasadd_readvariableop_resource:(I
7sequential_223_dense_223_matmul_readvariableop_resource:
F
8sequential_223_dense_223_biasadd_readvariableop_resource:
identity??/sequential_223/dense_223/BiasAdd/ReadVariableOp?.sequential_223/dense_223/MatMul/ReadVariableOp?<sequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp?;sequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOp?=sequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp?sequential_223/lstm_669/while?<sequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp?;sequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOp?=sequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp?sequential_223/lstm_670/while?<sequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp?;sequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOp?=sequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp?sequential_223/lstm_671/while[
sequential_223/lstm_669/ShapeShapelstm_669_input*
T0*
_output_shapes
:u
+sequential_223/lstm_669/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_223/lstm_669/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_223/lstm_669/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_223/lstm_669/strided_sliceStridedSlice&sequential_223/lstm_669/Shape:output:04sequential_223/lstm_669/strided_slice/stack:output:06sequential_223/lstm_669/strided_slice/stack_1:output:06sequential_223/lstm_669/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_223/lstm_669/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_223/lstm_669/zeros/packedPack.sequential_223/lstm_669/strided_slice:output:0/sequential_223/lstm_669/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_223/lstm_669/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_669/zerosFill-sequential_223/lstm_669/zeros/packed:output:0,sequential_223/lstm_669/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_223/lstm_669/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_223/lstm_669/zeros_1/packedPack.sequential_223/lstm_669/strided_slice:output:01sequential_223/lstm_669/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_223/lstm_669/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_669/zeros_1Fill/sequential_223/lstm_669/zeros_1/packed:output:0.sequential_223/lstm_669/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_223/lstm_669/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_223/lstm_669/transpose	Transposelstm_669_input/sequential_223/lstm_669/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_223/lstm_669/Shape_1Shape%sequential_223/lstm_669/transpose:y:0*
T0*
_output_shapes
:w
-sequential_223/lstm_669/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_669/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_669/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_669/strided_slice_1StridedSlice(sequential_223/lstm_669/Shape_1:output:06sequential_223/lstm_669/strided_slice_1/stack:output:08sequential_223/lstm_669/strided_slice_1/stack_1:output:08sequential_223/lstm_669/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_223/lstm_669/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_223/lstm_669/TensorArrayV2TensorListReserve<sequential_223/lstm_669/TensorArrayV2/element_shape:output:00sequential_223/lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_223/lstm_669/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_223/lstm_669/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_223/lstm_669/transpose:y:0Vsequential_223/lstm_669/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_223/lstm_669/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_669/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_669/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_669/strided_slice_2StridedSlice%sequential_223/lstm_669/transpose:y:06sequential_223/lstm_669/strided_slice_2/stack:output:08sequential_223/lstm_669/strided_slice_2/stack_1:output:08sequential_223/lstm_669/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOpReadVariableOpDsequential_223_lstm_669_lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_223/lstm_669/lstm_cell_624/MatMulMatMul0sequential_223/lstm_669/strided_slice_2:output:0Csequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOpFsequential_223_lstm_669_lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_223/lstm_669/lstm_cell_624/MatMul_1MatMul&sequential_223/lstm_669/zeros:output:0Esequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_223/lstm_669/lstm_cell_624/addAddV26sequential_223/lstm_669/lstm_cell_624/MatMul:product:08sequential_223/lstm_669/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOpEsequential_223_lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_223/lstm_669/lstm_cell_624/BiasAddBiasAdd-sequential_223/lstm_669/lstm_cell_624/add:z:0Dsequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_223/lstm_669/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_223/lstm_669/lstm_cell_624/splitSplit>sequential_223/lstm_669/lstm_cell_624/split/split_dim:output:06sequential_223/lstm_669/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_223/lstm_669/lstm_cell_624/SigmoidSigmoid4sequential_223/lstm_669/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_223/lstm_669/lstm_cell_624/Sigmoid_1Sigmoid4sequential_223/lstm_669/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_223/lstm_669/lstm_cell_624/mulMul3sequential_223/lstm_669/lstm_cell_624/Sigmoid_1:y:0(sequential_223/lstm_669/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_223/lstm_669/lstm_cell_624/ReluRelu4sequential_223/lstm_669/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_223/lstm_669/lstm_cell_624/mul_1Mul1sequential_223/lstm_669/lstm_cell_624/Sigmoid:y:08sequential_223/lstm_669/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_223/lstm_669/lstm_cell_624/add_1AddV2-sequential_223/lstm_669/lstm_cell_624/mul:z:0/sequential_223/lstm_669/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_223/lstm_669/lstm_cell_624/Sigmoid_2Sigmoid4sequential_223/lstm_669/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_223/lstm_669/lstm_cell_624/Relu_1Relu/sequential_223/lstm_669/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_223/lstm_669/lstm_cell_624/mul_2Mul3sequential_223/lstm_669/lstm_cell_624/Sigmoid_2:y:0:sequential_223/lstm_669/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_223/lstm_669/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_223/lstm_669/TensorArrayV2_1TensorListReserve>sequential_223/lstm_669/TensorArrayV2_1/element_shape:output:00sequential_223/lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_223/lstm_669/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_223/lstm_669/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_223/lstm_669/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_223/lstm_669/whileWhile3sequential_223/lstm_669/while/loop_counter:output:09sequential_223/lstm_669/while/maximum_iterations:output:0%sequential_223/lstm_669/time:output:00sequential_223/lstm_669/TensorArrayV2_1:handle:0&sequential_223/lstm_669/zeros:output:0(sequential_223/lstm_669/zeros_1:output:00sequential_223/lstm_669/strided_slice_1:output:0Osequential_223/lstm_669/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_223_lstm_669_lstm_cell_624_matmul_readvariableop_resourceFsequential_223_lstm_669_lstm_cell_624_matmul_1_readvariableop_resourceEsequential_223_lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
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
*sequential_223_lstm_669_while_body_3788053*6
cond.R,
*sequential_223_lstm_669_while_cond_3788052*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_223/lstm_669/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_223/lstm_669/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_223/lstm_669/while:output:3Qsequential_223/lstm_669/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_223/lstm_669/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_223/lstm_669/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_669/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_669/strided_slice_3StridedSliceCsequential_223/lstm_669/TensorArrayV2Stack/TensorListStack:tensor:06sequential_223/lstm_669/strided_slice_3/stack:output:08sequential_223/lstm_669/strided_slice_3/stack_1:output:08sequential_223/lstm_669/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_223/lstm_669/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_223/lstm_669/transpose_1	TransposeCsequential_223/lstm_669/TensorArrayV2Stack/TensorListStack:tensor:01sequential_223/lstm_669/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_223/lstm_669/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_223/lstm_670/ShapeShape'sequential_223/lstm_669/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_223/lstm_670/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_223/lstm_670/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_223/lstm_670/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_223/lstm_670/strided_sliceStridedSlice&sequential_223/lstm_670/Shape:output:04sequential_223/lstm_670/strided_slice/stack:output:06sequential_223/lstm_670/strided_slice/stack_1:output:06sequential_223/lstm_670/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_223/lstm_670/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_223/lstm_670/zeros/packedPack.sequential_223/lstm_670/strided_slice:output:0/sequential_223/lstm_670/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_223/lstm_670/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_670/zerosFill-sequential_223/lstm_670/zeros/packed:output:0,sequential_223/lstm_670/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_223/lstm_670/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_223/lstm_670/zeros_1/packedPack.sequential_223/lstm_670/strided_slice:output:01sequential_223/lstm_670/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_223/lstm_670/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_670/zeros_1Fill/sequential_223/lstm_670/zeros_1/packed:output:0.sequential_223/lstm_670/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_223/lstm_670/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_223/lstm_670/transpose	Transpose'sequential_223/lstm_669/transpose_1:y:0/sequential_223/lstm_670/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_223/lstm_670/Shape_1Shape%sequential_223/lstm_670/transpose:y:0*
T0*
_output_shapes
:w
-sequential_223/lstm_670/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_670/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_670/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_670/strided_slice_1StridedSlice(sequential_223/lstm_670/Shape_1:output:06sequential_223/lstm_670/strided_slice_1/stack:output:08sequential_223/lstm_670/strided_slice_1/stack_1:output:08sequential_223/lstm_670/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_223/lstm_670/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_223/lstm_670/TensorArrayV2TensorListReserve<sequential_223/lstm_670/TensorArrayV2/element_shape:output:00sequential_223/lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_223/lstm_670/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_223/lstm_670/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_223/lstm_670/transpose:y:0Vsequential_223/lstm_670/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_223/lstm_670/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_670/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_670/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_670/strided_slice_2StridedSlice%sequential_223/lstm_670/transpose:y:06sequential_223/lstm_670/strided_slice_2/stack:output:08sequential_223/lstm_670/strided_slice_2/stack_1:output:08sequential_223/lstm_670/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOpReadVariableOpDsequential_223_lstm_670_lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_223/lstm_670/lstm_cell_625/MatMulMatMul0sequential_223/lstm_670/strided_slice_2:output:0Csequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOpFsequential_223_lstm_670_lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_223/lstm_670/lstm_cell_625/MatMul_1MatMul&sequential_223/lstm_670/zeros:output:0Esequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_223/lstm_670/lstm_cell_625/addAddV26sequential_223/lstm_670/lstm_cell_625/MatMul:product:08sequential_223/lstm_670/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOpEsequential_223_lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_223/lstm_670/lstm_cell_625/BiasAddBiasAdd-sequential_223/lstm_670/lstm_cell_625/add:z:0Dsequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_223/lstm_670/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_223/lstm_670/lstm_cell_625/splitSplit>sequential_223/lstm_670/lstm_cell_625/split/split_dim:output:06sequential_223/lstm_670/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_223/lstm_670/lstm_cell_625/SigmoidSigmoid4sequential_223/lstm_670/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_223/lstm_670/lstm_cell_625/Sigmoid_1Sigmoid4sequential_223/lstm_670/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_223/lstm_670/lstm_cell_625/mulMul3sequential_223/lstm_670/lstm_cell_625/Sigmoid_1:y:0(sequential_223/lstm_670/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_223/lstm_670/lstm_cell_625/ReluRelu4sequential_223/lstm_670/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_223/lstm_670/lstm_cell_625/mul_1Mul1sequential_223/lstm_670/lstm_cell_625/Sigmoid:y:08sequential_223/lstm_670/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_223/lstm_670/lstm_cell_625/add_1AddV2-sequential_223/lstm_670/lstm_cell_625/mul:z:0/sequential_223/lstm_670/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_223/lstm_670/lstm_cell_625/Sigmoid_2Sigmoid4sequential_223/lstm_670/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_223/lstm_670/lstm_cell_625/Relu_1Relu/sequential_223/lstm_670/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_223/lstm_670/lstm_cell_625/mul_2Mul3sequential_223/lstm_670/lstm_cell_625/Sigmoid_2:y:0:sequential_223/lstm_670/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_223/lstm_670/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_223/lstm_670/TensorArrayV2_1TensorListReserve>sequential_223/lstm_670/TensorArrayV2_1/element_shape:output:00sequential_223/lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_223/lstm_670/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_223/lstm_670/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_223/lstm_670/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_223/lstm_670/whileWhile3sequential_223/lstm_670/while/loop_counter:output:09sequential_223/lstm_670/while/maximum_iterations:output:0%sequential_223/lstm_670/time:output:00sequential_223/lstm_670/TensorArrayV2_1:handle:0&sequential_223/lstm_670/zeros:output:0(sequential_223/lstm_670/zeros_1:output:00sequential_223/lstm_670/strided_slice_1:output:0Osequential_223/lstm_670/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_223_lstm_670_lstm_cell_625_matmul_readvariableop_resourceFsequential_223_lstm_670_lstm_cell_625_matmul_1_readvariableop_resourceEsequential_223_lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
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
*sequential_223_lstm_670_while_body_3788192*6
cond.R,
*sequential_223_lstm_670_while_cond_3788191*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_223/lstm_670/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_223/lstm_670/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_223/lstm_670/while:output:3Qsequential_223/lstm_670/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_223/lstm_670/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_223/lstm_670/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_670/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_670/strided_slice_3StridedSliceCsequential_223/lstm_670/TensorArrayV2Stack/TensorListStack:tensor:06sequential_223/lstm_670/strided_slice_3/stack:output:08sequential_223/lstm_670/strided_slice_3/stack_1:output:08sequential_223/lstm_670/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_223/lstm_670/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_223/lstm_670/transpose_1	TransposeCsequential_223/lstm_670/TensorArrayV2Stack/TensorListStack:tensor:01sequential_223/lstm_670/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_223/lstm_670/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_223/lstm_671/ShapeShape'sequential_223/lstm_670/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_223/lstm_671/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_223/lstm_671/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_223/lstm_671/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_223/lstm_671/strided_sliceStridedSlice&sequential_223/lstm_671/Shape:output:04sequential_223/lstm_671/strided_slice/stack:output:06sequential_223/lstm_671/strided_slice/stack_1:output:06sequential_223/lstm_671/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_223/lstm_671/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_223/lstm_671/zeros/packedPack.sequential_223/lstm_671/strided_slice:output:0/sequential_223/lstm_671/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_223/lstm_671/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_671/zerosFill-sequential_223/lstm_671/zeros/packed:output:0,sequential_223/lstm_671/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_223/lstm_671/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_223/lstm_671/zeros_1/packedPack.sequential_223/lstm_671/strided_slice:output:01sequential_223/lstm_671/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_223/lstm_671/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_223/lstm_671/zeros_1Fill/sequential_223/lstm_671/zeros_1/packed:output:0.sequential_223/lstm_671/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_223/lstm_671/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_223/lstm_671/transpose	Transpose'sequential_223/lstm_670/transpose_1:y:0/sequential_223/lstm_671/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_223/lstm_671/Shape_1Shape%sequential_223/lstm_671/transpose:y:0*
T0*
_output_shapes
:w
-sequential_223/lstm_671/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_671/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_671/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_671/strided_slice_1StridedSlice(sequential_223/lstm_671/Shape_1:output:06sequential_223/lstm_671/strided_slice_1/stack:output:08sequential_223/lstm_671/strided_slice_1/stack_1:output:08sequential_223/lstm_671/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_223/lstm_671/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_223/lstm_671/TensorArrayV2TensorListReserve<sequential_223/lstm_671/TensorArrayV2/element_shape:output:00sequential_223/lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_223/lstm_671/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_223/lstm_671/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_223/lstm_671/transpose:y:0Vsequential_223/lstm_671/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_223/lstm_671/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_671/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_223/lstm_671/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_671/strided_slice_2StridedSlice%sequential_223/lstm_671/transpose:y:06sequential_223/lstm_671/strided_slice_2/stack:output:08sequential_223/lstm_671/strided_slice_2/stack_1:output:08sequential_223/lstm_671/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOpReadVariableOpDsequential_223_lstm_671_lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_223/lstm_671/lstm_cell_626/MatMulMatMul0sequential_223/lstm_671/strided_slice_2:output:0Csequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOpFsequential_223_lstm_671_lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_223/lstm_671/lstm_cell_626/MatMul_1MatMul&sequential_223/lstm_671/zeros:output:0Esequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_223/lstm_671/lstm_cell_626/addAddV26sequential_223/lstm_671/lstm_cell_626/MatMul:product:08sequential_223/lstm_671/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOpEsequential_223_lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_223/lstm_671/lstm_cell_626/BiasAddBiasAdd-sequential_223/lstm_671/lstm_cell_626/add:z:0Dsequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_223/lstm_671/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_223/lstm_671/lstm_cell_626/splitSplit>sequential_223/lstm_671/lstm_cell_626/split/split_dim:output:06sequential_223/lstm_671/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_223/lstm_671/lstm_cell_626/SigmoidSigmoid4sequential_223/lstm_671/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_223/lstm_671/lstm_cell_626/Sigmoid_1Sigmoid4sequential_223/lstm_671/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_223/lstm_671/lstm_cell_626/mulMul3sequential_223/lstm_671/lstm_cell_626/Sigmoid_1:y:0(sequential_223/lstm_671/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_223/lstm_671/lstm_cell_626/ReluRelu4sequential_223/lstm_671/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_223/lstm_671/lstm_cell_626/mul_1Mul1sequential_223/lstm_671/lstm_cell_626/Sigmoid:y:08sequential_223/lstm_671/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_223/lstm_671/lstm_cell_626/add_1AddV2-sequential_223/lstm_671/lstm_cell_626/mul:z:0/sequential_223/lstm_671/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_223/lstm_671/lstm_cell_626/Sigmoid_2Sigmoid4sequential_223/lstm_671/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_223/lstm_671/lstm_cell_626/Relu_1Relu/sequential_223/lstm_671/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_223/lstm_671/lstm_cell_626/mul_2Mul3sequential_223/lstm_671/lstm_cell_626/Sigmoid_2:y:0:sequential_223/lstm_671/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_223/lstm_671/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_223/lstm_671/TensorArrayV2_1TensorListReserve>sequential_223/lstm_671/TensorArrayV2_1/element_shape:output:00sequential_223/lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_223/lstm_671/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_223/lstm_671/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_223/lstm_671/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_223/lstm_671/whileWhile3sequential_223/lstm_671/while/loop_counter:output:09sequential_223/lstm_671/while/maximum_iterations:output:0%sequential_223/lstm_671/time:output:00sequential_223/lstm_671/TensorArrayV2_1:handle:0&sequential_223/lstm_671/zeros:output:0(sequential_223/lstm_671/zeros_1:output:00sequential_223/lstm_671/strided_slice_1:output:0Osequential_223/lstm_671/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_223_lstm_671_lstm_cell_626_matmul_readvariableop_resourceFsequential_223_lstm_671_lstm_cell_626_matmul_1_readvariableop_resourceEsequential_223_lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
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
*sequential_223_lstm_671_while_body_3788331*6
cond.R,
*sequential_223_lstm_671_while_cond_3788330*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_223/lstm_671/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_223/lstm_671/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_223/lstm_671/while:output:3Qsequential_223/lstm_671/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_223/lstm_671/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_223/lstm_671/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_223/lstm_671/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_223/lstm_671/strided_slice_3StridedSliceCsequential_223/lstm_671/TensorArrayV2Stack/TensorListStack:tensor:06sequential_223/lstm_671/strided_slice_3/stack:output:08sequential_223/lstm_671/strided_slice_3/stack_1:output:08sequential_223/lstm_671/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_223/lstm_671/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_223/lstm_671/transpose_1	TransposeCsequential_223/lstm_671/TensorArrayV2Stack/TensorListStack:tensor:01sequential_223/lstm_671/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_223/lstm_671/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_223/dense_223/MatMul/ReadVariableOpReadVariableOp7sequential_223_dense_223_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_223/dense_223/MatMulMatMul0sequential_223/lstm_671/strided_slice_3:output:06sequential_223/dense_223/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_223/dense_223/BiasAdd/ReadVariableOpReadVariableOp8sequential_223_dense_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_223/dense_223/BiasAddBiasAdd)sequential_223/dense_223/MatMul:product:07sequential_223/dense_223/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_223/dense_223/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_223/dense_223/BiasAdd/ReadVariableOp/^sequential_223/dense_223/MatMul/ReadVariableOp=^sequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp<^sequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOp>^sequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp^sequential_223/lstm_669/while=^sequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp<^sequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOp>^sequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp^sequential_223/lstm_670/while=^sequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp<^sequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOp>^sequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp^sequential_223/lstm_671/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_223/dense_223/BiasAdd/ReadVariableOp/sequential_223/dense_223/BiasAdd/ReadVariableOp2`
.sequential_223/dense_223/MatMul/ReadVariableOp.sequential_223/dense_223/MatMul/ReadVariableOp2|
<sequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp<sequential_223/lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp2z
;sequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOp;sequential_223/lstm_669/lstm_cell_624/MatMul/ReadVariableOp2~
=sequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp=sequential_223/lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp2>
sequential_223/lstm_669/whilesequential_223/lstm_669/while2|
<sequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp<sequential_223/lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp2z
;sequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOp;sequential_223/lstm_670/lstm_cell_625/MatMul/ReadVariableOp2~
=sequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp=sequential_223/lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp2>
sequential_223/lstm_670/whilesequential_223/lstm_670/while2|
<sequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp<sequential_223/lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp2z
;sequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOp;sequential_223/lstm_671/lstm_cell_626/MatMul/ReadVariableOp2~
=sequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp=sequential_223/lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp2>
sequential_223/lstm_671/whilesequential_223/lstm_671/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_669_input
?
?
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793620

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
while_body_3789393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_626_3789417_0:2(/
while_lstm_cell_626_3789419_0:
(+
while_lstm_cell_626_3789421_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_626_3789417:2(-
while_lstm_cell_626_3789419:
()
while_lstm_cell_626_3789421:(??+while/lstm_cell_626/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_626/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_626_3789417_0while_lstm_cell_626_3789419_0while_lstm_cell_626_3789421_0*
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789334?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_626/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_626/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_626/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_626/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_626_3789417while_lstm_cell_626_3789417_0"<
while_lstm_cell_626_3789419while_lstm_cell_626_3789419_0"<
while_lstm_cell_626_3789421while_lstm_cell_626_3789421_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_626/StatefulPartitionedCall+while/lstm_cell_626/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792678

inputs?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3792594*
condR
while_cond_3792593*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3789835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789835___redundant_placeholder05
1while_while_cond_3789835___redundant_placeholder15
1while_while_cond_3789835___redundant_placeholder25
1while_while_cond_3789835___redundant_placeholder3
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792821

inputs?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3792737*
condR
while_cond_3792736*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3792308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3792736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792736___redundant_placeholder05
1while_while_cond_3792736___redundant_placeholder15
1while_while_cond_3792736___redundant_placeholder25
1while_while_cond_3792736___redundant_placeholder3
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788838

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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789188

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
0__inference_sequential_223_layer_call_fn_3790735

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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790534o
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
*__inference_lstm_670_layer_call_fn_3792238

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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789770s
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
while_body_3792121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793522

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
*__inference_lstm_669_layer_call_fn_3791633

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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3790466s
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
while_body_3793067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3794023
file_prefix3
!assignvariableop_dense_223_kernel:
/
!assignvariableop_1_dense_223_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_669_lstm_cell_669_kernel:	?M
:assignvariableop_8_lstm_669_lstm_cell_669_recurrent_kernel:	d?=
.assignvariableop_9_lstm_669_lstm_cell_669_bias:	?D
1assignvariableop_10_lstm_670_lstm_cell_670_kernel:	d?N
;assignvariableop_11_lstm_670_lstm_cell_670_recurrent_kernel:	2?>
/assignvariableop_12_lstm_670_lstm_cell_670_bias:	?C
1assignvariableop_13_lstm_671_lstm_cell_671_kernel:2(M
;assignvariableop_14_lstm_671_lstm_cell_671_recurrent_kernel:
(=
/assignvariableop_15_lstm_671_lstm_cell_671_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_223_kernel_m:
7
)assignvariableop_19_adam_dense_223_bias_m:K
8assignvariableop_20_adam_lstm_669_lstm_cell_669_kernel_m:	?U
Bassignvariableop_21_adam_lstm_669_lstm_cell_669_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_669_lstm_cell_669_bias_m:	?K
8assignvariableop_23_adam_lstm_670_lstm_cell_670_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_670_lstm_cell_670_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_670_lstm_cell_670_bias_m:	?J
8assignvariableop_26_adam_lstm_671_lstm_cell_671_kernel_m:2(T
Bassignvariableop_27_adam_lstm_671_lstm_cell_671_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_671_lstm_cell_671_bias_m:(=
+assignvariableop_29_adam_dense_223_kernel_v:
7
)assignvariableop_30_adam_dense_223_bias_v:K
8assignvariableop_31_adam_lstm_669_lstm_cell_669_kernel_v:	?U
Bassignvariableop_32_adam_lstm_669_lstm_cell_669_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_669_lstm_cell_669_bias_v:	?K
8assignvariableop_34_adam_lstm_670_lstm_cell_670_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_670_lstm_cell_670_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_670_lstm_cell_670_bias_v:	?J
8assignvariableop_37_adam_lstm_671_lstm_cell_671_kernel_v:2(T
Bassignvariableop_38_adam_lstm_671_lstm_cell_671_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_671_lstm_cell_671_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_223_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_223_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_669_lstm_cell_669_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_669_lstm_cell_669_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_669_lstm_cell_669_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_670_lstm_cell_670_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_670_lstm_cell_670_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_670_lstm_cell_670_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_671_lstm_cell_671_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_671_lstm_cell_671_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_671_lstm_cell_671_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_223_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_223_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_669_lstm_cell_669_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_669_lstm_cell_669_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_669_lstm_cell_669_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_670_lstm_cell_670_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_670_lstm_cell_670_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_670_lstm_cell_670_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_671_lstm_cell_671_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_671_lstm_cell_671_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_671_lstm_cell_671_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_223_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_223_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_669_lstm_cell_669_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_669_lstm_cell_669_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_669_lstm_cell_669_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_670_lstm_cell_670_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_670_lstm_cell_670_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_670_lstm_cell_670_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_671_lstm_cell_671_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_671_lstm_cell_671_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_671_lstm_cell_671_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
while_body_3789536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_624_layer_call_fn_3793490

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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788634o
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789271

inputs'
lstm_cell_626_3789189:2('
lstm_cell_626_3789191:
(#
lstm_cell_626_3789193:(
identity??%lstm_cell_626/StatefulPartitionedCall?while;
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
%lstm_cell_626/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_626_3789189lstm_cell_626_3789191lstm_cell_626_3789193*
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789188n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_626_3789189lstm_cell_626_3789191lstm_cell_626_3789193*
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
while_body_3789202*
condR
while_cond_3789201*K
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
NoOpNoOp&^lstm_cell_626/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_626/StatefulPartitionedCall%lstm_cell_626/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792205

inputs?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3792121*
condR
while_cond_3792120*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3792594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_671_while_cond_3791498.
*lstm_671_while_lstm_671_while_loop_counter4
0lstm_671_while_lstm_671_while_maximum_iterations
lstm_671_while_placeholder 
lstm_671_while_placeholder_1 
lstm_671_while_placeholder_2 
lstm_671_while_placeholder_30
,lstm_671_while_less_lstm_671_strided_slice_1G
Clstm_671_while_lstm_671_while_cond_3791498___redundant_placeholder0G
Clstm_671_while_lstm_671_while_cond_3791498___redundant_placeholder1G
Clstm_671_while_lstm_671_while_cond_3791498___redundant_placeholder2G
Clstm_671_while_lstm_671_while_cond_3791498___redundant_placeholder3
lstm_671_while_identity
?
lstm_671/while/LessLesslstm_671_while_placeholder,lstm_671_while_less_lstm_671_strided_slice_1*
T0*
_output_shapes
: ]
lstm_671/while/IdentityIdentitylstm_671/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_671_while_identity lstm_671/while/Identity:output:0*(
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
while_cond_3788501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3788501___redundant_placeholder05
1while_while_cond_3788501___redundant_placeholder15
1while_while_cond_3788501___redundant_placeholder25
1while_while_cond_3788501___redundant_placeholder3
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791162

inputsH
5lstm_669_lstm_cell_624_matmul_readvariableop_resource:	?J
7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource:	d?E
6lstm_669_lstm_cell_624_biasadd_readvariableop_resource:	?H
5lstm_670_lstm_cell_625_matmul_readvariableop_resource:	d?J
7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource:	2?E
6lstm_670_lstm_cell_625_biasadd_readvariableop_resource:	?G
5lstm_671_lstm_cell_626_matmul_readvariableop_resource:2(I
7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource:
(D
6lstm_671_lstm_cell_626_biasadd_readvariableop_resource:(:
(dense_223_matmul_readvariableop_resource:
7
)dense_223_biasadd_readvariableop_resource:
identity?? dense_223/BiasAdd/ReadVariableOp?dense_223/MatMul/ReadVariableOp?-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp?,lstm_669/lstm_cell_624/MatMul/ReadVariableOp?.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp?lstm_669/while?-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp?,lstm_670/lstm_cell_625/MatMul/ReadVariableOp?.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp?lstm_670/while?-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp?,lstm_671/lstm_cell_626/MatMul/ReadVariableOp?.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp?lstm_671/whileD
lstm_669/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_669/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_669/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_669/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_sliceStridedSlicelstm_669/Shape:output:0%lstm_669/strided_slice/stack:output:0'lstm_669/strided_slice/stack_1:output:0'lstm_669/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_669/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_669/zeros/packedPacklstm_669/strided_slice:output:0 lstm_669/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_669/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_669/zerosFilllstm_669/zeros/packed:output:0lstm_669/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_669/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_669/zeros_1/packedPacklstm_669/strided_slice:output:0"lstm_669/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_669/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_669/zeros_1Fill lstm_669/zeros_1/packed:output:0lstm_669/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_669/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_669/transpose	Transposeinputs lstm_669/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_669/Shape_1Shapelstm_669/transpose:y:0*
T0*
_output_shapes
:h
lstm_669/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_669/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_1StridedSlicelstm_669/Shape_1:output:0'lstm_669/strided_slice_1/stack:output:0)lstm_669/strided_slice_1/stack_1:output:0)lstm_669/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_669/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_669/TensorArrayV2TensorListReserve-lstm_669/TensorArrayV2/element_shape:output:0!lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_669/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_669/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_669/transpose:y:0Glstm_669/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_669/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_669/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_2StridedSlicelstm_669/transpose:y:0'lstm_669/strided_slice_2/stack:output:0)lstm_669/strided_slice_2/stack_1:output:0)lstm_669/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_669/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp5lstm_669_lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_669/lstm_cell_624/MatMulMatMul!lstm_669/strided_slice_2:output:04lstm_669/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_669/lstm_cell_624/MatMul_1MatMullstm_669/zeros:output:06lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_669/lstm_cell_624/addAddV2'lstm_669/lstm_cell_624/MatMul:product:0)lstm_669/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp6lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_669/lstm_cell_624/BiasAddBiasAddlstm_669/lstm_cell_624/add:z:05lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_669/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_669/lstm_cell_624/splitSplit/lstm_669/lstm_cell_624/split/split_dim:output:0'lstm_669/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_669/lstm_cell_624/SigmoidSigmoid%lstm_669/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_669/lstm_cell_624/Sigmoid_1Sigmoid%lstm_669/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mulMul$lstm_669/lstm_cell_624/Sigmoid_1:y:0lstm_669/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_669/lstm_cell_624/ReluRelu%lstm_669/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mul_1Mul"lstm_669/lstm_cell_624/Sigmoid:y:0)lstm_669/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/add_1AddV2lstm_669/lstm_cell_624/mul:z:0 lstm_669/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_669/lstm_cell_624/Sigmoid_2Sigmoid%lstm_669/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_669/lstm_cell_624/Relu_1Relu lstm_669/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mul_2Mul$lstm_669/lstm_cell_624/Sigmoid_2:y:0+lstm_669/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_669/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_669/TensorArrayV2_1TensorListReserve/lstm_669/TensorArrayV2_1/element_shape:output:0!lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_669/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_669/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_669/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_669/whileWhile$lstm_669/while/loop_counter:output:0*lstm_669/while/maximum_iterations:output:0lstm_669/time:output:0!lstm_669/TensorArrayV2_1:handle:0lstm_669/zeros:output:0lstm_669/zeros_1:output:0!lstm_669/strided_slice_1:output:0@lstm_669/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_669_lstm_cell_624_matmul_readvariableop_resource7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource6lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
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
lstm_669_while_body_3790794*'
condR
lstm_669_while_cond_3790793*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_669/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_669/TensorArrayV2Stack/TensorListStackTensorListStacklstm_669/while:output:3Blstm_669/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_669/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_669/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_3StridedSlice4lstm_669/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_669/strided_slice_3/stack:output:0)lstm_669/strided_slice_3/stack_1:output:0)lstm_669/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_669/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_669/transpose_1	Transpose4lstm_669/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_669/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_669/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_670/ShapeShapelstm_669/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_670/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_670/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_670/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_sliceStridedSlicelstm_670/Shape:output:0%lstm_670/strided_slice/stack:output:0'lstm_670/strided_slice/stack_1:output:0'lstm_670/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_670/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_670/zeros/packedPacklstm_670/strided_slice:output:0 lstm_670/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_670/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_670/zerosFilllstm_670/zeros/packed:output:0lstm_670/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_670/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_670/zeros_1/packedPacklstm_670/strided_slice:output:0"lstm_670/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_670/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_670/zeros_1Fill lstm_670/zeros_1/packed:output:0lstm_670/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_670/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_670/transpose	Transposelstm_669/transpose_1:y:0 lstm_670/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_670/Shape_1Shapelstm_670/transpose:y:0*
T0*
_output_shapes
:h
lstm_670/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_670/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_1StridedSlicelstm_670/Shape_1:output:0'lstm_670/strided_slice_1/stack:output:0)lstm_670/strided_slice_1/stack_1:output:0)lstm_670/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_670/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_670/TensorArrayV2TensorListReserve-lstm_670/TensorArrayV2/element_shape:output:0!lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_670/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_670/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_670/transpose:y:0Glstm_670/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_670/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_670/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_2StridedSlicelstm_670/transpose:y:0'lstm_670/strided_slice_2/stack:output:0)lstm_670/strided_slice_2/stack_1:output:0)lstm_670/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_670/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp5lstm_670_lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_670/lstm_cell_625/MatMulMatMul!lstm_670/strided_slice_2:output:04lstm_670/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_670/lstm_cell_625/MatMul_1MatMullstm_670/zeros:output:06lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_670/lstm_cell_625/addAddV2'lstm_670/lstm_cell_625/MatMul:product:0)lstm_670/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp6lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_670/lstm_cell_625/BiasAddBiasAddlstm_670/lstm_cell_625/add:z:05lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_670/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_670/lstm_cell_625/splitSplit/lstm_670/lstm_cell_625/split/split_dim:output:0'lstm_670/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_670/lstm_cell_625/SigmoidSigmoid%lstm_670/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_670/lstm_cell_625/Sigmoid_1Sigmoid%lstm_670/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mulMul$lstm_670/lstm_cell_625/Sigmoid_1:y:0lstm_670/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_670/lstm_cell_625/ReluRelu%lstm_670/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mul_1Mul"lstm_670/lstm_cell_625/Sigmoid:y:0)lstm_670/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/add_1AddV2lstm_670/lstm_cell_625/mul:z:0 lstm_670/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_670/lstm_cell_625/Sigmoid_2Sigmoid%lstm_670/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_670/lstm_cell_625/Relu_1Relu lstm_670/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mul_2Mul$lstm_670/lstm_cell_625/Sigmoid_2:y:0+lstm_670/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_670/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_670/TensorArrayV2_1TensorListReserve/lstm_670/TensorArrayV2_1/element_shape:output:0!lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_670/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_670/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_670/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_670/whileWhile$lstm_670/while/loop_counter:output:0*lstm_670/while/maximum_iterations:output:0lstm_670/time:output:0!lstm_670/TensorArrayV2_1:handle:0lstm_670/zeros:output:0lstm_670/zeros_1:output:0!lstm_670/strided_slice_1:output:0@lstm_670/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_670_lstm_cell_625_matmul_readvariableop_resource7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource6lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
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
lstm_670_while_body_3790933*'
condR
lstm_670_while_cond_3790932*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_670/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_670/TensorArrayV2Stack/TensorListStackTensorListStacklstm_670/while:output:3Blstm_670/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_670/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_670/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_3StridedSlice4lstm_670/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_670/strided_slice_3/stack:output:0)lstm_670/strided_slice_3/stack_1:output:0)lstm_670/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_670/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_670/transpose_1	Transpose4lstm_670/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_670/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_670/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_671/ShapeShapelstm_670/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_671/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_671/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_671/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_sliceStridedSlicelstm_671/Shape:output:0%lstm_671/strided_slice/stack:output:0'lstm_671/strided_slice/stack_1:output:0'lstm_671/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_671/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_671/zeros/packedPacklstm_671/strided_slice:output:0 lstm_671/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_671/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_671/zerosFilllstm_671/zeros/packed:output:0lstm_671/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_671/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_671/zeros_1/packedPacklstm_671/strided_slice:output:0"lstm_671/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_671/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_671/zeros_1Fill lstm_671/zeros_1/packed:output:0lstm_671/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_671/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_671/transpose	Transposelstm_670/transpose_1:y:0 lstm_671/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_671/Shape_1Shapelstm_671/transpose:y:0*
T0*
_output_shapes
:h
lstm_671/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_671/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_1StridedSlicelstm_671/Shape_1:output:0'lstm_671/strided_slice_1/stack:output:0)lstm_671/strided_slice_1/stack_1:output:0)lstm_671/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_671/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_671/TensorArrayV2TensorListReserve-lstm_671/TensorArrayV2/element_shape:output:0!lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_671/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_671/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_671/transpose:y:0Glstm_671/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_671/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_671/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_2StridedSlicelstm_671/transpose:y:0'lstm_671/strided_slice_2/stack:output:0)lstm_671/strided_slice_2/stack_1:output:0)lstm_671/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_671/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp5lstm_671_lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_671/lstm_cell_626/MatMulMatMul!lstm_671/strided_slice_2:output:04lstm_671/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_671/lstm_cell_626/MatMul_1MatMullstm_671/zeros:output:06lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_671/lstm_cell_626/addAddV2'lstm_671/lstm_cell_626/MatMul:product:0)lstm_671/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp6lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_671/lstm_cell_626/BiasAddBiasAddlstm_671/lstm_cell_626/add:z:05lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_671/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_671/lstm_cell_626/splitSplit/lstm_671/lstm_cell_626/split/split_dim:output:0'lstm_671/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_671/lstm_cell_626/SigmoidSigmoid%lstm_671/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_671/lstm_cell_626/Sigmoid_1Sigmoid%lstm_671/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mulMul$lstm_671/lstm_cell_626/Sigmoid_1:y:0lstm_671/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_671/lstm_cell_626/ReluRelu%lstm_671/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mul_1Mul"lstm_671/lstm_cell_626/Sigmoid:y:0)lstm_671/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/add_1AddV2lstm_671/lstm_cell_626/mul:z:0 lstm_671/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_671/lstm_cell_626/Sigmoid_2Sigmoid%lstm_671/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_671/lstm_cell_626/Relu_1Relu lstm_671/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mul_2Mul$lstm_671/lstm_cell_626/Sigmoid_2:y:0+lstm_671/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_671/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_671/TensorArrayV2_1TensorListReserve/lstm_671/TensorArrayV2_1/element_shape:output:0!lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_671/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_671/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_671/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_671/whileWhile$lstm_671/while/loop_counter:output:0*lstm_671/while/maximum_iterations:output:0lstm_671/time:output:0!lstm_671/TensorArrayV2_1:handle:0lstm_671/zeros:output:0lstm_671/zeros_1:output:0!lstm_671/strided_slice_1:output:0@lstm_671/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_671_lstm_cell_626_matmul_readvariableop_resource7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource6lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
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
lstm_671_while_body_3791072*'
condR
lstm_671_while_cond_3791071*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_671/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_671/TensorArrayV2Stack/TensorListStackTensorListStacklstm_671/while:output:3Blstm_671/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_671/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_671/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_3StridedSlice4lstm_671/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_671/strided_slice_3/stack:output:0)lstm_671/strided_slice_3/stack_1:output:0)lstm_671/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_671/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_671/transpose_1	Transpose4lstm_671/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_671/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_671/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_223/MatMul/ReadVariableOpReadVariableOp(dense_223_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_223/MatMulMatMul!lstm_671/strided_slice_3:output:0'dense_223/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_223/BiasAdd/ReadVariableOpReadVariableOp)dense_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_223/BiasAddBiasAdddense_223/MatMul:product:0(dense_223/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_223/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_223/BiasAdd/ReadVariableOp ^dense_223/MatMul/ReadVariableOp.^lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp-^lstm_669/lstm_cell_624/MatMul/ReadVariableOp/^lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp^lstm_669/while.^lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp-^lstm_670/lstm_cell_625/MatMul/ReadVariableOp/^lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp^lstm_670/while.^lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp-^lstm_671/lstm_cell_626/MatMul/ReadVariableOp/^lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp^lstm_671/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_223/BiasAdd/ReadVariableOp dense_223/BiasAdd/ReadVariableOp2B
dense_223/MatMul/ReadVariableOpdense_223/MatMul/ReadVariableOp2^
-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp2\
,lstm_669/lstm_cell_624/MatMul/ReadVariableOp,lstm_669/lstm_cell_624/MatMul/ReadVariableOp2`
.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp2 
lstm_669/whilelstm_669/while2^
-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp2\
,lstm_670/lstm_cell_625/MatMul/ReadVariableOp,lstm_670/lstm_cell_625/MatMul/ReadVariableOp2`
.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp2 
lstm_670/whilelstm_670/while2^
-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp2\
,lstm_671/lstm_cell_626/MatMul/ReadVariableOp,lstm_671/lstm_cell_626/MatMul/ReadVariableOp2`
.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp2 
lstm_671/whilelstm_671/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_626_layer_call_fn_3793686

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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789334o
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
?

?
%__inference_signature_wrapper_3790681
lstm_669_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_669_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3788421o
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
_user_specified_namelstm_669_input
?#
?
while_body_3788852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_625_3788876_0:	d?0
while_lstm_cell_625_3788878_0:	2?,
while_lstm_cell_625_3788880_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_625_3788876:	d?.
while_lstm_cell_625_3788878:	2?*
while_lstm_cell_625_3788880:	???+while/lstm_cell_625/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_625/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_625_3788876_0while_lstm_cell_625_3788878_0while_lstm_cell_625_3788880_0*
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788838?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_625/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_625/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_625/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_625/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_625_3788876while_lstm_cell_625_3788876_0"<
while_lstm_cell_625_3788878while_lstm_cell_625_3788878_0"<
while_lstm_cell_625_3788880while_lstm_cell_625_3788880_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_625/StatefulPartitionedCall+while/lstm_cell_625/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3789836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3791978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3789685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789685___redundant_placeholder05
1while_while_cond_3789685___redundant_placeholder15
1while_while_cond_3789685___redundant_placeholder25
1while_while_cond_3789685___redundant_placeholder3
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793437

inputs>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3793353*
condR
while_cond_3793352*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_671_layer_call_fn_3792832
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789271o
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
while_body_3793353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_626_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_626_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_626_matmul_readvariableop_resource:2(F
4while_lstm_cell_626_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_626_biasadd_readvariableop_resource:(??*while/lstm_cell_626/BiasAdd/ReadVariableOp?)while/lstm_cell_626/MatMul/ReadVariableOp?+while/lstm_cell_626/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_626/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_626/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_626/addAddV2$while/lstm_cell_626/MatMul:product:0&while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_626/BiasAddBiasAddwhile/lstm_cell_626/add:z:02while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_626/splitSplit,while/lstm_cell_626/split/split_dim:output:0$while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_626/SigmoidSigmoid"while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_1Sigmoid"while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mulMul!while/lstm_cell_626/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_626/ReluRelu"while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_1Mulwhile/lstm_cell_626/Sigmoid:y:0&while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/add_1AddV2while/lstm_cell_626/mul:z:0while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_626/Sigmoid_2Sigmoid"while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_626/Relu_1Reluwhile/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_626/mul_2Mul!while/lstm_cell_626/Sigmoid_2:y:0(while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_626/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_626/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_626/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_626/BiasAdd/ReadVariableOp*^while/lstm_cell_626/MatMul/ReadVariableOp,^while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_626_biasadd_readvariableop_resource5while_lstm_cell_626_biasadd_readvariableop_resource_0"n
4while_lstm_cell_626_matmul_1_readvariableop_resource6while_lstm_cell_626_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_626_matmul_readvariableop_resource4while_lstm_cell_626_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_626/BiasAdd/ReadVariableOp*while/lstm_cell_626/BiasAdd/ReadVariableOp2V
)while/lstm_cell_626/MatMul/ReadVariableOp)while/lstm_cell_626/MatMul/ReadVariableOp2Z
+while/lstm_cell_626/MatMul_1/ReadVariableOp+while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793554

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
?J
?
E__inference_lstm_669_layer_call_and_return_conditional_losses_3790466

inputs?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3790382*
condR
while_cond_3790381*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791776
inputs_0?
,lstm_cell_624_matmul_readvariableop_resource:	?A
.lstm_cell_624_matmul_1_readvariableop_resource:	d?<
-lstm_cell_624_biasadd_readvariableop_resource:	?
identity??$lstm_cell_624/BiasAdd/ReadVariableOp?#lstm_cell_624/MatMul/ReadVariableOp?%lstm_cell_624/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_624/MatMul/ReadVariableOpReadVariableOp,lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_624/MatMulMatMulstrided_slice_2:output:0+lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_624/MatMul_1MatMulzeros:output:0-lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_624/addAddV2lstm_cell_624/MatMul:product:0 lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_624/BiasAddBiasAddlstm_cell_624/add:z:0,lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_624/splitSplit&lstm_cell_624/split/split_dim:output:0lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_624/SigmoidSigmoidlstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_1Sigmoidlstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_624/mulMullstm_cell_624/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_624/ReluRelulstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_1Mullstm_cell_624/Sigmoid:y:0 lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_624/add_1AddV2lstm_cell_624/mul:z:0lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_624/Sigmoid_2Sigmoidlstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_624/Relu_1Relulstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_624/mul_2Mullstm_cell_624/Sigmoid_2:y:0"lstm_cell_624/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_624_matmul_readvariableop_resource.lstm_cell_624_matmul_1_readvariableop_resource-lstm_cell_624_biasadd_readvariableop_resource*
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
while_body_3791692*
condR
while_cond_3791691*K
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
NoOpNoOp%^lstm_cell_624/BiasAdd/ReadVariableOp$^lstm_cell_624/MatMul/ReadVariableOp&^lstm_cell_624/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_624/BiasAdd/ReadVariableOp$lstm_cell_624/BiasAdd/ReadVariableOp2J
#lstm_cell_624/MatMul/ReadVariableOp#lstm_cell_624/MatMul/ReadVariableOp2N
%lstm_cell_624/MatMul_1/ReadVariableOp%lstm_cell_624/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_669_while_body_3791221.
*lstm_669_while_lstm_669_while_loop_counter4
0lstm_669_while_lstm_669_while_maximum_iterations
lstm_669_while_placeholder 
lstm_669_while_placeholder_1 
lstm_669_while_placeholder_2 
lstm_669_while_placeholder_3-
)lstm_669_while_lstm_669_strided_slice_1_0i
elstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0:	?R
?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?M
>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
lstm_669_while_identity
lstm_669_while_identity_1
lstm_669_while_identity_2
lstm_669_while_identity_3
lstm_669_while_identity_4
lstm_669_while_identity_5+
'lstm_669_while_lstm_669_strided_slice_1g
clstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensorN
;lstm_669_while_lstm_cell_624_matmul_readvariableop_resource:	?P
=lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource:	d?K
<lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource:	???3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp?2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp?4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp?
@lstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_669/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0lstm_669_while_placeholderIlstm_669/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_669/while/lstm_cell_624/MatMulMatMul9lstm_669/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_669/while/lstm_cell_624/MatMul_1MatMullstm_669_while_placeholder_2<lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_669/while/lstm_cell_624/addAddV2-lstm_669/while/lstm_cell_624/MatMul:product:0/lstm_669/while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_669/while/lstm_cell_624/BiasAddBiasAdd$lstm_669/while/lstm_cell_624/add:z:0;lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_669/while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_669/while/lstm_cell_624/splitSplit5lstm_669/while/lstm_cell_624/split/split_dim:output:0-lstm_669/while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_669/while/lstm_cell_624/SigmoidSigmoid+lstm_669/while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_669/while/lstm_cell_624/Sigmoid_1Sigmoid+lstm_669/while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_669/while/lstm_cell_624/mulMul*lstm_669/while/lstm_cell_624/Sigmoid_1:y:0lstm_669_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_669/while/lstm_cell_624/ReluRelu+lstm_669/while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/mul_1Mul(lstm_669/while/lstm_cell_624/Sigmoid:y:0/lstm_669/while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/add_1AddV2$lstm_669/while/lstm_cell_624/mul:z:0&lstm_669/while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_669/while/lstm_cell_624/Sigmoid_2Sigmoid+lstm_669/while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_669/while/lstm_cell_624/Relu_1Relu&lstm_669/while/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_669/while/lstm_cell_624/mul_2Mul*lstm_669/while/lstm_cell_624/Sigmoid_2:y:01lstm_669/while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_669/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_669_while_placeholder_1lstm_669_while_placeholder&lstm_669/while/lstm_cell_624/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_669/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_669/while/addAddV2lstm_669_while_placeholderlstm_669/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_669/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_669/while/add_1AddV2*lstm_669_while_lstm_669_while_loop_counterlstm_669/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_669/while/IdentityIdentitylstm_669/while/add_1:z:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_1Identity0lstm_669_while_lstm_669_while_maximum_iterations^lstm_669/while/NoOp*
T0*
_output_shapes
: t
lstm_669/while/Identity_2Identitylstm_669/while/add:z:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_3IdentityClstm_669/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_669/while/NoOp*
T0*
_output_shapes
: ?
lstm_669/while/Identity_4Identity&lstm_669/while/lstm_cell_624/mul_2:z:0^lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_669/while/Identity_5Identity&lstm_669/while/lstm_cell_624/add_1:z:0^lstm_669/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_669/while/NoOpNoOp4^lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp3^lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp5^lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_669_while_identity lstm_669/while/Identity:output:0"?
lstm_669_while_identity_1"lstm_669/while/Identity_1:output:0"?
lstm_669_while_identity_2"lstm_669/while/Identity_2:output:0"?
lstm_669_while_identity_3"lstm_669/while/Identity_3:output:0"?
lstm_669_while_identity_4"lstm_669/while/Identity_4:output:0"?
lstm_669_while_identity_5"lstm_669/while/Identity_5:output:0"T
'lstm_669_while_lstm_669_strided_slice_1)lstm_669_while_lstm_669_strided_slice_1_0"~
<lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource>lstm_669_while_lstm_cell_624_biasadd_readvariableop_resource_0"?
=lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource?lstm_669_while_lstm_cell_624_matmul_1_readvariableop_resource_0"|
;lstm_669_while_lstm_cell_624_matmul_readvariableop_resource=lstm_669_while_lstm_cell_624_matmul_readvariableop_resource_0"?
clstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensorelstm_669_while_tensorarrayv2read_tensorlistgetitem_lstm_669_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp3lstm_669/while/lstm_cell_624/BiasAdd/ReadVariableOp2h
2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp2lstm_669/while/lstm_cell_624/MatMul/ReadVariableOp2l
4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp4lstm_669/while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792535
inputs_0?
,lstm_cell_625_matmul_readvariableop_resource:	d?A
.lstm_cell_625_matmul_1_readvariableop_resource:	2?<
-lstm_cell_625_biasadd_readvariableop_resource:	?
identity??$lstm_cell_625/BiasAdd/ReadVariableOp?#lstm_cell_625/MatMul/ReadVariableOp?%lstm_cell_625/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_625/MatMul/ReadVariableOpReadVariableOp,lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_625/MatMulMatMulstrided_slice_2:output:0+lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_625/MatMul_1MatMulzeros:output:0-lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_625/addAddV2lstm_cell_625/MatMul:product:0 lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_625/BiasAddBiasAddlstm_cell_625/add:z:0,lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_625/splitSplit&lstm_cell_625/split/split_dim:output:0lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_625/SigmoidSigmoidlstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_1Sigmoidlstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_625/mulMullstm_cell_625/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_625/ReluRelulstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_1Mullstm_cell_625/Sigmoid:y:0 lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_625/add_1AddV2lstm_cell_625/mul:z:0lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_625/Sigmoid_2Sigmoidlstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_625/Relu_1Relulstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_625/mul_2Mullstm_cell_625/Sigmoid_2:y:0"lstm_cell_625/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_625_matmul_readvariableop_resource.lstm_cell_625_matmul_1_readvariableop_resource-lstm_cell_625_biasadd_readvariableop_resource*
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
while_body_3792451*
condR
while_cond_3792450*K
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
NoOpNoOp%^lstm_cell_625/BiasAdd/ReadVariableOp$^lstm_cell_625/MatMul/ReadVariableOp&^lstm_cell_625/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_625/BiasAdd/ReadVariableOp$lstm_cell_625/BiasAdd/ReadVariableOp2J
#lstm_cell_625/MatMul/ReadVariableOp#lstm_cell_625/MatMul/ReadVariableOp2N
%lstm_cell_625/MatMul_1/ReadVariableOp%lstm_cell_625/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790646
lstm_669_input#
lstm_669_3790619:	?#
lstm_669_3790621:	d?
lstm_669_3790623:	?#
lstm_670_3790626:	d?#
lstm_670_3790628:	2?
lstm_670_3790630:	?"
lstm_671_3790633:2("
lstm_671_3790635:
(
lstm_671_3790637:(#
dense_223_3790640:

dense_223_3790642:
identity??!dense_223/StatefulPartitionedCall? lstm_669/StatefulPartitionedCall? lstm_670/StatefulPartitionedCall? lstm_671/StatefulPartitionedCall?
 lstm_669/StatefulPartitionedCallStatefulPartitionedCalllstm_669_inputlstm_669_3790619lstm_669_3790621lstm_669_3790623*
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3790466?
 lstm_670/StatefulPartitionedCallStatefulPartitionedCall)lstm_669/StatefulPartitionedCall:output:0lstm_670_3790626lstm_670_3790628lstm_670_3790630*
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3790301?
 lstm_671/StatefulPartitionedCallStatefulPartitionedCall)lstm_670/StatefulPartitionedCall:output:0lstm_671_3790633lstm_671_3790635lstm_671_3790637*
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3790136?
!dense_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_671/StatefulPartitionedCall:output:0dense_223_3790640dense_223_3790642*
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938y
IdentityIdentity*dense_223/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_223/StatefulPartitionedCall!^lstm_669/StatefulPartitionedCall!^lstm_670/StatefulPartitionedCall!^lstm_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_223/StatefulPartitionedCall!dense_223/StatefulPartitionedCall2D
 lstm_669/StatefulPartitionedCall lstm_669/StatefulPartitionedCall2D
 lstm_670/StatefulPartitionedCall lstm_670/StatefulPartitionedCall2D
 lstm_671/StatefulPartitionedCall lstm_671/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_669_input
?	
?
F__inference_dense_223_layer_call_and_return_conditional_losses_3793456

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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793750

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
while_body_3788693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_624_3788717_0:	?0
while_lstm_cell_624_3788719_0:	d?,
while_lstm_cell_624_3788721_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_624_3788717:	?.
while_lstm_cell_624_3788719:	d?*
while_lstm_cell_624_3788721:	???+while/lstm_cell_624/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_624/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_624_3788717_0while_lstm_cell_624_3788719_0while_lstm_cell_624_3788721_0*
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788634?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_624/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_624/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_624/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_624/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_624_3788717while_lstm_cell_624_3788717_0"<
while_lstm_cell_624_3788719while_lstm_cell_624_3788719_0"<
while_lstm_cell_624_3788721while_lstm_cell_624_3788721_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_624/StatefulPartitionedCall+while/lstm_cell_624/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3789043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_625_3789067_0:	d?0
while_lstm_cell_625_3789069_0:	2?,
while_lstm_cell_625_3789071_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_625_3789067:	d?.
while_lstm_cell_625_3789069:	2?*
while_lstm_cell_625_3789071:	???+while/lstm_cell_625/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_625/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_625_3789067_0while_lstm_cell_625_3789069_0while_lstm_cell_625_3789071_0*
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788984?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_625/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_625/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_625/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_625/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_625_3789067while_lstm_cell_625_3789067_0"<
while_lstm_cell_625_3789069while_lstm_cell_625_3789069_0"<
while_lstm_cell_625_3789071while_lstm_cell_625_3789071_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_625/StatefulPartitionedCall+while/lstm_cell_625/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_671_while_body_3791072.
*lstm_671_while_lstm_671_while_loop_counter4
0lstm_671_while_lstm_671_while_maximum_iterations
lstm_671_while_placeholder 
lstm_671_while_placeholder_1 
lstm_671_while_placeholder_2 
lstm_671_while_placeholder_3-
)lstm_671_while_lstm_671_strided_slice_1_0i
elstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0:2(Q
?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0:
(L
>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0:(
lstm_671_while_identity
lstm_671_while_identity_1
lstm_671_while_identity_2
lstm_671_while_identity_3
lstm_671_while_identity_4
lstm_671_while_identity_5+
'lstm_671_while_lstm_671_strided_slice_1g
clstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensorM
;lstm_671_while_lstm_cell_626_matmul_readvariableop_resource:2(O
=lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource:
(J
<lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource:(??3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp?2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp?4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp?
@lstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_671/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0lstm_671_while_placeholderIlstm_671/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_671/while/lstm_cell_626/MatMulMatMul9lstm_671/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_671/while/lstm_cell_626/MatMul_1MatMullstm_671_while_placeholder_2<lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_671/while/lstm_cell_626/addAddV2-lstm_671/while/lstm_cell_626/MatMul:product:0/lstm_671/while/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_671/while/lstm_cell_626/BiasAddBiasAdd$lstm_671/while/lstm_cell_626/add:z:0;lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_671/while/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_671/while/lstm_cell_626/splitSplit5lstm_671/while/lstm_cell_626/split/split_dim:output:0-lstm_671/while/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_671/while/lstm_cell_626/SigmoidSigmoid+lstm_671/while/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_671/while/lstm_cell_626/Sigmoid_1Sigmoid+lstm_671/while/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_671/while/lstm_cell_626/mulMul*lstm_671/while/lstm_cell_626/Sigmoid_1:y:0lstm_671_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_671/while/lstm_cell_626/ReluRelu+lstm_671/while/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/mul_1Mul(lstm_671/while/lstm_cell_626/Sigmoid:y:0/lstm_671/while/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/add_1AddV2$lstm_671/while/lstm_cell_626/mul:z:0&lstm_671/while/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_671/while/lstm_cell_626/Sigmoid_2Sigmoid+lstm_671/while/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_671/while/lstm_cell_626/Relu_1Relu&lstm_671/while/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_671/while/lstm_cell_626/mul_2Mul*lstm_671/while/lstm_cell_626/Sigmoid_2:y:01lstm_671/while/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_671/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_671_while_placeholder_1lstm_671_while_placeholder&lstm_671/while/lstm_cell_626/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_671/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_671/while/addAddV2lstm_671_while_placeholderlstm_671/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_671/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_671/while/add_1AddV2*lstm_671_while_lstm_671_while_loop_counterlstm_671/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_671/while/IdentityIdentitylstm_671/while/add_1:z:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_1Identity0lstm_671_while_lstm_671_while_maximum_iterations^lstm_671/while/NoOp*
T0*
_output_shapes
: t
lstm_671/while/Identity_2Identitylstm_671/while/add:z:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_3IdentityClstm_671/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_671/while/NoOp*
T0*
_output_shapes
: ?
lstm_671/while/Identity_4Identity&lstm_671/while/lstm_cell_626/mul_2:z:0^lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_671/while/Identity_5Identity&lstm_671/while/lstm_cell_626/add_1:z:0^lstm_671/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_671/while/NoOpNoOp4^lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp3^lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp5^lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_671_while_identity lstm_671/while/Identity:output:0"?
lstm_671_while_identity_1"lstm_671/while/Identity_1:output:0"?
lstm_671_while_identity_2"lstm_671/while/Identity_2:output:0"?
lstm_671_while_identity_3"lstm_671/while/Identity_3:output:0"?
lstm_671_while_identity_4"lstm_671/while/Identity_4:output:0"?
lstm_671_while_identity_5"lstm_671/while/Identity_5:output:0"T
'lstm_671_while_lstm_671_strided_slice_1)lstm_671_while_lstm_671_strided_slice_1_0"~
<lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource>lstm_671_while_lstm_cell_626_biasadd_readvariableop_resource_0"?
=lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource?lstm_671_while_lstm_cell_626_matmul_1_readvariableop_resource_0"|
;lstm_671_while_lstm_cell_626_matmul_readvariableop_resource=lstm_671_while_lstm_cell_626_matmul_readvariableop_resource_0"?
clstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensorelstm_671_while_tensorarrayv2read_tensorlistgetitem_lstm_671_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp3lstm_671/while/lstm_cell_626/BiasAdd/ReadVariableOp2h
2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp2lstm_671/while/lstm_cell_626/MatMul/ReadVariableOp2l
4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp4lstm_671/while/lstm_cell_626/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_626_layer_call_fn_3793669

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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3789188o
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
??
?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791589

inputsH
5lstm_669_lstm_cell_624_matmul_readvariableop_resource:	?J
7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource:	d?E
6lstm_669_lstm_cell_624_biasadd_readvariableop_resource:	?H
5lstm_670_lstm_cell_625_matmul_readvariableop_resource:	d?J
7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource:	2?E
6lstm_670_lstm_cell_625_biasadd_readvariableop_resource:	?G
5lstm_671_lstm_cell_626_matmul_readvariableop_resource:2(I
7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource:
(D
6lstm_671_lstm_cell_626_biasadd_readvariableop_resource:(:
(dense_223_matmul_readvariableop_resource:
7
)dense_223_biasadd_readvariableop_resource:
identity?? dense_223/BiasAdd/ReadVariableOp?dense_223/MatMul/ReadVariableOp?-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp?,lstm_669/lstm_cell_624/MatMul/ReadVariableOp?.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp?lstm_669/while?-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp?,lstm_670/lstm_cell_625/MatMul/ReadVariableOp?.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp?lstm_670/while?-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp?,lstm_671/lstm_cell_626/MatMul/ReadVariableOp?.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp?lstm_671/whileD
lstm_669/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_669/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_669/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_669/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_sliceStridedSlicelstm_669/Shape:output:0%lstm_669/strided_slice/stack:output:0'lstm_669/strided_slice/stack_1:output:0'lstm_669/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_669/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_669/zeros/packedPacklstm_669/strided_slice:output:0 lstm_669/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_669/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_669/zerosFilllstm_669/zeros/packed:output:0lstm_669/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_669/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_669/zeros_1/packedPacklstm_669/strided_slice:output:0"lstm_669/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_669/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_669/zeros_1Fill lstm_669/zeros_1/packed:output:0lstm_669/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_669/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_669/transpose	Transposeinputs lstm_669/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_669/Shape_1Shapelstm_669/transpose:y:0*
T0*
_output_shapes
:h
lstm_669/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_669/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_1StridedSlicelstm_669/Shape_1:output:0'lstm_669/strided_slice_1/stack:output:0)lstm_669/strided_slice_1/stack_1:output:0)lstm_669/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_669/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_669/TensorArrayV2TensorListReserve-lstm_669/TensorArrayV2/element_shape:output:0!lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_669/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_669/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_669/transpose:y:0Glstm_669/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_669/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_669/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_2StridedSlicelstm_669/transpose:y:0'lstm_669/strided_slice_2/stack:output:0)lstm_669/strided_slice_2/stack_1:output:0)lstm_669/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_669/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp5lstm_669_lstm_cell_624_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_669/lstm_cell_624/MatMulMatMul!lstm_669/strided_slice_2:output:04lstm_669/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_669/lstm_cell_624/MatMul_1MatMullstm_669/zeros:output:06lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_669/lstm_cell_624/addAddV2'lstm_669/lstm_cell_624/MatMul:product:0)lstm_669/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp6lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_669/lstm_cell_624/BiasAddBiasAddlstm_669/lstm_cell_624/add:z:05lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_669/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_669/lstm_cell_624/splitSplit/lstm_669/lstm_cell_624/split/split_dim:output:0'lstm_669/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_669/lstm_cell_624/SigmoidSigmoid%lstm_669/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_669/lstm_cell_624/Sigmoid_1Sigmoid%lstm_669/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mulMul$lstm_669/lstm_cell_624/Sigmoid_1:y:0lstm_669/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_669/lstm_cell_624/ReluRelu%lstm_669/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mul_1Mul"lstm_669/lstm_cell_624/Sigmoid:y:0)lstm_669/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/add_1AddV2lstm_669/lstm_cell_624/mul:z:0 lstm_669/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_669/lstm_cell_624/Sigmoid_2Sigmoid%lstm_669/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_669/lstm_cell_624/Relu_1Relu lstm_669/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_669/lstm_cell_624/mul_2Mul$lstm_669/lstm_cell_624/Sigmoid_2:y:0+lstm_669/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_669/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_669/TensorArrayV2_1TensorListReserve/lstm_669/TensorArrayV2_1/element_shape:output:0!lstm_669/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_669/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_669/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_669/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_669/whileWhile$lstm_669/while/loop_counter:output:0*lstm_669/while/maximum_iterations:output:0lstm_669/time:output:0!lstm_669/TensorArrayV2_1:handle:0lstm_669/zeros:output:0lstm_669/zeros_1:output:0!lstm_669/strided_slice_1:output:0@lstm_669/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_669_lstm_cell_624_matmul_readvariableop_resource7lstm_669_lstm_cell_624_matmul_1_readvariableop_resource6lstm_669_lstm_cell_624_biasadd_readvariableop_resource*
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
lstm_669_while_body_3791221*'
condR
lstm_669_while_cond_3791220*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_669/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_669/TensorArrayV2Stack/TensorListStackTensorListStacklstm_669/while:output:3Blstm_669/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_669/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_669/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_669/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_669/strided_slice_3StridedSlice4lstm_669/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_669/strided_slice_3/stack:output:0)lstm_669/strided_slice_3/stack_1:output:0)lstm_669/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_669/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_669/transpose_1	Transpose4lstm_669/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_669/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_669/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_670/ShapeShapelstm_669/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_670/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_670/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_670/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_sliceStridedSlicelstm_670/Shape:output:0%lstm_670/strided_slice/stack:output:0'lstm_670/strided_slice/stack_1:output:0'lstm_670/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_670/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_670/zeros/packedPacklstm_670/strided_slice:output:0 lstm_670/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_670/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_670/zerosFilllstm_670/zeros/packed:output:0lstm_670/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_670/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_670/zeros_1/packedPacklstm_670/strided_slice:output:0"lstm_670/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_670/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_670/zeros_1Fill lstm_670/zeros_1/packed:output:0lstm_670/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_670/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_670/transpose	Transposelstm_669/transpose_1:y:0 lstm_670/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_670/Shape_1Shapelstm_670/transpose:y:0*
T0*
_output_shapes
:h
lstm_670/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_670/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_1StridedSlicelstm_670/Shape_1:output:0'lstm_670/strided_slice_1/stack:output:0)lstm_670/strided_slice_1/stack_1:output:0)lstm_670/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_670/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_670/TensorArrayV2TensorListReserve-lstm_670/TensorArrayV2/element_shape:output:0!lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_670/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_670/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_670/transpose:y:0Glstm_670/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_670/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_670/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_2StridedSlicelstm_670/transpose:y:0'lstm_670/strided_slice_2/stack:output:0)lstm_670/strided_slice_2/stack_1:output:0)lstm_670/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_670/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp5lstm_670_lstm_cell_625_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_670/lstm_cell_625/MatMulMatMul!lstm_670/strided_slice_2:output:04lstm_670/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_670/lstm_cell_625/MatMul_1MatMullstm_670/zeros:output:06lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_670/lstm_cell_625/addAddV2'lstm_670/lstm_cell_625/MatMul:product:0)lstm_670/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp6lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_670/lstm_cell_625/BiasAddBiasAddlstm_670/lstm_cell_625/add:z:05lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_670/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_670/lstm_cell_625/splitSplit/lstm_670/lstm_cell_625/split/split_dim:output:0'lstm_670/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_670/lstm_cell_625/SigmoidSigmoid%lstm_670/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_670/lstm_cell_625/Sigmoid_1Sigmoid%lstm_670/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mulMul$lstm_670/lstm_cell_625/Sigmoid_1:y:0lstm_670/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_670/lstm_cell_625/ReluRelu%lstm_670/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mul_1Mul"lstm_670/lstm_cell_625/Sigmoid:y:0)lstm_670/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/add_1AddV2lstm_670/lstm_cell_625/mul:z:0 lstm_670/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_670/lstm_cell_625/Sigmoid_2Sigmoid%lstm_670/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_670/lstm_cell_625/Relu_1Relu lstm_670/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_670/lstm_cell_625/mul_2Mul$lstm_670/lstm_cell_625/Sigmoid_2:y:0+lstm_670/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_670/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_670/TensorArrayV2_1TensorListReserve/lstm_670/TensorArrayV2_1/element_shape:output:0!lstm_670/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_670/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_670/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_670/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_670/whileWhile$lstm_670/while/loop_counter:output:0*lstm_670/while/maximum_iterations:output:0lstm_670/time:output:0!lstm_670/TensorArrayV2_1:handle:0lstm_670/zeros:output:0lstm_670/zeros_1:output:0!lstm_670/strided_slice_1:output:0@lstm_670/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_670_lstm_cell_625_matmul_readvariableop_resource7lstm_670_lstm_cell_625_matmul_1_readvariableop_resource6lstm_670_lstm_cell_625_biasadd_readvariableop_resource*
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
lstm_670_while_body_3791360*'
condR
lstm_670_while_cond_3791359*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_670/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_670/TensorArrayV2Stack/TensorListStackTensorListStacklstm_670/while:output:3Blstm_670/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_670/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_670/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_670/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_670/strided_slice_3StridedSlice4lstm_670/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_670/strided_slice_3/stack:output:0)lstm_670/strided_slice_3/stack_1:output:0)lstm_670/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_670/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_670/transpose_1	Transpose4lstm_670/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_670/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_670/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_671/ShapeShapelstm_670/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_671/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_671/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_671/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_sliceStridedSlicelstm_671/Shape:output:0%lstm_671/strided_slice/stack:output:0'lstm_671/strided_slice/stack_1:output:0'lstm_671/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_671/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_671/zeros/packedPacklstm_671/strided_slice:output:0 lstm_671/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_671/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_671/zerosFilllstm_671/zeros/packed:output:0lstm_671/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_671/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_671/zeros_1/packedPacklstm_671/strided_slice:output:0"lstm_671/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_671/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_671/zeros_1Fill lstm_671/zeros_1/packed:output:0lstm_671/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_671/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_671/transpose	Transposelstm_670/transpose_1:y:0 lstm_671/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_671/Shape_1Shapelstm_671/transpose:y:0*
T0*
_output_shapes
:h
lstm_671/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_671/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_1StridedSlicelstm_671/Shape_1:output:0'lstm_671/strided_slice_1/stack:output:0)lstm_671/strided_slice_1/stack_1:output:0)lstm_671/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_671/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_671/TensorArrayV2TensorListReserve-lstm_671/TensorArrayV2/element_shape:output:0!lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_671/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_671/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_671/transpose:y:0Glstm_671/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_671/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_671/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_2StridedSlicelstm_671/transpose:y:0'lstm_671/strided_slice_2/stack:output:0)lstm_671/strided_slice_2/stack_1:output:0)lstm_671/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_671/lstm_cell_626/MatMul/ReadVariableOpReadVariableOp5lstm_671_lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_671/lstm_cell_626/MatMulMatMul!lstm_671/strided_slice_2:output:04lstm_671/lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_671/lstm_cell_626/MatMul_1MatMullstm_671/zeros:output:06lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_671/lstm_cell_626/addAddV2'lstm_671/lstm_cell_626/MatMul:product:0)lstm_671/lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp6lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_671/lstm_cell_626/BiasAddBiasAddlstm_671/lstm_cell_626/add:z:05lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_671/lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_671/lstm_cell_626/splitSplit/lstm_671/lstm_cell_626/split/split_dim:output:0'lstm_671/lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_671/lstm_cell_626/SigmoidSigmoid%lstm_671/lstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_671/lstm_cell_626/Sigmoid_1Sigmoid%lstm_671/lstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mulMul$lstm_671/lstm_cell_626/Sigmoid_1:y:0lstm_671/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_671/lstm_cell_626/ReluRelu%lstm_671/lstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mul_1Mul"lstm_671/lstm_cell_626/Sigmoid:y:0)lstm_671/lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/add_1AddV2lstm_671/lstm_cell_626/mul:z:0 lstm_671/lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_671/lstm_cell_626/Sigmoid_2Sigmoid%lstm_671/lstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_671/lstm_cell_626/Relu_1Relu lstm_671/lstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_671/lstm_cell_626/mul_2Mul$lstm_671/lstm_cell_626/Sigmoid_2:y:0+lstm_671/lstm_cell_626/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_671/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_671/TensorArrayV2_1TensorListReserve/lstm_671/TensorArrayV2_1/element_shape:output:0!lstm_671/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_671/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_671/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_671/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_671/whileWhile$lstm_671/while/loop_counter:output:0*lstm_671/while/maximum_iterations:output:0lstm_671/time:output:0!lstm_671/TensorArrayV2_1:handle:0lstm_671/zeros:output:0lstm_671/zeros_1:output:0!lstm_671/strided_slice_1:output:0@lstm_671/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_671_lstm_cell_626_matmul_readvariableop_resource7lstm_671_lstm_cell_626_matmul_1_readvariableop_resource6lstm_671_lstm_cell_626_biasadd_readvariableop_resource*
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
lstm_671_while_body_3791499*'
condR
lstm_671_while_cond_3791498*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_671/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_671/TensorArrayV2Stack/TensorListStackTensorListStacklstm_671/while:output:3Blstm_671/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_671/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_671/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_671/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_671/strided_slice_3StridedSlice4lstm_671/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_671/strided_slice_3/stack:output:0)lstm_671/strided_slice_3/stack_1:output:0)lstm_671/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_671/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_671/transpose_1	Transpose4lstm_671/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_671/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_671/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_223/MatMul/ReadVariableOpReadVariableOp(dense_223_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_223/MatMulMatMul!lstm_671/strided_slice_3:output:0'dense_223/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_223/BiasAdd/ReadVariableOpReadVariableOp)dense_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_223/BiasAddBiasAdddense_223/MatMul:product:0(dense_223/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_223/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_223/BiasAdd/ReadVariableOp ^dense_223/MatMul/ReadVariableOp.^lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp-^lstm_669/lstm_cell_624/MatMul/ReadVariableOp/^lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp^lstm_669/while.^lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp-^lstm_670/lstm_cell_625/MatMul/ReadVariableOp/^lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp^lstm_670/while.^lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp-^lstm_671/lstm_cell_626/MatMul/ReadVariableOp/^lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp^lstm_671/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_223/BiasAdd/ReadVariableOp dense_223/BiasAdd/ReadVariableOp2B
dense_223/MatMul/ReadVariableOpdense_223/MatMul/ReadVariableOp2^
-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp-lstm_669/lstm_cell_624/BiasAdd/ReadVariableOp2\
,lstm_669/lstm_cell_624/MatMul/ReadVariableOp,lstm_669/lstm_cell_624/MatMul/ReadVariableOp2`
.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp.lstm_669/lstm_cell_624/MatMul_1/ReadVariableOp2 
lstm_669/whilelstm_669/while2^
-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp-lstm_670/lstm_cell_625/BiasAdd/ReadVariableOp2\
,lstm_670/lstm_cell_625/MatMul/ReadVariableOp,lstm_670/lstm_cell_625/MatMul/ReadVariableOp2`
.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp.lstm_670/lstm_cell_625/MatMul_1/ReadVariableOp2 
lstm_670/whilelstm_670/while2^
-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp-lstm_671/lstm_cell_626/BiasAdd/ReadVariableOp2\
,lstm_671/lstm_cell_626/MatMul/ReadVariableOp,lstm_671/lstm_cell_626/MatMul/ReadVariableOp2`
.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp.lstm_671/lstm_cell_626/MatMul_1/ReadVariableOp2 
lstm_671/whilelstm_671/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3791692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3788692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3788692___redundant_placeholder05
1while_while_cond_3788692___redundant_placeholder15
1while_while_cond_3788692___redundant_placeholder25
1while_while_cond_3788692___redundant_placeholder3
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793652

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
?
*sequential_223_lstm_670_while_cond_3788191L
Hsequential_223_lstm_670_while_sequential_223_lstm_670_while_loop_counterR
Nsequential_223_lstm_670_while_sequential_223_lstm_670_while_maximum_iterations-
)sequential_223_lstm_670_while_placeholder/
+sequential_223_lstm_670_while_placeholder_1/
+sequential_223_lstm_670_while_placeholder_2/
+sequential_223_lstm_670_while_placeholder_3N
Jsequential_223_lstm_670_while_less_sequential_223_lstm_670_strided_slice_1e
asequential_223_lstm_670_while_sequential_223_lstm_670_while_cond_3788191___redundant_placeholder0e
asequential_223_lstm_670_while_sequential_223_lstm_670_while_cond_3788191___redundant_placeholder1e
asequential_223_lstm_670_while_sequential_223_lstm_670_while_cond_3788191___redundant_placeholder2e
asequential_223_lstm_670_while_sequential_223_lstm_670_while_cond_3788191___redundant_placeholder3*
&sequential_223_lstm_670_while_identity
?
"sequential_223/lstm_670/while/LessLess)sequential_223_lstm_670_while_placeholderJsequential_223_lstm_670_while_less_sequential_223_lstm_670_strided_slice_1*
T0*
_output_shapes
: {
&sequential_223/lstm_670/while/IdentityIdentity&sequential_223/lstm_670/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_223_lstm_670_while_identity/sequential_223/lstm_670/while/Identity:output:0*(
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
while_cond_3789535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789535___redundant_placeholder05
1while_while_cond_3789535___redundant_placeholder15
1while_while_cond_3789535___redundant_placeholder25
1while_while_cond_3789535___redundant_placeholder3
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
/__inference_lstm_cell_625_layer_call_fn_3793571

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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788838o
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
while_cond_3790051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3790051___redundant_placeholder05
1while_while_cond_3790051___redundant_placeholder15
1while_while_cond_3790051___redundant_placeholder25
1while_while_cond_3790051___redundant_placeholder3
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
0__inference_sequential_223_layer_call_fn_3790708

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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3789945o
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
?
?
+__inference_dense_223_layer_call_fn_3793446

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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938o
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
?
?
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793718

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
?
?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790616
lstm_669_input#
lstm_669_3790589:	?#
lstm_669_3790591:	d?
lstm_669_3790593:	?#
lstm_670_3790596:	d?#
lstm_670_3790598:	2?
lstm_670_3790600:	?"
lstm_671_3790603:2("
lstm_671_3790605:
(
lstm_671_3790607:(#
dense_223_3790610:

dense_223_3790612:
identity??!dense_223/StatefulPartitionedCall? lstm_669/StatefulPartitionedCall? lstm_670/StatefulPartitionedCall? lstm_671/StatefulPartitionedCall?
 lstm_669/StatefulPartitionedCallStatefulPartitionedCalllstm_669_inputlstm_669_3790589lstm_669_3790591lstm_669_3790593*
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3789620?
 lstm_670/StatefulPartitionedCallStatefulPartitionedCall)lstm_669/StatefulPartitionedCall:output:0lstm_670_3790596lstm_670_3790598lstm_670_3790600*
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789770?
 lstm_671/StatefulPartitionedCallStatefulPartitionedCall)lstm_670/StatefulPartitionedCall:output:0lstm_671_3790603lstm_671_3790605lstm_671_3790607*
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789920?
!dense_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_671/StatefulPartitionedCall:output:0dense_223_3790610dense_223_3790612*
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938y
IdentityIdentity*dense_223/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_223/StatefulPartitionedCall!^lstm_669/StatefulPartitionedCall!^lstm_670/StatefulPartitionedCall!^lstm_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_223/StatefulPartitionedCall!dense_223/StatefulPartitionedCall2D
 lstm_669/StatefulPartitionedCall lstm_669/StatefulPartitionedCall2D
 lstm_670/StatefulPartitionedCall lstm_670/StatefulPartitionedCall2D
 lstm_671/StatefulPartitionedCall lstm_671/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_669_input
?
?
*__inference_lstm_671_layer_call_fn_3792843
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3789462o
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3788921

inputs(
lstm_cell_625_3788839:	d?(
lstm_cell_625_3788841:	2?$
lstm_cell_625_3788843:	?
identity??%lstm_cell_625/StatefulPartitionedCall?while;
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
%lstm_cell_625/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_625_3788839lstm_cell_625_3788841lstm_cell_625_3788843*
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788838n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_625_3788839lstm_cell_625_3788841lstm_cell_625_3788843*
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
while_body_3788852*
condR
while_cond_3788851*K
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
NoOpNoOp&^lstm_cell_625/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_625/StatefulPartitionedCall%lstm_cell_625/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_223_layer_call_fn_3790586
lstm_669_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_669_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790534o
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
_user_specified_namelstm_669_input
?K
?
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793151
inputs_0>
,lstm_cell_626_matmul_readvariableop_resource:2(@
.lstm_cell_626_matmul_1_readvariableop_resource:
(;
-lstm_cell_626_biasadd_readvariableop_resource:(
identity??$lstm_cell_626/BiasAdd/ReadVariableOp?#lstm_cell_626/MatMul/ReadVariableOp?%lstm_cell_626/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_626/MatMul/ReadVariableOpReadVariableOp,lstm_cell_626_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_626/MatMulMatMulstrided_slice_2:output:0+lstm_cell_626/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_626/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_626_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_626/MatMul_1MatMulzeros:output:0-lstm_cell_626/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_626/addAddV2lstm_cell_626/MatMul:product:0 lstm_cell_626/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_626/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_626_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_626/BiasAddBiasAddlstm_cell_626/add:z:0,lstm_cell_626/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_626/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_626/splitSplit&lstm_cell_626/split/split_dim:output:0lstm_cell_626/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_626/SigmoidSigmoidlstm_cell_626/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_1Sigmoidlstm_cell_626/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_626/mulMullstm_cell_626/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_626/ReluRelulstm_cell_626/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_1Mullstm_cell_626/Sigmoid:y:0 lstm_cell_626/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_626/add_1AddV2lstm_cell_626/mul:z:0lstm_cell_626/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_626/Sigmoid_2Sigmoidlstm_cell_626/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_626/Relu_1Relulstm_cell_626/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_626/mul_2Mullstm_cell_626/Sigmoid_2:y:0"lstm_cell_626/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_626_matmul_readvariableop_resource.lstm_cell_626_matmul_1_readvariableop_resource-lstm_cell_626_biasadd_readvariableop_resource*
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
while_body_3793067*
condR
while_cond_3793066*K
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
NoOpNoOp%^lstm_cell_626/BiasAdd/ReadVariableOp$^lstm_cell_626/MatMul/ReadVariableOp&^lstm_cell_626/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_626/BiasAdd/ReadVariableOp$lstm_cell_626/BiasAdd/ReadVariableOp2J
#lstm_cell_626/MatMul/ReadVariableOp#lstm_cell_626/MatMul/ReadVariableOp2N
%lstm_cell_626/MatMul_1/ReadVariableOp%lstm_cell_626/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_3793893
file_prefix/
+savev2_dense_223_kernel_read_readvariableop-
)savev2_dense_223_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_669_lstm_cell_669_kernel_read_readvariableopF
Bsavev2_lstm_669_lstm_cell_669_recurrent_kernel_read_readvariableop:
6savev2_lstm_669_lstm_cell_669_bias_read_readvariableop<
8savev2_lstm_670_lstm_cell_670_kernel_read_readvariableopF
Bsavev2_lstm_670_lstm_cell_670_recurrent_kernel_read_readvariableop:
6savev2_lstm_670_lstm_cell_670_bias_read_readvariableop<
8savev2_lstm_671_lstm_cell_671_kernel_read_readvariableopF
Bsavev2_lstm_671_lstm_cell_671_recurrent_kernel_read_readvariableop:
6savev2_lstm_671_lstm_cell_671_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_223_kernel_m_read_readvariableop4
0savev2_adam_dense_223_bias_m_read_readvariableopC
?savev2_adam_lstm_669_lstm_cell_669_kernel_m_read_readvariableopM
Isavev2_adam_lstm_669_lstm_cell_669_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_669_lstm_cell_669_bias_m_read_readvariableopC
?savev2_adam_lstm_670_lstm_cell_670_kernel_m_read_readvariableopM
Isavev2_adam_lstm_670_lstm_cell_670_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_670_lstm_cell_670_bias_m_read_readvariableopC
?savev2_adam_lstm_671_lstm_cell_671_kernel_m_read_readvariableopM
Isavev2_adam_lstm_671_lstm_cell_671_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_671_lstm_cell_671_bias_m_read_readvariableop6
2savev2_adam_dense_223_kernel_v_read_readvariableop4
0savev2_adam_dense_223_bias_v_read_readvariableopC
?savev2_adam_lstm_669_lstm_cell_669_kernel_v_read_readvariableopM
Isavev2_adam_lstm_669_lstm_cell_669_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_669_lstm_cell_669_bias_v_read_readvariableopC
?savev2_adam_lstm_670_lstm_cell_670_kernel_v_read_readvariableopM
Isavev2_adam_lstm_670_lstm_cell_670_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_670_lstm_cell_670_bias_v_read_readvariableopC
?savev2_adam_lstm_671_lstm_cell_671_kernel_v_read_readvariableopM
Isavev2_adam_lstm_671_lstm_cell_671_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_671_lstm_cell_671_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_223_kernel_read_readvariableop)savev2_dense_223_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_669_lstm_cell_669_kernel_read_readvariableopBsavev2_lstm_669_lstm_cell_669_recurrent_kernel_read_readvariableop6savev2_lstm_669_lstm_cell_669_bias_read_readvariableop8savev2_lstm_670_lstm_cell_670_kernel_read_readvariableopBsavev2_lstm_670_lstm_cell_670_recurrent_kernel_read_readvariableop6savev2_lstm_670_lstm_cell_670_bias_read_readvariableop8savev2_lstm_671_lstm_cell_671_kernel_read_readvariableopBsavev2_lstm_671_lstm_cell_671_recurrent_kernel_read_readvariableop6savev2_lstm_671_lstm_cell_671_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_223_kernel_m_read_readvariableop0savev2_adam_dense_223_bias_m_read_readvariableop?savev2_adam_lstm_669_lstm_cell_669_kernel_m_read_readvariableopIsavev2_adam_lstm_669_lstm_cell_669_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_669_lstm_cell_669_bias_m_read_readvariableop?savev2_adam_lstm_670_lstm_cell_670_kernel_m_read_readvariableopIsavev2_adam_lstm_670_lstm_cell_670_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_670_lstm_cell_670_bias_m_read_readvariableop?savev2_adam_lstm_671_lstm_cell_671_kernel_m_read_readvariableopIsavev2_adam_lstm_671_lstm_cell_671_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_671_lstm_cell_671_bias_m_read_readvariableop2savev2_adam_dense_223_kernel_v_read_readvariableop0savev2_adam_dense_223_bias_v_read_readvariableop?savev2_adam_lstm_669_lstm_cell_669_kernel_v_read_readvariableopIsavev2_adam_lstm_669_lstm_cell_669_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_669_lstm_cell_669_bias_v_read_readvariableop?savev2_adam_lstm_670_lstm_cell_670_kernel_v_read_readvariableopIsavev2_adam_lstm_670_lstm_cell_670_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_670_lstm_cell_670_bias_v_read_readvariableop?savev2_adam_lstm_671_lstm_cell_671_kernel_v_read_readvariableopIsavev2_adam_lstm_671_lstm_cell_671_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_671_lstm_cell_671_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_3792120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792120___redundant_placeholder05
1while_while_cond_3792120___redundant_placeholder15
1while_while_cond_3792120___redundant_placeholder25
1while_while_cond_3792120___redundant_placeholder3
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
while_body_3790382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3791835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_624_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_624_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_624_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_624_matmul_readvariableop_resource:	?G
4while_lstm_cell_624_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_624_biasadd_readvariableop_resource:	???*while/lstm_cell_624/BiasAdd/ReadVariableOp?)while/lstm_cell_624/MatMul/ReadVariableOp?+while/lstm_cell_624/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_624/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_624_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_624/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_624/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_624/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_624_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_624/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_624/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_624/addAddV2$while/lstm_cell_624/MatMul:product:0&while/lstm_cell_624/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_624/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_624_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_624/BiasAddBiasAddwhile/lstm_cell_624/add:z:02while/lstm_cell_624/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_624/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_624/splitSplit,while/lstm_cell_624/split/split_dim:output:0$while/lstm_cell_624/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_624/SigmoidSigmoid"while/lstm_cell_624/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_1Sigmoid"while/lstm_cell_624/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mulMul!while/lstm_cell_624/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_624/ReluRelu"while/lstm_cell_624/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_1Mulwhile/lstm_cell_624/Sigmoid:y:0&while/lstm_cell_624/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/add_1AddV2while/lstm_cell_624/mul:z:0while/lstm_cell_624/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_624/Sigmoid_2Sigmoid"while/lstm_cell_624/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_624/Relu_1Reluwhile/lstm_cell_624/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_624/mul_2Mul!while/lstm_cell_624/Sigmoid_2:y:0(while/lstm_cell_624/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_624/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_624/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_624/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_624/BiasAdd/ReadVariableOp*^while/lstm_cell_624/MatMul/ReadVariableOp,^while/lstm_cell_624/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_624_biasadd_readvariableop_resource5while_lstm_cell_624_biasadd_readvariableop_resource_0"n
4while_lstm_cell_624_matmul_1_readvariableop_resource6while_lstm_cell_624_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_624_matmul_readvariableop_resource4while_lstm_cell_624_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_624/BiasAdd/ReadVariableOp*while/lstm_cell_624/BiasAdd/ReadVariableOp2V
)while/lstm_cell_624/MatMul/ReadVariableOp)while/lstm_cell_624/MatMul/ReadVariableOp2Z
+while/lstm_cell_624/MatMul_1/ReadVariableOp+while/lstm_cell_624/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_670_layer_call_fn_3792227
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3789112|
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
while_cond_3789042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789042___redundant_placeholder05
1while_while_cond_3789042___redundant_placeholder15
1while_while_cond_3789042___redundant_placeholder25
1while_while_cond_3789042___redundant_placeholder3
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938

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
?
?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790534

inputs#
lstm_669_3790507:	?#
lstm_669_3790509:	d?
lstm_669_3790511:	?#
lstm_670_3790514:	d?#
lstm_670_3790516:	2?
lstm_670_3790518:	?"
lstm_671_3790521:2("
lstm_671_3790523:
(
lstm_671_3790525:(#
dense_223_3790528:

dense_223_3790530:
identity??!dense_223/StatefulPartitionedCall? lstm_669/StatefulPartitionedCall? lstm_670/StatefulPartitionedCall? lstm_671/StatefulPartitionedCall?
 lstm_669/StatefulPartitionedCallStatefulPartitionedCallinputslstm_669_3790507lstm_669_3790509lstm_669_3790511*
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3790466?
 lstm_670/StatefulPartitionedCallStatefulPartitionedCall)lstm_669/StatefulPartitionedCall:output:0lstm_670_3790514lstm_670_3790516lstm_670_3790518*
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3790301?
 lstm_671/StatefulPartitionedCallStatefulPartitionedCall)lstm_670/StatefulPartitionedCall:output:0lstm_671_3790521lstm_671_3790523lstm_671_3790525*
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3790136?
!dense_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_671/StatefulPartitionedCall:output:0dense_223_3790528dense_223_3790530*
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3789938y
IdentityIdentity*dense_223/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_223/StatefulPartitionedCall!^lstm_669/StatefulPartitionedCall!^lstm_670/StatefulPartitionedCall!^lstm_671/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_223/StatefulPartitionedCall!dense_223/StatefulPartitionedCall2D
 lstm_669/StatefulPartitionedCall lstm_669/StatefulPartitionedCall2D
 lstm_670/StatefulPartitionedCall lstm_670/StatefulPartitionedCall2D
 lstm_671/StatefulPartitionedCall lstm_671/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3788851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3788851___redundant_placeholder05
1while_while_cond_3788851___redundant_placeholder15
1while_while_cond_3788851___redundant_placeholder25
1while_while_cond_3788851___redundant_placeholder3
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
/__inference_lstm_cell_625_layer_call_fn_3793588

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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788984o
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

lstm_670_while_body_3790933.
*lstm_670_while_lstm_670_while_loop_counter4
0lstm_670_while_lstm_670_while_maximum_iterations
lstm_670_while_placeholder 
lstm_670_while_placeholder_1 
lstm_670_while_placeholder_2 
lstm_670_while_placeholder_3-
)lstm_670_while_lstm_670_strided_slice_1_0i
elstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0:	d?R
?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?M
>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
lstm_670_while_identity
lstm_670_while_identity_1
lstm_670_while_identity_2
lstm_670_while_identity_3
lstm_670_while_identity_4
lstm_670_while_identity_5+
'lstm_670_while_lstm_670_strided_slice_1g
clstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensorN
;lstm_670_while_lstm_cell_625_matmul_readvariableop_resource:	d?P
=lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource:	2?K
<lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource:	???3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp?2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp?4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp?
@lstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_670/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0lstm_670_while_placeholderIlstm_670/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_670/while/lstm_cell_625/MatMulMatMul9lstm_670/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_670/while/lstm_cell_625/MatMul_1MatMullstm_670_while_placeholder_2<lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_670/while/lstm_cell_625/addAddV2-lstm_670/while/lstm_cell_625/MatMul:product:0/lstm_670/while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_670/while/lstm_cell_625/BiasAddBiasAdd$lstm_670/while/lstm_cell_625/add:z:0;lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_670/while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_670/while/lstm_cell_625/splitSplit5lstm_670/while/lstm_cell_625/split/split_dim:output:0-lstm_670/while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_670/while/lstm_cell_625/SigmoidSigmoid+lstm_670/while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_670/while/lstm_cell_625/Sigmoid_1Sigmoid+lstm_670/while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_670/while/lstm_cell_625/mulMul*lstm_670/while/lstm_cell_625/Sigmoid_1:y:0lstm_670_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_670/while/lstm_cell_625/ReluRelu+lstm_670/while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/mul_1Mul(lstm_670/while/lstm_cell_625/Sigmoid:y:0/lstm_670/while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/add_1AddV2$lstm_670/while/lstm_cell_625/mul:z:0&lstm_670/while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_670/while/lstm_cell_625/Sigmoid_2Sigmoid+lstm_670/while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_670/while/lstm_cell_625/Relu_1Relu&lstm_670/while/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_670/while/lstm_cell_625/mul_2Mul*lstm_670/while/lstm_cell_625/Sigmoid_2:y:01lstm_670/while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_670/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_670_while_placeholder_1lstm_670_while_placeholder&lstm_670/while/lstm_cell_625/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_670/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_670/while/addAddV2lstm_670_while_placeholderlstm_670/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_670/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_670/while/add_1AddV2*lstm_670_while_lstm_670_while_loop_counterlstm_670/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_670/while/IdentityIdentitylstm_670/while/add_1:z:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_1Identity0lstm_670_while_lstm_670_while_maximum_iterations^lstm_670/while/NoOp*
T0*
_output_shapes
: t
lstm_670/while/Identity_2Identitylstm_670/while/add:z:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_3IdentityClstm_670/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_670/while/NoOp*
T0*
_output_shapes
: ?
lstm_670/while/Identity_4Identity&lstm_670/while/lstm_cell_625/mul_2:z:0^lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_670/while/Identity_5Identity&lstm_670/while/lstm_cell_625/add_1:z:0^lstm_670/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_670/while/NoOpNoOp4^lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp3^lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp5^lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_670_while_identity lstm_670/while/Identity:output:0"?
lstm_670_while_identity_1"lstm_670/while/Identity_1:output:0"?
lstm_670_while_identity_2"lstm_670/while/Identity_2:output:0"?
lstm_670_while_identity_3"lstm_670/while/Identity_3:output:0"?
lstm_670_while_identity_4"lstm_670/while/Identity_4:output:0"?
lstm_670_while_identity_5"lstm_670/while/Identity_5:output:0"T
'lstm_670_while_lstm_670_strided_slice_1)lstm_670_while_lstm_670_strided_slice_1_0"~
<lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource>lstm_670_while_lstm_cell_625_biasadd_readvariableop_resource_0"?
=lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource?lstm_670_while_lstm_cell_625_matmul_1_readvariableop_resource_0"|
;lstm_670_while_lstm_cell_625_matmul_readvariableop_resource=lstm_670_while_lstm_cell_625_matmul_readvariableop_resource_0"?
clstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensorelstm_670_while_tensorarrayv2read_tensorlistgetitem_lstm_670_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp3lstm_670/while/lstm_cell_625/BiasAdd/ReadVariableOp2h
2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp2lstm_670/while/lstm_cell_625/MatMul/ReadVariableOp2l
4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp4lstm_670/while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3790216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3790216___redundant_placeholder05
1while_while_cond_3790216___redundant_placeholder15
1while_while_cond_3790216___redundant_placeholder25
1while_while_cond_3790216___redundant_placeholder3
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3788634

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
?
*sequential_223_lstm_671_while_cond_3788330L
Hsequential_223_lstm_671_while_sequential_223_lstm_671_while_loop_counterR
Nsequential_223_lstm_671_while_sequential_223_lstm_671_while_maximum_iterations-
)sequential_223_lstm_671_while_placeholder/
+sequential_223_lstm_671_while_placeholder_1/
+sequential_223_lstm_671_while_placeholder_2/
+sequential_223_lstm_671_while_placeholder_3N
Jsequential_223_lstm_671_while_less_sequential_223_lstm_671_strided_slice_1e
asequential_223_lstm_671_while_sequential_223_lstm_671_while_cond_3788330___redundant_placeholder0e
asequential_223_lstm_671_while_sequential_223_lstm_671_while_cond_3788330___redundant_placeholder1e
asequential_223_lstm_671_while_sequential_223_lstm_671_while_cond_3788330___redundant_placeholder2e
asequential_223_lstm_671_while_sequential_223_lstm_671_while_cond_3788330___redundant_placeholder3*
&sequential_223_lstm_671_while_identity
?
"sequential_223/lstm_671/while/LessLess)sequential_223_lstm_671_while_placeholderJsequential_223_lstm_671_while_less_sequential_223_lstm_671_strided_slice_1*
T0*
_output_shapes
: {
&sequential_223/lstm_671/while/IdentityIdentity&sequential_223/lstm_671/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_223_lstm_671_while_identity/sequential_223/lstm_671/while/Identity:output:0*(
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
while_cond_3793352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3793352___redundant_placeholder05
1while_while_cond_3793352___redundant_placeholder15
1while_while_cond_3793352___redundant_placeholder25
1while_while_cond_3793352___redundant_placeholder3
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
lstm_669_while_cond_3790793.
*lstm_669_while_lstm_669_while_loop_counter4
0lstm_669_while_lstm_669_while_maximum_iterations
lstm_669_while_placeholder 
lstm_669_while_placeholder_1 
lstm_669_while_placeholder_2 
lstm_669_while_placeholder_30
,lstm_669_while_less_lstm_669_strided_slice_1G
Clstm_669_while_lstm_669_while_cond_3790793___redundant_placeholder0G
Clstm_669_while_lstm_669_while_cond_3790793___redundant_placeholder1G
Clstm_669_while_lstm_669_while_cond_3790793___redundant_placeholder2G
Clstm_669_while_lstm_669_while_cond_3790793___redundant_placeholder3
lstm_669_while_identity
?
lstm_669/while/LessLesslstm_669_while_placeholder,lstm_669_while_less_lstm_669_strided_slice_1*
T0*
_output_shapes
: ]
lstm_669/while/IdentityIdentitylstm_669/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_669_while_identity lstm_669/while/Identity:output:0*(
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3788984

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
*__inference_lstm_671_layer_call_fn_3792865

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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3790136o
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
while_cond_3792450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792450___redundant_placeholder05
1while_while_cond_3792450___redundant_placeholder15
1while_while_cond_3792450___redundant_placeholder25
1while_while_cond_3792450___redundant_placeholder3
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
while_body_3792451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_625_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_625_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_625_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_625_matmul_readvariableop_resource:	d?G
4while_lstm_cell_625_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_625_biasadd_readvariableop_resource:	???*while/lstm_cell_625/BiasAdd/ReadVariableOp?)while/lstm_cell_625/MatMul/ReadVariableOp?+while/lstm_cell_625/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_625/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_625_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_625/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_625/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_625/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_625_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_625/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_625/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_625/addAddV2$while/lstm_cell_625/MatMul:product:0&while/lstm_cell_625/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_625/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_625_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_625/BiasAddBiasAddwhile/lstm_cell_625/add:z:02while/lstm_cell_625/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_625/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_625/splitSplit,while/lstm_cell_625/split/split_dim:output:0$while/lstm_cell_625/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_625/SigmoidSigmoid"while/lstm_cell_625/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_1Sigmoid"while/lstm_cell_625/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mulMul!while/lstm_cell_625/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_625/ReluRelu"while/lstm_cell_625/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_1Mulwhile/lstm_cell_625/Sigmoid:y:0&while/lstm_cell_625/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/add_1AddV2while/lstm_cell_625/mul:z:0while/lstm_cell_625/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_625/Sigmoid_2Sigmoid"while/lstm_cell_625/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_625/Relu_1Reluwhile/lstm_cell_625/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_625/mul_2Mul!while/lstm_cell_625/Sigmoid_2:y:0(while/lstm_cell_625/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_625/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_625/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_625/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_625/BiasAdd/ReadVariableOp*^while/lstm_cell_625/MatMul/ReadVariableOp,^while/lstm_cell_625/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_625_biasadd_readvariableop_resource5while_lstm_cell_625_biasadd_readvariableop_resource_0"n
4while_lstm_cell_625_matmul_1_readvariableop_resource6while_lstm_cell_625_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_625_matmul_readvariableop_resource4while_lstm_cell_625_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_625/BiasAdd/ReadVariableOp*while/lstm_cell_625/BiasAdd/ReadVariableOp2V
)while/lstm_cell_625/MatMul/ReadVariableOp)while/lstm_cell_625/MatMul/ReadVariableOp2Z
+while/lstm_cell_625/MatMul_1/ReadVariableOp+while/lstm_cell_625/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3789201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3789201___redundant_placeholder05
1while_while_cond_3789201___redundant_placeholder15
1while_while_cond_3789201___redundant_placeholder25
1while_while_cond_3789201___redundant_placeholder3
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
while_cond_3792593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3792593___redundant_placeholder05
1while_while_cond_3792593___redundant_placeholder15
1while_while_cond_3792593___redundant_placeholder25
1while_while_cond_3792593___redundant_placeholder3
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
lstm_669_input;
 serving_default_lstm_669_input:0?????????=
	dense_2230
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
2dense_223/kernel
:2dense_223/bias
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
0:.	?2lstm_669/lstm_cell_669/kernel
::8	d?2'lstm_669/lstm_cell_669/recurrent_kernel
*:(?2lstm_669/lstm_cell_669/bias
0:.	d?2lstm_670/lstm_cell_670/kernel
::8	2?2'lstm_670/lstm_cell_670/recurrent_kernel
*:(?2lstm_670/lstm_cell_670/bias
/:-2(2lstm_671/lstm_cell_671/kernel
9:7
(2'lstm_671/lstm_cell_671/recurrent_kernel
):'(2lstm_671/lstm_cell_671/bias
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
2Adam/dense_223/kernel/m
!:2Adam/dense_223/bias/m
5:3	?2$Adam/lstm_669/lstm_cell_669/kernel/m
?:=	d?2.Adam/lstm_669/lstm_cell_669/recurrent_kernel/m
/:-?2"Adam/lstm_669/lstm_cell_669/bias/m
5:3	d?2$Adam/lstm_670/lstm_cell_670/kernel/m
?:=	2?2.Adam/lstm_670/lstm_cell_670/recurrent_kernel/m
/:-?2"Adam/lstm_670/lstm_cell_670/bias/m
4:22(2$Adam/lstm_671/lstm_cell_671/kernel/m
>:<
(2.Adam/lstm_671/lstm_cell_671/recurrent_kernel/m
.:,(2"Adam/lstm_671/lstm_cell_671/bias/m
':%
2Adam/dense_223/kernel/v
!:2Adam/dense_223/bias/v
5:3	?2$Adam/lstm_669/lstm_cell_669/kernel/v
?:=	d?2.Adam/lstm_669/lstm_cell_669/recurrent_kernel/v
/:-?2"Adam/lstm_669/lstm_cell_669/bias/v
5:3	d?2$Adam/lstm_670/lstm_cell_670/kernel/v
?:=	2?2.Adam/lstm_670/lstm_cell_670/recurrent_kernel/v
/:-?2"Adam/lstm_670/lstm_cell_670/bias/v
4:22(2$Adam/lstm_671/lstm_cell_671/kernel/v
>:<
(2.Adam/lstm_671/lstm_cell_671/recurrent_kernel/v
.:,(2"Adam/lstm_671/lstm_cell_671/bias/v
?2?
0__inference_sequential_223_layer_call_fn_3789970
0__inference_sequential_223_layer_call_fn_3790708
0__inference_sequential_223_layer_call_fn_3790735
0__inference_sequential_223_layer_call_fn_3790586?
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791162
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791589
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790616
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790646?
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
"__inference__wrapped_model_3788421lstm_669_input"?
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
*__inference_lstm_669_layer_call_fn_3791600
*__inference_lstm_669_layer_call_fn_3791611
*__inference_lstm_669_layer_call_fn_3791622
*__inference_lstm_669_layer_call_fn_3791633?
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791776
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791919
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792062
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792205?
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
*__inference_lstm_670_layer_call_fn_3792216
*__inference_lstm_670_layer_call_fn_3792227
*__inference_lstm_670_layer_call_fn_3792238
*__inference_lstm_670_layer_call_fn_3792249?
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792392
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792535
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792678
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792821?
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
*__inference_lstm_671_layer_call_fn_3792832
*__inference_lstm_671_layer_call_fn_3792843
*__inference_lstm_671_layer_call_fn_3792854
*__inference_lstm_671_layer_call_fn_3792865?
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793008
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793151
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793294
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793437?
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
+__inference_dense_223_layer_call_fn_3793446?
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
F__inference_dense_223_layer_call_and_return_conditional_losses_3793456?
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
%__inference_signature_wrapper_3790681lstm_669_input"?
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
/__inference_lstm_cell_624_layer_call_fn_3793473
/__inference_lstm_cell_624_layer_call_fn_3793490?
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793522
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793554?
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
/__inference_lstm_cell_625_layer_call_fn_3793571
/__inference_lstm_cell_625_layer_call_fn_3793588?
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793620
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793652?
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
/__inference_lstm_cell_626_layer_call_fn_3793669
/__inference_lstm_cell_626_layer_call_fn_3793686?
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793718
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793750?
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
"__inference__wrapped_model_3788421?-./012345!";?8
1?.
,?)
lstm_669_input?????????
? "5?2
0
	dense_223#? 
	dense_223??????????
F__inference_dense_223_layer_call_and_return_conditional_losses_3793456\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_223_layer_call_fn_3793446O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791776?-./O?L
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3791919?-./O?L
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792062q-./??<
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
E__inference_lstm_669_layer_call_and_return_conditional_losses_3792205q-./??<
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
*__inference_lstm_669_layer_call_fn_3791600}-./O?L
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
*__inference_lstm_669_layer_call_fn_3791611}-./O?L
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
*__inference_lstm_669_layer_call_fn_3791622d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_669_layer_call_fn_3791633d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792392?012O?L
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792535?012O?L
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792678q012??<
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
E__inference_lstm_670_layer_call_and_return_conditional_losses_3792821q012??<
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
*__inference_lstm_670_layer_call_fn_3792216}012O?L
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
*__inference_lstm_670_layer_call_fn_3792227}012O?L
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
*__inference_lstm_670_layer_call_fn_3792238d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_670_layer_call_fn_3792249d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793008}345O?L
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793151}345O?L
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793294m345??<
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
E__inference_lstm_671_layer_call_and_return_conditional_losses_3793437m345??<
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
*__inference_lstm_671_layer_call_fn_3792832p345O?L
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
*__inference_lstm_671_layer_call_fn_3792843p345O?L
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
*__inference_lstm_671_layer_call_fn_3792854`345??<
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
*__inference_lstm_671_layer_call_fn_3792865`345??<
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793522?-./??}
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
J__inference_lstm_cell_624_layer_call_and_return_conditional_losses_3793554?-./??}
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
/__inference_lstm_cell_624_layer_call_fn_3793473?-./??}
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
/__inference_lstm_cell_624_layer_call_fn_3793490?-./??}
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793620?012??}
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
J__inference_lstm_cell_625_layer_call_and_return_conditional_losses_3793652?012??}
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
/__inference_lstm_cell_625_layer_call_fn_3793571?012??}
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
/__inference_lstm_cell_625_layer_call_fn_3793588?012??}
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793718?345??}
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
J__inference_lstm_cell_626_layer_call_and_return_conditional_losses_3793750?345??}
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
/__inference_lstm_cell_626_layer_call_fn_3793669?345??}
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
/__inference_lstm_cell_626_layer_call_fn_3793686?345??}
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790616y-./012345!"C?@
9?6
,?)
lstm_669_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3790646y-./012345!"C?@
9?6
,?)
lstm_669_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791162q-./012345!";?8
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
K__inference_sequential_223_layer_call_and_return_conditional_losses_3791589q-./012345!";?8
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
0__inference_sequential_223_layer_call_fn_3789970l-./012345!"C?@
9?6
,?)
lstm_669_input?????????
p 

 
? "???????????
0__inference_sequential_223_layer_call_fn_3790586l-./012345!"C?@
9?6
,?)
lstm_669_input?????????
p

 
? "???????????
0__inference_sequential_223_layer_call_fn_3790708d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_223_layer_call_fn_3790735d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3790681?-./012345!"M?J
? 
C?@
>
lstm_669_input,?)
lstm_669_input?????????"5?2
0
	dense_223#? 
	dense_223?????????