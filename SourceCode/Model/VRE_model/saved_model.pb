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
dense_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_99/kernel
s
#dense_99/kernel/Read/ReadVariableOpReadVariableOpdense_99/kernel*
_output_shapes

:
*
dtype0
r
dense_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_99/bias
k
!dense_99/bias/Read/ReadVariableOpReadVariableOpdense_99/bias*
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
lstm_297/lstm_cell_297/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_297/lstm_cell_297/kernel
?
1lstm_297/lstm_cell_297/kernel/Read/ReadVariableOpReadVariableOplstm_297/lstm_cell_297/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_297/lstm_cell_297/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_297/lstm_cell_297/recurrent_kernel
?
;lstm_297/lstm_cell_297/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_297/lstm_cell_297/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_297/lstm_cell_297/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_297/lstm_cell_297/bias
?
/lstm_297/lstm_cell_297/bias/Read/ReadVariableOpReadVariableOplstm_297/lstm_cell_297/bias*
_output_shapes	
:?*
dtype0
?
lstm_298/lstm_cell_298/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_298/lstm_cell_298/kernel
?
1lstm_298/lstm_cell_298/kernel/Read/ReadVariableOpReadVariableOplstm_298/lstm_cell_298/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_298/lstm_cell_298/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_298/lstm_cell_298/recurrent_kernel
?
;lstm_298/lstm_cell_298/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_298/lstm_cell_298/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_298/lstm_cell_298/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_298/lstm_cell_298/bias
?
/lstm_298/lstm_cell_298/bias/Read/ReadVariableOpReadVariableOplstm_298/lstm_cell_298/bias*
_output_shapes	
:?*
dtype0
?
lstm_299/lstm_cell_299/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_299/lstm_cell_299/kernel
?
1lstm_299/lstm_cell_299/kernel/Read/ReadVariableOpReadVariableOplstm_299/lstm_cell_299/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_299/lstm_cell_299/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_299/lstm_cell_299/recurrent_kernel
?
;lstm_299/lstm_cell_299/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_299/lstm_cell_299/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_299/lstm_cell_299/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_299/lstm_cell_299/bias
?
/lstm_299/lstm_cell_299/bias/Read/ReadVariableOpReadVariableOplstm_299/lstm_cell_299/bias*
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
Adam/dense_99/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_99/kernel/m
?
*Adam/dense_99/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_99/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_99/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_99/bias/m
y
(Adam/dense_99/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_99/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_297/lstm_cell_297/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_297/lstm_cell_297/kernel/m
?
8Adam/lstm_297/lstm_cell_297/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_297/lstm_cell_297/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_297/lstm_cell_297/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_297/lstm_cell_297/recurrent_kernel/m
?
BAdam/lstm_297/lstm_cell_297/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_297/lstm_cell_297/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_297/lstm_cell_297/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_297/lstm_cell_297/bias/m
?
6Adam/lstm_297/lstm_cell_297/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_297/lstm_cell_297/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_298/lstm_cell_298/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_298/lstm_cell_298/kernel/m
?
8Adam/lstm_298/lstm_cell_298/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_298/lstm_cell_298/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_298/lstm_cell_298/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_298/lstm_cell_298/recurrent_kernel/m
?
BAdam/lstm_298/lstm_cell_298/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_298/lstm_cell_298/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_298/lstm_cell_298/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_298/lstm_cell_298/bias/m
?
6Adam/lstm_298/lstm_cell_298/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_298/lstm_cell_298/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_299/lstm_cell_299/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_299/lstm_cell_299/kernel/m
?
8Adam/lstm_299/lstm_cell_299/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_299/lstm_cell_299/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_299/lstm_cell_299/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_299/lstm_cell_299/recurrent_kernel/m
?
BAdam/lstm_299/lstm_cell_299/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_299/lstm_cell_299/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_299/lstm_cell_299/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_299/lstm_cell_299/bias/m
?
6Adam/lstm_299/lstm_cell_299/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_299/lstm_cell_299/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_99/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_99/kernel/v
?
*Adam/dense_99/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_99/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_99/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_99/bias/v
y
(Adam/dense_99/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_99/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_297/lstm_cell_297/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_297/lstm_cell_297/kernel/v
?
8Adam/lstm_297/lstm_cell_297/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_297/lstm_cell_297/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_297/lstm_cell_297/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_297/lstm_cell_297/recurrent_kernel/v
?
BAdam/lstm_297/lstm_cell_297/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_297/lstm_cell_297/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_297/lstm_cell_297/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_297/lstm_cell_297/bias/v
?
6Adam/lstm_297/lstm_cell_297/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_297/lstm_cell_297/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_298/lstm_cell_298/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_298/lstm_cell_298/kernel/v
?
8Adam/lstm_298/lstm_cell_298/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_298/lstm_cell_298/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_298/lstm_cell_298/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_298/lstm_cell_298/recurrent_kernel/v
?
BAdam/lstm_298/lstm_cell_298/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_298/lstm_cell_298/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_298/lstm_cell_298/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_298/lstm_cell_298/bias/v
?
6Adam/lstm_298/lstm_cell_298/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_298/lstm_cell_298/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_299/lstm_cell_299/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_299/lstm_cell_299/kernel/v
?
8Adam/lstm_299/lstm_cell_299/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_299/lstm_cell_299/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_299/lstm_cell_299/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_299/lstm_cell_299/recurrent_kernel/v
?
BAdam/lstm_299/lstm_cell_299/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_299/lstm_cell_299/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_299/lstm_cell_299/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_299/lstm_cell_299/bias/v
?
6Adam/lstm_299/lstm_cell_299/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_299/lstm_cell_299/bias/v*
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
VARIABLE_VALUEdense_99/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_99/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_297/lstm_cell_297/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_297/lstm_cell_297/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_297/lstm_cell_297/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_298/lstm_cell_298/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_298/lstm_cell_298/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_298/lstm_cell_298/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_299/lstm_cell_299/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_299/lstm_cell_299/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_299/lstm_cell_299/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_99/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_99/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_297/lstm_cell_297/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_297/lstm_cell_297/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_297/lstm_cell_297/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_298/lstm_cell_298/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_298/lstm_cell_298/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_298/lstm_cell_298/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_299/lstm_cell_299/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_299/lstm_cell_299/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_299/lstm_cell_299/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_99/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_99/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_297/lstm_cell_297/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_297/lstm_cell_297/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_297/lstm_cell_297/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_298/lstm_cell_298/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_298/lstm_cell_298/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_298/lstm_cell_298/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_299/lstm_cell_299/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_299/lstm_cell_299/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_299/lstm_cell_299/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_297_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_297_inputlstm_297/lstm_cell_297/kernel'lstm_297/lstm_cell_297/recurrent_kernellstm_297/lstm_cell_297/biaslstm_298/lstm_cell_298/kernel'lstm_298/lstm_cell_298/recurrent_kernellstm_298/lstm_cell_298/biaslstm_299/lstm_cell_299/kernel'lstm_299/lstm_cell_299/recurrent_kernellstm_299/lstm_cell_299/biasdense_99/kerneldense_99/bias*
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
%__inference_signature_wrapper_1520915
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_99/kernel/Read/ReadVariableOp!dense_99/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_297/lstm_cell_297/kernel/Read/ReadVariableOp;lstm_297/lstm_cell_297/recurrent_kernel/Read/ReadVariableOp/lstm_297/lstm_cell_297/bias/Read/ReadVariableOp1lstm_298/lstm_cell_298/kernel/Read/ReadVariableOp;lstm_298/lstm_cell_298/recurrent_kernel/Read/ReadVariableOp/lstm_298/lstm_cell_298/bias/Read/ReadVariableOp1lstm_299/lstm_cell_299/kernel/Read/ReadVariableOp;lstm_299/lstm_cell_299/recurrent_kernel/Read/ReadVariableOp/lstm_299/lstm_cell_299/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_99/kernel/m/Read/ReadVariableOp(Adam/dense_99/bias/m/Read/ReadVariableOp8Adam/lstm_297/lstm_cell_297/kernel/m/Read/ReadVariableOpBAdam/lstm_297/lstm_cell_297/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_297/lstm_cell_297/bias/m/Read/ReadVariableOp8Adam/lstm_298/lstm_cell_298/kernel/m/Read/ReadVariableOpBAdam/lstm_298/lstm_cell_298/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_298/lstm_cell_298/bias/m/Read/ReadVariableOp8Adam/lstm_299/lstm_cell_299/kernel/m/Read/ReadVariableOpBAdam/lstm_299/lstm_cell_299/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_299/lstm_cell_299/bias/m/Read/ReadVariableOp*Adam/dense_99/kernel/v/Read/ReadVariableOp(Adam/dense_99/bias/v/Read/ReadVariableOp8Adam/lstm_297/lstm_cell_297/kernel/v/Read/ReadVariableOpBAdam/lstm_297/lstm_cell_297/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_297/lstm_cell_297/bias/v/Read/ReadVariableOp8Adam/lstm_298/lstm_cell_298/kernel/v/Read/ReadVariableOpBAdam/lstm_298/lstm_cell_298/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_298/lstm_cell_298/bias/v/Read/ReadVariableOp8Adam/lstm_299/lstm_cell_299/kernel/v/Read/ReadVariableOpBAdam/lstm_299/lstm_cell_299/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_299/lstm_cell_299/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1524127
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_99/kerneldense_99/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_297/lstm_cell_297/kernel'lstm_297/lstm_cell_297/recurrent_kernellstm_297/lstm_cell_297/biaslstm_298/lstm_cell_298/kernel'lstm_298/lstm_cell_298/recurrent_kernellstm_298/lstm_cell_298/biaslstm_299/lstm_cell_299/kernel'lstm_299/lstm_cell_299/recurrent_kernellstm_299/lstm_cell_299/biastotalcountAdam/dense_99/kernel/mAdam/dense_99/bias/m$Adam/lstm_297/lstm_cell_297/kernel/m.Adam/lstm_297/lstm_cell_297/recurrent_kernel/m"Adam/lstm_297/lstm_cell_297/bias/m$Adam/lstm_298/lstm_cell_298/kernel/m.Adam/lstm_298/lstm_cell_298/recurrent_kernel/m"Adam/lstm_298/lstm_cell_298/bias/m$Adam/lstm_299/lstm_cell_299/kernel/m.Adam/lstm_299/lstm_cell_299/recurrent_kernel/m"Adam/lstm_299/lstm_cell_299/bias/mAdam/dense_99/kernel/vAdam/dense_99/bias/v$Adam/lstm_297/lstm_cell_297/kernel/v.Adam/lstm_297/lstm_cell_297/recurrent_kernel/v"Adam/lstm_297/lstm_cell_297/bias/v$Adam/lstm_298/lstm_cell_298/kernel/v.Adam/lstm_298/lstm_cell_298/recurrent_kernel/v"Adam/lstm_298/lstm_cell_298/bias/v$Adam/lstm_299/lstm_cell_299/kernel/v.Adam/lstm_299/lstm_cell_299/recurrent_kernel/v"Adam/lstm_299/lstm_cell_299/bias/v*4
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
#__inference__traced_restore_1524257??+
?

?
lstm_299_while_cond_1521732.
*lstm_299_while_lstm_299_while_loop_counter4
0lstm_299_while_lstm_299_while_maximum_iterations
lstm_299_while_placeholder 
lstm_299_while_placeholder_1 
lstm_299_while_placeholder_2 
lstm_299_while_placeholder_30
,lstm_299_while_less_lstm_299_strided_slice_1G
Clstm_299_while_lstm_299_while_cond_1521732___redundant_placeholder0G
Clstm_299_while_lstm_299_while_cond_1521732___redundant_placeholder1G
Clstm_299_while_lstm_299_while_cond_1521732___redundant_placeholder2G
Clstm_299_while_lstm_299_while_cond_1521732___redundant_placeholder3
lstm_299_while_identity
?
lstm_299/while/LessLesslstm_299_while_placeholder,lstm_299_while_less_lstm_299_strided_slice_1*
T0*
_output_shapes
: ]
lstm_299/while/IdentityIdentitylstm_299/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_299_while_identity lstm_299/while/Identity:output:0*(
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518722

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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522769
inputs_0?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1522685*
condR
while_cond_1522684*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518868

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
*__inference_dense_99_layer_call_fn_1523680

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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172o
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
?
while_cond_1523300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1523300___redundant_placeholder05
1while_while_cond_1523300___redundant_placeholder15
1while_while_cond_1523300___redundant_placeholder25
1while_while_cond_1523300___redundant_placeholder3
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522010
inputs_0?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1521926*
condR
while_cond_1521925*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1519920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1520070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_99_lstm_297_while_body_1518287J
Fsequential_99_lstm_297_while_sequential_99_lstm_297_while_loop_counterP
Lsequential_99_lstm_297_while_sequential_99_lstm_297_while_maximum_iterations,
(sequential_99_lstm_297_while_placeholder.
*sequential_99_lstm_297_while_placeholder_1.
*sequential_99_lstm_297_while_placeholder_2.
*sequential_99_lstm_297_while_placeholder_3I
Esequential_99_lstm_297_while_sequential_99_lstm_297_strided_slice_1_0?
?sequential_99_lstm_297_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_297_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_99_lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0:	?`
Msequential_99_lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?[
Lsequential_99_lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0:	?)
%sequential_99_lstm_297_while_identity+
'sequential_99_lstm_297_while_identity_1+
'sequential_99_lstm_297_while_identity_2+
'sequential_99_lstm_297_while_identity_3+
'sequential_99_lstm_297_while_identity_4+
'sequential_99_lstm_297_while_identity_5G
Csequential_99_lstm_297_while_sequential_99_lstm_297_strided_slice_1?
sequential_99_lstm_297_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_297_tensorarrayunstack_tensorlistfromtensor\
Isequential_99_lstm_297_while_lstm_cell_249_matmul_readvariableop_resource:	?^
Ksequential_99_lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource:	d?Y
Jsequential_99_lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource:	???Asequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp?@sequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp?Bsequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp?
Nsequential_99/lstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_99/lstm_297/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_99_lstm_297_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_297_tensorarrayunstack_tensorlistfromtensor_0(sequential_99_lstm_297_while_placeholderWsequential_99/lstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOpKsequential_99_lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_99/lstm_297/while/lstm_cell_249/MatMulMatMulGsequential_99/lstm_297/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOpMsequential_99_lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_99/lstm_297/while/lstm_cell_249/MatMul_1MatMul*sequential_99_lstm_297_while_placeholder_2Jsequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_99/lstm_297/while/lstm_cell_249/addAddV2;sequential_99/lstm_297/while/lstm_cell_249/MatMul:product:0=sequential_99/lstm_297/while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOpLsequential_99_lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_99/lstm_297/while/lstm_cell_249/BiasAddBiasAdd2sequential_99/lstm_297/while/lstm_cell_249/add:z:0Isequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_99/lstm_297/while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_99/lstm_297/while/lstm_cell_249/splitSplitCsequential_99/lstm_297/while/lstm_cell_249/split/split_dim:output:0;sequential_99/lstm_297/while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_99/lstm_297/while/lstm_cell_249/SigmoidSigmoid9sequential_99/lstm_297/while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_99/lstm_297/while/lstm_cell_249/Sigmoid_1Sigmoid9sequential_99/lstm_297/while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_99/lstm_297/while/lstm_cell_249/mulMul8sequential_99/lstm_297/while/lstm_cell_249/Sigmoid_1:y:0*sequential_99_lstm_297_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_99/lstm_297/while/lstm_cell_249/ReluRelu9sequential_99/lstm_297/while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_99/lstm_297/while/lstm_cell_249/mul_1Mul6sequential_99/lstm_297/while/lstm_cell_249/Sigmoid:y:0=sequential_99/lstm_297/while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_99/lstm_297/while/lstm_cell_249/add_1AddV22sequential_99/lstm_297/while/lstm_cell_249/mul:z:04sequential_99/lstm_297/while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_99/lstm_297/while/lstm_cell_249/Sigmoid_2Sigmoid9sequential_99/lstm_297/while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_99/lstm_297/while/lstm_cell_249/Relu_1Relu4sequential_99/lstm_297/while/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_99/lstm_297/while/lstm_cell_249/mul_2Mul8sequential_99/lstm_297/while/lstm_cell_249/Sigmoid_2:y:0?sequential_99/lstm_297/while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_99/lstm_297/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_99_lstm_297_while_placeholder_1(sequential_99_lstm_297_while_placeholder4sequential_99/lstm_297/while/lstm_cell_249/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_99/lstm_297/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_99/lstm_297/while/addAddV2(sequential_99_lstm_297_while_placeholder+sequential_99/lstm_297/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_99/lstm_297/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_99/lstm_297/while/add_1AddV2Fsequential_99_lstm_297_while_sequential_99_lstm_297_while_loop_counter-sequential_99/lstm_297/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_99/lstm_297/while/IdentityIdentity&sequential_99/lstm_297/while/add_1:z:0"^sequential_99/lstm_297/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_297/while/Identity_1IdentityLsequential_99_lstm_297_while_sequential_99_lstm_297_while_maximum_iterations"^sequential_99/lstm_297/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_297/while/Identity_2Identity$sequential_99/lstm_297/while/add:z:0"^sequential_99/lstm_297/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_297/while/Identity_3IdentityQsequential_99/lstm_297/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_99/lstm_297/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_297/while/Identity_4Identity4sequential_99/lstm_297/while/lstm_cell_249/mul_2:z:0"^sequential_99/lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_99/lstm_297/while/Identity_5Identity4sequential_99/lstm_297/while/lstm_cell_249/add_1:z:0"^sequential_99/lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_99/lstm_297/while/NoOpNoOpB^sequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOpA^sequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOpC^sequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_99_lstm_297_while_identity.sequential_99/lstm_297/while/Identity:output:0"[
'sequential_99_lstm_297_while_identity_10sequential_99/lstm_297/while/Identity_1:output:0"[
'sequential_99_lstm_297_while_identity_20sequential_99/lstm_297/while/Identity_2:output:0"[
'sequential_99_lstm_297_while_identity_30sequential_99/lstm_297/while/Identity_3:output:0"[
'sequential_99_lstm_297_while_identity_40sequential_99/lstm_297/while/Identity_4:output:0"[
'sequential_99_lstm_297_while_identity_50sequential_99/lstm_297/while/Identity_5:output:0"?
Jsequential_99_lstm_297_while_lstm_cell_249_biasadd_readvariableop_resourceLsequential_99_lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0"?
Ksequential_99_lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resourceMsequential_99_lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0"?
Isequential_99_lstm_297_while_lstm_cell_249_matmul_readvariableop_resourceKsequential_99_lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0"?
Csequential_99_lstm_297_while_sequential_99_lstm_297_strided_slice_1Esequential_99_lstm_297_while_sequential_99_lstm_297_strided_slice_1_0"?
sequential_99_lstm_297_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_297_tensorarrayunstack_tensorlistfromtensor?sequential_99_lstm_297_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_297_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOpAsequential_99/lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp2?
@sequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp@sequential_99/lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp2?
Bsequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOpBsequential_99/lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522296

inputs?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1522212*
condR
while_cond_1522211*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_298_layer_call_and_return_conditional_losses_1523055

inputs?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1522971*
condR
while_cond_1522970*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1520451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
)sequential_99_lstm_299_while_cond_1518564J
Fsequential_99_lstm_299_while_sequential_99_lstm_299_while_loop_counterP
Lsequential_99_lstm_299_while_sequential_99_lstm_299_while_maximum_iterations,
(sequential_99_lstm_299_while_placeholder.
*sequential_99_lstm_299_while_placeholder_1.
*sequential_99_lstm_299_while_placeholder_2.
*sequential_99_lstm_299_while_placeholder_3L
Hsequential_99_lstm_299_while_less_sequential_99_lstm_299_strided_slice_1c
_sequential_99_lstm_299_while_sequential_99_lstm_299_while_cond_1518564___redundant_placeholder0c
_sequential_99_lstm_299_while_sequential_99_lstm_299_while_cond_1518564___redundant_placeholder1c
_sequential_99_lstm_299_while_sequential_99_lstm_299_while_cond_1518564___redundant_placeholder2c
_sequential_99_lstm_299_while_sequential_99_lstm_299_while_cond_1518564___redundant_placeholder3)
%sequential_99_lstm_299_while_identity
?
!sequential_99/lstm_299/while/LessLess(sequential_99_lstm_299_while_placeholderHsequential_99_lstm_299_while_less_sequential_99_lstm_299_strided_slice_1*
T0*
_output_shapes
: y
%sequential_99/lstm_299/while/IdentityIdentity%sequential_99/lstm_299/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_99_lstm_299_while_identity.sequential_99/lstm_299/while/Identity:output:0*(
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520850
lstm_297_input#
lstm_297_1520823:	?#
lstm_297_1520825:	d?
lstm_297_1520827:	?#
lstm_298_1520830:	d?#
lstm_298_1520832:	2?
lstm_298_1520834:	?"
lstm_299_1520837:2("
lstm_299_1520839:
(
lstm_299_1520841:("
dense_99_1520844:

dense_99_1520846:
identity?? dense_99/StatefulPartitionedCall? lstm_297/StatefulPartitionedCall? lstm_298/StatefulPartitionedCall? lstm_299/StatefulPartitionedCall?
 lstm_297/StatefulPartitionedCallStatefulPartitionedCalllstm_297_inputlstm_297_1520823lstm_297_1520825lstm_297_1520827*
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1519854?
 lstm_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_297/StatefulPartitionedCall:output:0lstm_298_1520830lstm_298_1520832lstm_298_1520834*
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520004?
 lstm_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_298/StatefulPartitionedCall:output:0lstm_299_1520837lstm_299_1520839lstm_299_1520841*
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520154?
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)lstm_299/StatefulPartitionedCall:output:0dense_99_1520844dense_99_1520846*
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172x
IdentityIdentity)dense_99/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_99/StatefulPartitionedCall!^lstm_297/StatefulPartitionedCall!^lstm_298/StatefulPartitionedCall!^lstm_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall2D
 lstm_297/StatefulPartitionedCall lstm_297/StatefulPartitionedCall2D
 lstm_298/StatefulPartitionedCall lstm_298/StatefulPartitionedCall2D
 lstm_299/StatefulPartitionedCall lstm_299/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_297_input
?8
?
E__inference_lstm_298_layer_call_and_return_conditional_losses_1519155

inputs(
lstm_cell_250_1519073:	d?(
lstm_cell_250_1519075:	2?$
lstm_cell_250_1519077:	?
identity??%lstm_cell_250/StatefulPartitionedCall?while;
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
%lstm_cell_250/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_250_1519073lstm_cell_250_1519075lstm_cell_250_1519077*
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519072n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_250_1519073lstm_cell_250_1519075lstm_cell_250_1519077*
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
while_body_1519086*
condR
while_cond_1519085*K
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
NoOpNoOp&^lstm_cell_250/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_250/StatefulPartitionedCall%lstm_cell_250/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1522827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522827___redundant_placeholder05
1while_while_cond_1522827___redundant_placeholder15
1while_while_cond_1522827___redundant_placeholder25
1while_while_cond_1522827___redundant_placeholder3
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
??
?
#__inference__traced_restore_1524257
file_prefix2
 assignvariableop_dense_99_kernel:
.
 assignvariableop_1_dense_99_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_297_lstm_cell_297_kernel:	?M
:assignvariableop_8_lstm_297_lstm_cell_297_recurrent_kernel:	d?=
.assignvariableop_9_lstm_297_lstm_cell_297_bias:	?D
1assignvariableop_10_lstm_298_lstm_cell_298_kernel:	d?N
;assignvariableop_11_lstm_298_lstm_cell_298_recurrent_kernel:	2?>
/assignvariableop_12_lstm_298_lstm_cell_298_bias:	?C
1assignvariableop_13_lstm_299_lstm_cell_299_kernel:2(M
;assignvariableop_14_lstm_299_lstm_cell_299_recurrent_kernel:
(=
/assignvariableop_15_lstm_299_lstm_cell_299_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_99_kernel_m:
6
(assignvariableop_19_adam_dense_99_bias_m:K
8assignvariableop_20_adam_lstm_297_lstm_cell_297_kernel_m:	?U
Bassignvariableop_21_adam_lstm_297_lstm_cell_297_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_297_lstm_cell_297_bias_m:	?K
8assignvariableop_23_adam_lstm_298_lstm_cell_298_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_298_lstm_cell_298_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_298_lstm_cell_298_bias_m:	?J
8assignvariableop_26_adam_lstm_299_lstm_cell_299_kernel_m:2(T
Bassignvariableop_27_adam_lstm_299_lstm_cell_299_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_299_lstm_cell_299_bias_m:(<
*assignvariableop_29_adam_dense_99_kernel_v:
6
(assignvariableop_30_adam_dense_99_bias_v:K
8assignvariableop_31_adam_lstm_297_lstm_cell_297_kernel_v:	?U
Bassignvariableop_32_adam_lstm_297_lstm_cell_297_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_297_lstm_cell_297_bias_v:	?K
8assignvariableop_34_adam_lstm_298_lstm_cell_298_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_298_lstm_cell_298_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_298_lstm_cell_298_bias_v:	?J
8assignvariableop_37_adam_lstm_299_lstm_cell_299_kernel_v:2(T
Bassignvariableop_38_adam_lstm_299_lstm_cell_299_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_299_lstm_cell_299_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_99_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_99_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_297_lstm_cell_297_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_297_lstm_cell_297_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_297_lstm_cell_297_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_298_lstm_cell_298_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_298_lstm_cell_298_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_298_lstm_cell_298_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_299_lstm_cell_299_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_299_lstm_cell_299_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_299_lstm_cell_299_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_99_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_99_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_297_lstm_cell_297_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_297_lstm_cell_297_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_297_lstm_cell_297_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_298_lstm_cell_298_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_298_lstm_cell_298_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_298_lstm_cell_298_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_299_lstm_cell_299_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_299_lstm_cell_299_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_299_lstm_cell_299_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_99_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_99_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_297_lstm_cell_297_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_297_lstm_cell_297_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_297_lstm_cell_297_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_298_lstm_cell_298_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_298_lstm_cell_298_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_298_lstm_cell_298_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_299_lstm_cell_299_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_299_lstm_cell_299_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_299_lstm_cell_299_bias_vIdentity_39:output:0"/device:CPU:0*
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520154

inputs>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1520070*
condR
while_cond_1520069*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1522970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522970___redundant_placeholder05
1while_while_cond_1522970___redundant_placeholder15
1while_while_cond_1522970___redundant_placeholder25
1while_while_cond_1522970___redundant_placeholder3
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523528

inputs>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1523444*
condR
while_cond_1523443*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1522355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1519435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519435___redundant_placeholder05
1while_while_cond_1519435___redundant_placeholder15
1while_while_cond_1519435___redundant_placeholder25
1while_while_cond_1519435___redundant_placeholder3
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1519696

inputs'
lstm_cell_251_1519614:2('
lstm_cell_251_1519616:
(#
lstm_cell_251_1519618:(
identity??%lstm_cell_251/StatefulPartitionedCall?while;
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
%lstm_cell_251/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_251_1519614lstm_cell_251_1519616lstm_cell_251_1519618*
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519568n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_251_1519614lstm_cell_251_1519616lstm_cell_251_1519618*
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
while_body_1519627*
condR
while_cond_1519626*K
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
NoOpNoOp&^lstm_cell_251/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_251/StatefulPartitionedCall%lstm_cell_251/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1520285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1520285___redundant_placeholder05
1while_while_cond_1520285___redundant_placeholder15
1while_while_cond_1520285___redundant_placeholder25
1while_while_cond_1520285___redundant_placeholder3
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
?S
?
)sequential_99_lstm_299_while_body_1518565J
Fsequential_99_lstm_299_while_sequential_99_lstm_299_while_loop_counterP
Lsequential_99_lstm_299_while_sequential_99_lstm_299_while_maximum_iterations,
(sequential_99_lstm_299_while_placeholder.
*sequential_99_lstm_299_while_placeholder_1.
*sequential_99_lstm_299_while_placeholder_2.
*sequential_99_lstm_299_while_placeholder_3I
Esequential_99_lstm_299_while_sequential_99_lstm_299_strided_slice_1_0?
?sequential_99_lstm_299_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_299_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_99_lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0:2(_
Msequential_99_lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(Z
Lsequential_99_lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0:()
%sequential_99_lstm_299_while_identity+
'sequential_99_lstm_299_while_identity_1+
'sequential_99_lstm_299_while_identity_2+
'sequential_99_lstm_299_while_identity_3+
'sequential_99_lstm_299_while_identity_4+
'sequential_99_lstm_299_while_identity_5G
Csequential_99_lstm_299_while_sequential_99_lstm_299_strided_slice_1?
sequential_99_lstm_299_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_299_tensorarrayunstack_tensorlistfromtensor[
Isequential_99_lstm_299_while_lstm_cell_251_matmul_readvariableop_resource:2(]
Ksequential_99_lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource:
(X
Jsequential_99_lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource:(??Asequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp?@sequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp?Bsequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp?
Nsequential_99/lstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_99/lstm_299/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_99_lstm_299_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_299_tensorarrayunstack_tensorlistfromtensor_0(sequential_99_lstm_299_while_placeholderWsequential_99/lstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOpKsequential_99_lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_99/lstm_299/while/lstm_cell_251/MatMulMatMulGsequential_99/lstm_299/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOpMsequential_99_lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_99/lstm_299/while/lstm_cell_251/MatMul_1MatMul*sequential_99_lstm_299_while_placeholder_2Jsequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_99/lstm_299/while/lstm_cell_251/addAddV2;sequential_99/lstm_299/while/lstm_cell_251/MatMul:product:0=sequential_99/lstm_299/while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOpLsequential_99_lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_99/lstm_299/while/lstm_cell_251/BiasAddBiasAdd2sequential_99/lstm_299/while/lstm_cell_251/add:z:0Isequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_99/lstm_299/while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_99/lstm_299/while/lstm_cell_251/splitSplitCsequential_99/lstm_299/while/lstm_cell_251/split/split_dim:output:0;sequential_99/lstm_299/while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_99/lstm_299/while/lstm_cell_251/SigmoidSigmoid9sequential_99/lstm_299/while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_99/lstm_299/while/lstm_cell_251/Sigmoid_1Sigmoid9sequential_99/lstm_299/while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_99/lstm_299/while/lstm_cell_251/mulMul8sequential_99/lstm_299/while/lstm_cell_251/Sigmoid_1:y:0*sequential_99_lstm_299_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_99/lstm_299/while/lstm_cell_251/ReluRelu9sequential_99/lstm_299/while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_99/lstm_299/while/lstm_cell_251/mul_1Mul6sequential_99/lstm_299/while/lstm_cell_251/Sigmoid:y:0=sequential_99/lstm_299/while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_99/lstm_299/while/lstm_cell_251/add_1AddV22sequential_99/lstm_299/while/lstm_cell_251/mul:z:04sequential_99/lstm_299/while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_99/lstm_299/while/lstm_cell_251/Sigmoid_2Sigmoid9sequential_99/lstm_299/while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_99/lstm_299/while/lstm_cell_251/Relu_1Relu4sequential_99/lstm_299/while/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_99/lstm_299/while/lstm_cell_251/mul_2Mul8sequential_99/lstm_299/while/lstm_cell_251/Sigmoid_2:y:0?sequential_99/lstm_299/while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_99/lstm_299/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_99_lstm_299_while_placeholder_1(sequential_99_lstm_299_while_placeholder4sequential_99/lstm_299/while/lstm_cell_251/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_99/lstm_299/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_99/lstm_299/while/addAddV2(sequential_99_lstm_299_while_placeholder+sequential_99/lstm_299/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_99/lstm_299/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_99/lstm_299/while/add_1AddV2Fsequential_99_lstm_299_while_sequential_99_lstm_299_while_loop_counter-sequential_99/lstm_299/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_99/lstm_299/while/IdentityIdentity&sequential_99/lstm_299/while/add_1:z:0"^sequential_99/lstm_299/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_299/while/Identity_1IdentityLsequential_99_lstm_299_while_sequential_99_lstm_299_while_maximum_iterations"^sequential_99/lstm_299/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_299/while/Identity_2Identity$sequential_99/lstm_299/while/add:z:0"^sequential_99/lstm_299/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_299/while/Identity_3IdentityQsequential_99/lstm_299/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_99/lstm_299/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_299/while/Identity_4Identity4sequential_99/lstm_299/while/lstm_cell_251/mul_2:z:0"^sequential_99/lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_99/lstm_299/while/Identity_5Identity4sequential_99/lstm_299/while/lstm_cell_251/add_1:z:0"^sequential_99/lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_99/lstm_299/while/NoOpNoOpB^sequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOpA^sequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOpC^sequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_99_lstm_299_while_identity.sequential_99/lstm_299/while/Identity:output:0"[
'sequential_99_lstm_299_while_identity_10sequential_99/lstm_299/while/Identity_1:output:0"[
'sequential_99_lstm_299_while_identity_20sequential_99/lstm_299/while/Identity_2:output:0"[
'sequential_99_lstm_299_while_identity_30sequential_99/lstm_299/while/Identity_3:output:0"[
'sequential_99_lstm_299_while_identity_40sequential_99/lstm_299/while/Identity_4:output:0"[
'sequential_99_lstm_299_while_identity_50sequential_99/lstm_299/while/Identity_5:output:0"?
Jsequential_99_lstm_299_while_lstm_cell_251_biasadd_readvariableop_resourceLsequential_99_lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0"?
Ksequential_99_lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resourceMsequential_99_lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0"?
Isequential_99_lstm_299_while_lstm_cell_251_matmul_readvariableop_resourceKsequential_99_lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0"?
Csequential_99_lstm_299_while_sequential_99_lstm_299_strided_slice_1Esequential_99_lstm_299_while_sequential_99_lstm_299_strided_slice_1_0"?
sequential_99_lstm_299_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_299_tensorarrayunstack_tensorlistfromtensor?sequential_99_lstm_299_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_299_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOpAsequential_99/lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp2?
@sequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp@sequential_99/lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp2?
Bsequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOpBsequential_99/lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1523157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1523157___redundant_placeholder05
1while_while_cond_1523157___redundant_placeholder15
1while_while_cond_1523157___redundant_placeholder25
1while_while_cond_1523157___redundant_placeholder3
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
while_body_1523444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_99_layer_call_fn_1520942

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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520179o
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

?
lstm_298_while_cond_1521593.
*lstm_298_while_lstm_298_while_loop_counter4
0lstm_298_while_lstm_298_while_maximum_iterations
lstm_298_while_placeholder 
lstm_298_while_placeholder_1 
lstm_298_while_placeholder_2 
lstm_298_while_placeholder_30
,lstm_298_while_less_lstm_298_strided_slice_1G
Clstm_298_while_lstm_298_while_cond_1521593___redundant_placeholder0G
Clstm_298_while_lstm_298_while_cond_1521593___redundant_placeholder1G
Clstm_298_while_lstm_298_while_cond_1521593___redundant_placeholder2G
Clstm_298_while_lstm_298_while_cond_1521593___redundant_placeholder3
lstm_298_while_identity
?
lstm_298/while/LessLesslstm_298_while_placeholder,lstm_298_while_less_lstm_298_strided_slice_1*
T0*
_output_shapes
: ]
lstm_298/while/IdentityIdentitylstm_298/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_298_while_identity lstm_298/while/Identity:output:0*(
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
lstm_299_while_cond_1521305.
*lstm_299_while_lstm_299_while_loop_counter4
0lstm_299_while_lstm_299_while_maximum_iterations
lstm_299_while_placeholder 
lstm_299_while_placeholder_1 
lstm_299_while_placeholder_2 
lstm_299_while_placeholder_30
,lstm_299_while_less_lstm_299_strided_slice_1G
Clstm_299_while_lstm_299_while_cond_1521305___redundant_placeholder0G
Clstm_299_while_lstm_299_while_cond_1521305___redundant_placeholder1G
Clstm_299_while_lstm_299_while_cond_1521305___redundant_placeholder2G
Clstm_299_while_lstm_299_while_cond_1521305___redundant_placeholder3
lstm_299_while_identity
?
lstm_299/while/LessLesslstm_299_while_placeholder,lstm_299_while_less_lstm_299_strided_slice_1*
T0*
_output_shapes
: ]
lstm_299/while/IdentityIdentitylstm_299/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_299_while_identity lstm_299/while/Identity:output:0*(
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172

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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1520700

inputs?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1520616*
condR
while_cond_1520615*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1522542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523242
inputs_0>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1523158*
condR
while_cond_1523157*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_1519086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_250_1519110_0:	d?0
while_lstm_cell_250_1519112_0:	2?,
while_lstm_cell_250_1519114_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_250_1519110:	d?.
while_lstm_cell_250_1519112:	2?*
while_lstm_cell_250_1519114:	???+while/lstm_cell_250/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_250/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_250_1519110_0while_lstm_cell_250_1519112_0while_lstm_cell_250_1519114_0*
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519072?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_250/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_250/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_250/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_250/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_250_1519110while_lstm_cell_250_1519110_0"<
while_lstm_cell_250_1519112while_lstm_cell_250_1519112_0"<
while_lstm_cell_250_1519114while_lstm_cell_250_1519114_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_250/StatefulPartitionedCall+while/lstm_cell_250/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522626
inputs_0?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1522542*
condR
while_cond_1522541*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_250_layer_call_fn_1523805

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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519072o
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

lstm_299_while_body_1521733.
*lstm_299_while_lstm_299_while_loop_counter4
0lstm_299_while_lstm_299_while_maximum_iterations
lstm_299_while_placeholder 
lstm_299_while_placeholder_1 
lstm_299_while_placeholder_2 
lstm_299_while_placeholder_3-
)lstm_299_while_lstm_299_strided_slice_1_0i
elstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0:2(Q
?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(L
>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0:(
lstm_299_while_identity
lstm_299_while_identity_1
lstm_299_while_identity_2
lstm_299_while_identity_3
lstm_299_while_identity_4
lstm_299_while_identity_5+
'lstm_299_while_lstm_299_strided_slice_1g
clstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensorM
;lstm_299_while_lstm_cell_251_matmul_readvariableop_resource:2(O
=lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource:
(J
<lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource:(??3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp?2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp?4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp?
@lstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_299/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0lstm_299_while_placeholderIlstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_299/while/lstm_cell_251/MatMulMatMul9lstm_299/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_299/while/lstm_cell_251/MatMul_1MatMullstm_299_while_placeholder_2<lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_299/while/lstm_cell_251/addAddV2-lstm_299/while/lstm_cell_251/MatMul:product:0/lstm_299/while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_299/while/lstm_cell_251/BiasAddBiasAdd$lstm_299/while/lstm_cell_251/add:z:0;lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_299/while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_299/while/lstm_cell_251/splitSplit5lstm_299/while/lstm_cell_251/split/split_dim:output:0-lstm_299/while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_299/while/lstm_cell_251/SigmoidSigmoid+lstm_299/while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_299/while/lstm_cell_251/Sigmoid_1Sigmoid+lstm_299/while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_299/while/lstm_cell_251/mulMul*lstm_299/while/lstm_cell_251/Sigmoid_1:y:0lstm_299_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_299/while/lstm_cell_251/ReluRelu+lstm_299/while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/mul_1Mul(lstm_299/while/lstm_cell_251/Sigmoid:y:0/lstm_299/while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/add_1AddV2$lstm_299/while/lstm_cell_251/mul:z:0&lstm_299/while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_299/while/lstm_cell_251/Sigmoid_2Sigmoid+lstm_299/while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_299/while/lstm_cell_251/Relu_1Relu&lstm_299/while/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/mul_2Mul*lstm_299/while/lstm_cell_251/Sigmoid_2:y:01lstm_299/while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_299/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_299_while_placeholder_1lstm_299_while_placeholder&lstm_299/while/lstm_cell_251/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_299/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_299/while/addAddV2lstm_299_while_placeholderlstm_299/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_299/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_299/while/add_1AddV2*lstm_299_while_lstm_299_while_loop_counterlstm_299/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_299/while/IdentityIdentitylstm_299/while/add_1:z:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_1Identity0lstm_299_while_lstm_299_while_maximum_iterations^lstm_299/while/NoOp*
T0*
_output_shapes
: t
lstm_299/while/Identity_2Identitylstm_299/while/add:z:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_3IdentityClstm_299/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_4Identity&lstm_299/while/lstm_cell_251/mul_2:z:0^lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_299/while/Identity_5Identity&lstm_299/while/lstm_cell_251/add_1:z:0^lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_299/while/NoOpNoOp4^lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp3^lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp5^lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_299_while_identity lstm_299/while/Identity:output:0"?
lstm_299_while_identity_1"lstm_299/while/Identity_1:output:0"?
lstm_299_while_identity_2"lstm_299/while/Identity_2:output:0"?
lstm_299_while_identity_3"lstm_299/while/Identity_3:output:0"?
lstm_299_while_identity_4"lstm_299/while/Identity_4:output:0"?
lstm_299_while_identity_5"lstm_299/while/Identity_5:output:0"T
'lstm_299_while_lstm_299_strided_slice_1)lstm_299_while_lstm_299_strided_slice_1_0"~
<lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0"?
=lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0"|
;lstm_299_while_lstm_cell_251_matmul_readvariableop_resource=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0"?
clstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensorelstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp2h
2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp2l
4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_297_layer_call_fn_1521856

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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1519854s
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
/__inference_sequential_99_layer_call_fn_1520969

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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520768o
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
while_body_1522971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_251_layer_call_fn_1523903

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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519422o
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
?
*__inference_lstm_299_layer_call_fn_1523066
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1519505o
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
?
/__inference_lstm_cell_250_layer_call_fn_1523822

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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519218o
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

lstm_298_while_body_1521594.
*lstm_298_while_lstm_298_while_loop_counter4
0lstm_298_while_lstm_298_while_maximum_iterations
lstm_298_while_placeholder 
lstm_298_while_placeholder_1 
lstm_298_while_placeholder_2 
lstm_298_while_placeholder_3-
)lstm_298_while_lstm_298_strided_slice_1_0i
elstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0:	d?R
?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?M
>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
lstm_298_while_identity
lstm_298_while_identity_1
lstm_298_while_identity_2
lstm_298_while_identity_3
lstm_298_while_identity_4
lstm_298_while_identity_5+
'lstm_298_while_lstm_298_strided_slice_1g
clstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensorN
;lstm_298_while_lstm_cell_250_matmul_readvariableop_resource:	d?P
=lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource:	2?K
<lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource:	???3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp?2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp?4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp?
@lstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_298/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0lstm_298_while_placeholderIlstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_298/while/lstm_cell_250/MatMulMatMul9lstm_298/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_298/while/lstm_cell_250/MatMul_1MatMullstm_298_while_placeholder_2<lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_298/while/lstm_cell_250/addAddV2-lstm_298/while/lstm_cell_250/MatMul:product:0/lstm_298/while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_298/while/lstm_cell_250/BiasAddBiasAdd$lstm_298/while/lstm_cell_250/add:z:0;lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_298/while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_298/while/lstm_cell_250/splitSplit5lstm_298/while/lstm_cell_250/split/split_dim:output:0-lstm_298/while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_298/while/lstm_cell_250/SigmoidSigmoid+lstm_298/while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_298/while/lstm_cell_250/Sigmoid_1Sigmoid+lstm_298/while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_298/while/lstm_cell_250/mulMul*lstm_298/while/lstm_cell_250/Sigmoid_1:y:0lstm_298_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_298/while/lstm_cell_250/ReluRelu+lstm_298/while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/mul_1Mul(lstm_298/while/lstm_cell_250/Sigmoid:y:0/lstm_298/while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/add_1AddV2$lstm_298/while/lstm_cell_250/mul:z:0&lstm_298/while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_298/while/lstm_cell_250/Sigmoid_2Sigmoid+lstm_298/while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_298/while/lstm_cell_250/Relu_1Relu&lstm_298/while/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/mul_2Mul*lstm_298/while/lstm_cell_250/Sigmoid_2:y:01lstm_298/while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_298/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_298_while_placeholder_1lstm_298_while_placeholder&lstm_298/while/lstm_cell_250/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_298/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_298/while/addAddV2lstm_298_while_placeholderlstm_298/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_298/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_298/while/add_1AddV2*lstm_298_while_lstm_298_while_loop_counterlstm_298/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_298/while/IdentityIdentitylstm_298/while/add_1:z:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_1Identity0lstm_298_while_lstm_298_while_maximum_iterations^lstm_298/while/NoOp*
T0*
_output_shapes
: t
lstm_298/while/Identity_2Identitylstm_298/while/add:z:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_3IdentityClstm_298/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_4Identity&lstm_298/while/lstm_cell_250/mul_2:z:0^lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_298/while/Identity_5Identity&lstm_298/while/lstm_cell_250/add_1:z:0^lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_298/while/NoOpNoOp4^lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp3^lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp5^lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_298_while_identity lstm_298/while/Identity:output:0"?
lstm_298_while_identity_1"lstm_298/while/Identity_1:output:0"?
lstm_298_while_identity_2"lstm_298/while/Identity_2:output:0"?
lstm_298_while_identity_3"lstm_298/while/Identity_3:output:0"?
lstm_298_while_identity_4"lstm_298/while/Identity_4:output:0"?
lstm_298_while_identity_5"lstm_298/while/Identity_5:output:0"T
'lstm_298_while_lstm_298_strided_slice_1)lstm_298_while_lstm_298_strided_slice_1_0"~
<lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0"?
=lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0"|
;lstm_298_while_lstm_cell_250_matmul_readvariableop_resource=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0"?
clstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensorelstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp2h
2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp2l
4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1523158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1518927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_249_1518951_0:	?0
while_lstm_cell_249_1518953_0:	d?,
while_lstm_cell_249_1518955_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_249_1518951:	?.
while_lstm_cell_249_1518953:	d?*
while_lstm_cell_249_1518955:	???+while/lstm_cell_249/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_249/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_249_1518951_0while_lstm_cell_249_1518953_0while_lstm_cell_249_1518955_0*
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518868?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_249/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_249/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_249/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_249/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_249_1518951while_lstm_cell_249_1518951_0"<
while_lstm_cell_249_1518953while_lstm_cell_249_1518953_0"<
while_lstm_cell_249_1518955while_lstm_cell_249_1518955_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_249/StatefulPartitionedCall+while/lstm_cell_249/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523854

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
?
while_cond_1522541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522541___redundant_placeholder05
1while_while_cond_1522541___redundant_placeholder15
1while_while_cond_1522541___redundant_placeholder25
1while_while_cond_1522541___redundant_placeholder3
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
lstm_298_while_cond_1521166.
*lstm_298_while_lstm_298_while_loop_counter4
0lstm_298_while_lstm_298_while_maximum_iterations
lstm_298_while_placeholder 
lstm_298_while_placeholder_1 
lstm_298_while_placeholder_2 
lstm_298_while_placeholder_30
,lstm_298_while_less_lstm_298_strided_slice_1G
Clstm_298_while_lstm_298_while_cond_1521166___redundant_placeholder0G
Clstm_298_while_lstm_298_while_cond_1521166___redundant_placeholder1G
Clstm_298_while_lstm_298_while_cond_1521166___redundant_placeholder2G
Clstm_298_while_lstm_298_while_cond_1521166___redundant_placeholder3
lstm_298_while_identity
?
lstm_298/while/LessLesslstm_298_while_placeholder,lstm_298_while_less_lstm_298_strided_slice_1*
T0*
_output_shapes
: ]
lstm_298/while/IdentityIdentitylstm_298/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_298_while_identity lstm_298/while/Identity:output:0*(
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520004

inputs?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1519920*
condR
while_cond_1519919*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_99_lstm_297_while_cond_1518286J
Fsequential_99_lstm_297_while_sequential_99_lstm_297_while_loop_counterP
Lsequential_99_lstm_297_while_sequential_99_lstm_297_while_maximum_iterations,
(sequential_99_lstm_297_while_placeholder.
*sequential_99_lstm_297_while_placeholder_1.
*sequential_99_lstm_297_while_placeholder_2.
*sequential_99_lstm_297_while_placeholder_3L
Hsequential_99_lstm_297_while_less_sequential_99_lstm_297_strided_slice_1c
_sequential_99_lstm_297_while_sequential_99_lstm_297_while_cond_1518286___redundant_placeholder0c
_sequential_99_lstm_297_while_sequential_99_lstm_297_while_cond_1518286___redundant_placeholder1c
_sequential_99_lstm_297_while_sequential_99_lstm_297_while_cond_1518286___redundant_placeholder2c
_sequential_99_lstm_297_while_sequential_99_lstm_297_while_cond_1518286___redundant_placeholder3)
%sequential_99_lstm_297_while_identity
?
!sequential_99/lstm_297/while/LessLess(sequential_99_lstm_297_while_placeholderHsequential_99_lstm_297_while_less_sequential_99_lstm_297_strided_slice_1*
T0*
_output_shapes
: y
%sequential_99/lstm_297/while/IdentityIdentity%sequential_99/lstm_297/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_99_lstm_297_while_identity.sequential_99/lstm_297/while/Identity:output:0*(
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520535

inputs?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1520451*
condR
while_cond_1520450*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_99_layer_call_fn_1520204
lstm_297_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_297_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520179o
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
_user_specified_namelstm_297_input
?J
?
E__inference_lstm_297_layer_call_and_return_conditional_losses_1519854

inputs?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1519770*
condR
while_cond_1519769*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1520450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1520450___redundant_placeholder05
1while_while_cond_1520450___redundant_placeholder15
1while_while_cond_1520450___redundant_placeholder25
1while_while_cond_1520450___redundant_placeholder3
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
while_cond_1522211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522211___redundant_placeholder05
1while_while_cond_1522211___redundant_placeholder15
1while_while_cond_1522211___redundant_placeholder25
1while_while_cond_1522211___redundant_placeholder3
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521823

inputsH
5lstm_297_lstm_cell_249_matmul_readvariableop_resource:	?J
7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource:	d?E
6lstm_297_lstm_cell_249_biasadd_readvariableop_resource:	?H
5lstm_298_lstm_cell_250_matmul_readvariableop_resource:	d?J
7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource:	2?E
6lstm_298_lstm_cell_250_biasadd_readvariableop_resource:	?G
5lstm_299_lstm_cell_251_matmul_readvariableop_resource:2(I
7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource:
(D
6lstm_299_lstm_cell_251_biasadd_readvariableop_resource:(9
'dense_99_matmul_readvariableop_resource:
6
(dense_99_biasadd_readvariableop_resource:
identity??dense_99/BiasAdd/ReadVariableOp?dense_99/MatMul/ReadVariableOp?-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp?,lstm_297/lstm_cell_249/MatMul/ReadVariableOp?.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp?lstm_297/while?-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp?,lstm_298/lstm_cell_250/MatMul/ReadVariableOp?.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp?lstm_298/while?-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp?,lstm_299/lstm_cell_251/MatMul/ReadVariableOp?.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp?lstm_299/whileD
lstm_297/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_297/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_297/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_297/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_sliceStridedSlicelstm_297/Shape:output:0%lstm_297/strided_slice/stack:output:0'lstm_297/strided_slice/stack_1:output:0'lstm_297/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_297/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_297/zeros/packedPacklstm_297/strided_slice:output:0 lstm_297/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_297/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_297/zerosFilllstm_297/zeros/packed:output:0lstm_297/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_297/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_297/zeros_1/packedPacklstm_297/strided_slice:output:0"lstm_297/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_297/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_297/zeros_1Fill lstm_297/zeros_1/packed:output:0lstm_297/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_297/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_297/transpose	Transposeinputs lstm_297/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_297/Shape_1Shapelstm_297/transpose:y:0*
T0*
_output_shapes
:h
lstm_297/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_297/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_1StridedSlicelstm_297/Shape_1:output:0'lstm_297/strided_slice_1/stack:output:0)lstm_297/strided_slice_1/stack_1:output:0)lstm_297/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_297/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_297/TensorArrayV2TensorListReserve-lstm_297/TensorArrayV2/element_shape:output:0!lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_297/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_297/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_297/transpose:y:0Glstm_297/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_297/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_297/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_2StridedSlicelstm_297/transpose:y:0'lstm_297/strided_slice_2/stack:output:0)lstm_297/strided_slice_2/stack_1:output:0)lstm_297/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_297/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp5lstm_297_lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_297/lstm_cell_249/MatMulMatMul!lstm_297/strided_slice_2:output:04lstm_297/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_297/lstm_cell_249/MatMul_1MatMullstm_297/zeros:output:06lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_297/lstm_cell_249/addAddV2'lstm_297/lstm_cell_249/MatMul:product:0)lstm_297/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp6lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_297/lstm_cell_249/BiasAddBiasAddlstm_297/lstm_cell_249/add:z:05lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_297/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_297/lstm_cell_249/splitSplit/lstm_297/lstm_cell_249/split/split_dim:output:0'lstm_297/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_297/lstm_cell_249/SigmoidSigmoid%lstm_297/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_297/lstm_cell_249/Sigmoid_1Sigmoid%lstm_297/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mulMul$lstm_297/lstm_cell_249/Sigmoid_1:y:0lstm_297/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_297/lstm_cell_249/ReluRelu%lstm_297/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mul_1Mul"lstm_297/lstm_cell_249/Sigmoid:y:0)lstm_297/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/add_1AddV2lstm_297/lstm_cell_249/mul:z:0 lstm_297/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_297/lstm_cell_249/Sigmoid_2Sigmoid%lstm_297/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_297/lstm_cell_249/Relu_1Relu lstm_297/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mul_2Mul$lstm_297/lstm_cell_249/Sigmoid_2:y:0+lstm_297/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_297/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_297/TensorArrayV2_1TensorListReserve/lstm_297/TensorArrayV2_1/element_shape:output:0!lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_297/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_297/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_297/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_297/whileWhile$lstm_297/while/loop_counter:output:0*lstm_297/while/maximum_iterations:output:0lstm_297/time:output:0!lstm_297/TensorArrayV2_1:handle:0lstm_297/zeros:output:0lstm_297/zeros_1:output:0!lstm_297/strided_slice_1:output:0@lstm_297/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_297_lstm_cell_249_matmul_readvariableop_resource7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource6lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
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
lstm_297_while_body_1521455*'
condR
lstm_297_while_cond_1521454*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_297/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_297/TensorArrayV2Stack/TensorListStackTensorListStacklstm_297/while:output:3Blstm_297/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_297/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_297/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_3StridedSlice4lstm_297/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_297/strided_slice_3/stack:output:0)lstm_297/strided_slice_3/stack_1:output:0)lstm_297/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_297/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_297/transpose_1	Transpose4lstm_297/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_297/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_297/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_298/ShapeShapelstm_297/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_298/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_298/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_298/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_sliceStridedSlicelstm_298/Shape:output:0%lstm_298/strided_slice/stack:output:0'lstm_298/strided_slice/stack_1:output:0'lstm_298/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_298/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_298/zeros/packedPacklstm_298/strided_slice:output:0 lstm_298/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_298/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_298/zerosFilllstm_298/zeros/packed:output:0lstm_298/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_298/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_298/zeros_1/packedPacklstm_298/strided_slice:output:0"lstm_298/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_298/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_298/zeros_1Fill lstm_298/zeros_1/packed:output:0lstm_298/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_298/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_298/transpose	Transposelstm_297/transpose_1:y:0 lstm_298/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_298/Shape_1Shapelstm_298/transpose:y:0*
T0*
_output_shapes
:h
lstm_298/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_298/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_1StridedSlicelstm_298/Shape_1:output:0'lstm_298/strided_slice_1/stack:output:0)lstm_298/strided_slice_1/stack_1:output:0)lstm_298/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_298/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_298/TensorArrayV2TensorListReserve-lstm_298/TensorArrayV2/element_shape:output:0!lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_298/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_298/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_298/transpose:y:0Glstm_298/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_298/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_298/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_2StridedSlicelstm_298/transpose:y:0'lstm_298/strided_slice_2/stack:output:0)lstm_298/strided_slice_2/stack_1:output:0)lstm_298/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_298/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp5lstm_298_lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_298/lstm_cell_250/MatMulMatMul!lstm_298/strided_slice_2:output:04lstm_298/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_298/lstm_cell_250/MatMul_1MatMullstm_298/zeros:output:06lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_298/lstm_cell_250/addAddV2'lstm_298/lstm_cell_250/MatMul:product:0)lstm_298/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp6lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_298/lstm_cell_250/BiasAddBiasAddlstm_298/lstm_cell_250/add:z:05lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_298/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_298/lstm_cell_250/splitSplit/lstm_298/lstm_cell_250/split/split_dim:output:0'lstm_298/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_298/lstm_cell_250/SigmoidSigmoid%lstm_298/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_298/lstm_cell_250/Sigmoid_1Sigmoid%lstm_298/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mulMul$lstm_298/lstm_cell_250/Sigmoid_1:y:0lstm_298/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_298/lstm_cell_250/ReluRelu%lstm_298/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mul_1Mul"lstm_298/lstm_cell_250/Sigmoid:y:0)lstm_298/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/add_1AddV2lstm_298/lstm_cell_250/mul:z:0 lstm_298/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_298/lstm_cell_250/Sigmoid_2Sigmoid%lstm_298/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_298/lstm_cell_250/Relu_1Relu lstm_298/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mul_2Mul$lstm_298/lstm_cell_250/Sigmoid_2:y:0+lstm_298/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_298/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_298/TensorArrayV2_1TensorListReserve/lstm_298/TensorArrayV2_1/element_shape:output:0!lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_298/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_298/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_298/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_298/whileWhile$lstm_298/while/loop_counter:output:0*lstm_298/while/maximum_iterations:output:0lstm_298/time:output:0!lstm_298/TensorArrayV2_1:handle:0lstm_298/zeros:output:0lstm_298/zeros_1:output:0!lstm_298/strided_slice_1:output:0@lstm_298/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_298_lstm_cell_250_matmul_readvariableop_resource7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource6lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
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
lstm_298_while_body_1521594*'
condR
lstm_298_while_cond_1521593*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_298/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_298/TensorArrayV2Stack/TensorListStackTensorListStacklstm_298/while:output:3Blstm_298/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_298/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_298/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_3StridedSlice4lstm_298/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_298/strided_slice_3/stack:output:0)lstm_298/strided_slice_3/stack_1:output:0)lstm_298/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_298/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_298/transpose_1	Transpose4lstm_298/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_298/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_298/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_299/ShapeShapelstm_298/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_299/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_299/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_299/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_sliceStridedSlicelstm_299/Shape:output:0%lstm_299/strided_slice/stack:output:0'lstm_299/strided_slice/stack_1:output:0'lstm_299/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_299/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_299/zeros/packedPacklstm_299/strided_slice:output:0 lstm_299/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_299/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_299/zerosFilllstm_299/zeros/packed:output:0lstm_299/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_299/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_299/zeros_1/packedPacklstm_299/strided_slice:output:0"lstm_299/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_299/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_299/zeros_1Fill lstm_299/zeros_1/packed:output:0lstm_299/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_299/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_299/transpose	Transposelstm_298/transpose_1:y:0 lstm_299/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_299/Shape_1Shapelstm_299/transpose:y:0*
T0*
_output_shapes
:h
lstm_299/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_299/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_1StridedSlicelstm_299/Shape_1:output:0'lstm_299/strided_slice_1/stack:output:0)lstm_299/strided_slice_1/stack_1:output:0)lstm_299/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_299/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_299/TensorArrayV2TensorListReserve-lstm_299/TensorArrayV2/element_shape:output:0!lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_299/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_299/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_299/transpose:y:0Glstm_299/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_299/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_299/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_2StridedSlicelstm_299/transpose:y:0'lstm_299/strided_slice_2/stack:output:0)lstm_299/strided_slice_2/stack_1:output:0)lstm_299/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_299/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp5lstm_299_lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_299/lstm_cell_251/MatMulMatMul!lstm_299/strided_slice_2:output:04lstm_299/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_299/lstm_cell_251/MatMul_1MatMullstm_299/zeros:output:06lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_299/lstm_cell_251/addAddV2'lstm_299/lstm_cell_251/MatMul:product:0)lstm_299/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp6lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_299/lstm_cell_251/BiasAddBiasAddlstm_299/lstm_cell_251/add:z:05lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_299/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_299/lstm_cell_251/splitSplit/lstm_299/lstm_cell_251/split/split_dim:output:0'lstm_299/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_299/lstm_cell_251/SigmoidSigmoid%lstm_299/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_299/lstm_cell_251/Sigmoid_1Sigmoid%lstm_299/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mulMul$lstm_299/lstm_cell_251/Sigmoid_1:y:0lstm_299/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_299/lstm_cell_251/ReluRelu%lstm_299/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mul_1Mul"lstm_299/lstm_cell_251/Sigmoid:y:0)lstm_299/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/add_1AddV2lstm_299/lstm_cell_251/mul:z:0 lstm_299/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_299/lstm_cell_251/Sigmoid_2Sigmoid%lstm_299/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_299/lstm_cell_251/Relu_1Relu lstm_299/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mul_2Mul$lstm_299/lstm_cell_251/Sigmoid_2:y:0+lstm_299/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_299/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_299/TensorArrayV2_1TensorListReserve/lstm_299/TensorArrayV2_1/element_shape:output:0!lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_299/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_299/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_299/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_299/whileWhile$lstm_299/while/loop_counter:output:0*lstm_299/while/maximum_iterations:output:0lstm_299/time:output:0!lstm_299/TensorArrayV2_1:handle:0lstm_299/zeros:output:0lstm_299/zeros_1:output:0!lstm_299/strided_slice_1:output:0@lstm_299/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_299_lstm_cell_251_matmul_readvariableop_resource7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource6lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
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
lstm_299_while_body_1521733*'
condR
lstm_299_while_cond_1521732*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_299/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_299/TensorArrayV2Stack/TensorListStackTensorListStacklstm_299/while:output:3Blstm_299/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_299/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_299/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_3StridedSlice4lstm_299/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_299/strided_slice_3/stack:output:0)lstm_299/strided_slice_3/stack_1:output:0)lstm_299/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_299/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_299/transpose_1	Transpose4lstm_299/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_299/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_299/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_99/MatMulMatMul!lstm_299/strided_slice_3:output:0&dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_99/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp.^lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp-^lstm_297/lstm_cell_249/MatMul/ReadVariableOp/^lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp^lstm_297/while.^lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp-^lstm_298/lstm_cell_250/MatMul/ReadVariableOp/^lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp^lstm_298/while.^lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp-^lstm_299/lstm_cell_251/MatMul/ReadVariableOp/^lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp^lstm_299/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp2^
-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp2\
,lstm_297/lstm_cell_249/MatMul/ReadVariableOp,lstm_297/lstm_cell_249/MatMul/ReadVariableOp2`
.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp2 
lstm_297/whilelstm_297/while2^
-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp2\
,lstm_298/lstm_cell_250/MatMul/ReadVariableOp,lstm_298/lstm_cell_250/MatMul/ReadVariableOp2`
.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp2 
lstm_298/whilelstm_298/while2^
-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp2\
,lstm_299/lstm_cell_251/MatMul/ReadVariableOp,lstm_299/lstm_cell_251/MatMul/ReadVariableOp2`
.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp2 
lstm_299/whilelstm_299/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522439

inputs?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1522355*
condR
while_cond_1522354*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519568

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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520370

inputs>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1520286*
condR
while_cond_1520285*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1519626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519626___redundant_placeholder05
1while_while_cond_1519626___redundant_placeholder15
1while_while_cond_1519626___redundant_placeholder25
1while_while_cond_1519626___redundant_placeholder3
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
*__inference_lstm_298_layer_call_fn_1522461
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1519346|
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
?
?
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520768

inputs#
lstm_297_1520741:	?#
lstm_297_1520743:	d?
lstm_297_1520745:	?#
lstm_298_1520748:	d?#
lstm_298_1520750:	2?
lstm_298_1520752:	?"
lstm_299_1520755:2("
lstm_299_1520757:
(
lstm_299_1520759:("
dense_99_1520762:

dense_99_1520764:
identity?? dense_99/StatefulPartitionedCall? lstm_297/StatefulPartitionedCall? lstm_298/StatefulPartitionedCall? lstm_299/StatefulPartitionedCall?
 lstm_297/StatefulPartitionedCallStatefulPartitionedCallinputslstm_297_1520741lstm_297_1520743lstm_297_1520745*
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1520700?
 lstm_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_297/StatefulPartitionedCall:output:0lstm_298_1520748lstm_298_1520750lstm_298_1520752*
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520535?
 lstm_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_298/StatefulPartitionedCall:output:0lstm_299_1520755lstm_299_1520757lstm_299_1520759*
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520370?
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)lstm_299/StatefulPartitionedCall:output:0dense_99_1520762dense_99_1520764*
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172x
IdentityIdentity)dense_99/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_99/StatefulPartitionedCall!^lstm_297/StatefulPartitionedCall!^lstm_298/StatefulPartitionedCall!^lstm_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall2D
 lstm_297/StatefulPartitionedCall lstm_297/StatefulPartitionedCall2D
 lstm_298/StatefulPartitionedCall lstm_298/StatefulPartitionedCall2D
 lstm_299/StatefulPartitionedCall lstm_299/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1522069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522912

inputs?
,lstm_cell_250_matmul_readvariableop_resource:	d?A
.lstm_cell_250_matmul_1_readvariableop_resource:	2?<
-lstm_cell_250_biasadd_readvariableop_resource:	?
identity??$lstm_cell_250/BiasAdd/ReadVariableOp?#lstm_cell_250/MatMul/ReadVariableOp?%lstm_cell_250/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_250/MatMul/ReadVariableOpReadVariableOp,lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_250/MatMulMatMulstrided_slice_2:output:0+lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_250/MatMul_1MatMulzeros:output:0-lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_250/addAddV2lstm_cell_250/MatMul:product:0 lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_250/BiasAddBiasAddlstm_cell_250/add:z:0,lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_250/splitSplit&lstm_cell_250/split/split_dim:output:0lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_250/SigmoidSigmoidlstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_1Sigmoidlstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_250/mulMullstm_cell_250/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_250/ReluRelulstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_1Mullstm_cell_250/Sigmoid:y:0 lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_250/add_1AddV2lstm_cell_250/mul:z:0lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_250/Sigmoid_2Sigmoidlstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_250/Relu_1Relulstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_250/mul_2Mullstm_cell_250/Sigmoid_2:y:0"lstm_cell_250/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_250_matmul_readvariableop_resource.lstm_cell_250_matmul_1_readvariableop_resource-lstm_cell_250_biasadd_readvariableop_resource*
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
while_body_1522828*
condR
while_cond_1522827*K
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
NoOpNoOp%^lstm_cell_250/BiasAdd/ReadVariableOp$^lstm_cell_250/MatMul/ReadVariableOp&^lstm_cell_250/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_250/BiasAdd/ReadVariableOp$lstm_cell_250/BiasAdd/ReadVariableOp2J
#lstm_cell_250/MatMul/ReadVariableOp#lstm_cell_250/MatMul/ReadVariableOp2N
%lstm_cell_250/MatMul_1/ReadVariableOp%lstm_cell_250/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1522685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521396

inputsH
5lstm_297_lstm_cell_249_matmul_readvariableop_resource:	?J
7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource:	d?E
6lstm_297_lstm_cell_249_biasadd_readvariableop_resource:	?H
5lstm_298_lstm_cell_250_matmul_readvariableop_resource:	d?J
7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource:	2?E
6lstm_298_lstm_cell_250_biasadd_readvariableop_resource:	?G
5lstm_299_lstm_cell_251_matmul_readvariableop_resource:2(I
7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource:
(D
6lstm_299_lstm_cell_251_biasadd_readvariableop_resource:(9
'dense_99_matmul_readvariableop_resource:
6
(dense_99_biasadd_readvariableop_resource:
identity??dense_99/BiasAdd/ReadVariableOp?dense_99/MatMul/ReadVariableOp?-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp?,lstm_297/lstm_cell_249/MatMul/ReadVariableOp?.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp?lstm_297/while?-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp?,lstm_298/lstm_cell_250/MatMul/ReadVariableOp?.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp?lstm_298/while?-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp?,lstm_299/lstm_cell_251/MatMul/ReadVariableOp?.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp?lstm_299/whileD
lstm_297/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_297/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_297/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_297/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_sliceStridedSlicelstm_297/Shape:output:0%lstm_297/strided_slice/stack:output:0'lstm_297/strided_slice/stack_1:output:0'lstm_297/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_297/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_297/zeros/packedPacklstm_297/strided_slice:output:0 lstm_297/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_297/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_297/zerosFilllstm_297/zeros/packed:output:0lstm_297/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_297/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_297/zeros_1/packedPacklstm_297/strided_slice:output:0"lstm_297/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_297/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_297/zeros_1Fill lstm_297/zeros_1/packed:output:0lstm_297/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_297/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_297/transpose	Transposeinputs lstm_297/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_297/Shape_1Shapelstm_297/transpose:y:0*
T0*
_output_shapes
:h
lstm_297/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_297/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_1StridedSlicelstm_297/Shape_1:output:0'lstm_297/strided_slice_1/stack:output:0)lstm_297/strided_slice_1/stack_1:output:0)lstm_297/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_297/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_297/TensorArrayV2TensorListReserve-lstm_297/TensorArrayV2/element_shape:output:0!lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_297/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_297/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_297/transpose:y:0Glstm_297/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_297/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_297/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_2StridedSlicelstm_297/transpose:y:0'lstm_297/strided_slice_2/stack:output:0)lstm_297/strided_slice_2/stack_1:output:0)lstm_297/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_297/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp5lstm_297_lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_297/lstm_cell_249/MatMulMatMul!lstm_297/strided_slice_2:output:04lstm_297/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_297/lstm_cell_249/MatMul_1MatMullstm_297/zeros:output:06lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_297/lstm_cell_249/addAddV2'lstm_297/lstm_cell_249/MatMul:product:0)lstm_297/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp6lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_297/lstm_cell_249/BiasAddBiasAddlstm_297/lstm_cell_249/add:z:05lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_297/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_297/lstm_cell_249/splitSplit/lstm_297/lstm_cell_249/split/split_dim:output:0'lstm_297/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_297/lstm_cell_249/SigmoidSigmoid%lstm_297/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_297/lstm_cell_249/Sigmoid_1Sigmoid%lstm_297/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mulMul$lstm_297/lstm_cell_249/Sigmoid_1:y:0lstm_297/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_297/lstm_cell_249/ReluRelu%lstm_297/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mul_1Mul"lstm_297/lstm_cell_249/Sigmoid:y:0)lstm_297/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/add_1AddV2lstm_297/lstm_cell_249/mul:z:0 lstm_297/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_297/lstm_cell_249/Sigmoid_2Sigmoid%lstm_297/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_297/lstm_cell_249/Relu_1Relu lstm_297/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_297/lstm_cell_249/mul_2Mul$lstm_297/lstm_cell_249/Sigmoid_2:y:0+lstm_297/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_297/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_297/TensorArrayV2_1TensorListReserve/lstm_297/TensorArrayV2_1/element_shape:output:0!lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_297/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_297/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_297/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_297/whileWhile$lstm_297/while/loop_counter:output:0*lstm_297/while/maximum_iterations:output:0lstm_297/time:output:0!lstm_297/TensorArrayV2_1:handle:0lstm_297/zeros:output:0lstm_297/zeros_1:output:0!lstm_297/strided_slice_1:output:0@lstm_297/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_297_lstm_cell_249_matmul_readvariableop_resource7lstm_297_lstm_cell_249_matmul_1_readvariableop_resource6lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
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
lstm_297_while_body_1521028*'
condR
lstm_297_while_cond_1521027*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_297/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_297/TensorArrayV2Stack/TensorListStackTensorListStacklstm_297/while:output:3Blstm_297/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_297/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_297/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_297/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_297/strided_slice_3StridedSlice4lstm_297/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_297/strided_slice_3/stack:output:0)lstm_297/strided_slice_3/stack_1:output:0)lstm_297/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_297/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_297/transpose_1	Transpose4lstm_297/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_297/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_297/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_298/ShapeShapelstm_297/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_298/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_298/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_298/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_sliceStridedSlicelstm_298/Shape:output:0%lstm_298/strided_slice/stack:output:0'lstm_298/strided_slice/stack_1:output:0'lstm_298/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_298/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_298/zeros/packedPacklstm_298/strided_slice:output:0 lstm_298/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_298/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_298/zerosFilllstm_298/zeros/packed:output:0lstm_298/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_298/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_298/zeros_1/packedPacklstm_298/strided_slice:output:0"lstm_298/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_298/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_298/zeros_1Fill lstm_298/zeros_1/packed:output:0lstm_298/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_298/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_298/transpose	Transposelstm_297/transpose_1:y:0 lstm_298/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_298/Shape_1Shapelstm_298/transpose:y:0*
T0*
_output_shapes
:h
lstm_298/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_298/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_1StridedSlicelstm_298/Shape_1:output:0'lstm_298/strided_slice_1/stack:output:0)lstm_298/strided_slice_1/stack_1:output:0)lstm_298/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_298/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_298/TensorArrayV2TensorListReserve-lstm_298/TensorArrayV2/element_shape:output:0!lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_298/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_298/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_298/transpose:y:0Glstm_298/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_298/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_298/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_2StridedSlicelstm_298/transpose:y:0'lstm_298/strided_slice_2/stack:output:0)lstm_298/strided_slice_2/stack_1:output:0)lstm_298/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_298/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp5lstm_298_lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_298/lstm_cell_250/MatMulMatMul!lstm_298/strided_slice_2:output:04lstm_298/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_298/lstm_cell_250/MatMul_1MatMullstm_298/zeros:output:06lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_298/lstm_cell_250/addAddV2'lstm_298/lstm_cell_250/MatMul:product:0)lstm_298/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp6lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_298/lstm_cell_250/BiasAddBiasAddlstm_298/lstm_cell_250/add:z:05lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_298/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_298/lstm_cell_250/splitSplit/lstm_298/lstm_cell_250/split/split_dim:output:0'lstm_298/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_298/lstm_cell_250/SigmoidSigmoid%lstm_298/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_298/lstm_cell_250/Sigmoid_1Sigmoid%lstm_298/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mulMul$lstm_298/lstm_cell_250/Sigmoid_1:y:0lstm_298/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_298/lstm_cell_250/ReluRelu%lstm_298/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mul_1Mul"lstm_298/lstm_cell_250/Sigmoid:y:0)lstm_298/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/add_1AddV2lstm_298/lstm_cell_250/mul:z:0 lstm_298/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_298/lstm_cell_250/Sigmoid_2Sigmoid%lstm_298/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_298/lstm_cell_250/Relu_1Relu lstm_298/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_298/lstm_cell_250/mul_2Mul$lstm_298/lstm_cell_250/Sigmoid_2:y:0+lstm_298/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_298/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_298/TensorArrayV2_1TensorListReserve/lstm_298/TensorArrayV2_1/element_shape:output:0!lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_298/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_298/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_298/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_298/whileWhile$lstm_298/while/loop_counter:output:0*lstm_298/while/maximum_iterations:output:0lstm_298/time:output:0!lstm_298/TensorArrayV2_1:handle:0lstm_298/zeros:output:0lstm_298/zeros_1:output:0!lstm_298/strided_slice_1:output:0@lstm_298/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_298_lstm_cell_250_matmul_readvariableop_resource7lstm_298_lstm_cell_250_matmul_1_readvariableop_resource6lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
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
lstm_298_while_body_1521167*'
condR
lstm_298_while_cond_1521166*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_298/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_298/TensorArrayV2Stack/TensorListStackTensorListStacklstm_298/while:output:3Blstm_298/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_298/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_298/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_298/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_298/strided_slice_3StridedSlice4lstm_298/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_298/strided_slice_3/stack:output:0)lstm_298/strided_slice_3/stack_1:output:0)lstm_298/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_298/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_298/transpose_1	Transpose4lstm_298/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_298/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_298/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_299/ShapeShapelstm_298/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_299/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_299/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_299/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_sliceStridedSlicelstm_299/Shape:output:0%lstm_299/strided_slice/stack:output:0'lstm_299/strided_slice/stack_1:output:0'lstm_299/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_299/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_299/zeros/packedPacklstm_299/strided_slice:output:0 lstm_299/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_299/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_299/zerosFilllstm_299/zeros/packed:output:0lstm_299/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_299/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_299/zeros_1/packedPacklstm_299/strided_slice:output:0"lstm_299/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_299/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_299/zeros_1Fill lstm_299/zeros_1/packed:output:0lstm_299/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_299/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_299/transpose	Transposelstm_298/transpose_1:y:0 lstm_299/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_299/Shape_1Shapelstm_299/transpose:y:0*
T0*
_output_shapes
:h
lstm_299/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_299/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_1StridedSlicelstm_299/Shape_1:output:0'lstm_299/strided_slice_1/stack:output:0)lstm_299/strided_slice_1/stack_1:output:0)lstm_299/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_299/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_299/TensorArrayV2TensorListReserve-lstm_299/TensorArrayV2/element_shape:output:0!lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_299/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_299/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_299/transpose:y:0Glstm_299/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_299/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_299/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_2StridedSlicelstm_299/transpose:y:0'lstm_299/strided_slice_2/stack:output:0)lstm_299/strided_slice_2/stack_1:output:0)lstm_299/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_299/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp5lstm_299_lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_299/lstm_cell_251/MatMulMatMul!lstm_299/strided_slice_2:output:04lstm_299/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_299/lstm_cell_251/MatMul_1MatMullstm_299/zeros:output:06lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_299/lstm_cell_251/addAddV2'lstm_299/lstm_cell_251/MatMul:product:0)lstm_299/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp6lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_299/lstm_cell_251/BiasAddBiasAddlstm_299/lstm_cell_251/add:z:05lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_299/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_299/lstm_cell_251/splitSplit/lstm_299/lstm_cell_251/split/split_dim:output:0'lstm_299/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_299/lstm_cell_251/SigmoidSigmoid%lstm_299/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_299/lstm_cell_251/Sigmoid_1Sigmoid%lstm_299/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mulMul$lstm_299/lstm_cell_251/Sigmoid_1:y:0lstm_299/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_299/lstm_cell_251/ReluRelu%lstm_299/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mul_1Mul"lstm_299/lstm_cell_251/Sigmoid:y:0)lstm_299/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/add_1AddV2lstm_299/lstm_cell_251/mul:z:0 lstm_299/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_299/lstm_cell_251/Sigmoid_2Sigmoid%lstm_299/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_299/lstm_cell_251/Relu_1Relu lstm_299/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_299/lstm_cell_251/mul_2Mul$lstm_299/lstm_cell_251/Sigmoid_2:y:0+lstm_299/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_299/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_299/TensorArrayV2_1TensorListReserve/lstm_299/TensorArrayV2_1/element_shape:output:0!lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_299/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_299/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_299/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_299/whileWhile$lstm_299/while/loop_counter:output:0*lstm_299/while/maximum_iterations:output:0lstm_299/time:output:0!lstm_299/TensorArrayV2_1:handle:0lstm_299/zeros:output:0lstm_299/zeros_1:output:0!lstm_299/strided_slice_1:output:0@lstm_299/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_299_lstm_cell_251_matmul_readvariableop_resource7lstm_299_lstm_cell_251_matmul_1_readvariableop_resource6lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
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
lstm_299_while_body_1521306*'
condR
lstm_299_while_cond_1521305*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_299/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_299/TensorArrayV2Stack/TensorListStackTensorListStacklstm_299/while:output:3Blstm_299/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_299/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_299/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_299/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_299/strided_slice_3StridedSlice4lstm_299/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_299/strided_slice_3/stack:output:0)lstm_299/strided_slice_3/stack_1:output:0)lstm_299/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_299/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_299/transpose_1	Transpose4lstm_299/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_299/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_299/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_99/MatMulMatMul!lstm_299/strided_slice_3:output:0&dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_99/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp.^lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp-^lstm_297/lstm_cell_249/MatMul/ReadVariableOp/^lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp^lstm_297/while.^lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp-^lstm_298/lstm_cell_250/MatMul/ReadVariableOp/^lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp^lstm_298/while.^lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp-^lstm_299/lstm_cell_251/MatMul/ReadVariableOp/^lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp^lstm_299/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp2^
-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp-lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp2\
,lstm_297/lstm_cell_249/MatMul/ReadVariableOp,lstm_297/lstm_cell_249/MatMul/ReadVariableOp2`
.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp.lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp2 
lstm_297/whilelstm_297/while2^
-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp-lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp2\
,lstm_298/lstm_cell_250/MatMul/ReadVariableOp,lstm_298/lstm_cell_250/MatMul/ReadVariableOp2`
.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp.lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp2 
lstm_298/whilelstm_298/while2^
-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp-lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp2\
,lstm_299/lstm_cell_251/MatMul/ReadVariableOp,lstm_299/lstm_cell_251/MatMul/ReadVariableOp2`
.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp.lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp2 
lstm_299/whilelstm_299/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523671

inputs>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1523587*
condR
while_cond_1523586*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_299_layer_call_fn_1523088

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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520154o
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
?
/__inference_lstm_cell_251_layer_call_fn_1523920

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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519568o
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1518805

inputs(
lstm_cell_249_1518723:	?(
lstm_cell_249_1518725:	d?$
lstm_cell_249_1518727:	?
identity??%lstm_cell_249/StatefulPartitionedCall?while;
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
%lstm_cell_249/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_249_1518723lstm_cell_249_1518725lstm_cell_249_1518727*
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518722n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_249_1518723lstm_cell_249_1518725lstm_cell_249_1518727*
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
while_body_1518736*
condR
while_cond_1518735*K
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
NoOpNoOp&^lstm_cell_249/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_249/StatefulPartitionedCall%lstm_cell_249/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522153
inputs_0?
,lstm_cell_249_matmul_readvariableop_resource:	?A
.lstm_cell_249_matmul_1_readvariableop_resource:	d?<
-lstm_cell_249_biasadd_readvariableop_resource:	?
identity??$lstm_cell_249/BiasAdd/ReadVariableOp?#lstm_cell_249/MatMul/ReadVariableOp?%lstm_cell_249/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_249/MatMul/ReadVariableOpReadVariableOp,lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_249/MatMulMatMulstrided_slice_2:output:0+lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_249/MatMul_1MatMulzeros:output:0-lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_249/addAddV2lstm_cell_249/MatMul:product:0 lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_249/BiasAddBiasAddlstm_cell_249/add:z:0,lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_249/splitSplit&lstm_cell_249/split/split_dim:output:0lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_249/SigmoidSigmoidlstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_1Sigmoidlstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_249/mulMullstm_cell_249/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_249/ReluRelulstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_1Mullstm_cell_249/Sigmoid:y:0 lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_249/add_1AddV2lstm_cell_249/mul:z:0lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_249/Sigmoid_2Sigmoidlstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_249/Relu_1Relulstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_249/mul_2Mullstm_cell_249/Sigmoid_2:y:0"lstm_cell_249/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_249_matmul_readvariableop_resource.lstm_cell_249_matmul_1_readvariableop_resource-lstm_cell_249_biasadd_readvariableop_resource*
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
while_body_1522069*
condR
while_cond_1522068*K
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
NoOpNoOp%^lstm_cell_249/BiasAdd/ReadVariableOp$^lstm_cell_249/MatMul/ReadVariableOp&^lstm_cell_249/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_249/BiasAdd/ReadVariableOp$lstm_cell_249/BiasAdd/ReadVariableOp2J
#lstm_cell_249/MatMul/ReadVariableOp#lstm_cell_249/MatMul/ReadVariableOp2N
%lstm_cell_249/MatMul_1/ReadVariableOp%lstm_cell_249/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_99_layer_call_fn_1520820
lstm_297_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_297_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520768o
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
_user_specified_namelstm_297_input
?8
?
E__inference_lstm_299_layer_call_and_return_conditional_losses_1519505

inputs'
lstm_cell_251_1519423:2('
lstm_cell_251_1519425:
(#
lstm_cell_251_1519427:(
identity??%lstm_cell_251/StatefulPartitionedCall?while;
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
%lstm_cell_251/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_251_1519423lstm_cell_251_1519425lstm_cell_251_1519427*
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519422n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_251_1519423lstm_cell_251_1519425lstm_cell_251_1519427*
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
while_body_1519436*
condR
while_cond_1519435*K
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
NoOpNoOp&^lstm_cell_251/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_251/StatefulPartitionedCall%lstm_cell_251/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1518655
lstm_297_inputV
Csequential_99_lstm_297_lstm_cell_249_matmul_readvariableop_resource:	?X
Esequential_99_lstm_297_lstm_cell_249_matmul_1_readvariableop_resource:	d?S
Dsequential_99_lstm_297_lstm_cell_249_biasadd_readvariableop_resource:	?V
Csequential_99_lstm_298_lstm_cell_250_matmul_readvariableop_resource:	d?X
Esequential_99_lstm_298_lstm_cell_250_matmul_1_readvariableop_resource:	2?S
Dsequential_99_lstm_298_lstm_cell_250_biasadd_readvariableop_resource:	?U
Csequential_99_lstm_299_lstm_cell_251_matmul_readvariableop_resource:2(W
Esequential_99_lstm_299_lstm_cell_251_matmul_1_readvariableop_resource:
(R
Dsequential_99_lstm_299_lstm_cell_251_biasadd_readvariableop_resource:(G
5sequential_99_dense_99_matmul_readvariableop_resource:
D
6sequential_99_dense_99_biasadd_readvariableop_resource:
identity??-sequential_99/dense_99/BiasAdd/ReadVariableOp?,sequential_99/dense_99/MatMul/ReadVariableOp?;sequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp?:sequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOp?<sequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp?sequential_99/lstm_297/while?;sequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp?:sequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOp?<sequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp?sequential_99/lstm_298/while?;sequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp?:sequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOp?<sequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp?sequential_99/lstm_299/whileZ
sequential_99/lstm_297/ShapeShapelstm_297_input*
T0*
_output_shapes
:t
*sequential_99/lstm_297/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_99/lstm_297/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_99/lstm_297/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_99/lstm_297/strided_sliceStridedSlice%sequential_99/lstm_297/Shape:output:03sequential_99/lstm_297/strided_slice/stack:output:05sequential_99/lstm_297/strided_slice/stack_1:output:05sequential_99/lstm_297/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_99/lstm_297/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_99/lstm_297/zeros/packedPack-sequential_99/lstm_297/strided_slice:output:0.sequential_99/lstm_297/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_99/lstm_297/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_297/zerosFill,sequential_99/lstm_297/zeros/packed:output:0+sequential_99/lstm_297/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_99/lstm_297/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_99/lstm_297/zeros_1/packedPack-sequential_99/lstm_297/strided_slice:output:00sequential_99/lstm_297/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_99/lstm_297/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_297/zeros_1Fill.sequential_99/lstm_297/zeros_1/packed:output:0-sequential_99/lstm_297/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_99/lstm_297/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_99/lstm_297/transpose	Transposelstm_297_input.sequential_99/lstm_297/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_99/lstm_297/Shape_1Shape$sequential_99/lstm_297/transpose:y:0*
T0*
_output_shapes
:v
,sequential_99/lstm_297/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_297/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_297/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_297/strided_slice_1StridedSlice'sequential_99/lstm_297/Shape_1:output:05sequential_99/lstm_297/strided_slice_1/stack:output:07sequential_99/lstm_297/strided_slice_1/stack_1:output:07sequential_99/lstm_297/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_99/lstm_297/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_99/lstm_297/TensorArrayV2TensorListReserve;sequential_99/lstm_297/TensorArrayV2/element_shape:output:0/sequential_99/lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_99/lstm_297/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_99/lstm_297/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_99/lstm_297/transpose:y:0Usequential_99/lstm_297/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_99/lstm_297/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_297/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_297/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_297/strided_slice_2StridedSlice$sequential_99/lstm_297/transpose:y:05sequential_99/lstm_297/strided_slice_2/stack:output:07sequential_99/lstm_297/strided_slice_2/stack_1:output:07sequential_99/lstm_297/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOpReadVariableOpCsequential_99_lstm_297_lstm_cell_249_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_99/lstm_297/lstm_cell_249/MatMulMatMul/sequential_99/lstm_297/strided_slice_2:output:0Bsequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOpEsequential_99_lstm_297_lstm_cell_249_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_99/lstm_297/lstm_cell_249/MatMul_1MatMul%sequential_99/lstm_297/zeros:output:0Dsequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_99/lstm_297/lstm_cell_249/addAddV25sequential_99/lstm_297/lstm_cell_249/MatMul:product:07sequential_99/lstm_297/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOpDsequential_99_lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_99/lstm_297/lstm_cell_249/BiasAddBiasAdd,sequential_99/lstm_297/lstm_cell_249/add:z:0Csequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_99/lstm_297/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_99/lstm_297/lstm_cell_249/splitSplit=sequential_99/lstm_297/lstm_cell_249/split/split_dim:output:05sequential_99/lstm_297/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_99/lstm_297/lstm_cell_249/SigmoidSigmoid3sequential_99/lstm_297/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_99/lstm_297/lstm_cell_249/Sigmoid_1Sigmoid3sequential_99/lstm_297/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_99/lstm_297/lstm_cell_249/mulMul2sequential_99/lstm_297/lstm_cell_249/Sigmoid_1:y:0'sequential_99/lstm_297/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_99/lstm_297/lstm_cell_249/ReluRelu3sequential_99/lstm_297/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_99/lstm_297/lstm_cell_249/mul_1Mul0sequential_99/lstm_297/lstm_cell_249/Sigmoid:y:07sequential_99/lstm_297/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_99/lstm_297/lstm_cell_249/add_1AddV2,sequential_99/lstm_297/lstm_cell_249/mul:z:0.sequential_99/lstm_297/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_99/lstm_297/lstm_cell_249/Sigmoid_2Sigmoid3sequential_99/lstm_297/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_99/lstm_297/lstm_cell_249/Relu_1Relu.sequential_99/lstm_297/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_99/lstm_297/lstm_cell_249/mul_2Mul2sequential_99/lstm_297/lstm_cell_249/Sigmoid_2:y:09sequential_99/lstm_297/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_99/lstm_297/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_99/lstm_297/TensorArrayV2_1TensorListReserve=sequential_99/lstm_297/TensorArrayV2_1/element_shape:output:0/sequential_99/lstm_297/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_99/lstm_297/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_99/lstm_297/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_99/lstm_297/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_99/lstm_297/whileWhile2sequential_99/lstm_297/while/loop_counter:output:08sequential_99/lstm_297/while/maximum_iterations:output:0$sequential_99/lstm_297/time:output:0/sequential_99/lstm_297/TensorArrayV2_1:handle:0%sequential_99/lstm_297/zeros:output:0'sequential_99/lstm_297/zeros_1:output:0/sequential_99/lstm_297/strided_slice_1:output:0Nsequential_99/lstm_297/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_99_lstm_297_lstm_cell_249_matmul_readvariableop_resourceEsequential_99_lstm_297_lstm_cell_249_matmul_1_readvariableop_resourceDsequential_99_lstm_297_lstm_cell_249_biasadd_readvariableop_resource*
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
)sequential_99_lstm_297_while_body_1518287*5
cond-R+
)sequential_99_lstm_297_while_cond_1518286*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_99/lstm_297/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_99/lstm_297/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_99/lstm_297/while:output:3Psequential_99/lstm_297/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_99/lstm_297/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_99/lstm_297/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_297/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_297/strided_slice_3StridedSliceBsequential_99/lstm_297/TensorArrayV2Stack/TensorListStack:tensor:05sequential_99/lstm_297/strided_slice_3/stack:output:07sequential_99/lstm_297/strided_slice_3/stack_1:output:07sequential_99/lstm_297/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_99/lstm_297/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_99/lstm_297/transpose_1	TransposeBsequential_99/lstm_297/TensorArrayV2Stack/TensorListStack:tensor:00sequential_99/lstm_297/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_99/lstm_297/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_99/lstm_298/ShapeShape&sequential_99/lstm_297/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_99/lstm_298/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_99/lstm_298/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_99/lstm_298/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_99/lstm_298/strided_sliceStridedSlice%sequential_99/lstm_298/Shape:output:03sequential_99/lstm_298/strided_slice/stack:output:05sequential_99/lstm_298/strided_slice/stack_1:output:05sequential_99/lstm_298/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_99/lstm_298/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_99/lstm_298/zeros/packedPack-sequential_99/lstm_298/strided_slice:output:0.sequential_99/lstm_298/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_99/lstm_298/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_298/zerosFill,sequential_99/lstm_298/zeros/packed:output:0+sequential_99/lstm_298/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_99/lstm_298/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_99/lstm_298/zeros_1/packedPack-sequential_99/lstm_298/strided_slice:output:00sequential_99/lstm_298/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_99/lstm_298/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_298/zeros_1Fill.sequential_99/lstm_298/zeros_1/packed:output:0-sequential_99/lstm_298/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_99/lstm_298/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_99/lstm_298/transpose	Transpose&sequential_99/lstm_297/transpose_1:y:0.sequential_99/lstm_298/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_99/lstm_298/Shape_1Shape$sequential_99/lstm_298/transpose:y:0*
T0*
_output_shapes
:v
,sequential_99/lstm_298/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_298/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_298/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_298/strided_slice_1StridedSlice'sequential_99/lstm_298/Shape_1:output:05sequential_99/lstm_298/strided_slice_1/stack:output:07sequential_99/lstm_298/strided_slice_1/stack_1:output:07sequential_99/lstm_298/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_99/lstm_298/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_99/lstm_298/TensorArrayV2TensorListReserve;sequential_99/lstm_298/TensorArrayV2/element_shape:output:0/sequential_99/lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_99/lstm_298/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_99/lstm_298/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_99/lstm_298/transpose:y:0Usequential_99/lstm_298/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_99/lstm_298/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_298/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_298/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_298/strided_slice_2StridedSlice$sequential_99/lstm_298/transpose:y:05sequential_99/lstm_298/strided_slice_2/stack:output:07sequential_99/lstm_298/strided_slice_2/stack_1:output:07sequential_99/lstm_298/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOpReadVariableOpCsequential_99_lstm_298_lstm_cell_250_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_99/lstm_298/lstm_cell_250/MatMulMatMul/sequential_99/lstm_298/strided_slice_2:output:0Bsequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOpEsequential_99_lstm_298_lstm_cell_250_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_99/lstm_298/lstm_cell_250/MatMul_1MatMul%sequential_99/lstm_298/zeros:output:0Dsequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_99/lstm_298/lstm_cell_250/addAddV25sequential_99/lstm_298/lstm_cell_250/MatMul:product:07sequential_99/lstm_298/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOpDsequential_99_lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_99/lstm_298/lstm_cell_250/BiasAddBiasAdd,sequential_99/lstm_298/lstm_cell_250/add:z:0Csequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_99/lstm_298/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_99/lstm_298/lstm_cell_250/splitSplit=sequential_99/lstm_298/lstm_cell_250/split/split_dim:output:05sequential_99/lstm_298/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_99/lstm_298/lstm_cell_250/SigmoidSigmoid3sequential_99/lstm_298/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_99/lstm_298/lstm_cell_250/Sigmoid_1Sigmoid3sequential_99/lstm_298/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_99/lstm_298/lstm_cell_250/mulMul2sequential_99/lstm_298/lstm_cell_250/Sigmoid_1:y:0'sequential_99/lstm_298/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_99/lstm_298/lstm_cell_250/ReluRelu3sequential_99/lstm_298/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_99/lstm_298/lstm_cell_250/mul_1Mul0sequential_99/lstm_298/lstm_cell_250/Sigmoid:y:07sequential_99/lstm_298/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_99/lstm_298/lstm_cell_250/add_1AddV2,sequential_99/lstm_298/lstm_cell_250/mul:z:0.sequential_99/lstm_298/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_99/lstm_298/lstm_cell_250/Sigmoid_2Sigmoid3sequential_99/lstm_298/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_99/lstm_298/lstm_cell_250/Relu_1Relu.sequential_99/lstm_298/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_99/lstm_298/lstm_cell_250/mul_2Mul2sequential_99/lstm_298/lstm_cell_250/Sigmoid_2:y:09sequential_99/lstm_298/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_99/lstm_298/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_99/lstm_298/TensorArrayV2_1TensorListReserve=sequential_99/lstm_298/TensorArrayV2_1/element_shape:output:0/sequential_99/lstm_298/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_99/lstm_298/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_99/lstm_298/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_99/lstm_298/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_99/lstm_298/whileWhile2sequential_99/lstm_298/while/loop_counter:output:08sequential_99/lstm_298/while/maximum_iterations:output:0$sequential_99/lstm_298/time:output:0/sequential_99/lstm_298/TensorArrayV2_1:handle:0%sequential_99/lstm_298/zeros:output:0'sequential_99/lstm_298/zeros_1:output:0/sequential_99/lstm_298/strided_slice_1:output:0Nsequential_99/lstm_298/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_99_lstm_298_lstm_cell_250_matmul_readvariableop_resourceEsequential_99_lstm_298_lstm_cell_250_matmul_1_readvariableop_resourceDsequential_99_lstm_298_lstm_cell_250_biasadd_readvariableop_resource*
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
)sequential_99_lstm_298_while_body_1518426*5
cond-R+
)sequential_99_lstm_298_while_cond_1518425*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_99/lstm_298/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_99/lstm_298/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_99/lstm_298/while:output:3Psequential_99/lstm_298/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_99/lstm_298/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_99/lstm_298/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_298/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_298/strided_slice_3StridedSliceBsequential_99/lstm_298/TensorArrayV2Stack/TensorListStack:tensor:05sequential_99/lstm_298/strided_slice_3/stack:output:07sequential_99/lstm_298/strided_slice_3/stack_1:output:07sequential_99/lstm_298/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_99/lstm_298/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_99/lstm_298/transpose_1	TransposeBsequential_99/lstm_298/TensorArrayV2Stack/TensorListStack:tensor:00sequential_99/lstm_298/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_99/lstm_298/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_99/lstm_299/ShapeShape&sequential_99/lstm_298/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_99/lstm_299/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_99/lstm_299/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_99/lstm_299/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_99/lstm_299/strided_sliceStridedSlice%sequential_99/lstm_299/Shape:output:03sequential_99/lstm_299/strided_slice/stack:output:05sequential_99/lstm_299/strided_slice/stack_1:output:05sequential_99/lstm_299/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_99/lstm_299/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_99/lstm_299/zeros/packedPack-sequential_99/lstm_299/strided_slice:output:0.sequential_99/lstm_299/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_99/lstm_299/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_299/zerosFill,sequential_99/lstm_299/zeros/packed:output:0+sequential_99/lstm_299/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_99/lstm_299/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_99/lstm_299/zeros_1/packedPack-sequential_99/lstm_299/strided_slice:output:00sequential_99/lstm_299/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_99/lstm_299/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_99/lstm_299/zeros_1Fill.sequential_99/lstm_299/zeros_1/packed:output:0-sequential_99/lstm_299/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_99/lstm_299/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_99/lstm_299/transpose	Transpose&sequential_99/lstm_298/transpose_1:y:0.sequential_99/lstm_299/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_99/lstm_299/Shape_1Shape$sequential_99/lstm_299/transpose:y:0*
T0*
_output_shapes
:v
,sequential_99/lstm_299/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_299/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_299/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_299/strided_slice_1StridedSlice'sequential_99/lstm_299/Shape_1:output:05sequential_99/lstm_299/strided_slice_1/stack:output:07sequential_99/lstm_299/strided_slice_1/stack_1:output:07sequential_99/lstm_299/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_99/lstm_299/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_99/lstm_299/TensorArrayV2TensorListReserve;sequential_99/lstm_299/TensorArrayV2/element_shape:output:0/sequential_99/lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_99/lstm_299/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_99/lstm_299/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_99/lstm_299/transpose:y:0Usequential_99/lstm_299/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_99/lstm_299/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_299/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_99/lstm_299/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_299/strided_slice_2StridedSlice$sequential_99/lstm_299/transpose:y:05sequential_99/lstm_299/strided_slice_2/stack:output:07sequential_99/lstm_299/strided_slice_2/stack_1:output:07sequential_99/lstm_299/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOpReadVariableOpCsequential_99_lstm_299_lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_99/lstm_299/lstm_cell_251/MatMulMatMul/sequential_99/lstm_299/strided_slice_2:output:0Bsequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOpEsequential_99_lstm_299_lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_99/lstm_299/lstm_cell_251/MatMul_1MatMul%sequential_99/lstm_299/zeros:output:0Dsequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_99/lstm_299/lstm_cell_251/addAddV25sequential_99/lstm_299/lstm_cell_251/MatMul:product:07sequential_99/lstm_299/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOpDsequential_99_lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_99/lstm_299/lstm_cell_251/BiasAddBiasAdd,sequential_99/lstm_299/lstm_cell_251/add:z:0Csequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_99/lstm_299/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_99/lstm_299/lstm_cell_251/splitSplit=sequential_99/lstm_299/lstm_cell_251/split/split_dim:output:05sequential_99/lstm_299/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_99/lstm_299/lstm_cell_251/SigmoidSigmoid3sequential_99/lstm_299/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_99/lstm_299/lstm_cell_251/Sigmoid_1Sigmoid3sequential_99/lstm_299/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_99/lstm_299/lstm_cell_251/mulMul2sequential_99/lstm_299/lstm_cell_251/Sigmoid_1:y:0'sequential_99/lstm_299/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_99/lstm_299/lstm_cell_251/ReluRelu3sequential_99/lstm_299/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_99/lstm_299/lstm_cell_251/mul_1Mul0sequential_99/lstm_299/lstm_cell_251/Sigmoid:y:07sequential_99/lstm_299/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_99/lstm_299/lstm_cell_251/add_1AddV2,sequential_99/lstm_299/lstm_cell_251/mul:z:0.sequential_99/lstm_299/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_99/lstm_299/lstm_cell_251/Sigmoid_2Sigmoid3sequential_99/lstm_299/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_99/lstm_299/lstm_cell_251/Relu_1Relu.sequential_99/lstm_299/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_99/lstm_299/lstm_cell_251/mul_2Mul2sequential_99/lstm_299/lstm_cell_251/Sigmoid_2:y:09sequential_99/lstm_299/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_99/lstm_299/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_99/lstm_299/TensorArrayV2_1TensorListReserve=sequential_99/lstm_299/TensorArrayV2_1/element_shape:output:0/sequential_99/lstm_299/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_99/lstm_299/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_99/lstm_299/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_99/lstm_299/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_99/lstm_299/whileWhile2sequential_99/lstm_299/while/loop_counter:output:08sequential_99/lstm_299/while/maximum_iterations:output:0$sequential_99/lstm_299/time:output:0/sequential_99/lstm_299/TensorArrayV2_1:handle:0%sequential_99/lstm_299/zeros:output:0'sequential_99/lstm_299/zeros_1:output:0/sequential_99/lstm_299/strided_slice_1:output:0Nsequential_99/lstm_299/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_99_lstm_299_lstm_cell_251_matmul_readvariableop_resourceEsequential_99_lstm_299_lstm_cell_251_matmul_1_readvariableop_resourceDsequential_99_lstm_299_lstm_cell_251_biasadd_readvariableop_resource*
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
)sequential_99_lstm_299_while_body_1518565*5
cond-R+
)sequential_99_lstm_299_while_cond_1518564*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_99/lstm_299/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_99/lstm_299/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_99/lstm_299/while:output:3Psequential_99/lstm_299/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_99/lstm_299/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_99/lstm_299/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_99/lstm_299/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_99/lstm_299/strided_slice_3StridedSliceBsequential_99/lstm_299/TensorArrayV2Stack/TensorListStack:tensor:05sequential_99/lstm_299/strided_slice_3/stack:output:07sequential_99/lstm_299/strided_slice_3/stack_1:output:07sequential_99/lstm_299/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_99/lstm_299/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_99/lstm_299/transpose_1	TransposeBsequential_99/lstm_299/TensorArrayV2Stack/TensorListStack:tensor:00sequential_99/lstm_299/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_99/lstm_299/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_99/dense_99/MatMul/ReadVariableOpReadVariableOp5sequential_99_dense_99_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_99/dense_99/MatMulMatMul/sequential_99/lstm_299/strided_slice_3:output:04sequential_99/dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_99/dense_99/BiasAdd/ReadVariableOpReadVariableOp6sequential_99_dense_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_99/dense_99/BiasAddBiasAdd'sequential_99/dense_99/MatMul:product:05sequential_99/dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_99/dense_99/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_99/dense_99/BiasAdd/ReadVariableOp-^sequential_99/dense_99/MatMul/ReadVariableOp<^sequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp;^sequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOp=^sequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp^sequential_99/lstm_297/while<^sequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp;^sequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOp=^sequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp^sequential_99/lstm_298/while<^sequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp;^sequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOp=^sequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp^sequential_99/lstm_299/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_99/dense_99/BiasAdd/ReadVariableOp-sequential_99/dense_99/BiasAdd/ReadVariableOp2\
,sequential_99/dense_99/MatMul/ReadVariableOp,sequential_99/dense_99/MatMul/ReadVariableOp2z
;sequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp;sequential_99/lstm_297/lstm_cell_249/BiasAdd/ReadVariableOp2x
:sequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOp:sequential_99/lstm_297/lstm_cell_249/MatMul/ReadVariableOp2|
<sequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp<sequential_99/lstm_297/lstm_cell_249/MatMul_1/ReadVariableOp2<
sequential_99/lstm_297/whilesequential_99/lstm_297/while2z
;sequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp;sequential_99/lstm_298/lstm_cell_250/BiasAdd/ReadVariableOp2x
:sequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOp:sequential_99/lstm_298/lstm_cell_250/MatMul/ReadVariableOp2|
<sequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp<sequential_99/lstm_298/lstm_cell_250/MatMul_1/ReadVariableOp2<
sequential_99/lstm_298/whilesequential_99/lstm_298/while2z
;sequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp;sequential_99/lstm_299/lstm_cell_251/BiasAdd/ReadVariableOp2x
:sequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOp:sequential_99/lstm_299/lstm_cell_251/MatMul/ReadVariableOp2|
<sequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp<sequential_99/lstm_299/lstm_cell_251/MatMul_1/ReadVariableOp2<
sequential_99/lstm_299/whilesequential_99/lstm_299/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_297_input
?

?
lstm_297_while_cond_1521454.
*lstm_297_while_lstm_297_while_loop_counter4
0lstm_297_while_lstm_297_while_maximum_iterations
lstm_297_while_placeholder 
lstm_297_while_placeholder_1 
lstm_297_while_placeholder_2 
lstm_297_while_placeholder_30
,lstm_297_while_less_lstm_297_strided_slice_1G
Clstm_297_while_lstm_297_while_cond_1521454___redundant_placeholder0G
Clstm_297_while_lstm_297_while_cond_1521454___redundant_placeholder1G
Clstm_297_while_lstm_297_while_cond_1521454___redundant_placeholder2G
Clstm_297_while_lstm_297_while_cond_1521454___redundant_placeholder3
lstm_297_while_identity
?
lstm_297/while/LessLesslstm_297_while_placeholder,lstm_297_while_less_lstm_297_strided_slice_1*
T0*
_output_shapes
: ]
lstm_297/while/IdentityIdentitylstm_297/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_297_while_identity lstm_297/while/Identity:output:0*(
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523385
inputs_0>
,lstm_cell_251_matmul_readvariableop_resource:2(@
.lstm_cell_251_matmul_1_readvariableop_resource:
(;
-lstm_cell_251_biasadd_readvariableop_resource:(
identity??$lstm_cell_251/BiasAdd/ReadVariableOp?#lstm_cell_251/MatMul/ReadVariableOp?%lstm_cell_251/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_251/MatMul/ReadVariableOpReadVariableOp,lstm_cell_251_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_251/MatMulMatMulstrided_slice_2:output:0+lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_251_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_251/MatMul_1MatMulzeros:output:0-lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_251/addAddV2lstm_cell_251/MatMul:product:0 lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_251_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_251/BiasAddBiasAddlstm_cell_251/add:z:0,lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_251/splitSplit&lstm_cell_251/split/split_dim:output:0lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_251/SigmoidSigmoidlstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_1Sigmoidlstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_251/mulMullstm_cell_251/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_251/ReluRelulstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_1Mullstm_cell_251/Sigmoid:y:0 lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_251/add_1AddV2lstm_cell_251/mul:z:0lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_251/Sigmoid_2Sigmoidlstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_251/Relu_1Relulstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_251/mul_2Mullstm_cell_251/Sigmoid_2:y:0"lstm_cell_251/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_251_matmul_readvariableop_resource.lstm_cell_251_matmul_1_readvariableop_resource-lstm_cell_251_biasadd_readvariableop_resource*
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
while_body_1523301*
condR
while_cond_1523300*K
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
NoOpNoOp%^lstm_cell_251/BiasAdd/ReadVariableOp$^lstm_cell_251/MatMul/ReadVariableOp&^lstm_cell_251/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_251/BiasAdd/ReadVariableOp$lstm_cell_251/BiasAdd/ReadVariableOp2J
#lstm_cell_251/MatMul/ReadVariableOp#lstm_cell_251/MatMul/ReadVariableOp2N
%lstm_cell_251/MatMul_1/ReadVariableOp%lstm_cell_251/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1519276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519276___redundant_placeholder05
1while_while_cond_1519276___redundant_placeholder15
1while_while_cond_1519276___redundant_placeholder25
1while_while_cond_1519276___redundant_placeholder3
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
while_body_1519436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_251_1519460_0:2(/
while_lstm_cell_251_1519462_0:
(+
while_lstm_cell_251_1519464_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_251_1519460:2(-
while_lstm_cell_251_1519462:
()
while_lstm_cell_251_1519464:(??+while/lstm_cell_251/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_251/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_251_1519460_0while_lstm_cell_251_1519462_0while_lstm_cell_251_1519464_0*
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519422?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_251/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_251/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_251/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_251_1519460while_lstm_cell_251_1519460_0"<
while_lstm_cell_251_1519462while_lstm_cell_251_1519462_0"<
while_lstm_cell_251_1519464while_lstm_cell_251_1519464_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_251/StatefulPartitionedCall+while/lstm_cell_251/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1520915
lstm_297_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_297_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1518655o
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
_user_specified_namelstm_297_input
?
?
*__inference_lstm_299_layer_call_fn_1523099

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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520370o
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1519346

inputs(
lstm_cell_250_1519264:	d?(
lstm_cell_250_1519266:	2?$
lstm_cell_250_1519268:	?
identity??%lstm_cell_250/StatefulPartitionedCall?while;
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
%lstm_cell_250/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_250_1519264lstm_cell_250_1519266lstm_cell_250_1519268*
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519218n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_250_1519264lstm_cell_250_1519266lstm_cell_250_1519268*
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
while_body_1519277*
condR
while_cond_1519276*K
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
NoOpNoOp&^lstm_cell_250/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_250/StatefulPartitionedCall%lstm_cell_250/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_249_layer_call_fn_1523707

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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518722o
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
*__inference_lstm_297_layer_call_fn_1521867

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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1520700s
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
?
E__inference_lstm_297_layer_call_and_return_conditional_losses_1518996

inputs(
lstm_cell_249_1518914:	?(
lstm_cell_249_1518916:	d?$
lstm_cell_249_1518918:	?
identity??%lstm_cell_249/StatefulPartitionedCall?while;
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
%lstm_cell_249/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_249_1518914lstm_cell_249_1518916lstm_cell_249_1518918*
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518868n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_249_1518914lstm_cell_249_1518916lstm_cell_249_1518918*
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
while_body_1518927*
condR
while_cond_1518926*K
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
NoOpNoOp&^lstm_cell_249/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_249/StatefulPartitionedCall%lstm_cell_249/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1519769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519769___redundant_placeholder05
1while_while_cond_1519769___redundant_placeholder15
1while_while_cond_1519769___redundant_placeholder25
1while_while_cond_1519769___redundant_placeholder3
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
while_body_1520616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1519919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519919___redundant_placeholder05
1while_while_cond_1519919___redundant_placeholder15
1while_while_cond_1519919___redundant_placeholder25
1while_while_cond_1519919___redundant_placeholder3
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
*__inference_lstm_299_layer_call_fn_1523077
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1519696o
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519072

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
?
*__inference_lstm_298_layer_call_fn_1522483

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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520535s
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520880
lstm_297_input#
lstm_297_1520853:	?#
lstm_297_1520855:	d?
lstm_297_1520857:	?#
lstm_298_1520860:	d?#
lstm_298_1520862:	2?
lstm_298_1520864:	?"
lstm_299_1520867:2("
lstm_299_1520869:
(
lstm_299_1520871:("
dense_99_1520874:

dense_99_1520876:
identity?? dense_99/StatefulPartitionedCall? lstm_297/StatefulPartitionedCall? lstm_298/StatefulPartitionedCall? lstm_299/StatefulPartitionedCall?
 lstm_297/StatefulPartitionedCallStatefulPartitionedCalllstm_297_inputlstm_297_1520853lstm_297_1520855lstm_297_1520857*
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1520700?
 lstm_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_297/StatefulPartitionedCall:output:0lstm_298_1520860lstm_298_1520862lstm_298_1520864*
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520535?
 lstm_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_298/StatefulPartitionedCall:output:0lstm_299_1520867lstm_299_1520869lstm_299_1520871*
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520370?
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)lstm_299/StatefulPartitionedCall:output:0dense_99_1520874dense_99_1520876*
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172x
IdentityIdentity)dense_99/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_99/StatefulPartitionedCall!^lstm_297/StatefulPartitionedCall!^lstm_298/StatefulPartitionedCall!^lstm_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall2D
 lstm_297/StatefulPartitionedCall lstm_297/StatefulPartitionedCall2D
 lstm_298/StatefulPartitionedCall lstm_298/StatefulPartitionedCall2D
 lstm_299/StatefulPartitionedCall lstm_299/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_297_input
?C
?

lstm_297_while_body_1521028.
*lstm_297_while_lstm_297_while_loop_counter4
0lstm_297_while_lstm_297_while_maximum_iterations
lstm_297_while_placeholder 
lstm_297_while_placeholder_1 
lstm_297_while_placeholder_2 
lstm_297_while_placeholder_3-
)lstm_297_while_lstm_297_strided_slice_1_0i
elstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0:	?R
?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?M
>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
lstm_297_while_identity
lstm_297_while_identity_1
lstm_297_while_identity_2
lstm_297_while_identity_3
lstm_297_while_identity_4
lstm_297_while_identity_5+
'lstm_297_while_lstm_297_strided_slice_1g
clstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensorN
;lstm_297_while_lstm_cell_249_matmul_readvariableop_resource:	?P
=lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource:	d?K
<lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource:	???3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp?2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp?4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp?
@lstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_297/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0lstm_297_while_placeholderIlstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_297/while/lstm_cell_249/MatMulMatMul9lstm_297/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_297/while/lstm_cell_249/MatMul_1MatMullstm_297_while_placeholder_2<lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_297/while/lstm_cell_249/addAddV2-lstm_297/while/lstm_cell_249/MatMul:product:0/lstm_297/while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_297/while/lstm_cell_249/BiasAddBiasAdd$lstm_297/while/lstm_cell_249/add:z:0;lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_297/while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_297/while/lstm_cell_249/splitSplit5lstm_297/while/lstm_cell_249/split/split_dim:output:0-lstm_297/while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_297/while/lstm_cell_249/SigmoidSigmoid+lstm_297/while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_297/while/lstm_cell_249/Sigmoid_1Sigmoid+lstm_297/while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_297/while/lstm_cell_249/mulMul*lstm_297/while/lstm_cell_249/Sigmoid_1:y:0lstm_297_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_297/while/lstm_cell_249/ReluRelu+lstm_297/while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/mul_1Mul(lstm_297/while/lstm_cell_249/Sigmoid:y:0/lstm_297/while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/add_1AddV2$lstm_297/while/lstm_cell_249/mul:z:0&lstm_297/while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_297/while/lstm_cell_249/Sigmoid_2Sigmoid+lstm_297/while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_297/while/lstm_cell_249/Relu_1Relu&lstm_297/while/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/mul_2Mul*lstm_297/while/lstm_cell_249/Sigmoid_2:y:01lstm_297/while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_297/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_297_while_placeholder_1lstm_297_while_placeholder&lstm_297/while/lstm_cell_249/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_297/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_297/while/addAddV2lstm_297_while_placeholderlstm_297/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_297/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_297/while/add_1AddV2*lstm_297_while_lstm_297_while_loop_counterlstm_297/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_297/while/IdentityIdentitylstm_297/while/add_1:z:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_1Identity0lstm_297_while_lstm_297_while_maximum_iterations^lstm_297/while/NoOp*
T0*
_output_shapes
: t
lstm_297/while/Identity_2Identitylstm_297/while/add:z:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_3IdentityClstm_297/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_4Identity&lstm_297/while/lstm_cell_249/mul_2:z:0^lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_297/while/Identity_5Identity&lstm_297/while/lstm_cell_249/add_1:z:0^lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_297/while/NoOpNoOp4^lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp3^lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp5^lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_297_while_identity lstm_297/while/Identity:output:0"?
lstm_297_while_identity_1"lstm_297/while/Identity_1:output:0"?
lstm_297_while_identity_2"lstm_297/while/Identity_2:output:0"?
lstm_297_while_identity_3"lstm_297/while/Identity_3:output:0"?
lstm_297_while_identity_4"lstm_297/while/Identity_4:output:0"?
lstm_297_while_identity_5"lstm_297/while/Identity_5:output:0"T
'lstm_297_while_lstm_297_strided_slice_1)lstm_297_while_lstm_297_strided_slice_1_0"~
<lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0"?
=lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0"|
;lstm_297_while_lstm_cell_249_matmul_readvariableop_resource=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0"?
clstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensorelstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp2h
2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp2l
4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519218

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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523984

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
)sequential_99_lstm_298_while_cond_1518425J
Fsequential_99_lstm_298_while_sequential_99_lstm_298_while_loop_counterP
Lsequential_99_lstm_298_while_sequential_99_lstm_298_while_maximum_iterations,
(sequential_99_lstm_298_while_placeholder.
*sequential_99_lstm_298_while_placeholder_1.
*sequential_99_lstm_298_while_placeholder_2.
*sequential_99_lstm_298_while_placeholder_3L
Hsequential_99_lstm_298_while_less_sequential_99_lstm_298_strided_slice_1c
_sequential_99_lstm_298_while_sequential_99_lstm_298_while_cond_1518425___redundant_placeholder0c
_sequential_99_lstm_298_while_sequential_99_lstm_298_while_cond_1518425___redundant_placeholder1c
_sequential_99_lstm_298_while_sequential_99_lstm_298_while_cond_1518425___redundant_placeholder2c
_sequential_99_lstm_298_while_sequential_99_lstm_298_while_cond_1518425___redundant_placeholder3)
%sequential_99_lstm_298_while_identity
?
!sequential_99/lstm_298/while/LessLess(sequential_99_lstm_298_while_placeholderHsequential_99_lstm_298_while_less_sequential_99_lstm_298_strided_slice_1*
T0*
_output_shapes
: y
%sequential_99/lstm_298/while/IdentityIdentity%sequential_99/lstm_298/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_99_lstm_298_while_identity.sequential_99/lstm_298/while/Identity:output:0*(
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523788

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
while_body_1520286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1523586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1523586___redundant_placeholder05
1while_while_cond_1523586___redundant_placeholder15
1while_while_cond_1523586___redundant_placeholder25
1while_while_cond_1523586___redundant_placeholder3
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
/__inference_lstm_cell_249_layer_call_fn_1523724

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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518868o
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
while_body_1519770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1522068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522068___redundant_placeholder05
1while_while_cond_1522068___redundant_placeholder15
1while_while_cond_1522068___redundant_placeholder25
1while_while_cond_1522068___redundant_placeholder3
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519422

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
while_cond_1520069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1520069___redundant_placeholder05
1while_while_cond_1520069___redundant_placeholder15
1while_while_cond_1520069___redundant_placeholder25
1while_while_cond_1520069___redundant_placeholder3
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

lstm_297_while_body_1521455.
*lstm_297_while_lstm_297_while_loop_counter4
0lstm_297_while_lstm_297_while_maximum_iterations
lstm_297_while_placeholder 
lstm_297_while_placeholder_1 
lstm_297_while_placeholder_2 
lstm_297_while_placeholder_3-
)lstm_297_while_lstm_297_strided_slice_1_0i
elstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0:	?R
?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?M
>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
lstm_297_while_identity
lstm_297_while_identity_1
lstm_297_while_identity_2
lstm_297_while_identity_3
lstm_297_while_identity_4
lstm_297_while_identity_5+
'lstm_297_while_lstm_297_strided_slice_1g
clstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensorN
;lstm_297_while_lstm_cell_249_matmul_readvariableop_resource:	?P
=lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource:	d?K
<lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource:	???3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp?2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp?4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp?
@lstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_297/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0lstm_297_while_placeholderIlstm_297/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_297/while/lstm_cell_249/MatMulMatMul9lstm_297/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_297/while/lstm_cell_249/MatMul_1MatMullstm_297_while_placeholder_2<lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_297/while/lstm_cell_249/addAddV2-lstm_297/while/lstm_cell_249/MatMul:product:0/lstm_297/while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_297/while/lstm_cell_249/BiasAddBiasAdd$lstm_297/while/lstm_cell_249/add:z:0;lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_297/while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_297/while/lstm_cell_249/splitSplit5lstm_297/while/lstm_cell_249/split/split_dim:output:0-lstm_297/while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_297/while/lstm_cell_249/SigmoidSigmoid+lstm_297/while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_297/while/lstm_cell_249/Sigmoid_1Sigmoid+lstm_297/while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_297/while/lstm_cell_249/mulMul*lstm_297/while/lstm_cell_249/Sigmoid_1:y:0lstm_297_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_297/while/lstm_cell_249/ReluRelu+lstm_297/while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/mul_1Mul(lstm_297/while/lstm_cell_249/Sigmoid:y:0/lstm_297/while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/add_1AddV2$lstm_297/while/lstm_cell_249/mul:z:0&lstm_297/while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_297/while/lstm_cell_249/Sigmoid_2Sigmoid+lstm_297/while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_297/while/lstm_cell_249/Relu_1Relu&lstm_297/while/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_297/while/lstm_cell_249/mul_2Mul*lstm_297/while/lstm_cell_249/Sigmoid_2:y:01lstm_297/while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_297/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_297_while_placeholder_1lstm_297_while_placeholder&lstm_297/while/lstm_cell_249/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_297/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_297/while/addAddV2lstm_297_while_placeholderlstm_297/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_297/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_297/while/add_1AddV2*lstm_297_while_lstm_297_while_loop_counterlstm_297/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_297/while/IdentityIdentitylstm_297/while/add_1:z:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_1Identity0lstm_297_while_lstm_297_while_maximum_iterations^lstm_297/while/NoOp*
T0*
_output_shapes
: t
lstm_297/while/Identity_2Identitylstm_297/while/add:z:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_3IdentityClstm_297/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_297/while/NoOp*
T0*
_output_shapes
: ?
lstm_297/while/Identity_4Identity&lstm_297/while/lstm_cell_249/mul_2:z:0^lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_297/while/Identity_5Identity&lstm_297/while/lstm_cell_249/add_1:z:0^lstm_297/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_297/while/NoOpNoOp4^lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp3^lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp5^lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_297_while_identity lstm_297/while/Identity:output:0"?
lstm_297_while_identity_1"lstm_297/while/Identity_1:output:0"?
lstm_297_while_identity_2"lstm_297/while/Identity_2:output:0"?
lstm_297_while_identity_3"lstm_297/while/Identity_3:output:0"?
lstm_297_while_identity_4"lstm_297/while/Identity_4:output:0"?
lstm_297_while_identity_5"lstm_297/while/Identity_5:output:0"T
'lstm_297_while_lstm_297_strided_slice_1)lstm_297_while_lstm_297_strided_slice_1_0"~
<lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource>lstm_297_while_lstm_cell_249_biasadd_readvariableop_resource_0"?
=lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource?lstm_297_while_lstm_cell_249_matmul_1_readvariableop_resource_0"|
;lstm_297_while_lstm_cell_249_matmul_readvariableop_resource=lstm_297_while_lstm_cell_249_matmul_readvariableop_resource_0"?
clstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensorelstm_297_while_tensorarrayv2read_tensorlistgetitem_lstm_297_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp3lstm_297/while/lstm_cell_249/BiasAdd/ReadVariableOp2h
2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp2lstm_297/while/lstm_cell_249/MatMul/ReadVariableOp2l
4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp4lstm_297/while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1519277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_250_1519301_0:	d?0
while_lstm_cell_250_1519303_0:	2?,
while_lstm_cell_250_1519305_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_250_1519301:	d?.
while_lstm_cell_250_1519303:	2?*
while_lstm_cell_250_1519305:	???+while/lstm_cell_250/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_250/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_250_1519301_0while_lstm_cell_250_1519303_0while_lstm_cell_250_1519305_0*
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1519218?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_250/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_250/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_250/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_250/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_250_1519301while_lstm_cell_250_1519301_0"<
while_lstm_cell_250_1519303while_lstm_cell_250_1519303_0"<
while_lstm_cell_250_1519305while_lstm_cell_250_1519305_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_250/StatefulPartitionedCall+while/lstm_cell_250/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_1524127
file_prefix.
*savev2_dense_99_kernel_read_readvariableop,
(savev2_dense_99_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_297_lstm_cell_297_kernel_read_readvariableopF
Bsavev2_lstm_297_lstm_cell_297_recurrent_kernel_read_readvariableop:
6savev2_lstm_297_lstm_cell_297_bias_read_readvariableop<
8savev2_lstm_298_lstm_cell_298_kernel_read_readvariableopF
Bsavev2_lstm_298_lstm_cell_298_recurrent_kernel_read_readvariableop:
6savev2_lstm_298_lstm_cell_298_bias_read_readvariableop<
8savev2_lstm_299_lstm_cell_299_kernel_read_readvariableopF
Bsavev2_lstm_299_lstm_cell_299_recurrent_kernel_read_readvariableop:
6savev2_lstm_299_lstm_cell_299_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_99_kernel_m_read_readvariableop3
/savev2_adam_dense_99_bias_m_read_readvariableopC
?savev2_adam_lstm_297_lstm_cell_297_kernel_m_read_readvariableopM
Isavev2_adam_lstm_297_lstm_cell_297_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_297_lstm_cell_297_bias_m_read_readvariableopC
?savev2_adam_lstm_298_lstm_cell_298_kernel_m_read_readvariableopM
Isavev2_adam_lstm_298_lstm_cell_298_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_298_lstm_cell_298_bias_m_read_readvariableopC
?savev2_adam_lstm_299_lstm_cell_299_kernel_m_read_readvariableopM
Isavev2_adam_lstm_299_lstm_cell_299_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_299_lstm_cell_299_bias_m_read_readvariableop5
1savev2_adam_dense_99_kernel_v_read_readvariableop3
/savev2_adam_dense_99_bias_v_read_readvariableopC
?savev2_adam_lstm_297_lstm_cell_297_kernel_v_read_readvariableopM
Isavev2_adam_lstm_297_lstm_cell_297_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_297_lstm_cell_297_bias_v_read_readvariableopC
?savev2_adam_lstm_298_lstm_cell_298_kernel_v_read_readvariableopM
Isavev2_adam_lstm_298_lstm_cell_298_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_298_lstm_cell_298_bias_v_read_readvariableopC
?savev2_adam_lstm_299_lstm_cell_299_kernel_v_read_readvariableopM
Isavev2_adam_lstm_299_lstm_cell_299_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_299_lstm_cell_299_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_99_kernel_read_readvariableop(savev2_dense_99_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_297_lstm_cell_297_kernel_read_readvariableopBsavev2_lstm_297_lstm_cell_297_recurrent_kernel_read_readvariableop6savev2_lstm_297_lstm_cell_297_bias_read_readvariableop8savev2_lstm_298_lstm_cell_298_kernel_read_readvariableopBsavev2_lstm_298_lstm_cell_298_recurrent_kernel_read_readvariableop6savev2_lstm_298_lstm_cell_298_bias_read_readvariableop8savev2_lstm_299_lstm_cell_299_kernel_read_readvariableopBsavev2_lstm_299_lstm_cell_299_recurrent_kernel_read_readvariableop6savev2_lstm_299_lstm_cell_299_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_99_kernel_m_read_readvariableop/savev2_adam_dense_99_bias_m_read_readvariableop?savev2_adam_lstm_297_lstm_cell_297_kernel_m_read_readvariableopIsavev2_adam_lstm_297_lstm_cell_297_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_297_lstm_cell_297_bias_m_read_readvariableop?savev2_adam_lstm_298_lstm_cell_298_kernel_m_read_readvariableopIsavev2_adam_lstm_298_lstm_cell_298_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_298_lstm_cell_298_bias_m_read_readvariableop?savev2_adam_lstm_299_lstm_cell_299_kernel_m_read_readvariableopIsavev2_adam_lstm_299_lstm_cell_299_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_299_lstm_cell_299_bias_m_read_readvariableop1savev2_adam_dense_99_kernel_v_read_readvariableop/savev2_adam_dense_99_bias_v_read_readvariableop?savev2_adam_lstm_297_lstm_cell_297_kernel_v_read_readvariableopIsavev2_adam_lstm_297_lstm_cell_297_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_297_lstm_cell_297_bias_v_read_readvariableop?savev2_adam_lstm_298_lstm_cell_298_kernel_v_read_readvariableopIsavev2_adam_lstm_298_lstm_cell_298_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_298_lstm_cell_298_bias_v_read_readvariableop?savev2_adam_lstm_299_lstm_cell_299_kernel_v_read_readvariableopIsavev2_adam_lstm_299_lstm_cell_299_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_299_lstm_cell_299_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1521926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_298_layer_call_fn_1522450
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1519155|
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
while_cond_1523443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1523443___redundant_placeholder05
1while_while_cond_1523443___redundant_placeholder15
1while_while_cond_1523443___redundant_placeholder25
1while_while_cond_1523443___redundant_placeholder3
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
while_body_1523587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1518926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1518926___redundant_placeholder05
1while_while_cond_1518926___redundant_placeholder15
1while_while_cond_1518926___redundant_placeholder25
1while_while_cond_1518926___redundant_placeholder3
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
)sequential_99_lstm_298_while_body_1518426J
Fsequential_99_lstm_298_while_sequential_99_lstm_298_while_loop_counterP
Lsequential_99_lstm_298_while_sequential_99_lstm_298_while_maximum_iterations,
(sequential_99_lstm_298_while_placeholder.
*sequential_99_lstm_298_while_placeholder_1.
*sequential_99_lstm_298_while_placeholder_2.
*sequential_99_lstm_298_while_placeholder_3I
Esequential_99_lstm_298_while_sequential_99_lstm_298_strided_slice_1_0?
?sequential_99_lstm_298_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_298_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_99_lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0:	d?`
Msequential_99_lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?[
Lsequential_99_lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0:	?)
%sequential_99_lstm_298_while_identity+
'sequential_99_lstm_298_while_identity_1+
'sequential_99_lstm_298_while_identity_2+
'sequential_99_lstm_298_while_identity_3+
'sequential_99_lstm_298_while_identity_4+
'sequential_99_lstm_298_while_identity_5G
Csequential_99_lstm_298_while_sequential_99_lstm_298_strided_slice_1?
sequential_99_lstm_298_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_298_tensorarrayunstack_tensorlistfromtensor\
Isequential_99_lstm_298_while_lstm_cell_250_matmul_readvariableop_resource:	d?^
Ksequential_99_lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource:	2?Y
Jsequential_99_lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource:	???Asequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp?@sequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp?Bsequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp?
Nsequential_99/lstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_99/lstm_298/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_99_lstm_298_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_298_tensorarrayunstack_tensorlistfromtensor_0(sequential_99_lstm_298_while_placeholderWsequential_99/lstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOpKsequential_99_lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_99/lstm_298/while/lstm_cell_250/MatMulMatMulGsequential_99/lstm_298/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOpMsequential_99_lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_99/lstm_298/while/lstm_cell_250/MatMul_1MatMul*sequential_99_lstm_298_while_placeholder_2Jsequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_99/lstm_298/while/lstm_cell_250/addAddV2;sequential_99/lstm_298/while/lstm_cell_250/MatMul:product:0=sequential_99/lstm_298/while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOpLsequential_99_lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_99/lstm_298/while/lstm_cell_250/BiasAddBiasAdd2sequential_99/lstm_298/while/lstm_cell_250/add:z:0Isequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_99/lstm_298/while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_99/lstm_298/while/lstm_cell_250/splitSplitCsequential_99/lstm_298/while/lstm_cell_250/split/split_dim:output:0;sequential_99/lstm_298/while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_99/lstm_298/while/lstm_cell_250/SigmoidSigmoid9sequential_99/lstm_298/while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_99/lstm_298/while/lstm_cell_250/Sigmoid_1Sigmoid9sequential_99/lstm_298/while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_99/lstm_298/while/lstm_cell_250/mulMul8sequential_99/lstm_298/while/lstm_cell_250/Sigmoid_1:y:0*sequential_99_lstm_298_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_99/lstm_298/while/lstm_cell_250/ReluRelu9sequential_99/lstm_298/while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_99/lstm_298/while/lstm_cell_250/mul_1Mul6sequential_99/lstm_298/while/lstm_cell_250/Sigmoid:y:0=sequential_99/lstm_298/while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_99/lstm_298/while/lstm_cell_250/add_1AddV22sequential_99/lstm_298/while/lstm_cell_250/mul:z:04sequential_99/lstm_298/while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_99/lstm_298/while/lstm_cell_250/Sigmoid_2Sigmoid9sequential_99/lstm_298/while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_99/lstm_298/while/lstm_cell_250/Relu_1Relu4sequential_99/lstm_298/while/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_99/lstm_298/while/lstm_cell_250/mul_2Mul8sequential_99/lstm_298/while/lstm_cell_250/Sigmoid_2:y:0?sequential_99/lstm_298/while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_99/lstm_298/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_99_lstm_298_while_placeholder_1(sequential_99_lstm_298_while_placeholder4sequential_99/lstm_298/while/lstm_cell_250/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_99/lstm_298/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_99/lstm_298/while/addAddV2(sequential_99_lstm_298_while_placeholder+sequential_99/lstm_298/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_99/lstm_298/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_99/lstm_298/while/add_1AddV2Fsequential_99_lstm_298_while_sequential_99_lstm_298_while_loop_counter-sequential_99/lstm_298/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_99/lstm_298/while/IdentityIdentity&sequential_99/lstm_298/while/add_1:z:0"^sequential_99/lstm_298/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_298/while/Identity_1IdentityLsequential_99_lstm_298_while_sequential_99_lstm_298_while_maximum_iterations"^sequential_99/lstm_298/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_298/while/Identity_2Identity$sequential_99/lstm_298/while/add:z:0"^sequential_99/lstm_298/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_298/while/Identity_3IdentityQsequential_99/lstm_298/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_99/lstm_298/while/NoOp*
T0*
_output_shapes
: ?
'sequential_99/lstm_298/while/Identity_4Identity4sequential_99/lstm_298/while/lstm_cell_250/mul_2:z:0"^sequential_99/lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_99/lstm_298/while/Identity_5Identity4sequential_99/lstm_298/while/lstm_cell_250/add_1:z:0"^sequential_99/lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_99/lstm_298/while/NoOpNoOpB^sequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOpA^sequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOpC^sequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_99_lstm_298_while_identity.sequential_99/lstm_298/while/Identity:output:0"[
'sequential_99_lstm_298_while_identity_10sequential_99/lstm_298/while/Identity_1:output:0"[
'sequential_99_lstm_298_while_identity_20sequential_99/lstm_298/while/Identity_2:output:0"[
'sequential_99_lstm_298_while_identity_30sequential_99/lstm_298/while/Identity_3:output:0"[
'sequential_99_lstm_298_while_identity_40sequential_99/lstm_298/while/Identity_4:output:0"[
'sequential_99_lstm_298_while_identity_50sequential_99/lstm_298/while/Identity_5:output:0"?
Jsequential_99_lstm_298_while_lstm_cell_250_biasadd_readvariableop_resourceLsequential_99_lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0"?
Ksequential_99_lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resourceMsequential_99_lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0"?
Isequential_99_lstm_298_while_lstm_cell_250_matmul_readvariableop_resourceKsequential_99_lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0"?
Csequential_99_lstm_298_while_sequential_99_lstm_298_strided_slice_1Esequential_99_lstm_298_while_sequential_99_lstm_298_strided_slice_1_0"?
sequential_99_lstm_298_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_298_tensorarrayunstack_tensorlistfromtensor?sequential_99_lstm_298_while_tensorarrayv2read_tensorlistgetitem_sequential_99_lstm_298_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOpAsequential_99/lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp2?
@sequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp@sequential_99/lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp2?
Bsequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOpBsequential_99/lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1522354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522354___redundant_placeholder05
1while_while_cond_1522354___redundant_placeholder15
1while_while_cond_1522354___redundant_placeholder25
1while_while_cond_1522354___redundant_placeholder3
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
*__inference_lstm_298_layer_call_fn_1522472

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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520004s
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
?
?
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523952

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
while_cond_1522684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1522684___redundant_placeholder05
1while_while_cond_1522684___redundant_placeholder15
1while_while_cond_1522684___redundant_placeholder25
1while_while_cond_1522684___redundant_placeholder3
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
while_cond_1520615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1520615___redundant_placeholder05
1while_while_cond_1520615___redundant_placeholder15
1while_while_cond_1520615___redundant_placeholder25
1while_while_cond_1520615___redundant_placeholder3
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
while_body_1522212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_249_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_249_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_249_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_249_matmul_readvariableop_resource:	?G
4while_lstm_cell_249_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_249_biasadd_readvariableop_resource:	???*while/lstm_cell_249/BiasAdd/ReadVariableOp?)while/lstm_cell_249/MatMul/ReadVariableOp?+while/lstm_cell_249/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_249/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_249_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_249/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_249/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_249_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_249/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_249/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_249/addAddV2$while/lstm_cell_249/MatMul:product:0&while/lstm_cell_249/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_249/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_249_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_249/BiasAddBiasAddwhile/lstm_cell_249/add:z:02while/lstm_cell_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_249/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_249/splitSplit,while/lstm_cell_249/split/split_dim:output:0$while/lstm_cell_249/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_249/SigmoidSigmoid"while/lstm_cell_249/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_1Sigmoid"while/lstm_cell_249/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mulMul!while/lstm_cell_249/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_249/ReluRelu"while/lstm_cell_249/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_1Mulwhile/lstm_cell_249/Sigmoid:y:0&while/lstm_cell_249/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/add_1AddV2while/lstm_cell_249/mul:z:0while/lstm_cell_249/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_249/Sigmoid_2Sigmoid"while/lstm_cell_249/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_249/Relu_1Reluwhile/lstm_cell_249/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_249/mul_2Mul!while/lstm_cell_249/Sigmoid_2:y:0(while/lstm_cell_249/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_249/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_249/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_249/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_249/BiasAdd/ReadVariableOp*^while/lstm_cell_249/MatMul/ReadVariableOp,^while/lstm_cell_249/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_249_biasadd_readvariableop_resource5while_lstm_cell_249_biasadd_readvariableop_resource_0"n
4while_lstm_cell_249_matmul_1_readvariableop_resource6while_lstm_cell_249_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_249_matmul_readvariableop_resource4while_lstm_cell_249_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_249/BiasAdd/ReadVariableOp*while/lstm_cell_249/BiasAdd/ReadVariableOp2V
)while/lstm_cell_249/MatMul/ReadVariableOp)while/lstm_cell_249/MatMul/ReadVariableOp2Z
+while/lstm_cell_249/MatMul_1/ReadVariableOp+while/lstm_cell_249/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1523301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_251_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_251_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_251_matmul_readvariableop_resource:2(F
4while_lstm_cell_251_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_251_biasadd_readvariableop_resource:(??*while/lstm_cell_251/BiasAdd/ReadVariableOp?)while/lstm_cell_251/MatMul/ReadVariableOp?+while/lstm_cell_251/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_251/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_251/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_251/addAddV2$while/lstm_cell_251/MatMul:product:0&while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_251/BiasAddBiasAddwhile/lstm_cell_251/add:z:02while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_251/splitSplit,while/lstm_cell_251/split/split_dim:output:0$while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_251/SigmoidSigmoid"while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_1Sigmoid"while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mulMul!while/lstm_cell_251/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_251/ReluRelu"while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_1Mulwhile/lstm_cell_251/Sigmoid:y:0&while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/add_1AddV2while/lstm_cell_251/mul:z:0while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_251/Sigmoid_2Sigmoid"while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_251/Relu_1Reluwhile/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_251/mul_2Mul!while/lstm_cell_251/Sigmoid_2:y:0(while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_251/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_251/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_251/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_251/BiasAdd/ReadVariableOp*^while/lstm_cell_251/MatMul/ReadVariableOp,^while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_251_biasadd_readvariableop_resource5while_lstm_cell_251_biasadd_readvariableop_resource_0"n
4while_lstm_cell_251_matmul_1_readvariableop_resource6while_lstm_cell_251_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_251_matmul_readvariableop_resource4while_lstm_cell_251_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_251/BiasAdd/ReadVariableOp*while/lstm_cell_251/BiasAdd/ReadVariableOp2V
)while/lstm_cell_251/MatMul/ReadVariableOp)while/lstm_cell_251/MatMul/ReadVariableOp2Z
+while/lstm_cell_251/MatMul_1/ReadVariableOp+while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1523690

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
*__inference_lstm_297_layer_call_fn_1521834
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1518805|
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
while_cond_1521925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1521925___redundant_placeholder05
1while_while_cond_1521925___redundant_placeholder15
1while_while_cond_1521925___redundant_placeholder25
1while_while_cond_1521925___redundant_placeholder3
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
*__inference_lstm_297_layer_call_fn_1521845
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1518996|
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
?#
?
while_body_1518736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_249_1518760_0:	?0
while_lstm_cell_249_1518762_0:	d?,
while_lstm_cell_249_1518764_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_249_1518760:	?.
while_lstm_cell_249_1518762:	d?*
while_lstm_cell_249_1518764:	???+while/lstm_cell_249/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_249/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_249_1518760_0while_lstm_cell_249_1518762_0while_lstm_cell_249_1518764_0*
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1518722?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_249/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_249/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_249/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_249/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_249_1518760while_lstm_cell_249_1518760_0"<
while_lstm_cell_249_1518762while_lstm_cell_249_1518762_0"<
while_lstm_cell_249_1518764while_lstm_cell_249_1518764_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_249/StatefulPartitionedCall+while/lstm_cell_249/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523756

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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523886

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
while_body_1522828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_250_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_250_matmul_readvariableop_resource:	d?G
4while_lstm_cell_250_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_250_biasadd_readvariableop_resource:	???*while/lstm_cell_250/BiasAdd/ReadVariableOp?)while/lstm_cell_250/MatMul/ReadVariableOp?+while/lstm_cell_250/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_250/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_250/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_250/addAddV2$while/lstm_cell_250/MatMul:product:0&while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_250/BiasAddBiasAddwhile/lstm_cell_250/add:z:02while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_250/splitSplit,while/lstm_cell_250/split/split_dim:output:0$while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_250/SigmoidSigmoid"while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_1Sigmoid"while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mulMul!while/lstm_cell_250/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_250/ReluRelu"while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_1Mulwhile/lstm_cell_250/Sigmoid:y:0&while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/add_1AddV2while/lstm_cell_250/mul:z:0while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_250/Sigmoid_2Sigmoid"while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_250/Relu_1Reluwhile/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_250/mul_2Mul!while/lstm_cell_250/Sigmoid_2:y:0(while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_250/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_250/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_250/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_250/BiasAdd/ReadVariableOp*^while/lstm_cell_250/MatMul/ReadVariableOp,^while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_250_biasadd_readvariableop_resource5while_lstm_cell_250_biasadd_readvariableop_resource_0"n
4while_lstm_cell_250_matmul_1_readvariableop_resource6while_lstm_cell_250_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_250_matmul_readvariableop_resource4while_lstm_cell_250_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_250/BiasAdd/ReadVariableOp*while/lstm_cell_250/BiasAdd/ReadVariableOp2V
)while/lstm_cell_250/MatMul/ReadVariableOp)while/lstm_cell_250/MatMul/ReadVariableOp2Z
+while/lstm_cell_250/MatMul_1/ReadVariableOp+while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_297_while_cond_1521027.
*lstm_297_while_lstm_297_while_loop_counter4
0lstm_297_while_lstm_297_while_maximum_iterations
lstm_297_while_placeholder 
lstm_297_while_placeholder_1 
lstm_297_while_placeholder_2 
lstm_297_while_placeholder_30
,lstm_297_while_less_lstm_297_strided_slice_1G
Clstm_297_while_lstm_297_while_cond_1521027___redundant_placeholder0G
Clstm_297_while_lstm_297_while_cond_1521027___redundant_placeholder1G
Clstm_297_while_lstm_297_while_cond_1521027___redundant_placeholder2G
Clstm_297_while_lstm_297_while_cond_1521027___redundant_placeholder3
lstm_297_while_identity
?
lstm_297/while/LessLesslstm_297_while_placeholder,lstm_297_while_less_lstm_297_strided_slice_1*
T0*
_output_shapes
: ]
lstm_297/while/IdentityIdentitylstm_297/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_297_while_identity lstm_297/while/Identity:output:0*(
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

lstm_299_while_body_1521306.
*lstm_299_while_lstm_299_while_loop_counter4
0lstm_299_while_lstm_299_while_maximum_iterations
lstm_299_while_placeholder 
lstm_299_while_placeholder_1 
lstm_299_while_placeholder_2 
lstm_299_while_placeholder_3-
)lstm_299_while_lstm_299_strided_slice_1_0i
elstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0:2(Q
?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0:
(L
>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0:(
lstm_299_while_identity
lstm_299_while_identity_1
lstm_299_while_identity_2
lstm_299_while_identity_3
lstm_299_while_identity_4
lstm_299_while_identity_5+
'lstm_299_while_lstm_299_strided_slice_1g
clstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensorM
;lstm_299_while_lstm_cell_251_matmul_readvariableop_resource:2(O
=lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource:
(J
<lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource:(??3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp?2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp?4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp?
@lstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_299/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0lstm_299_while_placeholderIlstm_299/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOpReadVariableOp=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_299/while/lstm_cell_251/MatMulMatMul9lstm_299/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOpReadVariableOp?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_299/while/lstm_cell_251/MatMul_1MatMullstm_299_while_placeholder_2<lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_299/while/lstm_cell_251/addAddV2-lstm_299/while/lstm_cell_251/MatMul:product:0/lstm_299/while/lstm_cell_251/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOpReadVariableOp>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_299/while/lstm_cell_251/BiasAddBiasAdd$lstm_299/while/lstm_cell_251/add:z:0;lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_299/while/lstm_cell_251/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_299/while/lstm_cell_251/splitSplit5lstm_299/while/lstm_cell_251/split/split_dim:output:0-lstm_299/while/lstm_cell_251/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_299/while/lstm_cell_251/SigmoidSigmoid+lstm_299/while/lstm_cell_251/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_299/while/lstm_cell_251/Sigmoid_1Sigmoid+lstm_299/while/lstm_cell_251/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_299/while/lstm_cell_251/mulMul*lstm_299/while/lstm_cell_251/Sigmoid_1:y:0lstm_299_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_299/while/lstm_cell_251/ReluRelu+lstm_299/while/lstm_cell_251/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/mul_1Mul(lstm_299/while/lstm_cell_251/Sigmoid:y:0/lstm_299/while/lstm_cell_251/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/add_1AddV2$lstm_299/while/lstm_cell_251/mul:z:0&lstm_299/while/lstm_cell_251/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_299/while/lstm_cell_251/Sigmoid_2Sigmoid+lstm_299/while/lstm_cell_251/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_299/while/lstm_cell_251/Relu_1Relu&lstm_299/while/lstm_cell_251/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_299/while/lstm_cell_251/mul_2Mul*lstm_299/while/lstm_cell_251/Sigmoid_2:y:01lstm_299/while/lstm_cell_251/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_299/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_299_while_placeholder_1lstm_299_while_placeholder&lstm_299/while/lstm_cell_251/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_299/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_299/while/addAddV2lstm_299_while_placeholderlstm_299/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_299/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_299/while/add_1AddV2*lstm_299_while_lstm_299_while_loop_counterlstm_299/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_299/while/IdentityIdentitylstm_299/while/add_1:z:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_1Identity0lstm_299_while_lstm_299_while_maximum_iterations^lstm_299/while/NoOp*
T0*
_output_shapes
: t
lstm_299/while/Identity_2Identitylstm_299/while/add:z:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_3IdentityClstm_299/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_299/while/NoOp*
T0*
_output_shapes
: ?
lstm_299/while/Identity_4Identity&lstm_299/while/lstm_cell_251/mul_2:z:0^lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_299/while/Identity_5Identity&lstm_299/while/lstm_cell_251/add_1:z:0^lstm_299/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_299/while/NoOpNoOp4^lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp3^lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp5^lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_299_while_identity lstm_299/while/Identity:output:0"?
lstm_299_while_identity_1"lstm_299/while/Identity_1:output:0"?
lstm_299_while_identity_2"lstm_299/while/Identity_2:output:0"?
lstm_299_while_identity_3"lstm_299/while/Identity_3:output:0"?
lstm_299_while_identity_4"lstm_299/while/Identity_4:output:0"?
lstm_299_while_identity_5"lstm_299/while/Identity_5:output:0"T
'lstm_299_while_lstm_299_strided_slice_1)lstm_299_while_lstm_299_strided_slice_1_0"~
<lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource>lstm_299_while_lstm_cell_251_biasadd_readvariableop_resource_0"?
=lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource?lstm_299_while_lstm_cell_251_matmul_1_readvariableop_resource_0"|
;lstm_299_while_lstm_cell_251_matmul_readvariableop_resource=lstm_299_while_lstm_cell_251_matmul_readvariableop_resource_0"?
clstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensorelstm_299_while_tensorarrayv2read_tensorlistgetitem_lstm_299_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp3lstm_299/while/lstm_cell_251/BiasAdd/ReadVariableOp2h
2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp2lstm_299/while/lstm_cell_251/MatMul/ReadVariableOp2l
4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp4lstm_299/while/lstm_cell_251/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520179

inputs#
lstm_297_1519855:	?#
lstm_297_1519857:	d?
lstm_297_1519859:	?#
lstm_298_1520005:	d?#
lstm_298_1520007:	2?
lstm_298_1520009:	?"
lstm_299_1520155:2("
lstm_299_1520157:
(
lstm_299_1520159:("
dense_99_1520173:

dense_99_1520175:
identity?? dense_99/StatefulPartitionedCall? lstm_297/StatefulPartitionedCall? lstm_298/StatefulPartitionedCall? lstm_299/StatefulPartitionedCall?
 lstm_297/StatefulPartitionedCallStatefulPartitionedCallinputslstm_297_1519855lstm_297_1519857lstm_297_1519859*
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1519854?
 lstm_298/StatefulPartitionedCallStatefulPartitionedCall)lstm_297/StatefulPartitionedCall:output:0lstm_298_1520005lstm_298_1520007lstm_298_1520009*
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1520004?
 lstm_299/StatefulPartitionedCallStatefulPartitionedCall)lstm_298/StatefulPartitionedCall:output:0lstm_299_1520155lstm_299_1520157lstm_299_1520159*
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1520154?
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)lstm_299/StatefulPartitionedCall:output:0dense_99_1520173dense_99_1520175*
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1520172x
IdentityIdentity)dense_99/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_99/StatefulPartitionedCall!^lstm_297/StatefulPartitionedCall!^lstm_298/StatefulPartitionedCall!^lstm_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall2D
 lstm_297/StatefulPartitionedCall lstm_297/StatefulPartitionedCall2D
 lstm_298/StatefulPartitionedCall lstm_298/StatefulPartitionedCall2D
 lstm_299/StatefulPartitionedCall lstm_299/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_298_while_body_1521167.
*lstm_298_while_lstm_298_while_loop_counter4
0lstm_298_while_lstm_298_while_maximum_iterations
lstm_298_while_placeholder 
lstm_298_while_placeholder_1 
lstm_298_while_placeholder_2 
lstm_298_while_placeholder_3-
)lstm_298_while_lstm_298_strided_slice_1_0i
elstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0:	d?R
?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0:	2?M
>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0:	?
lstm_298_while_identity
lstm_298_while_identity_1
lstm_298_while_identity_2
lstm_298_while_identity_3
lstm_298_while_identity_4
lstm_298_while_identity_5+
'lstm_298_while_lstm_298_strided_slice_1g
clstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensorN
;lstm_298_while_lstm_cell_250_matmul_readvariableop_resource:	d?P
=lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource:	2?K
<lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource:	???3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp?2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp?4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp?
@lstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_298/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0lstm_298_while_placeholderIlstm_298/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOpReadVariableOp=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_298/while/lstm_cell_250/MatMulMatMul9lstm_298/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOpReadVariableOp?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_298/while/lstm_cell_250/MatMul_1MatMullstm_298_while_placeholder_2<lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_298/while/lstm_cell_250/addAddV2-lstm_298/while/lstm_cell_250/MatMul:product:0/lstm_298/while/lstm_cell_250/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOpReadVariableOp>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_298/while/lstm_cell_250/BiasAddBiasAdd$lstm_298/while/lstm_cell_250/add:z:0;lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_298/while/lstm_cell_250/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_298/while/lstm_cell_250/splitSplit5lstm_298/while/lstm_cell_250/split/split_dim:output:0-lstm_298/while/lstm_cell_250/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_298/while/lstm_cell_250/SigmoidSigmoid+lstm_298/while/lstm_cell_250/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_298/while/lstm_cell_250/Sigmoid_1Sigmoid+lstm_298/while/lstm_cell_250/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_298/while/lstm_cell_250/mulMul*lstm_298/while/lstm_cell_250/Sigmoid_1:y:0lstm_298_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_298/while/lstm_cell_250/ReluRelu+lstm_298/while/lstm_cell_250/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/mul_1Mul(lstm_298/while/lstm_cell_250/Sigmoid:y:0/lstm_298/while/lstm_cell_250/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/add_1AddV2$lstm_298/while/lstm_cell_250/mul:z:0&lstm_298/while/lstm_cell_250/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_298/while/lstm_cell_250/Sigmoid_2Sigmoid+lstm_298/while/lstm_cell_250/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_298/while/lstm_cell_250/Relu_1Relu&lstm_298/while/lstm_cell_250/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_298/while/lstm_cell_250/mul_2Mul*lstm_298/while/lstm_cell_250/Sigmoid_2:y:01lstm_298/while/lstm_cell_250/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_298/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_298_while_placeholder_1lstm_298_while_placeholder&lstm_298/while/lstm_cell_250/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_298/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_298/while/addAddV2lstm_298_while_placeholderlstm_298/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_298/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_298/while/add_1AddV2*lstm_298_while_lstm_298_while_loop_counterlstm_298/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_298/while/IdentityIdentitylstm_298/while/add_1:z:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_1Identity0lstm_298_while_lstm_298_while_maximum_iterations^lstm_298/while/NoOp*
T0*
_output_shapes
: t
lstm_298/while/Identity_2Identitylstm_298/while/add:z:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_3IdentityClstm_298/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_298/while/NoOp*
T0*
_output_shapes
: ?
lstm_298/while/Identity_4Identity&lstm_298/while/lstm_cell_250/mul_2:z:0^lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_298/while/Identity_5Identity&lstm_298/while/lstm_cell_250/add_1:z:0^lstm_298/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_298/while/NoOpNoOp4^lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp3^lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp5^lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_298_while_identity lstm_298/while/Identity:output:0"?
lstm_298_while_identity_1"lstm_298/while/Identity_1:output:0"?
lstm_298_while_identity_2"lstm_298/while/Identity_2:output:0"?
lstm_298_while_identity_3"lstm_298/while/Identity_3:output:0"?
lstm_298_while_identity_4"lstm_298/while/Identity_4:output:0"?
lstm_298_while_identity_5"lstm_298/while/Identity_5:output:0"T
'lstm_298_while_lstm_298_strided_slice_1)lstm_298_while_lstm_298_strided_slice_1_0"~
<lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource>lstm_298_while_lstm_cell_250_biasadd_readvariableop_resource_0"?
=lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource?lstm_298_while_lstm_cell_250_matmul_1_readvariableop_resource_0"|
;lstm_298_while_lstm_cell_250_matmul_readvariableop_resource=lstm_298_while_lstm_cell_250_matmul_readvariableop_resource_0"?
clstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensorelstm_298_while_tensorarrayv2read_tensorlistgetitem_lstm_298_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp3lstm_298/while/lstm_cell_250/BiasAdd/ReadVariableOp2h
2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp2lstm_298/while/lstm_cell_250/MatMul/ReadVariableOp2l
4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp4lstm_298/while/lstm_cell_250/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1519085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1519085___redundant_placeholder05
1while_while_cond_1519085___redundant_placeholder15
1while_while_cond_1519085___redundant_placeholder25
1while_while_cond_1519085___redundant_placeholder3
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
while_cond_1518735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1518735___redundant_placeholder05
1while_while_cond_1518735___redundant_placeholder15
1while_while_cond_1518735___redundant_placeholder25
1while_while_cond_1518735___redundant_placeholder3
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
while_body_1519627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_251_1519651_0:2(/
while_lstm_cell_251_1519653_0:
(+
while_lstm_cell_251_1519655_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_251_1519651:2(-
while_lstm_cell_251_1519653:
()
while_lstm_cell_251_1519655:(??+while/lstm_cell_251/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_251/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_251_1519651_0while_lstm_cell_251_1519653_0while_lstm_cell_251_1519655_0*
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1519568?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_251/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_251/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_251/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_251_1519651while_lstm_cell_251_1519651_0"<
while_lstm_cell_251_1519653while_lstm_cell_251_1519653_0"<
while_lstm_cell_251_1519655while_lstm_cell_251_1519655_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_251/StatefulPartitionedCall+while/lstm_cell_251/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_297_input;
 serving_default_lstm_297_input:0?????????<
dense_990
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
2dense_99/kernel
:2dense_99/bias
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
0:.	?2lstm_297/lstm_cell_297/kernel
::8	d?2'lstm_297/lstm_cell_297/recurrent_kernel
*:(?2lstm_297/lstm_cell_297/bias
0:.	d?2lstm_298/lstm_cell_298/kernel
::8	2?2'lstm_298/lstm_cell_298/recurrent_kernel
*:(?2lstm_298/lstm_cell_298/bias
/:-2(2lstm_299/lstm_cell_299/kernel
9:7
(2'lstm_299/lstm_cell_299/recurrent_kernel
):'(2lstm_299/lstm_cell_299/bias
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
2Adam/dense_99/kernel/m
 :2Adam/dense_99/bias/m
5:3	?2$Adam/lstm_297/lstm_cell_297/kernel/m
?:=	d?2.Adam/lstm_297/lstm_cell_297/recurrent_kernel/m
/:-?2"Adam/lstm_297/lstm_cell_297/bias/m
5:3	d?2$Adam/lstm_298/lstm_cell_298/kernel/m
?:=	2?2.Adam/lstm_298/lstm_cell_298/recurrent_kernel/m
/:-?2"Adam/lstm_298/lstm_cell_298/bias/m
4:22(2$Adam/lstm_299/lstm_cell_299/kernel/m
>:<
(2.Adam/lstm_299/lstm_cell_299/recurrent_kernel/m
.:,(2"Adam/lstm_299/lstm_cell_299/bias/m
&:$
2Adam/dense_99/kernel/v
 :2Adam/dense_99/bias/v
5:3	?2$Adam/lstm_297/lstm_cell_297/kernel/v
?:=	d?2.Adam/lstm_297/lstm_cell_297/recurrent_kernel/v
/:-?2"Adam/lstm_297/lstm_cell_297/bias/v
5:3	d?2$Adam/lstm_298/lstm_cell_298/kernel/v
?:=	2?2.Adam/lstm_298/lstm_cell_298/recurrent_kernel/v
/:-?2"Adam/lstm_298/lstm_cell_298/bias/v
4:22(2$Adam/lstm_299/lstm_cell_299/kernel/v
>:<
(2.Adam/lstm_299/lstm_cell_299/recurrent_kernel/v
.:,(2"Adam/lstm_299/lstm_cell_299/bias/v
?2?
/__inference_sequential_99_layer_call_fn_1520204
/__inference_sequential_99_layer_call_fn_1520942
/__inference_sequential_99_layer_call_fn_1520969
/__inference_sequential_99_layer_call_fn_1520820?
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521396
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521823
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520850
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520880?
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
"__inference__wrapped_model_1518655lstm_297_input"?
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
*__inference_lstm_297_layer_call_fn_1521834
*__inference_lstm_297_layer_call_fn_1521845
*__inference_lstm_297_layer_call_fn_1521856
*__inference_lstm_297_layer_call_fn_1521867?
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522010
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522153
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522296
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522439?
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
*__inference_lstm_298_layer_call_fn_1522450
*__inference_lstm_298_layer_call_fn_1522461
*__inference_lstm_298_layer_call_fn_1522472
*__inference_lstm_298_layer_call_fn_1522483?
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522626
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522769
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522912
E__inference_lstm_298_layer_call_and_return_conditional_losses_1523055?
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
*__inference_lstm_299_layer_call_fn_1523066
*__inference_lstm_299_layer_call_fn_1523077
*__inference_lstm_299_layer_call_fn_1523088
*__inference_lstm_299_layer_call_fn_1523099?
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523242
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523385
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523528
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523671?
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
*__inference_dense_99_layer_call_fn_1523680?
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
E__inference_dense_99_layer_call_and_return_conditional_losses_1523690?
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
%__inference_signature_wrapper_1520915lstm_297_input"?
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
/__inference_lstm_cell_249_layer_call_fn_1523707
/__inference_lstm_cell_249_layer_call_fn_1523724?
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523756
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523788?
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
/__inference_lstm_cell_250_layer_call_fn_1523805
/__inference_lstm_cell_250_layer_call_fn_1523822?
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523854
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523886?
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
/__inference_lstm_cell_251_layer_call_fn_1523903
/__inference_lstm_cell_251_layer_call_fn_1523920?
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523952
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523984?
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
"__inference__wrapped_model_1518655-./012345!";?8
1?.
,?)
lstm_297_input?????????
? "3?0
.
dense_99"?
dense_99??????????
E__inference_dense_99_layer_call_and_return_conditional_losses_1523690\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_99_layer_call_fn_1523680O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522010?-./O?L
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522153?-./O?L
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522296q-./??<
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
E__inference_lstm_297_layer_call_and_return_conditional_losses_1522439q-./??<
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
*__inference_lstm_297_layer_call_fn_1521834}-./O?L
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
*__inference_lstm_297_layer_call_fn_1521845}-./O?L
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
*__inference_lstm_297_layer_call_fn_1521856d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_297_layer_call_fn_1521867d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522626?012O?L
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522769?012O?L
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1522912q012??<
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
E__inference_lstm_298_layer_call_and_return_conditional_losses_1523055q012??<
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
*__inference_lstm_298_layer_call_fn_1522450}012O?L
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
*__inference_lstm_298_layer_call_fn_1522461}012O?L
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
*__inference_lstm_298_layer_call_fn_1522472d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_298_layer_call_fn_1522483d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523242}345O?L
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523385}345O?L
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523528m345??<
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
E__inference_lstm_299_layer_call_and_return_conditional_losses_1523671m345??<
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
*__inference_lstm_299_layer_call_fn_1523066p345O?L
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
*__inference_lstm_299_layer_call_fn_1523077p345O?L
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
*__inference_lstm_299_layer_call_fn_1523088`345??<
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
*__inference_lstm_299_layer_call_fn_1523099`345??<
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523756?-./??}
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
J__inference_lstm_cell_249_layer_call_and_return_conditional_losses_1523788?-./??}
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
/__inference_lstm_cell_249_layer_call_fn_1523707?-./??}
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
/__inference_lstm_cell_249_layer_call_fn_1523724?-./??}
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523854?012??}
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
J__inference_lstm_cell_250_layer_call_and_return_conditional_losses_1523886?012??}
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
/__inference_lstm_cell_250_layer_call_fn_1523805?012??}
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
/__inference_lstm_cell_250_layer_call_fn_1523822?012??}
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523952?345??}
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
J__inference_lstm_cell_251_layer_call_and_return_conditional_losses_1523984?345??}
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
/__inference_lstm_cell_251_layer_call_fn_1523903?345??}
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
/__inference_lstm_cell_251_layer_call_fn_1523920?345??}
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520850y-./012345!"C?@
9?6
,?)
lstm_297_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_99_layer_call_and_return_conditional_losses_1520880y-./012345!"C?@
9?6
,?)
lstm_297_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521396q-./012345!";?8
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
J__inference_sequential_99_layer_call_and_return_conditional_losses_1521823q-./012345!";?8
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
/__inference_sequential_99_layer_call_fn_1520204l-./012345!"C?@
9?6
,?)
lstm_297_input?????????
p 

 
? "???????????
/__inference_sequential_99_layer_call_fn_1520820l-./012345!"C?@
9?6
,?)
lstm_297_input?????????
p

 
? "???????????
/__inference_sequential_99_layer_call_fn_1520942d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_99_layer_call_fn_1520969d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1520915?-./012345!"M?J
? 
C?@
>
lstm_297_input,?)
lstm_297_input?????????"3?0
.
dense_99"?
dense_99?????????