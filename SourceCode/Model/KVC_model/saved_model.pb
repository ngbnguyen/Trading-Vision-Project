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
dense_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_137/kernel
u
$dense_137/kernel/Read/ReadVariableOpReadVariableOpdense_137/kernel*
_output_shapes

:
*
dtype0
t
dense_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_137/bias
m
"dense_137/bias/Read/ReadVariableOpReadVariableOpdense_137/bias*
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
lstm_411/lstm_cell_411/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_411/lstm_cell_411/kernel
?
1lstm_411/lstm_cell_411/kernel/Read/ReadVariableOpReadVariableOplstm_411/lstm_cell_411/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_411/lstm_cell_411/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_411/lstm_cell_411/recurrent_kernel
?
;lstm_411/lstm_cell_411/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_411/lstm_cell_411/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_411/lstm_cell_411/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_411/lstm_cell_411/bias
?
/lstm_411/lstm_cell_411/bias/Read/ReadVariableOpReadVariableOplstm_411/lstm_cell_411/bias*
_output_shapes	
:?*
dtype0
?
lstm_412/lstm_cell_412/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_412/lstm_cell_412/kernel
?
1lstm_412/lstm_cell_412/kernel/Read/ReadVariableOpReadVariableOplstm_412/lstm_cell_412/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_412/lstm_cell_412/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_412/lstm_cell_412/recurrent_kernel
?
;lstm_412/lstm_cell_412/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_412/lstm_cell_412/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_412/lstm_cell_412/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_412/lstm_cell_412/bias
?
/lstm_412/lstm_cell_412/bias/Read/ReadVariableOpReadVariableOplstm_412/lstm_cell_412/bias*
_output_shapes	
:?*
dtype0
?
lstm_413/lstm_cell_413/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_413/lstm_cell_413/kernel
?
1lstm_413/lstm_cell_413/kernel/Read/ReadVariableOpReadVariableOplstm_413/lstm_cell_413/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_413/lstm_cell_413/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_413/lstm_cell_413/recurrent_kernel
?
;lstm_413/lstm_cell_413/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_413/lstm_cell_413/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_413/lstm_cell_413/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_413/lstm_cell_413/bias
?
/lstm_413/lstm_cell_413/bias/Read/ReadVariableOpReadVariableOplstm_413/lstm_cell_413/bias*
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
Adam/dense_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_137/kernel/m
?
+Adam/dense_137/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_137/bias/m
{
)Adam/dense_137/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_411/lstm_cell_411/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_411/lstm_cell_411/kernel/m
?
8Adam/lstm_411/lstm_cell_411/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_411/lstm_cell_411/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_411/lstm_cell_411/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_411/lstm_cell_411/recurrent_kernel/m
?
BAdam/lstm_411/lstm_cell_411/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_411/lstm_cell_411/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_411/lstm_cell_411/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_411/lstm_cell_411/bias/m
?
6Adam/lstm_411/lstm_cell_411/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_411/lstm_cell_411/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_412/lstm_cell_412/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_412/lstm_cell_412/kernel/m
?
8Adam/lstm_412/lstm_cell_412/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_412/lstm_cell_412/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_412/lstm_cell_412/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_412/lstm_cell_412/recurrent_kernel/m
?
BAdam/lstm_412/lstm_cell_412/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_412/lstm_cell_412/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_412/lstm_cell_412/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_412/lstm_cell_412/bias/m
?
6Adam/lstm_412/lstm_cell_412/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_412/lstm_cell_412/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_413/lstm_cell_413/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_413/lstm_cell_413/kernel/m
?
8Adam/lstm_413/lstm_cell_413/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_413/lstm_cell_413/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_413/lstm_cell_413/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_413/lstm_cell_413/recurrent_kernel/m
?
BAdam/lstm_413/lstm_cell_413/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_413/lstm_cell_413/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_413/lstm_cell_413/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_413/lstm_cell_413/bias/m
?
6Adam/lstm_413/lstm_cell_413/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_413/lstm_cell_413/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_137/kernel/v
?
+Adam/dense_137/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_137/bias/v
{
)Adam/dense_137/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_411/lstm_cell_411/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_411/lstm_cell_411/kernel/v
?
8Adam/lstm_411/lstm_cell_411/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_411/lstm_cell_411/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_411/lstm_cell_411/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_411/lstm_cell_411/recurrent_kernel/v
?
BAdam/lstm_411/lstm_cell_411/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_411/lstm_cell_411/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_411/lstm_cell_411/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_411/lstm_cell_411/bias/v
?
6Adam/lstm_411/lstm_cell_411/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_411/lstm_cell_411/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_412/lstm_cell_412/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_412/lstm_cell_412/kernel/v
?
8Adam/lstm_412/lstm_cell_412/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_412/lstm_cell_412/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_412/lstm_cell_412/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_412/lstm_cell_412/recurrent_kernel/v
?
BAdam/lstm_412/lstm_cell_412/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_412/lstm_cell_412/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_412/lstm_cell_412/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_412/lstm_cell_412/bias/v
?
6Adam/lstm_412/lstm_cell_412/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_412/lstm_cell_412/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_413/lstm_cell_413/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_413/lstm_cell_413/kernel/v
?
8Adam/lstm_413/lstm_cell_413/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_413/lstm_cell_413/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_413/lstm_cell_413/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_413/lstm_cell_413/recurrent_kernel/v
?
BAdam/lstm_413/lstm_cell_413/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_413/lstm_cell_413/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_413/lstm_cell_413/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_413/lstm_cell_413/bias/v
?
6Adam/lstm_413/lstm_cell_413/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_413/lstm_cell_413/bias/v*
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
VARIABLE_VALUEdense_137/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_137/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_411/lstm_cell_411/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_411/lstm_cell_411/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_411/lstm_cell_411/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_412/lstm_cell_412/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_412/lstm_cell_412/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_412/lstm_cell_412/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_413/lstm_cell_413/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_413/lstm_cell_413/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_413/lstm_cell_413/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_137/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_411/lstm_cell_411/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_411/lstm_cell_411/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_411/lstm_cell_411/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_412/lstm_cell_412/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_412/lstm_cell_412/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_412/lstm_cell_412/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_413/lstm_cell_413/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_413/lstm_cell_413/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_413/lstm_cell_413/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_137/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_411/lstm_cell_411/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_411/lstm_cell_411/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_411/lstm_cell_411/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_412/lstm_cell_412/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_412/lstm_cell_412/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_412/lstm_cell_412/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_413/lstm_cell_413/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_413/lstm_cell_413/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_413/lstm_cell_413/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_411_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_411_inputlstm_411/lstm_cell_411/kernel'lstm_411/lstm_cell_411/recurrent_kernellstm_411/lstm_cell_411/biaslstm_412/lstm_cell_412/kernel'lstm_412/lstm_cell_412/recurrent_kernellstm_412/lstm_cell_412/biaslstm_413/lstm_cell_413/kernel'lstm_413/lstm_cell_413/recurrent_kernellstm_413/lstm_cell_413/biasdense_137/kerneldense_137/bias*
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
%__inference_signature_wrapper_2409026
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_137/kernel/Read/ReadVariableOp"dense_137/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_411/lstm_cell_411/kernel/Read/ReadVariableOp;lstm_411/lstm_cell_411/recurrent_kernel/Read/ReadVariableOp/lstm_411/lstm_cell_411/bias/Read/ReadVariableOp1lstm_412/lstm_cell_412/kernel/Read/ReadVariableOp;lstm_412/lstm_cell_412/recurrent_kernel/Read/ReadVariableOp/lstm_412/lstm_cell_412/bias/Read/ReadVariableOp1lstm_413/lstm_cell_413/kernel/Read/ReadVariableOp;lstm_413/lstm_cell_413/recurrent_kernel/Read/ReadVariableOp/lstm_413/lstm_cell_413/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_137/kernel/m/Read/ReadVariableOp)Adam/dense_137/bias/m/Read/ReadVariableOp8Adam/lstm_411/lstm_cell_411/kernel/m/Read/ReadVariableOpBAdam/lstm_411/lstm_cell_411/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_411/lstm_cell_411/bias/m/Read/ReadVariableOp8Adam/lstm_412/lstm_cell_412/kernel/m/Read/ReadVariableOpBAdam/lstm_412/lstm_cell_412/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_412/lstm_cell_412/bias/m/Read/ReadVariableOp8Adam/lstm_413/lstm_cell_413/kernel/m/Read/ReadVariableOpBAdam/lstm_413/lstm_cell_413/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_413/lstm_cell_413/bias/m/Read/ReadVariableOp+Adam/dense_137/kernel/v/Read/ReadVariableOp)Adam/dense_137/bias/v/Read/ReadVariableOp8Adam/lstm_411/lstm_cell_411/kernel/v/Read/ReadVariableOpBAdam/lstm_411/lstm_cell_411/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_411/lstm_cell_411/bias/v/Read/ReadVariableOp8Adam/lstm_412/lstm_cell_412/kernel/v/Read/ReadVariableOpBAdam/lstm_412/lstm_cell_412/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_412/lstm_cell_412/bias/v/Read/ReadVariableOp8Adam/lstm_413/lstm_cell_413/kernel/v/Read/ReadVariableOpBAdam/lstm_413/lstm_cell_413/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_413/lstm_cell_413/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2412238
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_137/kerneldense_137/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_411/lstm_cell_411/kernel'lstm_411/lstm_cell_411/recurrent_kernellstm_411/lstm_cell_411/biaslstm_412/lstm_cell_412/kernel'lstm_412/lstm_cell_412/recurrent_kernellstm_412/lstm_cell_412/biaslstm_413/lstm_cell_413/kernel'lstm_413/lstm_cell_413/recurrent_kernellstm_413/lstm_cell_413/biastotalcountAdam/dense_137/kernel/mAdam/dense_137/bias/m$Adam/lstm_411/lstm_cell_411/kernel/m.Adam/lstm_411/lstm_cell_411/recurrent_kernel/m"Adam/lstm_411/lstm_cell_411/bias/m$Adam/lstm_412/lstm_cell_412/kernel/m.Adam/lstm_412/lstm_cell_412/recurrent_kernel/m"Adam/lstm_412/lstm_cell_412/bias/m$Adam/lstm_413/lstm_cell_413/kernel/m.Adam/lstm_413/lstm_cell_413/recurrent_kernel/m"Adam/lstm_413/lstm_cell_413/bias/mAdam/dense_137/kernel/vAdam/dense_137/bias/v$Adam/lstm_411/lstm_cell_411/kernel/v.Adam/lstm_411/lstm_cell_411/recurrent_kernel/v"Adam/lstm_411/lstm_cell_411/bias/v$Adam/lstm_412/lstm_cell_412/kernel/v.Adam/lstm_412/lstm_cell_412/recurrent_kernel/v"Adam/lstm_412/lstm_cell_412/bias/v$Adam/lstm_413/lstm_cell_413/kernel/v.Adam/lstm_413/lstm_cell_413/recurrent_kernel/v"Adam/lstm_413/lstm_cell_413/bias/v*4
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
#__inference__traced_restore_2412368??+
?
?
while_cond_2407387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407387___redundant_placeholder05
1while_while_cond_2407387___redundant_placeholder15
1while_while_cond_2407387___redundant_placeholder25
1while_while_cond_2407387___redundant_placeholder3
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408481

inputs>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2408397*
condR
while_cond_2408396*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2411269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2410652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410652___redundant_placeholder05
1while_while_cond_2410652___redundant_placeholder15
1while_while_cond_2410652___redundant_placeholder25
1while_while_cond_2410652___redundant_placeholder3
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
*__inference_lstm_411_layer_call_fn_2409978

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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2408811s
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
while_body_2410323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2407266

inputs(
lstm_cell_397_2407184:	d?(
lstm_cell_397_2407186:	2?$
lstm_cell_397_2407188:	?
identity??%lstm_cell_397/StatefulPartitionedCall?while;
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
%lstm_cell_397/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_397_2407184lstm_cell_397_2407186lstm_cell_397_2407188*
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407183n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_397_2407184lstm_cell_397_2407186lstm_cell_397_2407188*
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
while_body_2407197*
condR
while_cond_2407196*K
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
NoOpNoOp&^lstm_cell_397/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_397/StatefulPartitionedCall%lstm_cell_397/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2411081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2411081___redundant_placeholder05
1while_while_cond_2411081___redundant_placeholder15
1while_while_cond_2411081___redundant_placeholder25
1while_while_cond_2411081___redundant_placeholder3
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283

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
while_cond_2410036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410036___redundant_placeholder05
1while_while_cond_2410036___redundant_placeholder15
1while_while_cond_2410036___redundant_placeholder25
1while_while_cond_2410036___redundant_placeholder3
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
lstm_411_while_cond_2409138.
*lstm_411_while_lstm_411_while_loop_counter4
0lstm_411_while_lstm_411_while_maximum_iterations
lstm_411_while_placeholder 
lstm_411_while_placeholder_1 
lstm_411_while_placeholder_2 
lstm_411_while_placeholder_30
,lstm_411_while_less_lstm_411_strided_slice_1G
Clstm_411_while_lstm_411_while_cond_2409138___redundant_placeholder0G
Clstm_411_while_lstm_411_while_cond_2409138___redundant_placeholder1G
Clstm_411_while_lstm_411_while_cond_2409138___redundant_placeholder2G
Clstm_411_while_lstm_411_while_cond_2409138___redundant_placeholder3
lstm_411_while_identity
?
lstm_411/while/LessLesslstm_411_while_placeholder,lstm_411_while_less_lstm_411_strided_slice_1*
T0*
_output_shapes
: ]
lstm_411/while/IdentityIdentitylstm_411/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_411_while_identity lstm_411/while/Identity:output:0*(
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
*__inference_lstm_412_layer_call_fn_2410594

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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408646s
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
while_cond_2411268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2411268___redundant_placeholder05
1while_while_cond_2411268___redundant_placeholder15
1while_while_cond_2411268___redundant_placeholder25
1while_while_cond_2411268___redundant_placeholder3
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
*sequential_137_lstm_411_while_cond_2406397L
Hsequential_137_lstm_411_while_sequential_137_lstm_411_while_loop_counterR
Nsequential_137_lstm_411_while_sequential_137_lstm_411_while_maximum_iterations-
)sequential_137_lstm_411_while_placeholder/
+sequential_137_lstm_411_while_placeholder_1/
+sequential_137_lstm_411_while_placeholder_2/
+sequential_137_lstm_411_while_placeholder_3N
Jsequential_137_lstm_411_while_less_sequential_137_lstm_411_strided_slice_1e
asequential_137_lstm_411_while_sequential_137_lstm_411_while_cond_2406397___redundant_placeholder0e
asequential_137_lstm_411_while_sequential_137_lstm_411_while_cond_2406397___redundant_placeholder1e
asequential_137_lstm_411_while_sequential_137_lstm_411_while_cond_2406397___redundant_placeholder2e
asequential_137_lstm_411_while_sequential_137_lstm_411_while_cond_2406397___redundant_placeholder3*
&sequential_137_lstm_411_while_identity
?
"sequential_137/lstm_411/while/LessLess)sequential_137_lstm_411_while_placeholderJsequential_137_lstm_411_while_less_sequential_137_lstm_411_strided_slice_1*
T0*
_output_shapes
: {
&sequential_137/lstm_411/while/IdentityIdentity&sequential_137/lstm_411/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_137_lstm_411_while_identity/sequential_137/lstm_411/while/Identity:output:0*(
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411166

inputs?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2411082*
condR
while_cond_2411081*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_137_layer_call_fn_2409053

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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408290o
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
?C
?

lstm_413_while_body_2409417.
*lstm_413_while_lstm_413_while_loop_counter4
0lstm_413_while_lstm_413_while_maximum_iterations
lstm_413_while_placeholder 
lstm_413_while_placeholder_1 
lstm_413_while_placeholder_2 
lstm_413_while_placeholder_3-
)lstm_413_while_lstm_413_strided_slice_1_0i
elstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0:2(Q
?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(L
>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0:(
lstm_413_while_identity
lstm_413_while_identity_1
lstm_413_while_identity_2
lstm_413_while_identity_3
lstm_413_while_identity_4
lstm_413_while_identity_5+
'lstm_413_while_lstm_413_strided_slice_1g
clstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensorM
;lstm_413_while_lstm_cell_398_matmul_readvariableop_resource:2(O
=lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource:
(J
<lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource:(??3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp?2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp?4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp?
@lstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_413/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0lstm_413_while_placeholderIlstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_413/while/lstm_cell_398/MatMulMatMul9lstm_413/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_413/while/lstm_cell_398/MatMul_1MatMullstm_413_while_placeholder_2<lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_413/while/lstm_cell_398/addAddV2-lstm_413/while/lstm_cell_398/MatMul:product:0/lstm_413/while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_413/while/lstm_cell_398/BiasAddBiasAdd$lstm_413/while/lstm_cell_398/add:z:0;lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_413/while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_413/while/lstm_cell_398/splitSplit5lstm_413/while/lstm_cell_398/split/split_dim:output:0-lstm_413/while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_413/while/lstm_cell_398/SigmoidSigmoid+lstm_413/while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_413/while/lstm_cell_398/Sigmoid_1Sigmoid+lstm_413/while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_413/while/lstm_cell_398/mulMul*lstm_413/while/lstm_cell_398/Sigmoid_1:y:0lstm_413_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_413/while/lstm_cell_398/ReluRelu+lstm_413/while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/mul_1Mul(lstm_413/while/lstm_cell_398/Sigmoid:y:0/lstm_413/while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/add_1AddV2$lstm_413/while/lstm_cell_398/mul:z:0&lstm_413/while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_413/while/lstm_cell_398/Sigmoid_2Sigmoid+lstm_413/while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_413/while/lstm_cell_398/Relu_1Relu&lstm_413/while/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/mul_2Mul*lstm_413/while/lstm_cell_398/Sigmoid_2:y:01lstm_413/while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_413/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_413_while_placeholder_1lstm_413_while_placeholder&lstm_413/while/lstm_cell_398/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_413/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_413/while/addAddV2lstm_413_while_placeholderlstm_413/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_413/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_413/while/add_1AddV2*lstm_413_while_lstm_413_while_loop_counterlstm_413/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_413/while/IdentityIdentitylstm_413/while/add_1:z:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_1Identity0lstm_413_while_lstm_413_while_maximum_iterations^lstm_413/while/NoOp*
T0*
_output_shapes
: t
lstm_413/while/Identity_2Identitylstm_413/while/add:z:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_3IdentityClstm_413/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_4Identity&lstm_413/while/lstm_cell_398/mul_2:z:0^lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_413/while/Identity_5Identity&lstm_413/while/lstm_cell_398/add_1:z:0^lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_413/while/NoOpNoOp4^lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp3^lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp5^lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_413_while_identity lstm_413/while/Identity:output:0"?
lstm_413_while_identity_1"lstm_413/while/Identity_1:output:0"?
lstm_413_while_identity_2"lstm_413/while/Identity_2:output:0"?
lstm_413_while_identity_3"lstm_413/while/Identity_3:output:0"?
lstm_413_while_identity_4"lstm_413/while/Identity_4:output:0"?
lstm_413_while_identity_5"lstm_413/while/Identity_5:output:0"T
'lstm_413_while_lstm_413_strided_slice_1)lstm_413_while_lstm_413_strided_slice_1_0"~
<lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0"?
=lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0"|
;lstm_413_while_lstm_cell_398_matmul_readvariableop_resource=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0"?
clstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensorelstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp2h
2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp2l
4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2408726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2408726___redundant_placeholder05
1while_while_cond_2408726___redundant_placeholder15
1while_while_cond_2408726___redundant_placeholder25
1while_while_cond_2408726___redundant_placeholder3
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407533

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
*__inference_lstm_413_layer_call_fn_2411188
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2407807o
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411867

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
while_cond_2407546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407546___redundant_placeholder05
1while_while_cond_2407546___redundant_placeholder15
1while_while_cond_2407546___redundant_placeholder25
1while_while_cond_2407546___redundant_placeholder3
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
*__inference_lstm_412_layer_call_fn_2410561
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2407266|
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
lstm_411_while_cond_2409565.
*lstm_411_while_lstm_411_while_loop_counter4
0lstm_411_while_lstm_411_while_maximum_iterations
lstm_411_while_placeholder 
lstm_411_while_placeholder_1 
lstm_411_while_placeholder_2 
lstm_411_while_placeholder_30
,lstm_411_while_less_lstm_411_strided_slice_1G
Clstm_411_while_lstm_411_while_cond_2409565___redundant_placeholder0G
Clstm_411_while_lstm_411_while_cond_2409565___redundant_placeholder1G
Clstm_411_while_lstm_411_while_cond_2409565___redundant_placeholder2G
Clstm_411_while_lstm_411_while_cond_2409565___redundant_placeholder3
lstm_411_while_identity
?
lstm_411/while/LessLesslstm_411_while_placeholder,lstm_411_while_less_lstm_411_strided_slice_1*
T0*
_output_shapes
: ]
lstm_411/while/IdentityIdentitylstm_411/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_411_while_identity lstm_411/while/Identity:output:0*(
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
*__inference_lstm_413_layer_call_fn_2411199

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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408265o
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
while_cond_2408561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2408561___redundant_placeholder05
1while_while_cond_2408561___redundant_placeholder15
1while_while_cond_2408561___redundant_placeholder25
1while_while_cond_2408561___redundant_placeholder3
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409934

inputsH
5lstm_411_lstm_cell_396_matmul_readvariableop_resource:	?J
7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource:	d?E
6lstm_411_lstm_cell_396_biasadd_readvariableop_resource:	?H
5lstm_412_lstm_cell_397_matmul_readvariableop_resource:	d?J
7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource:	2?E
6lstm_412_lstm_cell_397_biasadd_readvariableop_resource:	?G
5lstm_413_lstm_cell_398_matmul_readvariableop_resource:2(I
7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource:
(D
6lstm_413_lstm_cell_398_biasadd_readvariableop_resource:(:
(dense_137_matmul_readvariableop_resource:
7
)dense_137_biasadd_readvariableop_resource:
identity?? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp?,lstm_411/lstm_cell_396/MatMul/ReadVariableOp?.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp?lstm_411/while?-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp?,lstm_412/lstm_cell_397/MatMul/ReadVariableOp?.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp?lstm_412/while?-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp?,lstm_413/lstm_cell_398/MatMul/ReadVariableOp?.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp?lstm_413/whileD
lstm_411/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_411/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_411/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_411/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_sliceStridedSlicelstm_411/Shape:output:0%lstm_411/strided_slice/stack:output:0'lstm_411/strided_slice/stack_1:output:0'lstm_411/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_411/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_411/zeros/packedPacklstm_411/strided_slice:output:0 lstm_411/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_411/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_411/zerosFilllstm_411/zeros/packed:output:0lstm_411/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_411/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_411/zeros_1/packedPacklstm_411/strided_slice:output:0"lstm_411/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_411/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_411/zeros_1Fill lstm_411/zeros_1/packed:output:0lstm_411/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_411/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_411/transpose	Transposeinputs lstm_411/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_411/Shape_1Shapelstm_411/transpose:y:0*
T0*
_output_shapes
:h
lstm_411/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_411/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_1StridedSlicelstm_411/Shape_1:output:0'lstm_411/strided_slice_1/stack:output:0)lstm_411/strided_slice_1/stack_1:output:0)lstm_411/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_411/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_411/TensorArrayV2TensorListReserve-lstm_411/TensorArrayV2/element_shape:output:0!lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_411/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_411/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_411/transpose:y:0Glstm_411/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_411/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_411/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_2StridedSlicelstm_411/transpose:y:0'lstm_411/strided_slice_2/stack:output:0)lstm_411/strided_slice_2/stack_1:output:0)lstm_411/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_411/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp5lstm_411_lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_411/lstm_cell_396/MatMulMatMul!lstm_411/strided_slice_2:output:04lstm_411/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_411/lstm_cell_396/MatMul_1MatMullstm_411/zeros:output:06lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_411/lstm_cell_396/addAddV2'lstm_411/lstm_cell_396/MatMul:product:0)lstm_411/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp6lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_411/lstm_cell_396/BiasAddBiasAddlstm_411/lstm_cell_396/add:z:05lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_411/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_411/lstm_cell_396/splitSplit/lstm_411/lstm_cell_396/split/split_dim:output:0'lstm_411/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_411/lstm_cell_396/SigmoidSigmoid%lstm_411/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_411/lstm_cell_396/Sigmoid_1Sigmoid%lstm_411/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mulMul$lstm_411/lstm_cell_396/Sigmoid_1:y:0lstm_411/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_411/lstm_cell_396/ReluRelu%lstm_411/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mul_1Mul"lstm_411/lstm_cell_396/Sigmoid:y:0)lstm_411/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/add_1AddV2lstm_411/lstm_cell_396/mul:z:0 lstm_411/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_411/lstm_cell_396/Sigmoid_2Sigmoid%lstm_411/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_411/lstm_cell_396/Relu_1Relu lstm_411/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mul_2Mul$lstm_411/lstm_cell_396/Sigmoid_2:y:0+lstm_411/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_411/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_411/TensorArrayV2_1TensorListReserve/lstm_411/TensorArrayV2_1/element_shape:output:0!lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_411/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_411/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_411/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_411/whileWhile$lstm_411/while/loop_counter:output:0*lstm_411/while/maximum_iterations:output:0lstm_411/time:output:0!lstm_411/TensorArrayV2_1:handle:0lstm_411/zeros:output:0lstm_411/zeros_1:output:0!lstm_411/strided_slice_1:output:0@lstm_411/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_411_lstm_cell_396_matmul_readvariableop_resource7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource6lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
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
lstm_411_while_body_2409566*'
condR
lstm_411_while_cond_2409565*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_411/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_411/TensorArrayV2Stack/TensorListStackTensorListStacklstm_411/while:output:3Blstm_411/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_411/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_411/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_3StridedSlice4lstm_411/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_411/strided_slice_3/stack:output:0)lstm_411/strided_slice_3/stack_1:output:0)lstm_411/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_411/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_411/transpose_1	Transpose4lstm_411/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_411/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_411/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_412/ShapeShapelstm_411/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_412/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_412/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_412/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_sliceStridedSlicelstm_412/Shape:output:0%lstm_412/strided_slice/stack:output:0'lstm_412/strided_slice/stack_1:output:0'lstm_412/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_412/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_412/zeros/packedPacklstm_412/strided_slice:output:0 lstm_412/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_412/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_412/zerosFilllstm_412/zeros/packed:output:0lstm_412/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_412/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_412/zeros_1/packedPacklstm_412/strided_slice:output:0"lstm_412/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_412/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_412/zeros_1Fill lstm_412/zeros_1/packed:output:0lstm_412/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_412/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_412/transpose	Transposelstm_411/transpose_1:y:0 lstm_412/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_412/Shape_1Shapelstm_412/transpose:y:0*
T0*
_output_shapes
:h
lstm_412/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_412/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_1StridedSlicelstm_412/Shape_1:output:0'lstm_412/strided_slice_1/stack:output:0)lstm_412/strided_slice_1/stack_1:output:0)lstm_412/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_412/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_412/TensorArrayV2TensorListReserve-lstm_412/TensorArrayV2/element_shape:output:0!lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_412/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_412/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_412/transpose:y:0Glstm_412/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_412/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_412/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_2StridedSlicelstm_412/transpose:y:0'lstm_412/strided_slice_2/stack:output:0)lstm_412/strided_slice_2/stack_1:output:0)lstm_412/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_412/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp5lstm_412_lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_412/lstm_cell_397/MatMulMatMul!lstm_412/strided_slice_2:output:04lstm_412/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_412/lstm_cell_397/MatMul_1MatMullstm_412/zeros:output:06lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_412/lstm_cell_397/addAddV2'lstm_412/lstm_cell_397/MatMul:product:0)lstm_412/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp6lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_412/lstm_cell_397/BiasAddBiasAddlstm_412/lstm_cell_397/add:z:05lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_412/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_412/lstm_cell_397/splitSplit/lstm_412/lstm_cell_397/split/split_dim:output:0'lstm_412/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_412/lstm_cell_397/SigmoidSigmoid%lstm_412/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_412/lstm_cell_397/Sigmoid_1Sigmoid%lstm_412/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mulMul$lstm_412/lstm_cell_397/Sigmoid_1:y:0lstm_412/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_412/lstm_cell_397/ReluRelu%lstm_412/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mul_1Mul"lstm_412/lstm_cell_397/Sigmoid:y:0)lstm_412/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/add_1AddV2lstm_412/lstm_cell_397/mul:z:0 lstm_412/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_412/lstm_cell_397/Sigmoid_2Sigmoid%lstm_412/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_412/lstm_cell_397/Relu_1Relu lstm_412/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mul_2Mul$lstm_412/lstm_cell_397/Sigmoid_2:y:0+lstm_412/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_412/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_412/TensorArrayV2_1TensorListReserve/lstm_412/TensorArrayV2_1/element_shape:output:0!lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_412/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_412/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_412/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_412/whileWhile$lstm_412/while/loop_counter:output:0*lstm_412/while/maximum_iterations:output:0lstm_412/time:output:0!lstm_412/TensorArrayV2_1:handle:0lstm_412/zeros:output:0lstm_412/zeros_1:output:0!lstm_412/strided_slice_1:output:0@lstm_412/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_412_lstm_cell_397_matmul_readvariableop_resource7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource6lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
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
lstm_412_while_body_2409705*'
condR
lstm_412_while_cond_2409704*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_412/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_412/TensorArrayV2Stack/TensorListStackTensorListStacklstm_412/while:output:3Blstm_412/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_412/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_412/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_3StridedSlice4lstm_412/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_412/strided_slice_3/stack:output:0)lstm_412/strided_slice_3/stack_1:output:0)lstm_412/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_412/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_412/transpose_1	Transpose4lstm_412/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_412/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_412/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_413/ShapeShapelstm_412/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_413/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_413/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_413/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_sliceStridedSlicelstm_413/Shape:output:0%lstm_413/strided_slice/stack:output:0'lstm_413/strided_slice/stack_1:output:0'lstm_413/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_413/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_413/zeros/packedPacklstm_413/strided_slice:output:0 lstm_413/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_413/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_413/zerosFilllstm_413/zeros/packed:output:0lstm_413/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_413/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_413/zeros_1/packedPacklstm_413/strided_slice:output:0"lstm_413/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_413/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_413/zeros_1Fill lstm_413/zeros_1/packed:output:0lstm_413/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_413/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_413/transpose	Transposelstm_412/transpose_1:y:0 lstm_413/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_413/Shape_1Shapelstm_413/transpose:y:0*
T0*
_output_shapes
:h
lstm_413/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_413/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_1StridedSlicelstm_413/Shape_1:output:0'lstm_413/strided_slice_1/stack:output:0)lstm_413/strided_slice_1/stack_1:output:0)lstm_413/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_413/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_413/TensorArrayV2TensorListReserve-lstm_413/TensorArrayV2/element_shape:output:0!lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_413/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_413/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_413/transpose:y:0Glstm_413/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_413/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_413/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_2StridedSlicelstm_413/transpose:y:0'lstm_413/strided_slice_2/stack:output:0)lstm_413/strided_slice_2/stack_1:output:0)lstm_413/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_413/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp5lstm_413_lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_413/lstm_cell_398/MatMulMatMul!lstm_413/strided_slice_2:output:04lstm_413/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_413/lstm_cell_398/MatMul_1MatMullstm_413/zeros:output:06lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_413/lstm_cell_398/addAddV2'lstm_413/lstm_cell_398/MatMul:product:0)lstm_413/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp6lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_413/lstm_cell_398/BiasAddBiasAddlstm_413/lstm_cell_398/add:z:05lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_413/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_413/lstm_cell_398/splitSplit/lstm_413/lstm_cell_398/split/split_dim:output:0'lstm_413/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_413/lstm_cell_398/SigmoidSigmoid%lstm_413/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_413/lstm_cell_398/Sigmoid_1Sigmoid%lstm_413/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mulMul$lstm_413/lstm_cell_398/Sigmoid_1:y:0lstm_413/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_413/lstm_cell_398/ReluRelu%lstm_413/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mul_1Mul"lstm_413/lstm_cell_398/Sigmoid:y:0)lstm_413/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/add_1AddV2lstm_413/lstm_cell_398/mul:z:0 lstm_413/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_413/lstm_cell_398/Sigmoid_2Sigmoid%lstm_413/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_413/lstm_cell_398/Relu_1Relu lstm_413/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mul_2Mul$lstm_413/lstm_cell_398/Sigmoid_2:y:0+lstm_413/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_413/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_413/TensorArrayV2_1TensorListReserve/lstm_413/TensorArrayV2_1/element_shape:output:0!lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_413/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_413/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_413/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_413/whileWhile$lstm_413/while/loop_counter:output:0*lstm_413/while/maximum_iterations:output:0lstm_413/time:output:0!lstm_413/TensorArrayV2_1:handle:0lstm_413/zeros:output:0lstm_413/zeros_1:output:0!lstm_413/strided_slice_1:output:0@lstm_413/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_413_lstm_cell_398_matmul_readvariableop_resource7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource6lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
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
lstm_413_while_body_2409844*'
condR
lstm_413_while_cond_2409843*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_413/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_413/TensorArrayV2Stack/TensorListStackTensorListStacklstm_413/while:output:3Blstm_413/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_413/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_413/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_3StridedSlice4lstm_413/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_413/strided_slice_3/stack:output:0)lstm_413/strided_slice_3/stack_1:output:0)lstm_413/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_413/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_413/transpose_1	Transpose4lstm_413/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_413/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_413/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_137/MatMulMatMul!lstm_413/strided_slice_3:output:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_137/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp.^lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp-^lstm_411/lstm_cell_396/MatMul/ReadVariableOp/^lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp^lstm_411/while.^lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp-^lstm_412/lstm_cell_397/MatMul/ReadVariableOp/^lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp^lstm_412/while.^lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp-^lstm_413/lstm_cell_398/MatMul/ReadVariableOp/^lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp^lstm_413/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp2^
-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp2\
,lstm_411/lstm_cell_396/MatMul/ReadVariableOp,lstm_411/lstm_cell_396/MatMul/ReadVariableOp2`
.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp2 
lstm_411/whilelstm_411/while2^
-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp2\
,lstm_412/lstm_cell_397/MatMul/ReadVariableOp,lstm_412/lstm_cell_397/MatMul/ReadVariableOp2`
.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp2 
lstm_412/whilelstm_412/while2^
-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp2\
,lstm_413/lstm_cell_398/MatMul/ReadVariableOp,lstm_413/lstm_cell_398/MatMul/ReadVariableOp2`
.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp2 
lstm_413/whilelstm_413/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_411_layer_call_fn_2409967

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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407965s
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
0__inference_sequential_137_layer_call_fn_2408931
lstm_411_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_411_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408879o
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
_user_specified_namelstm_411_input
??
?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409507

inputsH
5lstm_411_lstm_cell_396_matmul_readvariableop_resource:	?J
7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource:	d?E
6lstm_411_lstm_cell_396_biasadd_readvariableop_resource:	?H
5lstm_412_lstm_cell_397_matmul_readvariableop_resource:	d?J
7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource:	2?E
6lstm_412_lstm_cell_397_biasadd_readvariableop_resource:	?G
5lstm_413_lstm_cell_398_matmul_readvariableop_resource:2(I
7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource:
(D
6lstm_413_lstm_cell_398_biasadd_readvariableop_resource:(:
(dense_137_matmul_readvariableop_resource:
7
)dense_137_biasadd_readvariableop_resource:
identity?? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp?,lstm_411/lstm_cell_396/MatMul/ReadVariableOp?.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp?lstm_411/while?-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp?,lstm_412/lstm_cell_397/MatMul/ReadVariableOp?.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp?lstm_412/while?-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp?,lstm_413/lstm_cell_398/MatMul/ReadVariableOp?.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp?lstm_413/whileD
lstm_411/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_411/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_411/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_411/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_sliceStridedSlicelstm_411/Shape:output:0%lstm_411/strided_slice/stack:output:0'lstm_411/strided_slice/stack_1:output:0'lstm_411/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_411/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_411/zeros/packedPacklstm_411/strided_slice:output:0 lstm_411/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_411/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_411/zerosFilllstm_411/zeros/packed:output:0lstm_411/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_411/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_411/zeros_1/packedPacklstm_411/strided_slice:output:0"lstm_411/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_411/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_411/zeros_1Fill lstm_411/zeros_1/packed:output:0lstm_411/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_411/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_411/transpose	Transposeinputs lstm_411/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_411/Shape_1Shapelstm_411/transpose:y:0*
T0*
_output_shapes
:h
lstm_411/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_411/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_1StridedSlicelstm_411/Shape_1:output:0'lstm_411/strided_slice_1/stack:output:0)lstm_411/strided_slice_1/stack_1:output:0)lstm_411/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_411/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_411/TensorArrayV2TensorListReserve-lstm_411/TensorArrayV2/element_shape:output:0!lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_411/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_411/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_411/transpose:y:0Glstm_411/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_411/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_411/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_2StridedSlicelstm_411/transpose:y:0'lstm_411/strided_slice_2/stack:output:0)lstm_411/strided_slice_2/stack_1:output:0)lstm_411/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_411/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp5lstm_411_lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_411/lstm_cell_396/MatMulMatMul!lstm_411/strided_slice_2:output:04lstm_411/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_411/lstm_cell_396/MatMul_1MatMullstm_411/zeros:output:06lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_411/lstm_cell_396/addAddV2'lstm_411/lstm_cell_396/MatMul:product:0)lstm_411/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp6lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_411/lstm_cell_396/BiasAddBiasAddlstm_411/lstm_cell_396/add:z:05lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_411/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_411/lstm_cell_396/splitSplit/lstm_411/lstm_cell_396/split/split_dim:output:0'lstm_411/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_411/lstm_cell_396/SigmoidSigmoid%lstm_411/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_411/lstm_cell_396/Sigmoid_1Sigmoid%lstm_411/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mulMul$lstm_411/lstm_cell_396/Sigmoid_1:y:0lstm_411/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_411/lstm_cell_396/ReluRelu%lstm_411/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mul_1Mul"lstm_411/lstm_cell_396/Sigmoid:y:0)lstm_411/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/add_1AddV2lstm_411/lstm_cell_396/mul:z:0 lstm_411/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_411/lstm_cell_396/Sigmoid_2Sigmoid%lstm_411/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_411/lstm_cell_396/Relu_1Relu lstm_411/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_411/lstm_cell_396/mul_2Mul$lstm_411/lstm_cell_396/Sigmoid_2:y:0+lstm_411/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_411/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_411/TensorArrayV2_1TensorListReserve/lstm_411/TensorArrayV2_1/element_shape:output:0!lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_411/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_411/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_411/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_411/whileWhile$lstm_411/while/loop_counter:output:0*lstm_411/while/maximum_iterations:output:0lstm_411/time:output:0!lstm_411/TensorArrayV2_1:handle:0lstm_411/zeros:output:0lstm_411/zeros_1:output:0!lstm_411/strided_slice_1:output:0@lstm_411/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_411_lstm_cell_396_matmul_readvariableop_resource7lstm_411_lstm_cell_396_matmul_1_readvariableop_resource6lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
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
lstm_411_while_body_2409139*'
condR
lstm_411_while_cond_2409138*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_411/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_411/TensorArrayV2Stack/TensorListStackTensorListStacklstm_411/while:output:3Blstm_411/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_411/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_411/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_411/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_411/strided_slice_3StridedSlice4lstm_411/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_411/strided_slice_3/stack:output:0)lstm_411/strided_slice_3/stack_1:output:0)lstm_411/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_411/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_411/transpose_1	Transpose4lstm_411/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_411/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_411/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_412/ShapeShapelstm_411/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_412/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_412/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_412/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_sliceStridedSlicelstm_412/Shape:output:0%lstm_412/strided_slice/stack:output:0'lstm_412/strided_slice/stack_1:output:0'lstm_412/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_412/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_412/zeros/packedPacklstm_412/strided_slice:output:0 lstm_412/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_412/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_412/zerosFilllstm_412/zeros/packed:output:0lstm_412/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_412/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_412/zeros_1/packedPacklstm_412/strided_slice:output:0"lstm_412/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_412/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_412/zeros_1Fill lstm_412/zeros_1/packed:output:0lstm_412/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_412/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_412/transpose	Transposelstm_411/transpose_1:y:0 lstm_412/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_412/Shape_1Shapelstm_412/transpose:y:0*
T0*
_output_shapes
:h
lstm_412/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_412/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_1StridedSlicelstm_412/Shape_1:output:0'lstm_412/strided_slice_1/stack:output:0)lstm_412/strided_slice_1/stack_1:output:0)lstm_412/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_412/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_412/TensorArrayV2TensorListReserve-lstm_412/TensorArrayV2/element_shape:output:0!lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_412/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_412/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_412/transpose:y:0Glstm_412/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_412/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_412/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_2StridedSlicelstm_412/transpose:y:0'lstm_412/strided_slice_2/stack:output:0)lstm_412/strided_slice_2/stack_1:output:0)lstm_412/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_412/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp5lstm_412_lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_412/lstm_cell_397/MatMulMatMul!lstm_412/strided_slice_2:output:04lstm_412/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_412/lstm_cell_397/MatMul_1MatMullstm_412/zeros:output:06lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_412/lstm_cell_397/addAddV2'lstm_412/lstm_cell_397/MatMul:product:0)lstm_412/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp6lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_412/lstm_cell_397/BiasAddBiasAddlstm_412/lstm_cell_397/add:z:05lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_412/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_412/lstm_cell_397/splitSplit/lstm_412/lstm_cell_397/split/split_dim:output:0'lstm_412/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_412/lstm_cell_397/SigmoidSigmoid%lstm_412/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_412/lstm_cell_397/Sigmoid_1Sigmoid%lstm_412/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mulMul$lstm_412/lstm_cell_397/Sigmoid_1:y:0lstm_412/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_412/lstm_cell_397/ReluRelu%lstm_412/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mul_1Mul"lstm_412/lstm_cell_397/Sigmoid:y:0)lstm_412/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/add_1AddV2lstm_412/lstm_cell_397/mul:z:0 lstm_412/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_412/lstm_cell_397/Sigmoid_2Sigmoid%lstm_412/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_412/lstm_cell_397/Relu_1Relu lstm_412/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_412/lstm_cell_397/mul_2Mul$lstm_412/lstm_cell_397/Sigmoid_2:y:0+lstm_412/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_412/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_412/TensorArrayV2_1TensorListReserve/lstm_412/TensorArrayV2_1/element_shape:output:0!lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_412/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_412/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_412/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_412/whileWhile$lstm_412/while/loop_counter:output:0*lstm_412/while/maximum_iterations:output:0lstm_412/time:output:0!lstm_412/TensorArrayV2_1:handle:0lstm_412/zeros:output:0lstm_412/zeros_1:output:0!lstm_412/strided_slice_1:output:0@lstm_412/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_412_lstm_cell_397_matmul_readvariableop_resource7lstm_412_lstm_cell_397_matmul_1_readvariableop_resource6lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
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
lstm_412_while_body_2409278*'
condR
lstm_412_while_cond_2409277*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_412/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_412/TensorArrayV2Stack/TensorListStackTensorListStacklstm_412/while:output:3Blstm_412/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_412/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_412/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_412/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_412/strided_slice_3StridedSlice4lstm_412/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_412/strided_slice_3/stack:output:0)lstm_412/strided_slice_3/stack_1:output:0)lstm_412/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_412/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_412/transpose_1	Transpose4lstm_412/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_412/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_412/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_413/ShapeShapelstm_412/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_413/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_413/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_413/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_sliceStridedSlicelstm_413/Shape:output:0%lstm_413/strided_slice/stack:output:0'lstm_413/strided_slice/stack_1:output:0'lstm_413/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_413/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_413/zeros/packedPacklstm_413/strided_slice:output:0 lstm_413/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_413/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_413/zerosFilllstm_413/zeros/packed:output:0lstm_413/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_413/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_413/zeros_1/packedPacklstm_413/strided_slice:output:0"lstm_413/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_413/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_413/zeros_1Fill lstm_413/zeros_1/packed:output:0lstm_413/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_413/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_413/transpose	Transposelstm_412/transpose_1:y:0 lstm_413/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_413/Shape_1Shapelstm_413/transpose:y:0*
T0*
_output_shapes
:h
lstm_413/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_413/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_1StridedSlicelstm_413/Shape_1:output:0'lstm_413/strided_slice_1/stack:output:0)lstm_413/strided_slice_1/stack_1:output:0)lstm_413/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_413/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_413/TensorArrayV2TensorListReserve-lstm_413/TensorArrayV2/element_shape:output:0!lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_413/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_413/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_413/transpose:y:0Glstm_413/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_413/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_413/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_2StridedSlicelstm_413/transpose:y:0'lstm_413/strided_slice_2/stack:output:0)lstm_413/strided_slice_2/stack_1:output:0)lstm_413/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_413/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp5lstm_413_lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_413/lstm_cell_398/MatMulMatMul!lstm_413/strided_slice_2:output:04lstm_413/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_413/lstm_cell_398/MatMul_1MatMullstm_413/zeros:output:06lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_413/lstm_cell_398/addAddV2'lstm_413/lstm_cell_398/MatMul:product:0)lstm_413/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp6lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_413/lstm_cell_398/BiasAddBiasAddlstm_413/lstm_cell_398/add:z:05lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_413/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_413/lstm_cell_398/splitSplit/lstm_413/lstm_cell_398/split/split_dim:output:0'lstm_413/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_413/lstm_cell_398/SigmoidSigmoid%lstm_413/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_413/lstm_cell_398/Sigmoid_1Sigmoid%lstm_413/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mulMul$lstm_413/lstm_cell_398/Sigmoid_1:y:0lstm_413/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_413/lstm_cell_398/ReluRelu%lstm_413/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mul_1Mul"lstm_413/lstm_cell_398/Sigmoid:y:0)lstm_413/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/add_1AddV2lstm_413/lstm_cell_398/mul:z:0 lstm_413/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_413/lstm_cell_398/Sigmoid_2Sigmoid%lstm_413/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_413/lstm_cell_398/Relu_1Relu lstm_413/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_413/lstm_cell_398/mul_2Mul$lstm_413/lstm_cell_398/Sigmoid_2:y:0+lstm_413/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_413/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_413/TensorArrayV2_1TensorListReserve/lstm_413/TensorArrayV2_1/element_shape:output:0!lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_413/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_413/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_413/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_413/whileWhile$lstm_413/while/loop_counter:output:0*lstm_413/while/maximum_iterations:output:0lstm_413/time:output:0!lstm_413/TensorArrayV2_1:handle:0lstm_413/zeros:output:0lstm_413/zeros_1:output:0!lstm_413/strided_slice_1:output:0@lstm_413/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_413_lstm_cell_398_matmul_readvariableop_resource7lstm_413_lstm_cell_398_matmul_1_readvariableop_resource6lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
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
lstm_413_while_body_2409417*'
condR
lstm_413_while_cond_2409416*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_413/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_413/TensorArrayV2Stack/TensorListStackTensorListStacklstm_413/while:output:3Blstm_413/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_413/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_413/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_413/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_413/strided_slice_3StridedSlice4lstm_413/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_413/strided_slice_3/stack:output:0)lstm_413/strided_slice_3/stack_1:output:0)lstm_413/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_413/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_413/transpose_1	Transpose4lstm_413/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_413/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_413/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_137/MatMulMatMul!lstm_413/strided_slice_3:output:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_137/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp.^lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp-^lstm_411/lstm_cell_396/MatMul/ReadVariableOp/^lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp^lstm_411/while.^lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp-^lstm_412/lstm_cell_397/MatMul/ReadVariableOp/^lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp^lstm_412/while.^lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp-^lstm_413/lstm_cell_398/MatMul/ReadVariableOp/^lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp^lstm_413/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp2^
-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp-lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp2\
,lstm_411/lstm_cell_396/MatMul/ReadVariableOp,lstm_411/lstm_cell_396/MatMul/ReadVariableOp2`
.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp.lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp2 
lstm_411/whilelstm_411/while2^
-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp-lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp2\
,lstm_412/lstm_cell_397/MatMul/ReadVariableOp,lstm_412/lstm_cell_397/MatMul/ReadVariableOp2`
.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp.lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp2 
lstm_412/whilelstm_412/while2^
-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp-lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp2\
,lstm_413/lstm_cell_398/MatMul/ReadVariableOp,lstm_413/lstm_cell_398/MatMul/ReadVariableOp2`
.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp.lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp2 
lstm_413/whilelstm_413/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_397_layer_call_fn_2411933

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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407329o
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
while_body_2410180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_2409026
lstm_411_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_411_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2406766o
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
_user_specified_namelstm_411_input
?#
?
while_body_2406847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_396_2406871_0:	?0
while_lstm_cell_396_2406873_0:	d?,
while_lstm_cell_396_2406875_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_396_2406871:	?.
while_lstm_cell_396_2406873:	d?*
while_lstm_cell_396_2406875:	???+while/lstm_cell_396/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_396/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_396_2406871_0while_lstm_cell_396_2406873_0while_lstm_cell_396_2406875_0*
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406833?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_396/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_396/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_396/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_396/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_396_2406871while_lstm_cell_396_2406871_0"<
while_lstm_cell_396_2406873while_lstm_cell_396_2406873_0"<
while_lstm_cell_396_2406875while_lstm_cell_396_2406875_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_396/StatefulPartitionedCall+while/lstm_cell_396/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_137_lstm_413_while_cond_2406675L
Hsequential_137_lstm_413_while_sequential_137_lstm_413_while_loop_counterR
Nsequential_137_lstm_413_while_sequential_137_lstm_413_while_maximum_iterations-
)sequential_137_lstm_413_while_placeholder/
+sequential_137_lstm_413_while_placeholder_1/
+sequential_137_lstm_413_while_placeholder_2/
+sequential_137_lstm_413_while_placeholder_3N
Jsequential_137_lstm_413_while_less_sequential_137_lstm_413_strided_slice_1e
asequential_137_lstm_413_while_sequential_137_lstm_413_while_cond_2406675___redundant_placeholder0e
asequential_137_lstm_413_while_sequential_137_lstm_413_while_cond_2406675___redundant_placeholder1e
asequential_137_lstm_413_while_sequential_137_lstm_413_while_cond_2406675___redundant_placeholder2e
asequential_137_lstm_413_while_sequential_137_lstm_413_while_cond_2406675___redundant_placeholder3*
&sequential_137_lstm_413_while_identity
?
"sequential_137/lstm_413/while/LessLess)sequential_137_lstm_413_while_placeholderJsequential_137_lstm_413_while_less_sequential_137_lstm_413_strided_slice_1*
T0*
_output_shapes
: {
&sequential_137/lstm_413/while/IdentityIdentity&sequential_137/lstm_413/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_137_lstm_413_while_identity/sequential_137/lstm_413/while/Identity:output:0*(
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
while_cond_2411411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2411411___redundant_placeholder05
1while_while_cond_2411411___redundant_placeholder15
1while_while_cond_2411411___redundant_placeholder25
1while_while_cond_2411411___redundant_placeholder3
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
while_cond_2410938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410938___redundant_placeholder05
1while_while_cond_2410938___redundant_placeholder15
1while_while_cond_2410938___redundant_placeholder25
1while_while_cond_2410938___redundant_placeholder3
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
while_cond_2408030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2408030___redundant_placeholder05
1while_while_cond_2408030___redundant_placeholder15
1while_while_cond_2408030___redundant_placeholder25
1while_while_cond_2408030___redundant_placeholder3
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2408811

inputs?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2408727*
condR
while_cond_2408726*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412063

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
while_body_2411082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_137_lstm_412_while_body_2406537L
Hsequential_137_lstm_412_while_sequential_137_lstm_412_while_loop_counterR
Nsequential_137_lstm_412_while_sequential_137_lstm_412_while_maximum_iterations-
)sequential_137_lstm_412_while_placeholder/
+sequential_137_lstm_412_while_placeholder_1/
+sequential_137_lstm_412_while_placeholder_2/
+sequential_137_lstm_412_while_placeholder_3K
Gsequential_137_lstm_412_while_sequential_137_lstm_412_strided_slice_1_0?
?sequential_137_lstm_412_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_412_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_137_lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0:	d?a
Nsequential_137_lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?\
Msequential_137_lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0:	?*
&sequential_137_lstm_412_while_identity,
(sequential_137_lstm_412_while_identity_1,
(sequential_137_lstm_412_while_identity_2,
(sequential_137_lstm_412_while_identity_3,
(sequential_137_lstm_412_while_identity_4,
(sequential_137_lstm_412_while_identity_5I
Esequential_137_lstm_412_while_sequential_137_lstm_412_strided_slice_1?
?sequential_137_lstm_412_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_412_tensorarrayunstack_tensorlistfromtensor]
Jsequential_137_lstm_412_while_lstm_cell_397_matmul_readvariableop_resource:	d?_
Lsequential_137_lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource:	2?Z
Ksequential_137_lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource:	???Bsequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp?Asequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp?Csequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp?
Osequential_137/lstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_137/lstm_412/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_137_lstm_412_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_412_tensorarrayunstack_tensorlistfromtensor_0)sequential_137_lstm_412_while_placeholderXsequential_137/lstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOpLsequential_137_lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_137/lstm_412/while/lstm_cell_397/MatMulMatMulHsequential_137/lstm_412/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOpNsequential_137_lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_137/lstm_412/while/lstm_cell_397/MatMul_1MatMul+sequential_137_lstm_412_while_placeholder_2Ksequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_137/lstm_412/while/lstm_cell_397/addAddV2<sequential_137/lstm_412/while/lstm_cell_397/MatMul:product:0>sequential_137/lstm_412/while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOpMsequential_137_lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_137/lstm_412/while/lstm_cell_397/BiasAddBiasAdd3sequential_137/lstm_412/while/lstm_cell_397/add:z:0Jsequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_137/lstm_412/while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_137/lstm_412/while/lstm_cell_397/splitSplitDsequential_137/lstm_412/while/lstm_cell_397/split/split_dim:output:0<sequential_137/lstm_412/while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_137/lstm_412/while/lstm_cell_397/SigmoidSigmoid:sequential_137/lstm_412/while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_137/lstm_412/while/lstm_cell_397/Sigmoid_1Sigmoid:sequential_137/lstm_412/while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_137/lstm_412/while/lstm_cell_397/mulMul9sequential_137/lstm_412/while/lstm_cell_397/Sigmoid_1:y:0+sequential_137_lstm_412_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_137/lstm_412/while/lstm_cell_397/ReluRelu:sequential_137/lstm_412/while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_137/lstm_412/while/lstm_cell_397/mul_1Mul7sequential_137/lstm_412/while/lstm_cell_397/Sigmoid:y:0>sequential_137/lstm_412/while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_137/lstm_412/while/lstm_cell_397/add_1AddV23sequential_137/lstm_412/while/lstm_cell_397/mul:z:05sequential_137/lstm_412/while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_137/lstm_412/while/lstm_cell_397/Sigmoid_2Sigmoid:sequential_137/lstm_412/while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_137/lstm_412/while/lstm_cell_397/Relu_1Relu5sequential_137/lstm_412/while/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_137/lstm_412/while/lstm_cell_397/mul_2Mul9sequential_137/lstm_412/while/lstm_cell_397/Sigmoid_2:y:0@sequential_137/lstm_412/while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_137/lstm_412/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_137_lstm_412_while_placeholder_1)sequential_137_lstm_412_while_placeholder5sequential_137/lstm_412/while/lstm_cell_397/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_137/lstm_412/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_137/lstm_412/while/addAddV2)sequential_137_lstm_412_while_placeholder,sequential_137/lstm_412/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_137/lstm_412/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_137/lstm_412/while/add_1AddV2Hsequential_137_lstm_412_while_sequential_137_lstm_412_while_loop_counter.sequential_137/lstm_412/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_137/lstm_412/while/IdentityIdentity'sequential_137/lstm_412/while/add_1:z:0#^sequential_137/lstm_412/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_412/while/Identity_1IdentityNsequential_137_lstm_412_while_sequential_137_lstm_412_while_maximum_iterations#^sequential_137/lstm_412/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_412/while/Identity_2Identity%sequential_137/lstm_412/while/add:z:0#^sequential_137/lstm_412/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_412/while/Identity_3IdentityRsequential_137/lstm_412/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_137/lstm_412/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_412/while/Identity_4Identity5sequential_137/lstm_412/while/lstm_cell_397/mul_2:z:0#^sequential_137/lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_137/lstm_412/while/Identity_5Identity5sequential_137/lstm_412/while/lstm_cell_397/add_1:z:0#^sequential_137/lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_137/lstm_412/while/NoOpNoOpC^sequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOpB^sequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOpD^sequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_137_lstm_412_while_identity/sequential_137/lstm_412/while/Identity:output:0"]
(sequential_137_lstm_412_while_identity_11sequential_137/lstm_412/while/Identity_1:output:0"]
(sequential_137_lstm_412_while_identity_21sequential_137/lstm_412/while/Identity_2:output:0"]
(sequential_137_lstm_412_while_identity_31sequential_137/lstm_412/while/Identity_3:output:0"]
(sequential_137_lstm_412_while_identity_41sequential_137/lstm_412/while/Identity_4:output:0"]
(sequential_137_lstm_412_while_identity_51sequential_137/lstm_412/while/Identity_5:output:0"?
Ksequential_137_lstm_412_while_lstm_cell_397_biasadd_readvariableop_resourceMsequential_137_lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0"?
Lsequential_137_lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resourceNsequential_137_lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0"?
Jsequential_137_lstm_412_while_lstm_cell_397_matmul_readvariableop_resourceLsequential_137_lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0"?
Esequential_137_lstm_412_while_sequential_137_lstm_412_strided_slice_1Gsequential_137_lstm_412_while_sequential_137_lstm_412_strided_slice_1_0"?
?sequential_137_lstm_412_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_412_tensorarrayunstack_tensorlistfromtensor?sequential_137_lstm_412_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_412_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOpBsequential_137/lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp2?
Asequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOpAsequential_137/lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp2?
Csequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOpCsequential_137/lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411997

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

lstm_411_while_body_2409139.
*lstm_411_while_lstm_411_while_loop_counter4
0lstm_411_while_lstm_411_while_maximum_iterations
lstm_411_while_placeholder 
lstm_411_while_placeholder_1 
lstm_411_while_placeholder_2 
lstm_411_while_placeholder_3-
)lstm_411_while_lstm_411_strided_slice_1_0i
elstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0:	?R
?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?M
>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
lstm_411_while_identity
lstm_411_while_identity_1
lstm_411_while_identity_2
lstm_411_while_identity_3
lstm_411_while_identity_4
lstm_411_while_identity_5+
'lstm_411_while_lstm_411_strided_slice_1g
clstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensorN
;lstm_411_while_lstm_cell_396_matmul_readvariableop_resource:	?P
=lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource:	d?K
<lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource:	???3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp?2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp?4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp?
@lstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_411/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0lstm_411_while_placeholderIlstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_411/while/lstm_cell_396/MatMulMatMul9lstm_411/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_411/while/lstm_cell_396/MatMul_1MatMullstm_411_while_placeholder_2<lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_411/while/lstm_cell_396/addAddV2-lstm_411/while/lstm_cell_396/MatMul:product:0/lstm_411/while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_411/while/lstm_cell_396/BiasAddBiasAdd$lstm_411/while/lstm_cell_396/add:z:0;lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_411/while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_411/while/lstm_cell_396/splitSplit5lstm_411/while/lstm_cell_396/split/split_dim:output:0-lstm_411/while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_411/while/lstm_cell_396/SigmoidSigmoid+lstm_411/while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_411/while/lstm_cell_396/Sigmoid_1Sigmoid+lstm_411/while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_411/while/lstm_cell_396/mulMul*lstm_411/while/lstm_cell_396/Sigmoid_1:y:0lstm_411_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_411/while/lstm_cell_396/ReluRelu+lstm_411/while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/mul_1Mul(lstm_411/while/lstm_cell_396/Sigmoid:y:0/lstm_411/while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/add_1AddV2$lstm_411/while/lstm_cell_396/mul:z:0&lstm_411/while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_411/while/lstm_cell_396/Sigmoid_2Sigmoid+lstm_411/while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_411/while/lstm_cell_396/Relu_1Relu&lstm_411/while/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/mul_2Mul*lstm_411/while/lstm_cell_396/Sigmoid_2:y:01lstm_411/while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_411/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_411_while_placeholder_1lstm_411_while_placeholder&lstm_411/while/lstm_cell_396/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_411/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_411/while/addAddV2lstm_411_while_placeholderlstm_411/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_411/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_411/while/add_1AddV2*lstm_411_while_lstm_411_while_loop_counterlstm_411/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_411/while/IdentityIdentitylstm_411/while/add_1:z:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_1Identity0lstm_411_while_lstm_411_while_maximum_iterations^lstm_411/while/NoOp*
T0*
_output_shapes
: t
lstm_411/while/Identity_2Identitylstm_411/while/add:z:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_3IdentityClstm_411/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_4Identity&lstm_411/while/lstm_cell_396/mul_2:z:0^lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_411/while/Identity_5Identity&lstm_411/while/lstm_cell_396/add_1:z:0^lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_411/while/NoOpNoOp4^lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp3^lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp5^lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_411_while_identity lstm_411/while/Identity:output:0"?
lstm_411_while_identity_1"lstm_411/while/Identity_1:output:0"?
lstm_411_while_identity_2"lstm_411/while/Identity_2:output:0"?
lstm_411_while_identity_3"lstm_411/while/Identity_3:output:0"?
lstm_411_while_identity_4"lstm_411/while/Identity_4:output:0"?
lstm_411_while_identity_5"lstm_411/while/Identity_5:output:0"T
'lstm_411_while_lstm_411_strided_slice_1)lstm_411_while_lstm_411_strided_slice_1_0"~
<lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0"?
=lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0"|
;lstm_411_while_lstm_cell_396_matmul_readvariableop_resource=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0"?
clstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensorelstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp2h
2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp2l
4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410264
inputs_0?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2410180*
condR
while_cond_2410179*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_412_layer_call_and_return_conditional_losses_2407457

inputs(
lstm_cell_397_2407375:	d?(
lstm_cell_397_2407377:	2?$
lstm_cell_397_2407379:	?
identity??%lstm_cell_397/StatefulPartitionedCall?while;
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
%lstm_cell_397/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_397_2407375lstm_cell_397_2407377lstm_cell_397_2407379*
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407329n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_397_2407375lstm_cell_397_2407377lstm_cell_397_2407379*
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
while_body_2407388*
condR
while_cond_2407387*K
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
NoOpNoOp&^lstm_cell_397/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_397/StatefulPartitionedCall%lstm_cell_397/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407107

inputs(
lstm_cell_396_2407025:	?(
lstm_cell_396_2407027:	d?$
lstm_cell_396_2407029:	?
identity??%lstm_cell_396/StatefulPartitionedCall?while;
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
%lstm_cell_396/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_396_2407025lstm_cell_396_2407027lstm_cell_396_2407029*
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406979n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_396_2407025lstm_cell_396_2407027lstm_cell_396_2407029*
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
while_body_2407038*
condR
while_cond_2407037*K
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
NoOpNoOp&^lstm_cell_396/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_396/StatefulPartitionedCall%lstm_cell_396/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_413_layer_call_and_return_conditional_losses_2407616

inputs'
lstm_cell_398_2407534:2('
lstm_cell_398_2407536:
(#
lstm_cell_398_2407538:(
identity??%lstm_cell_398/StatefulPartitionedCall?while;
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
%lstm_cell_398/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_398_2407534lstm_cell_398_2407536lstm_cell_398_2407538*
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407533n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_398_2407534lstm_cell_398_2407536lstm_cell_398_2407538*
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
while_body_2407547*
condR
while_cond_2407546*K
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
NoOpNoOp&^lstm_cell_398/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_398/StatefulPartitionedCall%lstm_cell_398/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_137_layer_call_fn_2411791

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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283o
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
?
/__inference_lstm_cell_398_layer_call_fn_2412014

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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407533o
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
while_body_2410466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2410179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410179___redundant_placeholder05
1while_while_cond_2410179___redundant_placeholder15
1while_while_cond_2410179___redundant_placeholder25
1while_while_cond_2410179___redundant_placeholder3
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
while_body_2408727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408265

inputs>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2408181*
condR
while_cond_2408180*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2408031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2411555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_412_while_cond_2409704.
*lstm_412_while_lstm_412_while_loop_counter4
0lstm_412_while_lstm_412_while_maximum_iterations
lstm_412_while_placeholder 
lstm_412_while_placeholder_1 
lstm_412_while_placeholder_2 
lstm_412_while_placeholder_30
,lstm_412_while_less_lstm_412_strided_slice_1G
Clstm_412_while_lstm_412_while_cond_2409704___redundant_placeholder0G
Clstm_412_while_lstm_412_while_cond_2409704___redundant_placeholder1G
Clstm_412_while_lstm_412_while_cond_2409704___redundant_placeholder2G
Clstm_412_while_lstm_412_while_cond_2409704___redundant_placeholder3
lstm_412_while_identity
?
lstm_412/while/LessLesslstm_412_while_placeholder,lstm_412_while_less_lstm_412_strided_slice_1*
T0*
_output_shapes
: ]
lstm_412/while/IdentityIdentitylstm_412/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_412_while_identity lstm_412/while/Identity:output:0*(
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
while_body_2407388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_397_2407412_0:	d?0
while_lstm_cell_397_2407414_0:	2?,
while_lstm_cell_397_2407416_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_397_2407412:	d?.
while_lstm_cell_397_2407414:	2?*
while_lstm_cell_397_2407416:	???+while/lstm_cell_397/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_397/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_397_2407412_0while_lstm_cell_397_2407414_0while_lstm_cell_397_2407416_0*
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407329?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_397/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_397/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_397/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_397_2407412while_lstm_cell_397_2407412_0"<
while_lstm_cell_397_2407414while_lstm_cell_397_2407414_0"<
while_lstm_cell_397_2407416while_lstm_cell_397_2407416_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_397/StatefulPartitionedCall+while/lstm_cell_397/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408646

inputs?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2408562*
condR
while_cond_2408561*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2408396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2408396___redundant_placeholder05
1while_while_cond_2408396___redundant_placeholder15
1while_while_cond_2408396___redundant_placeholder25
1while_while_cond_2408396___redundant_placeholder3
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
/__inference_lstm_cell_397_layer_call_fn_2411916

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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407183o
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407965

inputs?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2407881*
condR
while_cond_2407880*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2407738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_398_2407762_0:2(/
while_lstm_cell_398_2407764_0:
(+
while_lstm_cell_398_2407766_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_398_2407762:2(-
while_lstm_cell_398_2407764:
()
while_lstm_cell_398_2407766:(??+while/lstm_cell_398/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_398/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_398_2407762_0while_lstm_cell_398_2407764_0while_lstm_cell_398_2407766_0*
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407679?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_398/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_398/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_398/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_398/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_398_2407762while_lstm_cell_398_2407762_0"<
while_lstm_cell_398_2407764while_lstm_cell_398_2407764_0"<
while_lstm_cell_398_2407766while_lstm_cell_398_2407766_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_398/StatefulPartitionedCall+while/lstm_cell_398/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411353
inputs_0>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2411269*
condR
while_cond_2411268*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2407881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_412_while_body_2409705.
*lstm_412_while_lstm_412_while_loop_counter4
0lstm_412_while_lstm_412_while_maximum_iterations
lstm_412_while_placeholder 
lstm_412_while_placeholder_1 
lstm_412_while_placeholder_2 
lstm_412_while_placeholder_3-
)lstm_412_while_lstm_412_strided_slice_1_0i
elstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0:	d?R
?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?M
>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
lstm_412_while_identity
lstm_412_while_identity_1
lstm_412_while_identity_2
lstm_412_while_identity_3
lstm_412_while_identity_4
lstm_412_while_identity_5+
'lstm_412_while_lstm_412_strided_slice_1g
clstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensorN
;lstm_412_while_lstm_cell_397_matmul_readvariableop_resource:	d?P
=lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource:	2?K
<lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource:	???3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp?2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp?4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp?
@lstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_412/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0lstm_412_while_placeholderIlstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_412/while/lstm_cell_397/MatMulMatMul9lstm_412/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_412/while/lstm_cell_397/MatMul_1MatMullstm_412_while_placeholder_2<lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_412/while/lstm_cell_397/addAddV2-lstm_412/while/lstm_cell_397/MatMul:product:0/lstm_412/while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_412/while/lstm_cell_397/BiasAddBiasAdd$lstm_412/while/lstm_cell_397/add:z:0;lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_412/while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_412/while/lstm_cell_397/splitSplit5lstm_412/while/lstm_cell_397/split/split_dim:output:0-lstm_412/while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_412/while/lstm_cell_397/SigmoidSigmoid+lstm_412/while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_412/while/lstm_cell_397/Sigmoid_1Sigmoid+lstm_412/while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_412/while/lstm_cell_397/mulMul*lstm_412/while/lstm_cell_397/Sigmoid_1:y:0lstm_412_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_412/while/lstm_cell_397/ReluRelu+lstm_412/while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/mul_1Mul(lstm_412/while/lstm_cell_397/Sigmoid:y:0/lstm_412/while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/add_1AddV2$lstm_412/while/lstm_cell_397/mul:z:0&lstm_412/while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_412/while/lstm_cell_397/Sigmoid_2Sigmoid+lstm_412/while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_412/while/lstm_cell_397/Relu_1Relu&lstm_412/while/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/mul_2Mul*lstm_412/while/lstm_cell_397/Sigmoid_2:y:01lstm_412/while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_412/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_412_while_placeholder_1lstm_412_while_placeholder&lstm_412/while/lstm_cell_397/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_412/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_412/while/addAddV2lstm_412_while_placeholderlstm_412/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_412/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_412/while/add_1AddV2*lstm_412_while_lstm_412_while_loop_counterlstm_412/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_412/while/IdentityIdentitylstm_412/while/add_1:z:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_1Identity0lstm_412_while_lstm_412_while_maximum_iterations^lstm_412/while/NoOp*
T0*
_output_shapes
: t
lstm_412/while/Identity_2Identitylstm_412/while/add:z:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_3IdentityClstm_412/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_4Identity&lstm_412/while/lstm_cell_397/mul_2:z:0^lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_412/while/Identity_5Identity&lstm_412/while/lstm_cell_397/add_1:z:0^lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_412/while/NoOpNoOp4^lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp3^lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp5^lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_412_while_identity lstm_412/while/Identity:output:0"?
lstm_412_while_identity_1"lstm_412/while/Identity_1:output:0"?
lstm_412_while_identity_2"lstm_412/while/Identity_2:output:0"?
lstm_412_while_identity_3"lstm_412/while/Identity_3:output:0"?
lstm_412_while_identity_4"lstm_412/while/Identity_4:output:0"?
lstm_412_while_identity_5"lstm_412/while/Identity_5:output:0"T
'lstm_412_while_lstm_412_strided_slice_1)lstm_412_while_lstm_412_strided_slice_1_0"~
<lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0"?
=lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0"|
;lstm_412_while_lstm_cell_397_matmul_readvariableop_resource=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0"?
clstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensorelstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp2h
2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp2l
4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406833

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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407679

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
?
?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408991
lstm_411_input#
lstm_411_2408964:	?#
lstm_411_2408966:	d?
lstm_411_2408968:	?#
lstm_412_2408971:	d?#
lstm_412_2408973:	2?
lstm_412_2408975:	?"
lstm_413_2408978:2("
lstm_413_2408980:
(
lstm_413_2408982:(#
dense_137_2408985:

dense_137_2408987:
identity??!dense_137/StatefulPartitionedCall? lstm_411/StatefulPartitionedCall? lstm_412/StatefulPartitionedCall? lstm_413/StatefulPartitionedCall?
 lstm_411/StatefulPartitionedCallStatefulPartitionedCalllstm_411_inputlstm_411_2408964lstm_411_2408966lstm_411_2408968*
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2408811?
 lstm_412/StatefulPartitionedCallStatefulPartitionedCall)lstm_411/StatefulPartitionedCall:output:0lstm_412_2408971lstm_412_2408973lstm_412_2408975*
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408646?
 lstm_413/StatefulPartitionedCallStatefulPartitionedCall)lstm_412/StatefulPartitionedCall:output:0lstm_413_2408978lstm_413_2408980lstm_413_2408982*
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408481?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_413/StatefulPartitionedCall:output:0dense_137_2408985dense_137_2408987*
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283y
IdentityIdentity*dense_137/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_137/StatefulPartitionedCall!^lstm_411/StatefulPartitionedCall!^lstm_412/StatefulPartitionedCall!^lstm_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2D
 lstm_411/StatefulPartitionedCall lstm_411/StatefulPartitionedCall2D
 lstm_412/StatefulPartitionedCall lstm_412/StatefulPartitionedCall2D
 lstm_413/StatefulPartitionedCall lstm_413/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_411_input
?K
?
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410121
inputs_0?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2410037*
condR
while_cond_2410036*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_412_while_body_2409278.
*lstm_412_while_lstm_412_while_loop_counter4
0lstm_412_while_lstm_412_while_maximum_iterations
lstm_412_while_placeholder 
lstm_412_while_placeholder_1 
lstm_412_while_placeholder_2 
lstm_412_while_placeholder_3-
)lstm_412_while_lstm_412_strided_slice_1_0i
elstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0:	d?R
?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?M
>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
lstm_412_while_identity
lstm_412_while_identity_1
lstm_412_while_identity_2
lstm_412_while_identity_3
lstm_412_while_identity_4
lstm_412_while_identity_5+
'lstm_412_while_lstm_412_strided_slice_1g
clstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensorN
;lstm_412_while_lstm_cell_397_matmul_readvariableop_resource:	d?P
=lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource:	2?K
<lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource:	???3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp?2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp?4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp?
@lstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_412/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0lstm_412_while_placeholderIlstm_412/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_412/while/lstm_cell_397/MatMulMatMul9lstm_412/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_412/while/lstm_cell_397/MatMul_1MatMullstm_412_while_placeholder_2<lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_412/while/lstm_cell_397/addAddV2-lstm_412/while/lstm_cell_397/MatMul:product:0/lstm_412/while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_412/while/lstm_cell_397/BiasAddBiasAdd$lstm_412/while/lstm_cell_397/add:z:0;lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_412/while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_412/while/lstm_cell_397/splitSplit5lstm_412/while/lstm_cell_397/split/split_dim:output:0-lstm_412/while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_412/while/lstm_cell_397/SigmoidSigmoid+lstm_412/while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_412/while/lstm_cell_397/Sigmoid_1Sigmoid+lstm_412/while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_412/while/lstm_cell_397/mulMul*lstm_412/while/lstm_cell_397/Sigmoid_1:y:0lstm_412_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_412/while/lstm_cell_397/ReluRelu+lstm_412/while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/mul_1Mul(lstm_412/while/lstm_cell_397/Sigmoid:y:0/lstm_412/while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/add_1AddV2$lstm_412/while/lstm_cell_397/mul:z:0&lstm_412/while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_412/while/lstm_cell_397/Sigmoid_2Sigmoid+lstm_412/while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_412/while/lstm_cell_397/Relu_1Relu&lstm_412/while/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_412/while/lstm_cell_397/mul_2Mul*lstm_412/while/lstm_cell_397/Sigmoid_2:y:01lstm_412/while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_412/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_412_while_placeholder_1lstm_412_while_placeholder&lstm_412/while/lstm_cell_397/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_412/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_412/while/addAddV2lstm_412_while_placeholderlstm_412/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_412/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_412/while/add_1AddV2*lstm_412_while_lstm_412_while_loop_counterlstm_412/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_412/while/IdentityIdentitylstm_412/while/add_1:z:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_1Identity0lstm_412_while_lstm_412_while_maximum_iterations^lstm_412/while/NoOp*
T0*
_output_shapes
: t
lstm_412/while/Identity_2Identitylstm_412/while/add:z:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_3IdentityClstm_412/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_412/while/NoOp*
T0*
_output_shapes
: ?
lstm_412/while/Identity_4Identity&lstm_412/while/lstm_cell_397/mul_2:z:0^lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_412/while/Identity_5Identity&lstm_412/while/lstm_cell_397/add_1:z:0^lstm_412/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_412/while/NoOpNoOp4^lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp3^lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp5^lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_412_while_identity lstm_412/while/Identity:output:0"?
lstm_412_while_identity_1"lstm_412/while/Identity_1:output:0"?
lstm_412_while_identity_2"lstm_412/while/Identity_2:output:0"?
lstm_412_while_identity_3"lstm_412/while/Identity_3:output:0"?
lstm_412_while_identity_4"lstm_412/while/Identity_4:output:0"?
lstm_412_while_identity_5"lstm_412/while/Identity_5:output:0"T
'lstm_412_while_lstm_412_strided_slice_1)lstm_412_while_lstm_412_strided_slice_1_0"~
<lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource>lstm_412_while_lstm_cell_397_biasadd_readvariableop_resource_0"?
=lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource?lstm_412_while_lstm_cell_397_matmul_1_readvariableop_resource_0"|
;lstm_412_while_lstm_cell_397_matmul_readvariableop_resource=lstm_412_while_lstm_cell_397_matmul_readvariableop_resource_0"?
clstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensorelstm_412_while_tensorarrayv2read_tensorlistgetitem_lstm_412_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp3lstm_412/while/lstm_cell_397/BiasAdd/ReadVariableOp2h
2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp2lstm_412/while/lstm_cell_397/MatMul/ReadVariableOp2l
4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp4lstm_412/while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2408180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2408180___redundant_placeholder05
1while_while_cond_2408180___redundant_placeholder15
1while_while_cond_2408180___redundant_placeholder25
1while_while_cond_2408180___redundant_placeholder3
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
?#
?
while_body_2407197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_397_2407221_0:	d?0
while_lstm_cell_397_2407223_0:	2?,
while_lstm_cell_397_2407225_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_397_2407221:	d?.
while_lstm_cell_397_2407223:	2?*
while_lstm_cell_397_2407225:	???+while/lstm_cell_397/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_397/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_397_2407221_0while_lstm_cell_397_2407223_0while_lstm_cell_397_2407225_0*
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407183?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_397/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_397/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_397/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_397_2407221while_lstm_cell_397_2407221_0"<
while_lstm_cell_397_2407223while_lstm_cell_397_2407223_0"<
while_lstm_cell_397_2407225while_lstm_cell_397_2407225_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_397/StatefulPartitionedCall+while/lstm_cell_397/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2411554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2411554___redundant_placeholder05
1while_while_cond_2411554___redundant_placeholder15
1while_while_cond_2411554___redundant_placeholder25
1while_while_cond_2411554___redundant_placeholder3
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
/__inference_lstm_cell_396_layer_call_fn_2411835

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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406979o
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
?W
?
 __inference__traced_save_2412238
file_prefix/
+savev2_dense_137_kernel_read_readvariableop-
)savev2_dense_137_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_411_lstm_cell_411_kernel_read_readvariableopF
Bsavev2_lstm_411_lstm_cell_411_recurrent_kernel_read_readvariableop:
6savev2_lstm_411_lstm_cell_411_bias_read_readvariableop<
8savev2_lstm_412_lstm_cell_412_kernel_read_readvariableopF
Bsavev2_lstm_412_lstm_cell_412_recurrent_kernel_read_readvariableop:
6savev2_lstm_412_lstm_cell_412_bias_read_readvariableop<
8savev2_lstm_413_lstm_cell_413_kernel_read_readvariableopF
Bsavev2_lstm_413_lstm_cell_413_recurrent_kernel_read_readvariableop:
6savev2_lstm_413_lstm_cell_413_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_137_kernel_m_read_readvariableop4
0savev2_adam_dense_137_bias_m_read_readvariableopC
?savev2_adam_lstm_411_lstm_cell_411_kernel_m_read_readvariableopM
Isavev2_adam_lstm_411_lstm_cell_411_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_411_lstm_cell_411_bias_m_read_readvariableopC
?savev2_adam_lstm_412_lstm_cell_412_kernel_m_read_readvariableopM
Isavev2_adam_lstm_412_lstm_cell_412_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_412_lstm_cell_412_bias_m_read_readvariableopC
?savev2_adam_lstm_413_lstm_cell_413_kernel_m_read_readvariableopM
Isavev2_adam_lstm_413_lstm_cell_413_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_413_lstm_cell_413_bias_m_read_readvariableop6
2savev2_adam_dense_137_kernel_v_read_readvariableop4
0savev2_adam_dense_137_bias_v_read_readvariableopC
?savev2_adam_lstm_411_lstm_cell_411_kernel_v_read_readvariableopM
Isavev2_adam_lstm_411_lstm_cell_411_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_411_lstm_cell_411_bias_v_read_readvariableopC
?savev2_adam_lstm_412_lstm_cell_412_kernel_v_read_readvariableopM
Isavev2_adam_lstm_412_lstm_cell_412_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_412_lstm_cell_412_bias_v_read_readvariableopC
?savev2_adam_lstm_413_lstm_cell_413_kernel_v_read_readvariableopM
Isavev2_adam_lstm_413_lstm_cell_413_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_413_lstm_cell_413_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_137_kernel_read_readvariableop)savev2_dense_137_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_411_lstm_cell_411_kernel_read_readvariableopBsavev2_lstm_411_lstm_cell_411_recurrent_kernel_read_readvariableop6savev2_lstm_411_lstm_cell_411_bias_read_readvariableop8savev2_lstm_412_lstm_cell_412_kernel_read_readvariableopBsavev2_lstm_412_lstm_cell_412_recurrent_kernel_read_readvariableop6savev2_lstm_412_lstm_cell_412_bias_read_readvariableop8savev2_lstm_413_lstm_cell_413_kernel_read_readvariableopBsavev2_lstm_413_lstm_cell_413_recurrent_kernel_read_readvariableop6savev2_lstm_413_lstm_cell_413_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_137_kernel_m_read_readvariableop0savev2_adam_dense_137_bias_m_read_readvariableop?savev2_adam_lstm_411_lstm_cell_411_kernel_m_read_readvariableopIsavev2_adam_lstm_411_lstm_cell_411_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_411_lstm_cell_411_bias_m_read_readvariableop?savev2_adam_lstm_412_lstm_cell_412_kernel_m_read_readvariableopIsavev2_adam_lstm_412_lstm_cell_412_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_412_lstm_cell_412_bias_m_read_readvariableop?savev2_adam_lstm_413_lstm_cell_413_kernel_m_read_readvariableopIsavev2_adam_lstm_413_lstm_cell_413_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_413_lstm_cell_413_bias_m_read_readvariableop2savev2_adam_dense_137_kernel_v_read_readvariableop0savev2_adam_dense_137_bias_v_read_readvariableop?savev2_adam_lstm_411_lstm_cell_411_kernel_v_read_readvariableopIsavev2_adam_lstm_411_lstm_cell_411_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_411_lstm_cell_411_bias_v_read_readvariableop?savev2_adam_lstm_412_lstm_cell_412_kernel_v_read_readvariableopIsavev2_adam_lstm_412_lstm_cell_412_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_412_lstm_cell_412_bias_v_read_readvariableop?savev2_adam_lstm_413_lstm_cell_413_kernel_v_read_readvariableopIsavev2_adam_lstm_413_lstm_cell_413_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_413_lstm_cell_413_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411965

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
while_cond_2407196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407196___redundant_placeholder05
1while_while_cond_2407196___redundant_placeholder15
1while_while_cond_2407196___redundant_placeholder25
1while_while_cond_2407196___redundant_placeholder3
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408290

inputs#
lstm_411_2407966:	?#
lstm_411_2407968:	d?
lstm_411_2407970:	?#
lstm_412_2408116:	d?#
lstm_412_2408118:	2?
lstm_412_2408120:	?"
lstm_413_2408266:2("
lstm_413_2408268:
(
lstm_413_2408270:(#
dense_137_2408284:

dense_137_2408286:
identity??!dense_137/StatefulPartitionedCall? lstm_411/StatefulPartitionedCall? lstm_412/StatefulPartitionedCall? lstm_413/StatefulPartitionedCall?
 lstm_411/StatefulPartitionedCallStatefulPartitionedCallinputslstm_411_2407966lstm_411_2407968lstm_411_2407970*
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407965?
 lstm_412/StatefulPartitionedCallStatefulPartitionedCall)lstm_411/StatefulPartitionedCall:output:0lstm_412_2408116lstm_412_2408118lstm_412_2408120*
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408115?
 lstm_413/StatefulPartitionedCallStatefulPartitionedCall)lstm_412/StatefulPartitionedCall:output:0lstm_413_2408266lstm_413_2408268lstm_413_2408270*
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408265?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_413/StatefulPartitionedCall:output:0dense_137_2408284dense_137_2408286*
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283y
IdentityIdentity*dense_137/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_137/StatefulPartitionedCall!^lstm_411/StatefulPartitionedCall!^lstm_412/StatefulPartitionedCall!^lstm_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2D
 lstm_411/StatefulPartitionedCall lstm_411/StatefulPartitionedCall2D
 lstm_412/StatefulPartitionedCall lstm_412/StatefulPartitionedCall2D
 lstm_413/StatefulPartitionedCall lstm_413/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2411412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411899

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
?
?
*sequential_137_lstm_412_while_cond_2406536L
Hsequential_137_lstm_412_while_sequential_137_lstm_412_while_loop_counterR
Nsequential_137_lstm_412_while_sequential_137_lstm_412_while_maximum_iterations-
)sequential_137_lstm_412_while_placeholder/
+sequential_137_lstm_412_while_placeholder_1/
+sequential_137_lstm_412_while_placeholder_2/
+sequential_137_lstm_412_while_placeholder_3N
Jsequential_137_lstm_412_while_less_sequential_137_lstm_412_strided_slice_1e
asequential_137_lstm_412_while_sequential_137_lstm_412_while_cond_2406536___redundant_placeholder0e
asequential_137_lstm_412_while_sequential_137_lstm_412_while_cond_2406536___redundant_placeholder1e
asequential_137_lstm_412_while_sequential_137_lstm_412_while_cond_2406536___redundant_placeholder2e
asequential_137_lstm_412_while_sequential_137_lstm_412_while_cond_2406536___redundant_placeholder3*
&sequential_137_lstm_412_while_identity
?
"sequential_137/lstm_412/while/LessLess)sequential_137_lstm_412_while_placeholderJsequential_137_lstm_412_while_less_sequential_137_lstm_412_strided_slice_1*
T0*
_output_shapes
: {
&sequential_137/lstm_412/while/IdentityIdentity&sequential_137/lstm_412/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_137_lstm_412_while_identity/sequential_137/lstm_412/while/Identity:output:0*(
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
?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408961
lstm_411_input#
lstm_411_2408934:	?#
lstm_411_2408936:	d?
lstm_411_2408938:	?#
lstm_412_2408941:	d?#
lstm_412_2408943:	2?
lstm_412_2408945:	?"
lstm_413_2408948:2("
lstm_413_2408950:
(
lstm_413_2408952:(#
dense_137_2408955:

dense_137_2408957:
identity??!dense_137/StatefulPartitionedCall? lstm_411/StatefulPartitionedCall? lstm_412/StatefulPartitionedCall? lstm_413/StatefulPartitionedCall?
 lstm_411/StatefulPartitionedCallStatefulPartitionedCalllstm_411_inputlstm_411_2408934lstm_411_2408936lstm_411_2408938*
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407965?
 lstm_412/StatefulPartitionedCallStatefulPartitionedCall)lstm_411/StatefulPartitionedCall:output:0lstm_412_2408941lstm_412_2408943lstm_412_2408945*
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408115?
 lstm_413/StatefulPartitionedCallStatefulPartitionedCall)lstm_412/StatefulPartitionedCall:output:0lstm_413_2408948lstm_413_2408950lstm_413_2408952*
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408265?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_413/StatefulPartitionedCall:output:0dense_137_2408955dense_137_2408957*
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283y
IdentityIdentity*dense_137/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_137/StatefulPartitionedCall!^lstm_411/StatefulPartitionedCall!^lstm_412/StatefulPartitionedCall!^lstm_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2D
 lstm_411/StatefulPartitionedCall lstm_411/StatefulPartitionedCall2D
 lstm_412/StatefulPartitionedCall lstm_412/StatefulPartitionedCall2D
 lstm_413/StatefulPartitionedCall lstm_413/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_411_input
?T
?
*sequential_137_lstm_411_while_body_2406398L
Hsequential_137_lstm_411_while_sequential_137_lstm_411_while_loop_counterR
Nsequential_137_lstm_411_while_sequential_137_lstm_411_while_maximum_iterations-
)sequential_137_lstm_411_while_placeholder/
+sequential_137_lstm_411_while_placeholder_1/
+sequential_137_lstm_411_while_placeholder_2/
+sequential_137_lstm_411_while_placeholder_3K
Gsequential_137_lstm_411_while_sequential_137_lstm_411_strided_slice_1_0?
?sequential_137_lstm_411_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_411_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_137_lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0:	?a
Nsequential_137_lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?\
Msequential_137_lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0:	?*
&sequential_137_lstm_411_while_identity,
(sequential_137_lstm_411_while_identity_1,
(sequential_137_lstm_411_while_identity_2,
(sequential_137_lstm_411_while_identity_3,
(sequential_137_lstm_411_while_identity_4,
(sequential_137_lstm_411_while_identity_5I
Esequential_137_lstm_411_while_sequential_137_lstm_411_strided_slice_1?
?sequential_137_lstm_411_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_411_tensorarrayunstack_tensorlistfromtensor]
Jsequential_137_lstm_411_while_lstm_cell_396_matmul_readvariableop_resource:	?_
Lsequential_137_lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource:	d?Z
Ksequential_137_lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource:	???Bsequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp?Asequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp?Csequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp?
Osequential_137/lstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_137/lstm_411/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_137_lstm_411_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_411_tensorarrayunstack_tensorlistfromtensor_0)sequential_137_lstm_411_while_placeholderXsequential_137/lstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOpLsequential_137_lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_137/lstm_411/while/lstm_cell_396/MatMulMatMulHsequential_137/lstm_411/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOpNsequential_137_lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_137/lstm_411/while/lstm_cell_396/MatMul_1MatMul+sequential_137_lstm_411_while_placeholder_2Ksequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_137/lstm_411/while/lstm_cell_396/addAddV2<sequential_137/lstm_411/while/lstm_cell_396/MatMul:product:0>sequential_137/lstm_411/while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOpMsequential_137_lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_137/lstm_411/while/lstm_cell_396/BiasAddBiasAdd3sequential_137/lstm_411/while/lstm_cell_396/add:z:0Jsequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_137/lstm_411/while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_137/lstm_411/while/lstm_cell_396/splitSplitDsequential_137/lstm_411/while/lstm_cell_396/split/split_dim:output:0<sequential_137/lstm_411/while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_137/lstm_411/while/lstm_cell_396/SigmoidSigmoid:sequential_137/lstm_411/while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_137/lstm_411/while/lstm_cell_396/Sigmoid_1Sigmoid:sequential_137/lstm_411/while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_137/lstm_411/while/lstm_cell_396/mulMul9sequential_137/lstm_411/while/lstm_cell_396/Sigmoid_1:y:0+sequential_137_lstm_411_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_137/lstm_411/while/lstm_cell_396/ReluRelu:sequential_137/lstm_411/while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_137/lstm_411/while/lstm_cell_396/mul_1Mul7sequential_137/lstm_411/while/lstm_cell_396/Sigmoid:y:0>sequential_137/lstm_411/while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_137/lstm_411/while/lstm_cell_396/add_1AddV23sequential_137/lstm_411/while/lstm_cell_396/mul:z:05sequential_137/lstm_411/while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_137/lstm_411/while/lstm_cell_396/Sigmoid_2Sigmoid:sequential_137/lstm_411/while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_137/lstm_411/while/lstm_cell_396/Relu_1Relu5sequential_137/lstm_411/while/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_137/lstm_411/while/lstm_cell_396/mul_2Mul9sequential_137/lstm_411/while/lstm_cell_396/Sigmoid_2:y:0@sequential_137/lstm_411/while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_137/lstm_411/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_137_lstm_411_while_placeholder_1)sequential_137_lstm_411_while_placeholder5sequential_137/lstm_411/while/lstm_cell_396/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_137/lstm_411/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_137/lstm_411/while/addAddV2)sequential_137_lstm_411_while_placeholder,sequential_137/lstm_411/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_137/lstm_411/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_137/lstm_411/while/add_1AddV2Hsequential_137_lstm_411_while_sequential_137_lstm_411_while_loop_counter.sequential_137/lstm_411/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_137/lstm_411/while/IdentityIdentity'sequential_137/lstm_411/while/add_1:z:0#^sequential_137/lstm_411/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_411/while/Identity_1IdentityNsequential_137_lstm_411_while_sequential_137_lstm_411_while_maximum_iterations#^sequential_137/lstm_411/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_411/while/Identity_2Identity%sequential_137/lstm_411/while/add:z:0#^sequential_137/lstm_411/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_411/while/Identity_3IdentityRsequential_137/lstm_411/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_137/lstm_411/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_411/while/Identity_4Identity5sequential_137/lstm_411/while/lstm_cell_396/mul_2:z:0#^sequential_137/lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_137/lstm_411/while/Identity_5Identity5sequential_137/lstm_411/while/lstm_cell_396/add_1:z:0#^sequential_137/lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_137/lstm_411/while/NoOpNoOpC^sequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOpB^sequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOpD^sequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_137_lstm_411_while_identity/sequential_137/lstm_411/while/Identity:output:0"]
(sequential_137_lstm_411_while_identity_11sequential_137/lstm_411/while/Identity_1:output:0"]
(sequential_137_lstm_411_while_identity_21sequential_137/lstm_411/while/Identity_2:output:0"]
(sequential_137_lstm_411_while_identity_31sequential_137/lstm_411/while/Identity_3:output:0"]
(sequential_137_lstm_411_while_identity_41sequential_137/lstm_411/while/Identity_4:output:0"]
(sequential_137_lstm_411_while_identity_51sequential_137/lstm_411/while/Identity_5:output:0"?
Ksequential_137_lstm_411_while_lstm_cell_396_biasadd_readvariableop_resourceMsequential_137_lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0"?
Lsequential_137_lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resourceNsequential_137_lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0"?
Jsequential_137_lstm_411_while_lstm_cell_396_matmul_readvariableop_resourceLsequential_137_lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0"?
Esequential_137_lstm_411_while_sequential_137_lstm_411_strided_slice_1Gsequential_137_lstm_411_while_sequential_137_lstm_411_strided_slice_1_0"?
?sequential_137_lstm_411_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_411_tensorarrayunstack_tensorlistfromtensor?sequential_137_lstm_411_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_411_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOpBsequential_137/lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp2?
Asequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOpAsequential_137/lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp2?
Csequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOpCsequential_137/lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_413_layer_call_fn_2411177
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2407616o
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
?
?
*__inference_lstm_413_layer_call_fn_2411210

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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408481o
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
*__inference_lstm_412_layer_call_fn_2410583

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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408115s
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
lstm_413_while_cond_2409843.
*lstm_413_while_lstm_413_while_loop_counter4
0lstm_413_while_lstm_413_while_maximum_iterations
lstm_413_while_placeholder 
lstm_413_while_placeholder_1 
lstm_413_while_placeholder_2 
lstm_413_while_placeholder_30
,lstm_413_while_less_lstm_413_strided_slice_1G
Clstm_413_while_lstm_413_while_cond_2409843___redundant_placeholder0G
Clstm_413_while_lstm_413_while_cond_2409843___redundant_placeholder1G
Clstm_413_while_lstm_413_while_cond_2409843___redundant_placeholder2G
Clstm_413_while_lstm_413_while_cond_2409843___redundant_placeholder3
lstm_413_while_identity
?
lstm_413/while/LessLesslstm_413_while_placeholder,lstm_413_while_less_lstm_413_strided_slice_1*
T0*
_output_shapes
: ]
lstm_413/while/IdentityIdentitylstm_413/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_413_while_identity lstm_413/while/Identity:output:0*(
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
while_cond_2407037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407037___redundant_placeholder05
1while_while_cond_2407037___redundant_placeholder15
1while_while_cond_2407037___redundant_placeholder25
1while_while_cond_2407037___redundant_placeholder3
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
while_body_2410037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_396_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_396_matmul_readvariableop_resource:	?G
4while_lstm_cell_396_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_396_biasadd_readvariableop_resource:	???*while/lstm_cell_396/BiasAdd/ReadVariableOp?)while/lstm_cell_396/MatMul/ReadVariableOp?+while/lstm_cell_396/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_396/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_396/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_396/addAddV2$while/lstm_cell_396/MatMul:product:0&while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_396/BiasAddBiasAddwhile/lstm_cell_396/add:z:02while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_396/splitSplit,while/lstm_cell_396/split/split_dim:output:0$while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_396/SigmoidSigmoid"while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_1Sigmoid"while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mulMul!while/lstm_cell_396/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_396/ReluRelu"while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_1Mulwhile/lstm_cell_396/Sigmoid:y:0&while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/add_1AddV2while/lstm_cell_396/mul:z:0while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_396/Sigmoid_2Sigmoid"while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_396/Relu_1Reluwhile/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_396/mul_2Mul!while/lstm_cell_396/Sigmoid_2:y:0(while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_396/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_396/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_396/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_396/BiasAdd/ReadVariableOp*^while/lstm_cell_396/MatMul/ReadVariableOp,^while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_396_biasadd_readvariableop_resource5while_lstm_cell_396_biasadd_readvariableop_resource_0"n
4while_lstm_cell_396_matmul_1_readvariableop_resource6while_lstm_cell_396_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_396_matmul_readvariableop_resource4while_lstm_cell_396_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_396/BiasAdd/ReadVariableOp*while/lstm_cell_396/BiasAdd/ReadVariableOp2V
)while/lstm_cell_396/MatMul/ReadVariableOp)while/lstm_cell_396/MatMul/ReadVariableOp2Z
+while/lstm_cell_396/MatMul_1/ReadVariableOp+while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2410322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410322___redundant_placeholder05
1while_while_cond_2410322___redundant_placeholder15
1while_while_cond_2410322___redundant_placeholder25
1while_while_cond_2410322___redundant_placeholder3
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
while_cond_2411697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2411697___redundant_placeholder05
1while_while_cond_2411697___redundant_placeholder15
1while_while_cond_2411697___redundant_placeholder25
1while_while_cond_2411697___redundant_placeholder3
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410550

inputs?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2410466*
condR
while_cond_2410465*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410737
inputs_0?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2410653*
condR
while_cond_2410652*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2411698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2408562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2407737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407737___redundant_placeholder05
1while_while_cond_2407737___redundant_placeholder15
1while_while_cond_2407737___redundant_placeholder25
1while_while_cond_2407737___redundant_placeholder3
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

lstm_411_while_body_2409566.
*lstm_411_while_lstm_411_while_loop_counter4
0lstm_411_while_lstm_411_while_maximum_iterations
lstm_411_while_placeholder 
lstm_411_while_placeholder_1 
lstm_411_while_placeholder_2 
lstm_411_while_placeholder_3-
)lstm_411_while_lstm_411_strided_slice_1_0i
elstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0:	?R
?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0:	d?M
>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0:	?
lstm_411_while_identity
lstm_411_while_identity_1
lstm_411_while_identity_2
lstm_411_while_identity_3
lstm_411_while_identity_4
lstm_411_while_identity_5+
'lstm_411_while_lstm_411_strided_slice_1g
clstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensorN
;lstm_411_while_lstm_cell_396_matmul_readvariableop_resource:	?P
=lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource:	d?K
<lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource:	???3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp?2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp?4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp?
@lstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_411/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0lstm_411_while_placeholderIlstm_411/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOpReadVariableOp=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_411/while/lstm_cell_396/MatMulMatMul9lstm_411/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_411/while/lstm_cell_396/MatMul_1MatMullstm_411_while_placeholder_2<lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_411/while/lstm_cell_396/addAddV2-lstm_411/while/lstm_cell_396/MatMul:product:0/lstm_411/while/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_411/while/lstm_cell_396/BiasAddBiasAdd$lstm_411/while/lstm_cell_396/add:z:0;lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_411/while/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_411/while/lstm_cell_396/splitSplit5lstm_411/while/lstm_cell_396/split/split_dim:output:0-lstm_411/while/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_411/while/lstm_cell_396/SigmoidSigmoid+lstm_411/while/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_411/while/lstm_cell_396/Sigmoid_1Sigmoid+lstm_411/while/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_411/while/lstm_cell_396/mulMul*lstm_411/while/lstm_cell_396/Sigmoid_1:y:0lstm_411_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_411/while/lstm_cell_396/ReluRelu+lstm_411/while/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/mul_1Mul(lstm_411/while/lstm_cell_396/Sigmoid:y:0/lstm_411/while/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/add_1AddV2$lstm_411/while/lstm_cell_396/mul:z:0&lstm_411/while/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_411/while/lstm_cell_396/Sigmoid_2Sigmoid+lstm_411/while/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_411/while/lstm_cell_396/Relu_1Relu&lstm_411/while/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_411/while/lstm_cell_396/mul_2Mul*lstm_411/while/lstm_cell_396/Sigmoid_2:y:01lstm_411/while/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_411/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_411_while_placeholder_1lstm_411_while_placeholder&lstm_411/while/lstm_cell_396/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_411/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_411/while/addAddV2lstm_411_while_placeholderlstm_411/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_411/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_411/while/add_1AddV2*lstm_411_while_lstm_411_while_loop_counterlstm_411/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_411/while/IdentityIdentitylstm_411/while/add_1:z:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_1Identity0lstm_411_while_lstm_411_while_maximum_iterations^lstm_411/while/NoOp*
T0*
_output_shapes
: t
lstm_411/while/Identity_2Identitylstm_411/while/add:z:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_3IdentityClstm_411/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_411/while/NoOp*
T0*
_output_shapes
: ?
lstm_411/while/Identity_4Identity&lstm_411/while/lstm_cell_396/mul_2:z:0^lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_411/while/Identity_5Identity&lstm_411/while/lstm_cell_396/add_1:z:0^lstm_411/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_411/while/NoOpNoOp4^lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp3^lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp5^lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_411_while_identity lstm_411/while/Identity:output:0"?
lstm_411_while_identity_1"lstm_411/while/Identity_1:output:0"?
lstm_411_while_identity_2"lstm_411/while/Identity_2:output:0"?
lstm_411_while_identity_3"lstm_411/while/Identity_3:output:0"?
lstm_411_while_identity_4"lstm_411/while/Identity_4:output:0"?
lstm_411_while_identity_5"lstm_411/while/Identity_5:output:0"T
'lstm_411_while_lstm_411_strided_slice_1)lstm_411_while_lstm_411_strided_slice_1_0"~
<lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource>lstm_411_while_lstm_cell_396_biasadd_readvariableop_resource_0"?
=lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource?lstm_411_while_lstm_cell_396_matmul_1_readvariableop_resource_0"|
;lstm_411_while_lstm_cell_396_matmul_readvariableop_resource=lstm_411_while_lstm_cell_396_matmul_readvariableop_resource_0"?
clstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensorelstm_411_while_tensorarrayv2read_tensorlistgetitem_lstm_411_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp3lstm_411/while/lstm_cell_396/BiasAdd/ReadVariableOp2h
2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp2lstm_411/while/lstm_cell_396/MatMul/ReadVariableOp2l
4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp4lstm_411/while/lstm_cell_396/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407183

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
while_cond_2410795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410795___redundant_placeholder05
1while_while_cond_2410795___redundant_placeholder15
1while_while_cond_2410795___redundant_placeholder25
1while_while_cond_2410795___redundant_placeholder3
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

lstm_413_while_body_2409844.
*lstm_413_while_lstm_413_while_loop_counter4
0lstm_413_while_lstm_413_while_maximum_iterations
lstm_413_while_placeholder 
lstm_413_while_placeholder_1 
lstm_413_while_placeholder_2 
lstm_413_while_placeholder_3-
)lstm_413_while_lstm_413_strided_slice_1_0i
elstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0:2(Q
?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(L
>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0:(
lstm_413_while_identity
lstm_413_while_identity_1
lstm_413_while_identity_2
lstm_413_while_identity_3
lstm_413_while_identity_4
lstm_413_while_identity_5+
'lstm_413_while_lstm_413_strided_slice_1g
clstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensorM
;lstm_413_while_lstm_cell_398_matmul_readvariableop_resource:2(O
=lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource:
(J
<lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource:(??3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp?2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp?4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp?
@lstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_413/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0lstm_413_while_placeholderIlstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_413/while/lstm_cell_398/MatMulMatMul9lstm_413/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_413/while/lstm_cell_398/MatMul_1MatMullstm_413_while_placeholder_2<lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_413/while/lstm_cell_398/addAddV2-lstm_413/while/lstm_cell_398/MatMul:product:0/lstm_413/while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_413/while/lstm_cell_398/BiasAddBiasAdd$lstm_413/while/lstm_cell_398/add:z:0;lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_413/while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_413/while/lstm_cell_398/splitSplit5lstm_413/while/lstm_cell_398/split/split_dim:output:0-lstm_413/while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_413/while/lstm_cell_398/SigmoidSigmoid+lstm_413/while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_413/while/lstm_cell_398/Sigmoid_1Sigmoid+lstm_413/while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_413/while/lstm_cell_398/mulMul*lstm_413/while/lstm_cell_398/Sigmoid_1:y:0lstm_413_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_413/while/lstm_cell_398/ReluRelu+lstm_413/while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/mul_1Mul(lstm_413/while/lstm_cell_398/Sigmoid:y:0/lstm_413/while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/add_1AddV2$lstm_413/while/lstm_cell_398/mul:z:0&lstm_413/while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_413/while/lstm_cell_398/Sigmoid_2Sigmoid+lstm_413/while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_413/while/lstm_cell_398/Relu_1Relu&lstm_413/while/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_413/while/lstm_cell_398/mul_2Mul*lstm_413/while/lstm_cell_398/Sigmoid_2:y:01lstm_413/while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_413/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_413_while_placeholder_1lstm_413_while_placeholder&lstm_413/while/lstm_cell_398/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_413/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_413/while/addAddV2lstm_413_while_placeholderlstm_413/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_413/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_413/while/add_1AddV2*lstm_413_while_lstm_413_while_loop_counterlstm_413/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_413/while/IdentityIdentitylstm_413/while/add_1:z:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_1Identity0lstm_413_while_lstm_413_while_maximum_iterations^lstm_413/while/NoOp*
T0*
_output_shapes
: t
lstm_413/while/Identity_2Identitylstm_413/while/add:z:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_3IdentityClstm_413/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_413/while/NoOp*
T0*
_output_shapes
: ?
lstm_413/while/Identity_4Identity&lstm_413/while/lstm_cell_398/mul_2:z:0^lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_413/while/Identity_5Identity&lstm_413/while/lstm_cell_398/add_1:z:0^lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_413/while/NoOpNoOp4^lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp3^lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp5^lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_413_while_identity lstm_413/while/Identity:output:0"?
lstm_413_while_identity_1"lstm_413/while/Identity_1:output:0"?
lstm_413_while_identity_2"lstm_413/while/Identity_2:output:0"?
lstm_413_while_identity_3"lstm_413/while/Identity_3:output:0"?
lstm_413_while_identity_4"lstm_413/while/Identity_4:output:0"?
lstm_413_while_identity_5"lstm_413/while/Identity_5:output:0"T
'lstm_413_while_lstm_413_strided_slice_1)lstm_413_while_lstm_413_strided_slice_1_0"~
<lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource>lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0"?
=lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource?lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0"|
;lstm_413_while_lstm_cell_398_matmul_readvariableop_resource=lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0"?
clstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensorelstm_413_while_tensorarrayv2read_tensorlistgetitem_lstm_413_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp3lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp2h
2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp2lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp2l
4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp4lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411639

inputs>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2411555*
condR
while_cond_2411554*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2408397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2406916

inputs(
lstm_cell_396_2406834:	?(
lstm_cell_396_2406836:	d?$
lstm_cell_396_2406838:	?
identity??%lstm_cell_396/StatefulPartitionedCall?while;
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
%lstm_cell_396/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_396_2406834lstm_cell_396_2406836lstm_cell_396_2406838*
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406833n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_396_2406834lstm_cell_396_2406836lstm_cell_396_2406838*
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
while_body_2406847*
condR
while_cond_2406846*K
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
NoOpNoOp&^lstm_cell_396/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_396/StatefulPartitionedCall%lstm_cell_396/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_413_while_cond_2409416.
*lstm_413_while_lstm_413_while_loop_counter4
0lstm_413_while_lstm_413_while_maximum_iterations
lstm_413_while_placeholder 
lstm_413_while_placeholder_1 
lstm_413_while_placeholder_2 
lstm_413_while_placeholder_30
,lstm_413_while_less_lstm_413_strided_slice_1G
Clstm_413_while_lstm_413_while_cond_2409416___redundant_placeholder0G
Clstm_413_while_lstm_413_while_cond_2409416___redundant_placeholder1G
Clstm_413_while_lstm_413_while_cond_2409416___redundant_placeholder2G
Clstm_413_while_lstm_413_while_cond_2409416___redundant_placeholder3
lstm_413_while_identity
?
lstm_413/while/LessLesslstm_413_while_placeholder,lstm_413_while_less_lstm_413_strided_slice_1*
T0*
_output_shapes
: ]
lstm_413/while/IdentityIdentitylstm_413/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_413_while_identity lstm_413/while/Identity:output:0*(
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
while_cond_2410465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2410465___redundant_placeholder05
1while_while_cond_2410465___redundant_placeholder15
1while_while_cond_2410465___redundant_placeholder25
1while_while_cond_2410465___redundant_placeholder3
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408115

inputs?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2408031*
condR
while_cond_2408030*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2408181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_398_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_398_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_398_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_398_matmul_readvariableop_resource:2(F
4while_lstm_cell_398_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_398_biasadd_readvariableop_resource:(??*while/lstm_cell_398/BiasAdd/ReadVariableOp?)while/lstm_cell_398/MatMul/ReadVariableOp?+while/lstm_cell_398/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_398/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_398/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_398/addAddV2$while/lstm_cell_398/MatMul:product:0&while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_398/BiasAddBiasAddwhile/lstm_cell_398/add:z:02while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_398/splitSplit,while/lstm_cell_398/split/split_dim:output:0$while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_398/SigmoidSigmoid"while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_1Sigmoid"while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mulMul!while/lstm_cell_398/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_398/ReluRelu"while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_1Mulwhile/lstm_cell_398/Sigmoid:y:0&while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/add_1AddV2while/lstm_cell_398/mul:z:0while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_398/Sigmoid_2Sigmoid"while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_398/Relu_1Reluwhile/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_398/mul_2Mul!while/lstm_cell_398/Sigmoid_2:y:0(while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_398/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_398/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_398/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_398/BiasAdd/ReadVariableOp*^while/lstm_cell_398/MatMul/ReadVariableOp,^while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_398_biasadd_readvariableop_resource5while_lstm_cell_398_biasadd_readvariableop_resource_0"n
4while_lstm_cell_398_matmul_1_readvariableop_resource6while_lstm_cell_398_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_398_matmul_readvariableop_resource4while_lstm_cell_398_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_398/BiasAdd/ReadVariableOp*while/lstm_cell_398/BiasAdd/ReadVariableOp2V
)while/lstm_cell_398/MatMul/ReadVariableOp)while/lstm_cell_398/MatMul/ReadVariableOp2Z
+while/lstm_cell_398/MatMul_1/ReadVariableOp+while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2410939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411782

inputs>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2411698*
condR
while_cond_2411697*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408879

inputs#
lstm_411_2408852:	?#
lstm_411_2408854:	d?
lstm_411_2408856:	?#
lstm_412_2408859:	d?#
lstm_412_2408861:	2?
lstm_412_2408863:	?"
lstm_413_2408866:2("
lstm_413_2408868:
(
lstm_413_2408870:(#
dense_137_2408873:

dense_137_2408875:
identity??!dense_137/StatefulPartitionedCall? lstm_411/StatefulPartitionedCall? lstm_412/StatefulPartitionedCall? lstm_413/StatefulPartitionedCall?
 lstm_411/StatefulPartitionedCallStatefulPartitionedCallinputslstm_411_2408852lstm_411_2408854lstm_411_2408856*
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2408811?
 lstm_412/StatefulPartitionedCallStatefulPartitionedCall)lstm_411/StatefulPartitionedCall:output:0lstm_412_2408859lstm_412_2408861lstm_412_2408863*
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2408646?
 lstm_413/StatefulPartitionedCallStatefulPartitionedCall)lstm_412/StatefulPartitionedCall:output:0lstm_413_2408866lstm_413_2408868lstm_413_2408870*
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2408481?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_413/StatefulPartitionedCall:output:0dense_137_2408873dense_137_2408875*
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2408283y
IdentityIdentity*dense_137/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_137/StatefulPartitionedCall!^lstm_411/StatefulPartitionedCall!^lstm_412/StatefulPartitionedCall!^lstm_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2D
 lstm_411/StatefulPartitionedCall lstm_411/StatefulPartitionedCall2D
 lstm_412/StatefulPartitionedCall lstm_412/StatefulPartitionedCall2D
 lstm_413/StatefulPartitionedCall lstm_413/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2407038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_396_2407062_0:	?0
while_lstm_cell_396_2407064_0:	d?,
while_lstm_cell_396_2407066_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_396_2407062:	?.
while_lstm_cell_396_2407064:	d?*
while_lstm_cell_396_2407066:	???+while/lstm_cell_396/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_396/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_396_2407062_0while_lstm_cell_396_2407064_0while_lstm_cell_396_2407066_0*
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406979?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_396/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_396/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_396/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_396/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_396_2407062while_lstm_cell_396_2407062_0"<
while_lstm_cell_396_2407064while_lstm_cell_396_2407064_0"<
while_lstm_cell_396_2407066while_lstm_cell_396_2407066_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_396/StatefulPartitionedCall+while/lstm_cell_396/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2410796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2411801

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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412095

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
?T
?
*sequential_137_lstm_413_while_body_2406676L
Hsequential_137_lstm_413_while_sequential_137_lstm_413_while_loop_counterR
Nsequential_137_lstm_413_while_sequential_137_lstm_413_while_maximum_iterations-
)sequential_137_lstm_413_while_placeholder/
+sequential_137_lstm_413_while_placeholder_1/
+sequential_137_lstm_413_while_placeholder_2/
+sequential_137_lstm_413_while_placeholder_3K
Gsequential_137_lstm_413_while_sequential_137_lstm_413_strided_slice_1_0?
?sequential_137_lstm_413_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_413_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_137_lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0:2(`
Nsequential_137_lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0:
([
Msequential_137_lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0:(*
&sequential_137_lstm_413_while_identity,
(sequential_137_lstm_413_while_identity_1,
(sequential_137_lstm_413_while_identity_2,
(sequential_137_lstm_413_while_identity_3,
(sequential_137_lstm_413_while_identity_4,
(sequential_137_lstm_413_while_identity_5I
Esequential_137_lstm_413_while_sequential_137_lstm_413_strided_slice_1?
?sequential_137_lstm_413_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_413_tensorarrayunstack_tensorlistfromtensor\
Jsequential_137_lstm_413_while_lstm_cell_398_matmul_readvariableop_resource:2(^
Lsequential_137_lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource:
(Y
Ksequential_137_lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource:(??Bsequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp?Asequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp?Csequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp?
Osequential_137/lstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_137/lstm_413/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_137_lstm_413_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_413_tensorarrayunstack_tensorlistfromtensor_0)sequential_137_lstm_413_while_placeholderXsequential_137/lstm_413/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOpReadVariableOpLsequential_137_lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_137/lstm_413/while/lstm_cell_398/MatMulMatMulHsequential_137/lstm_413/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOpNsequential_137_lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_137/lstm_413/while/lstm_cell_398/MatMul_1MatMul+sequential_137_lstm_413_while_placeholder_2Ksequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_137/lstm_413/while/lstm_cell_398/addAddV2<sequential_137/lstm_413/while/lstm_cell_398/MatMul:product:0>sequential_137/lstm_413/while/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOpMsequential_137_lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_137/lstm_413/while/lstm_cell_398/BiasAddBiasAdd3sequential_137/lstm_413/while/lstm_cell_398/add:z:0Jsequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_137/lstm_413/while/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_137/lstm_413/while/lstm_cell_398/splitSplitDsequential_137/lstm_413/while/lstm_cell_398/split/split_dim:output:0<sequential_137/lstm_413/while/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_137/lstm_413/while/lstm_cell_398/SigmoidSigmoid:sequential_137/lstm_413/while/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_137/lstm_413/while/lstm_cell_398/Sigmoid_1Sigmoid:sequential_137/lstm_413/while/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_137/lstm_413/while/lstm_cell_398/mulMul9sequential_137/lstm_413/while/lstm_cell_398/Sigmoid_1:y:0+sequential_137_lstm_413_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_137/lstm_413/while/lstm_cell_398/ReluRelu:sequential_137/lstm_413/while/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_137/lstm_413/while/lstm_cell_398/mul_1Mul7sequential_137/lstm_413/while/lstm_cell_398/Sigmoid:y:0>sequential_137/lstm_413/while/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_137/lstm_413/while/lstm_cell_398/add_1AddV23sequential_137/lstm_413/while/lstm_cell_398/mul:z:05sequential_137/lstm_413/while/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_137/lstm_413/while/lstm_cell_398/Sigmoid_2Sigmoid:sequential_137/lstm_413/while/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_137/lstm_413/while/lstm_cell_398/Relu_1Relu5sequential_137/lstm_413/while/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_137/lstm_413/while/lstm_cell_398/mul_2Mul9sequential_137/lstm_413/while/lstm_cell_398/Sigmoid_2:y:0@sequential_137/lstm_413/while/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_137/lstm_413/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_137_lstm_413_while_placeholder_1)sequential_137_lstm_413_while_placeholder5sequential_137/lstm_413/while/lstm_cell_398/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_137/lstm_413/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_137/lstm_413/while/addAddV2)sequential_137_lstm_413_while_placeholder,sequential_137/lstm_413/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_137/lstm_413/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_137/lstm_413/while/add_1AddV2Hsequential_137_lstm_413_while_sequential_137_lstm_413_while_loop_counter.sequential_137/lstm_413/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_137/lstm_413/while/IdentityIdentity'sequential_137/lstm_413/while/add_1:z:0#^sequential_137/lstm_413/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_413/while/Identity_1IdentityNsequential_137_lstm_413_while_sequential_137_lstm_413_while_maximum_iterations#^sequential_137/lstm_413/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_413/while/Identity_2Identity%sequential_137/lstm_413/while/add:z:0#^sequential_137/lstm_413/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_413/while/Identity_3IdentityRsequential_137/lstm_413/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_137/lstm_413/while/NoOp*
T0*
_output_shapes
: ?
(sequential_137/lstm_413/while/Identity_4Identity5sequential_137/lstm_413/while/lstm_cell_398/mul_2:z:0#^sequential_137/lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_137/lstm_413/while/Identity_5Identity5sequential_137/lstm_413/while/lstm_cell_398/add_1:z:0#^sequential_137/lstm_413/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_137/lstm_413/while/NoOpNoOpC^sequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOpB^sequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOpD^sequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_137_lstm_413_while_identity/sequential_137/lstm_413/while/Identity:output:0"]
(sequential_137_lstm_413_while_identity_11sequential_137/lstm_413/while/Identity_1:output:0"]
(sequential_137_lstm_413_while_identity_21sequential_137/lstm_413/while/Identity_2:output:0"]
(sequential_137_lstm_413_while_identity_31sequential_137/lstm_413/while/Identity_3:output:0"]
(sequential_137_lstm_413_while_identity_41sequential_137/lstm_413/while/Identity_4:output:0"]
(sequential_137_lstm_413_while_identity_51sequential_137/lstm_413/while/Identity_5:output:0"?
Ksequential_137_lstm_413_while_lstm_cell_398_biasadd_readvariableop_resourceMsequential_137_lstm_413_while_lstm_cell_398_biasadd_readvariableop_resource_0"?
Lsequential_137_lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resourceNsequential_137_lstm_413_while_lstm_cell_398_matmul_1_readvariableop_resource_0"?
Jsequential_137_lstm_413_while_lstm_cell_398_matmul_readvariableop_resourceLsequential_137_lstm_413_while_lstm_cell_398_matmul_readvariableop_resource_0"?
Esequential_137_lstm_413_while_sequential_137_lstm_413_strided_slice_1Gsequential_137_lstm_413_while_sequential_137_lstm_413_strided_slice_1_0"?
?sequential_137_lstm_413_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_413_tensorarrayunstack_tensorlistfromtensor?sequential_137_lstm_413_while_tensorarrayv2read_tensorlistgetitem_sequential_137_lstm_413_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOpBsequential_137/lstm_413/while/lstm_cell_398/BiasAdd/ReadVariableOp2?
Asequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOpAsequential_137/lstm_413/while/lstm_cell_398/MatMul/ReadVariableOp2?
Csequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOpCsequential_137/lstm_413/while/lstm_cell_398/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2407880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2407880___redundant_placeholder05
1while_while_cond_2407880___redundant_placeholder15
1while_while_cond_2407880___redundant_placeholder25
1while_while_cond_2407880___redundant_placeholder3
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
while_body_2407547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_398_2407571_0:2(/
while_lstm_cell_398_2407573_0:
(+
while_lstm_cell_398_2407575_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_398_2407571:2(-
while_lstm_cell_398_2407573:
()
while_lstm_cell_398_2407575:(??+while/lstm_cell_398/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_398/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_398_2407571_0while_lstm_cell_398_2407573_0while_lstm_cell_398_2407575_0*
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407533?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_398/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_398/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_398/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_398/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_398_2407571while_lstm_cell_398_2407571_0"<
while_lstm_cell_398_2407573while_lstm_cell_398_2407573_0"<
while_lstm_cell_398_2407575while_lstm_cell_398_2407575_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_398/StatefulPartitionedCall+while/lstm_cell_398/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_396_layer_call_fn_2411818

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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406833o
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2406979

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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2407329

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
0__inference_sequential_137_layer_call_fn_2409080

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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408879o
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
??
?
"__inference__wrapped_model_2406766
lstm_411_inputW
Dsequential_137_lstm_411_lstm_cell_396_matmul_readvariableop_resource:	?Y
Fsequential_137_lstm_411_lstm_cell_396_matmul_1_readvariableop_resource:	d?T
Esequential_137_lstm_411_lstm_cell_396_biasadd_readvariableop_resource:	?W
Dsequential_137_lstm_412_lstm_cell_397_matmul_readvariableop_resource:	d?Y
Fsequential_137_lstm_412_lstm_cell_397_matmul_1_readvariableop_resource:	2?T
Esequential_137_lstm_412_lstm_cell_397_biasadd_readvariableop_resource:	?V
Dsequential_137_lstm_413_lstm_cell_398_matmul_readvariableop_resource:2(X
Fsequential_137_lstm_413_lstm_cell_398_matmul_1_readvariableop_resource:
(S
Esequential_137_lstm_413_lstm_cell_398_biasadd_readvariableop_resource:(I
7sequential_137_dense_137_matmul_readvariableop_resource:
F
8sequential_137_dense_137_biasadd_readvariableop_resource:
identity??/sequential_137/dense_137/BiasAdd/ReadVariableOp?.sequential_137/dense_137/MatMul/ReadVariableOp?<sequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp?;sequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOp?=sequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp?sequential_137/lstm_411/while?<sequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp?;sequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOp?=sequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp?sequential_137/lstm_412/while?<sequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp?;sequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOp?=sequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp?sequential_137/lstm_413/while[
sequential_137/lstm_411/ShapeShapelstm_411_input*
T0*
_output_shapes
:u
+sequential_137/lstm_411/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_137/lstm_411/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_137/lstm_411/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_137/lstm_411/strided_sliceStridedSlice&sequential_137/lstm_411/Shape:output:04sequential_137/lstm_411/strided_slice/stack:output:06sequential_137/lstm_411/strided_slice/stack_1:output:06sequential_137/lstm_411/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_137/lstm_411/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_137/lstm_411/zeros/packedPack.sequential_137/lstm_411/strided_slice:output:0/sequential_137/lstm_411/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_137/lstm_411/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_411/zerosFill-sequential_137/lstm_411/zeros/packed:output:0,sequential_137/lstm_411/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_137/lstm_411/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_137/lstm_411/zeros_1/packedPack.sequential_137/lstm_411/strided_slice:output:01sequential_137/lstm_411/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_137/lstm_411/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_411/zeros_1Fill/sequential_137/lstm_411/zeros_1/packed:output:0.sequential_137/lstm_411/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_137/lstm_411/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_137/lstm_411/transpose	Transposelstm_411_input/sequential_137/lstm_411/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_137/lstm_411/Shape_1Shape%sequential_137/lstm_411/transpose:y:0*
T0*
_output_shapes
:w
-sequential_137/lstm_411/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_411/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_411/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_411/strided_slice_1StridedSlice(sequential_137/lstm_411/Shape_1:output:06sequential_137/lstm_411/strided_slice_1/stack:output:08sequential_137/lstm_411/strided_slice_1/stack_1:output:08sequential_137/lstm_411/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_137/lstm_411/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_137/lstm_411/TensorArrayV2TensorListReserve<sequential_137/lstm_411/TensorArrayV2/element_shape:output:00sequential_137/lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_137/lstm_411/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_137/lstm_411/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_137/lstm_411/transpose:y:0Vsequential_137/lstm_411/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_137/lstm_411/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_411/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_411/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_411/strided_slice_2StridedSlice%sequential_137/lstm_411/transpose:y:06sequential_137/lstm_411/strided_slice_2/stack:output:08sequential_137/lstm_411/strided_slice_2/stack_1:output:08sequential_137/lstm_411/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOpReadVariableOpDsequential_137_lstm_411_lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_137/lstm_411/lstm_cell_396/MatMulMatMul0sequential_137/lstm_411/strided_slice_2:output:0Csequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOpFsequential_137_lstm_411_lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_137/lstm_411/lstm_cell_396/MatMul_1MatMul&sequential_137/lstm_411/zeros:output:0Esequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_137/lstm_411/lstm_cell_396/addAddV26sequential_137/lstm_411/lstm_cell_396/MatMul:product:08sequential_137/lstm_411/lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOpEsequential_137_lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_137/lstm_411/lstm_cell_396/BiasAddBiasAdd-sequential_137/lstm_411/lstm_cell_396/add:z:0Dsequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_137/lstm_411/lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_137/lstm_411/lstm_cell_396/splitSplit>sequential_137/lstm_411/lstm_cell_396/split/split_dim:output:06sequential_137/lstm_411/lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_137/lstm_411/lstm_cell_396/SigmoidSigmoid4sequential_137/lstm_411/lstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_137/lstm_411/lstm_cell_396/Sigmoid_1Sigmoid4sequential_137/lstm_411/lstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_137/lstm_411/lstm_cell_396/mulMul3sequential_137/lstm_411/lstm_cell_396/Sigmoid_1:y:0(sequential_137/lstm_411/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_137/lstm_411/lstm_cell_396/ReluRelu4sequential_137/lstm_411/lstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_137/lstm_411/lstm_cell_396/mul_1Mul1sequential_137/lstm_411/lstm_cell_396/Sigmoid:y:08sequential_137/lstm_411/lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_137/lstm_411/lstm_cell_396/add_1AddV2-sequential_137/lstm_411/lstm_cell_396/mul:z:0/sequential_137/lstm_411/lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_137/lstm_411/lstm_cell_396/Sigmoid_2Sigmoid4sequential_137/lstm_411/lstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_137/lstm_411/lstm_cell_396/Relu_1Relu/sequential_137/lstm_411/lstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_137/lstm_411/lstm_cell_396/mul_2Mul3sequential_137/lstm_411/lstm_cell_396/Sigmoid_2:y:0:sequential_137/lstm_411/lstm_cell_396/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_137/lstm_411/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_137/lstm_411/TensorArrayV2_1TensorListReserve>sequential_137/lstm_411/TensorArrayV2_1/element_shape:output:00sequential_137/lstm_411/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_137/lstm_411/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_137/lstm_411/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_137/lstm_411/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_137/lstm_411/whileWhile3sequential_137/lstm_411/while/loop_counter:output:09sequential_137/lstm_411/while/maximum_iterations:output:0%sequential_137/lstm_411/time:output:00sequential_137/lstm_411/TensorArrayV2_1:handle:0&sequential_137/lstm_411/zeros:output:0(sequential_137/lstm_411/zeros_1:output:00sequential_137/lstm_411/strided_slice_1:output:0Osequential_137/lstm_411/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_137_lstm_411_lstm_cell_396_matmul_readvariableop_resourceFsequential_137_lstm_411_lstm_cell_396_matmul_1_readvariableop_resourceEsequential_137_lstm_411_lstm_cell_396_biasadd_readvariableop_resource*
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
*sequential_137_lstm_411_while_body_2406398*6
cond.R,
*sequential_137_lstm_411_while_cond_2406397*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_137/lstm_411/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_137/lstm_411/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_137/lstm_411/while:output:3Qsequential_137/lstm_411/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_137/lstm_411/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_137/lstm_411/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_411/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_411/strided_slice_3StridedSliceCsequential_137/lstm_411/TensorArrayV2Stack/TensorListStack:tensor:06sequential_137/lstm_411/strided_slice_3/stack:output:08sequential_137/lstm_411/strided_slice_3/stack_1:output:08sequential_137/lstm_411/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_137/lstm_411/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_137/lstm_411/transpose_1	TransposeCsequential_137/lstm_411/TensorArrayV2Stack/TensorListStack:tensor:01sequential_137/lstm_411/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_137/lstm_411/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_137/lstm_412/ShapeShape'sequential_137/lstm_411/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_137/lstm_412/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_137/lstm_412/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_137/lstm_412/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_137/lstm_412/strided_sliceStridedSlice&sequential_137/lstm_412/Shape:output:04sequential_137/lstm_412/strided_slice/stack:output:06sequential_137/lstm_412/strided_slice/stack_1:output:06sequential_137/lstm_412/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_137/lstm_412/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_137/lstm_412/zeros/packedPack.sequential_137/lstm_412/strided_slice:output:0/sequential_137/lstm_412/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_137/lstm_412/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_412/zerosFill-sequential_137/lstm_412/zeros/packed:output:0,sequential_137/lstm_412/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_137/lstm_412/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_137/lstm_412/zeros_1/packedPack.sequential_137/lstm_412/strided_slice:output:01sequential_137/lstm_412/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_137/lstm_412/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_412/zeros_1Fill/sequential_137/lstm_412/zeros_1/packed:output:0.sequential_137/lstm_412/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_137/lstm_412/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_137/lstm_412/transpose	Transpose'sequential_137/lstm_411/transpose_1:y:0/sequential_137/lstm_412/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_137/lstm_412/Shape_1Shape%sequential_137/lstm_412/transpose:y:0*
T0*
_output_shapes
:w
-sequential_137/lstm_412/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_412/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_412/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_412/strided_slice_1StridedSlice(sequential_137/lstm_412/Shape_1:output:06sequential_137/lstm_412/strided_slice_1/stack:output:08sequential_137/lstm_412/strided_slice_1/stack_1:output:08sequential_137/lstm_412/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_137/lstm_412/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_137/lstm_412/TensorArrayV2TensorListReserve<sequential_137/lstm_412/TensorArrayV2/element_shape:output:00sequential_137/lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_137/lstm_412/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_137/lstm_412/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_137/lstm_412/transpose:y:0Vsequential_137/lstm_412/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_137/lstm_412/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_412/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_412/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_412/strided_slice_2StridedSlice%sequential_137/lstm_412/transpose:y:06sequential_137/lstm_412/strided_slice_2/stack:output:08sequential_137/lstm_412/strided_slice_2/stack_1:output:08sequential_137/lstm_412/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOpReadVariableOpDsequential_137_lstm_412_lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_137/lstm_412/lstm_cell_397/MatMulMatMul0sequential_137/lstm_412/strided_slice_2:output:0Csequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOpFsequential_137_lstm_412_lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_137/lstm_412/lstm_cell_397/MatMul_1MatMul&sequential_137/lstm_412/zeros:output:0Esequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_137/lstm_412/lstm_cell_397/addAddV26sequential_137/lstm_412/lstm_cell_397/MatMul:product:08sequential_137/lstm_412/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOpEsequential_137_lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_137/lstm_412/lstm_cell_397/BiasAddBiasAdd-sequential_137/lstm_412/lstm_cell_397/add:z:0Dsequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_137/lstm_412/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_137/lstm_412/lstm_cell_397/splitSplit>sequential_137/lstm_412/lstm_cell_397/split/split_dim:output:06sequential_137/lstm_412/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_137/lstm_412/lstm_cell_397/SigmoidSigmoid4sequential_137/lstm_412/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_137/lstm_412/lstm_cell_397/Sigmoid_1Sigmoid4sequential_137/lstm_412/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_137/lstm_412/lstm_cell_397/mulMul3sequential_137/lstm_412/lstm_cell_397/Sigmoid_1:y:0(sequential_137/lstm_412/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_137/lstm_412/lstm_cell_397/ReluRelu4sequential_137/lstm_412/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_137/lstm_412/lstm_cell_397/mul_1Mul1sequential_137/lstm_412/lstm_cell_397/Sigmoid:y:08sequential_137/lstm_412/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_137/lstm_412/lstm_cell_397/add_1AddV2-sequential_137/lstm_412/lstm_cell_397/mul:z:0/sequential_137/lstm_412/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_137/lstm_412/lstm_cell_397/Sigmoid_2Sigmoid4sequential_137/lstm_412/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_137/lstm_412/lstm_cell_397/Relu_1Relu/sequential_137/lstm_412/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_137/lstm_412/lstm_cell_397/mul_2Mul3sequential_137/lstm_412/lstm_cell_397/Sigmoid_2:y:0:sequential_137/lstm_412/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_137/lstm_412/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_137/lstm_412/TensorArrayV2_1TensorListReserve>sequential_137/lstm_412/TensorArrayV2_1/element_shape:output:00sequential_137/lstm_412/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_137/lstm_412/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_137/lstm_412/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_137/lstm_412/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_137/lstm_412/whileWhile3sequential_137/lstm_412/while/loop_counter:output:09sequential_137/lstm_412/while/maximum_iterations:output:0%sequential_137/lstm_412/time:output:00sequential_137/lstm_412/TensorArrayV2_1:handle:0&sequential_137/lstm_412/zeros:output:0(sequential_137/lstm_412/zeros_1:output:00sequential_137/lstm_412/strided_slice_1:output:0Osequential_137/lstm_412/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_137_lstm_412_lstm_cell_397_matmul_readvariableop_resourceFsequential_137_lstm_412_lstm_cell_397_matmul_1_readvariableop_resourceEsequential_137_lstm_412_lstm_cell_397_biasadd_readvariableop_resource*
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
*sequential_137_lstm_412_while_body_2406537*6
cond.R,
*sequential_137_lstm_412_while_cond_2406536*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_137/lstm_412/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_137/lstm_412/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_137/lstm_412/while:output:3Qsequential_137/lstm_412/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_137/lstm_412/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_137/lstm_412/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_412/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_412/strided_slice_3StridedSliceCsequential_137/lstm_412/TensorArrayV2Stack/TensorListStack:tensor:06sequential_137/lstm_412/strided_slice_3/stack:output:08sequential_137/lstm_412/strided_slice_3/stack_1:output:08sequential_137/lstm_412/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_137/lstm_412/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_137/lstm_412/transpose_1	TransposeCsequential_137/lstm_412/TensorArrayV2Stack/TensorListStack:tensor:01sequential_137/lstm_412/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_137/lstm_412/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_137/lstm_413/ShapeShape'sequential_137/lstm_412/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_137/lstm_413/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_137/lstm_413/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_137/lstm_413/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_137/lstm_413/strided_sliceStridedSlice&sequential_137/lstm_413/Shape:output:04sequential_137/lstm_413/strided_slice/stack:output:06sequential_137/lstm_413/strided_slice/stack_1:output:06sequential_137/lstm_413/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_137/lstm_413/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_137/lstm_413/zeros/packedPack.sequential_137/lstm_413/strided_slice:output:0/sequential_137/lstm_413/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_137/lstm_413/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_413/zerosFill-sequential_137/lstm_413/zeros/packed:output:0,sequential_137/lstm_413/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_137/lstm_413/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_137/lstm_413/zeros_1/packedPack.sequential_137/lstm_413/strided_slice:output:01sequential_137/lstm_413/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_137/lstm_413/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_137/lstm_413/zeros_1Fill/sequential_137/lstm_413/zeros_1/packed:output:0.sequential_137/lstm_413/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_137/lstm_413/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_137/lstm_413/transpose	Transpose'sequential_137/lstm_412/transpose_1:y:0/sequential_137/lstm_413/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_137/lstm_413/Shape_1Shape%sequential_137/lstm_413/transpose:y:0*
T0*
_output_shapes
:w
-sequential_137/lstm_413/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_413/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_413/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_413/strided_slice_1StridedSlice(sequential_137/lstm_413/Shape_1:output:06sequential_137/lstm_413/strided_slice_1/stack:output:08sequential_137/lstm_413/strided_slice_1/stack_1:output:08sequential_137/lstm_413/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_137/lstm_413/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_137/lstm_413/TensorArrayV2TensorListReserve<sequential_137/lstm_413/TensorArrayV2/element_shape:output:00sequential_137/lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_137/lstm_413/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_137/lstm_413/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_137/lstm_413/transpose:y:0Vsequential_137/lstm_413/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_137/lstm_413/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_413/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_137/lstm_413/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_413/strided_slice_2StridedSlice%sequential_137/lstm_413/transpose:y:06sequential_137/lstm_413/strided_slice_2/stack:output:08sequential_137/lstm_413/strided_slice_2/stack_1:output:08sequential_137/lstm_413/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOpReadVariableOpDsequential_137_lstm_413_lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_137/lstm_413/lstm_cell_398/MatMulMatMul0sequential_137/lstm_413/strided_slice_2:output:0Csequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOpFsequential_137_lstm_413_lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_137/lstm_413/lstm_cell_398/MatMul_1MatMul&sequential_137/lstm_413/zeros:output:0Esequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_137/lstm_413/lstm_cell_398/addAddV26sequential_137/lstm_413/lstm_cell_398/MatMul:product:08sequential_137/lstm_413/lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOpEsequential_137_lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_137/lstm_413/lstm_cell_398/BiasAddBiasAdd-sequential_137/lstm_413/lstm_cell_398/add:z:0Dsequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_137/lstm_413/lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_137/lstm_413/lstm_cell_398/splitSplit>sequential_137/lstm_413/lstm_cell_398/split/split_dim:output:06sequential_137/lstm_413/lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_137/lstm_413/lstm_cell_398/SigmoidSigmoid4sequential_137/lstm_413/lstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_137/lstm_413/lstm_cell_398/Sigmoid_1Sigmoid4sequential_137/lstm_413/lstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_137/lstm_413/lstm_cell_398/mulMul3sequential_137/lstm_413/lstm_cell_398/Sigmoid_1:y:0(sequential_137/lstm_413/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_137/lstm_413/lstm_cell_398/ReluRelu4sequential_137/lstm_413/lstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_137/lstm_413/lstm_cell_398/mul_1Mul1sequential_137/lstm_413/lstm_cell_398/Sigmoid:y:08sequential_137/lstm_413/lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_137/lstm_413/lstm_cell_398/add_1AddV2-sequential_137/lstm_413/lstm_cell_398/mul:z:0/sequential_137/lstm_413/lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_137/lstm_413/lstm_cell_398/Sigmoid_2Sigmoid4sequential_137/lstm_413/lstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_137/lstm_413/lstm_cell_398/Relu_1Relu/sequential_137/lstm_413/lstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_137/lstm_413/lstm_cell_398/mul_2Mul3sequential_137/lstm_413/lstm_cell_398/Sigmoid_2:y:0:sequential_137/lstm_413/lstm_cell_398/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_137/lstm_413/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_137/lstm_413/TensorArrayV2_1TensorListReserve>sequential_137/lstm_413/TensorArrayV2_1/element_shape:output:00sequential_137/lstm_413/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_137/lstm_413/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_137/lstm_413/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_137/lstm_413/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_137/lstm_413/whileWhile3sequential_137/lstm_413/while/loop_counter:output:09sequential_137/lstm_413/while/maximum_iterations:output:0%sequential_137/lstm_413/time:output:00sequential_137/lstm_413/TensorArrayV2_1:handle:0&sequential_137/lstm_413/zeros:output:0(sequential_137/lstm_413/zeros_1:output:00sequential_137/lstm_413/strided_slice_1:output:0Osequential_137/lstm_413/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_137_lstm_413_lstm_cell_398_matmul_readvariableop_resourceFsequential_137_lstm_413_lstm_cell_398_matmul_1_readvariableop_resourceEsequential_137_lstm_413_lstm_cell_398_biasadd_readvariableop_resource*
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
*sequential_137_lstm_413_while_body_2406676*6
cond.R,
*sequential_137_lstm_413_while_cond_2406675*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_137/lstm_413/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_137/lstm_413/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_137/lstm_413/while:output:3Qsequential_137/lstm_413/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_137/lstm_413/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_137/lstm_413/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_137/lstm_413/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_137/lstm_413/strided_slice_3StridedSliceCsequential_137/lstm_413/TensorArrayV2Stack/TensorListStack:tensor:06sequential_137/lstm_413/strided_slice_3/stack:output:08sequential_137/lstm_413/strided_slice_3/stack_1:output:08sequential_137/lstm_413/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_137/lstm_413/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_137/lstm_413/transpose_1	TransposeCsequential_137/lstm_413/TensorArrayV2Stack/TensorListStack:tensor:01sequential_137/lstm_413/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_137/lstm_413/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_137/dense_137/MatMul/ReadVariableOpReadVariableOp7sequential_137_dense_137_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_137/dense_137/MatMulMatMul0sequential_137/lstm_413/strided_slice_3:output:06sequential_137/dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_137/dense_137/BiasAdd/ReadVariableOpReadVariableOp8sequential_137_dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_137/dense_137/BiasAddBiasAdd)sequential_137/dense_137/MatMul:product:07sequential_137/dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_137/dense_137/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_137/dense_137/BiasAdd/ReadVariableOp/^sequential_137/dense_137/MatMul/ReadVariableOp=^sequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp<^sequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOp>^sequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp^sequential_137/lstm_411/while=^sequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp<^sequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOp>^sequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp^sequential_137/lstm_412/while=^sequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp<^sequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOp>^sequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp^sequential_137/lstm_413/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_137/dense_137/BiasAdd/ReadVariableOp/sequential_137/dense_137/BiasAdd/ReadVariableOp2`
.sequential_137/dense_137/MatMul/ReadVariableOp.sequential_137/dense_137/MatMul/ReadVariableOp2|
<sequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp<sequential_137/lstm_411/lstm_cell_396/BiasAdd/ReadVariableOp2z
;sequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOp;sequential_137/lstm_411/lstm_cell_396/MatMul/ReadVariableOp2~
=sequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp=sequential_137/lstm_411/lstm_cell_396/MatMul_1/ReadVariableOp2>
sequential_137/lstm_411/whilesequential_137/lstm_411/while2|
<sequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp<sequential_137/lstm_412/lstm_cell_397/BiasAdd/ReadVariableOp2z
;sequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOp;sequential_137/lstm_412/lstm_cell_397/MatMul/ReadVariableOp2~
=sequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp=sequential_137/lstm_412/lstm_cell_397/MatMul_1/ReadVariableOp2>
sequential_137/lstm_412/whilesequential_137/lstm_412/while2|
<sequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp<sequential_137/lstm_413/lstm_cell_398/BiasAdd/ReadVariableOp2z
;sequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOp;sequential_137/lstm_413/lstm_cell_398/MatMul/ReadVariableOp2~
=sequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp=sequential_137/lstm_413/lstm_cell_398/MatMul_1/ReadVariableOp2>
sequential_137/lstm_413/whilesequential_137/lstm_413/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_411_input
?
?
*__inference_lstm_412_layer_call_fn_2410572
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2407457|
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
lstm_412_while_cond_2409277.
*lstm_412_while_lstm_412_while_loop_counter4
0lstm_412_while_lstm_412_while_maximum_iterations
lstm_412_while_placeholder 
lstm_412_while_placeholder_1 
lstm_412_while_placeholder_2 
lstm_412_while_placeholder_30
,lstm_412_while_less_lstm_412_strided_slice_1G
Clstm_412_while_lstm_412_while_cond_2409277___redundant_placeholder0G
Clstm_412_while_lstm_412_while_cond_2409277___redundant_placeholder1G
Clstm_412_while_lstm_412_while_cond_2409277___redundant_placeholder2G
Clstm_412_while_lstm_412_while_cond_2409277___redundant_placeholder3
lstm_412_while_identity
?
lstm_412/while/LessLesslstm_412_while_placeholder,lstm_412_while_less_lstm_412_strided_slice_1*
T0*
_output_shapes
: ]
lstm_412/while/IdentityIdentitylstm_412/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_412_while_identity lstm_412/while/Identity:output:0*(
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
*__inference_lstm_411_layer_call_fn_2409945
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2406916|
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2407807

inputs'
lstm_cell_398_2407725:2('
lstm_cell_398_2407727:
(#
lstm_cell_398_2407729:(
identity??%lstm_cell_398/StatefulPartitionedCall?while;
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
%lstm_cell_398/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_398_2407725lstm_cell_398_2407727lstm_cell_398_2407729*
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407679n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_398_2407725lstm_cell_398_2407727lstm_cell_398_2407729*
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
while_body_2407738*
condR
while_cond_2407737*K
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
NoOpNoOp&^lstm_cell_398/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_398/StatefulPartitionedCall%lstm_cell_398/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_2410653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_397_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_397_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_397_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_397_matmul_readvariableop_resource:	d?G
4while_lstm_cell_397_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_397_biasadd_readvariableop_resource:	???*while/lstm_cell_397/BiasAdd/ReadVariableOp?)while/lstm_cell_397/MatMul/ReadVariableOp?+while/lstm_cell_397/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_397/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_397_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_397/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_397_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_397/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_397/addAddV2$while/lstm_cell_397/MatMul:product:0&while/lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_397_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_397/BiasAddBiasAddwhile/lstm_cell_397/add:z:02while/lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_397/splitSplit,while/lstm_cell_397/split/split_dim:output:0$while/lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_397/SigmoidSigmoid"while/lstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_1Sigmoid"while/lstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mulMul!while/lstm_cell_397/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_397/ReluRelu"while/lstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_1Mulwhile/lstm_cell_397/Sigmoid:y:0&while/lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/add_1AddV2while/lstm_cell_397/mul:z:0while/lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_397/Sigmoid_2Sigmoid"while/lstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_397/Relu_1Reluwhile/lstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_397/mul_2Mul!while/lstm_cell_397/Sigmoid_2:y:0(while/lstm_cell_397/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_397/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_397/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_397/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_397/BiasAdd/ReadVariableOp*^while/lstm_cell_397/MatMul/ReadVariableOp,^while/lstm_cell_397/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_397_biasadd_readvariableop_resource5while_lstm_cell_397_biasadd_readvariableop_resource_0"n
4while_lstm_cell_397_matmul_1_readvariableop_resource6while_lstm_cell_397_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_397_matmul_readvariableop_resource4while_lstm_cell_397_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_397/BiasAdd/ReadVariableOp*while/lstm_cell_397/BiasAdd/ReadVariableOp2V
)while/lstm_cell_397/MatMul/ReadVariableOp)while/lstm_cell_397/MatMul/ReadVariableOp2Z
+while/lstm_cell_397/MatMul_1/ReadVariableOp+while/lstm_cell_397/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410407

inputs?
,lstm_cell_396_matmul_readvariableop_resource:	?A
.lstm_cell_396_matmul_1_readvariableop_resource:	d?<
-lstm_cell_396_biasadd_readvariableop_resource:	?
identity??$lstm_cell_396/BiasAdd/ReadVariableOp?#lstm_cell_396/MatMul/ReadVariableOp?%lstm_cell_396/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_396/MatMul/ReadVariableOpReadVariableOp,lstm_cell_396_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_396/MatMulMatMulstrided_slice_2:output:0+lstm_cell_396/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_396/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_396_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_396/MatMul_1MatMulzeros:output:0-lstm_cell_396/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_396/addAddV2lstm_cell_396/MatMul:product:0 lstm_cell_396/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_396/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_396_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_396/BiasAddBiasAddlstm_cell_396/add:z:0,lstm_cell_396/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_396/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_396/splitSplit&lstm_cell_396/split/split_dim:output:0lstm_cell_396/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_396/SigmoidSigmoidlstm_cell_396/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_1Sigmoidlstm_cell_396/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_396/mulMullstm_cell_396/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_396/ReluRelulstm_cell_396/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_1Mullstm_cell_396/Sigmoid:y:0 lstm_cell_396/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_396/add_1AddV2lstm_cell_396/mul:z:0lstm_cell_396/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_396/Sigmoid_2Sigmoidlstm_cell_396/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_396/Relu_1Relulstm_cell_396/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_396/mul_2Mullstm_cell_396/Sigmoid_2:y:0"lstm_cell_396/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_396_matmul_readvariableop_resource.lstm_cell_396_matmul_1_readvariableop_resource-lstm_cell_396_biasadd_readvariableop_resource*
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
while_body_2410323*
condR
while_cond_2410322*K
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
NoOpNoOp%^lstm_cell_396/BiasAdd/ReadVariableOp$^lstm_cell_396/MatMul/ReadVariableOp&^lstm_cell_396/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_396/BiasAdd/ReadVariableOp$lstm_cell_396/BiasAdd/ReadVariableOp2J
#lstm_cell_396/MatMul/ReadVariableOp#lstm_cell_396/MatMul/ReadVariableOp2N
%lstm_cell_396/MatMul_1/ReadVariableOp%lstm_cell_396/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410880
inputs_0?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2410796*
condR
while_cond_2410795*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411023

inputs?
,lstm_cell_397_matmul_readvariableop_resource:	d?A
.lstm_cell_397_matmul_1_readvariableop_resource:	2?<
-lstm_cell_397_biasadd_readvariableop_resource:	?
identity??$lstm_cell_397/BiasAdd/ReadVariableOp?#lstm_cell_397/MatMul/ReadVariableOp?%lstm_cell_397/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_397/MatMul/ReadVariableOpReadVariableOp,lstm_cell_397_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_397/MatMulMatMulstrided_slice_2:output:0+lstm_cell_397/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_397/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_397_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_397/MatMul_1MatMulzeros:output:0-lstm_cell_397/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_397/addAddV2lstm_cell_397/MatMul:product:0 lstm_cell_397/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_397/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_397_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_397/BiasAddBiasAddlstm_cell_397/add:z:0,lstm_cell_397/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_397/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_397/splitSplit&lstm_cell_397/split/split_dim:output:0lstm_cell_397/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_397/SigmoidSigmoidlstm_cell_397/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_1Sigmoidlstm_cell_397/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_397/mulMullstm_cell_397/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_397/ReluRelulstm_cell_397/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_1Mullstm_cell_397/Sigmoid:y:0 lstm_cell_397/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_397/add_1AddV2lstm_cell_397/mul:z:0lstm_cell_397/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_397/Sigmoid_2Sigmoidlstm_cell_397/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_397/Relu_1Relulstm_cell_397/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_397/mul_2Mullstm_cell_397/Sigmoid_2:y:0"lstm_cell_397/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_397_matmul_readvariableop_resource.lstm_cell_397_matmul_1_readvariableop_resource-lstm_cell_397_biasadd_readvariableop_resource*
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
while_body_2410939*
condR
while_cond_2410938*K
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
NoOpNoOp%^lstm_cell_397/BiasAdd/ReadVariableOp$^lstm_cell_397/MatMul/ReadVariableOp&^lstm_cell_397/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_397/BiasAdd/ReadVariableOp$lstm_cell_397/BiasAdd/ReadVariableOp2J
#lstm_cell_397/MatMul/ReadVariableOp#lstm_cell_397/MatMul/ReadVariableOp2N
%lstm_cell_397/MatMul_1/ReadVariableOp%lstm_cell_397/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_137_layer_call_fn_2408315
lstm_411_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_411_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408290o
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
_user_specified_namelstm_411_input
?
?
*__inference_lstm_411_layer_call_fn_2409956
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2407107|
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411496
inputs_0>
,lstm_cell_398_matmul_readvariableop_resource:2(@
.lstm_cell_398_matmul_1_readvariableop_resource:
(;
-lstm_cell_398_biasadd_readvariableop_resource:(
identity??$lstm_cell_398/BiasAdd/ReadVariableOp?#lstm_cell_398/MatMul/ReadVariableOp?%lstm_cell_398/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_398/MatMul/ReadVariableOpReadVariableOp,lstm_cell_398_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_398/MatMulMatMulstrided_slice_2:output:0+lstm_cell_398/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_398/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_398_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_398/MatMul_1MatMulzeros:output:0-lstm_cell_398/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_398/addAddV2lstm_cell_398/MatMul:product:0 lstm_cell_398/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_398/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_398_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_398/BiasAddBiasAddlstm_cell_398/add:z:0,lstm_cell_398/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_398/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_398/splitSplit&lstm_cell_398/split/split_dim:output:0lstm_cell_398/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_398/SigmoidSigmoidlstm_cell_398/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_1Sigmoidlstm_cell_398/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_398/mulMullstm_cell_398/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_398/ReluRelulstm_cell_398/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_1Mullstm_cell_398/Sigmoid:y:0 lstm_cell_398/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_398/add_1AddV2lstm_cell_398/mul:z:0lstm_cell_398/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_398/Sigmoid_2Sigmoidlstm_cell_398/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_398/Relu_1Relulstm_cell_398/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_398/mul_2Mullstm_cell_398/Sigmoid_2:y:0"lstm_cell_398/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_398_matmul_readvariableop_resource.lstm_cell_398_matmul_1_readvariableop_resource-lstm_cell_398_biasadd_readvariableop_resource*
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
while_body_2411412*
condR
while_cond_2411411*K
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
NoOpNoOp%^lstm_cell_398/BiasAdd/ReadVariableOp$^lstm_cell_398/MatMul/ReadVariableOp&^lstm_cell_398/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_398/BiasAdd/ReadVariableOp$lstm_cell_398/BiasAdd/ReadVariableOp2J
#lstm_cell_398/MatMul/ReadVariableOp#lstm_cell_398/MatMul/ReadVariableOp2N
%lstm_cell_398/MatMul_1/ReadVariableOp%lstm_cell_398/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2406846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2406846___redundant_placeholder05
1while_while_cond_2406846___redundant_placeholder15
1while_while_cond_2406846___redundant_placeholder25
1while_while_cond_2406846___redundant_placeholder3
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
/__inference_lstm_cell_398_layer_call_fn_2412031

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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2407679o
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
#__inference__traced_restore_2412368
file_prefix3
!assignvariableop_dense_137_kernel:
/
!assignvariableop_1_dense_137_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_411_lstm_cell_411_kernel:	?M
:assignvariableop_8_lstm_411_lstm_cell_411_recurrent_kernel:	d?=
.assignvariableop_9_lstm_411_lstm_cell_411_bias:	?D
1assignvariableop_10_lstm_412_lstm_cell_412_kernel:	d?N
;assignvariableop_11_lstm_412_lstm_cell_412_recurrent_kernel:	2?>
/assignvariableop_12_lstm_412_lstm_cell_412_bias:	?C
1assignvariableop_13_lstm_413_lstm_cell_413_kernel:2(M
;assignvariableop_14_lstm_413_lstm_cell_413_recurrent_kernel:
(=
/assignvariableop_15_lstm_413_lstm_cell_413_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_137_kernel_m:
7
)assignvariableop_19_adam_dense_137_bias_m:K
8assignvariableop_20_adam_lstm_411_lstm_cell_411_kernel_m:	?U
Bassignvariableop_21_adam_lstm_411_lstm_cell_411_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_411_lstm_cell_411_bias_m:	?K
8assignvariableop_23_adam_lstm_412_lstm_cell_412_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_412_lstm_cell_412_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_412_lstm_cell_412_bias_m:	?J
8assignvariableop_26_adam_lstm_413_lstm_cell_413_kernel_m:2(T
Bassignvariableop_27_adam_lstm_413_lstm_cell_413_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_413_lstm_cell_413_bias_m:(=
+assignvariableop_29_adam_dense_137_kernel_v:
7
)assignvariableop_30_adam_dense_137_bias_v:K
8assignvariableop_31_adam_lstm_411_lstm_cell_411_kernel_v:	?U
Bassignvariableop_32_adam_lstm_411_lstm_cell_411_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_411_lstm_cell_411_bias_v:	?K
8assignvariableop_34_adam_lstm_412_lstm_cell_412_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_412_lstm_cell_412_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_412_lstm_cell_412_bias_v:	?J
8assignvariableop_37_adam_lstm_413_lstm_cell_413_kernel_v:2(T
Bassignvariableop_38_adam_lstm_413_lstm_cell_413_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_413_lstm_cell_413_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_137_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_137_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_411_lstm_cell_411_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_411_lstm_cell_411_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_411_lstm_cell_411_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_412_lstm_cell_412_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_412_lstm_cell_412_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_412_lstm_cell_412_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_413_lstm_cell_413_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_413_lstm_cell_413_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_413_lstm_cell_413_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_137_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_137_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_411_lstm_cell_411_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_411_lstm_cell_411_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_411_lstm_cell_411_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_412_lstm_cell_412_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_412_lstm_cell_412_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_412_lstm_cell_412_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_413_lstm_cell_413_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_413_lstm_cell_413_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_413_lstm_cell_413_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_137_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_137_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_411_lstm_cell_411_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_411_lstm_cell_411_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_411_lstm_cell_411_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_412_lstm_cell_412_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_412_lstm_cell_412_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_412_lstm_cell_412_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_413_lstm_cell_413_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_413_lstm_cell_413_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_413_lstm_cell_413_bias_vIdentity_39:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_411_input;
 serving_default_lstm_411_input:0?????????=
	dense_1370
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
2dense_137/kernel
:2dense_137/bias
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
0:.	?2lstm_411/lstm_cell_411/kernel
::8	d?2'lstm_411/lstm_cell_411/recurrent_kernel
*:(?2lstm_411/lstm_cell_411/bias
0:.	d?2lstm_412/lstm_cell_412/kernel
::8	2?2'lstm_412/lstm_cell_412/recurrent_kernel
*:(?2lstm_412/lstm_cell_412/bias
/:-2(2lstm_413/lstm_cell_413/kernel
9:7
(2'lstm_413/lstm_cell_413/recurrent_kernel
):'(2lstm_413/lstm_cell_413/bias
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
2Adam/dense_137/kernel/m
!:2Adam/dense_137/bias/m
5:3	?2$Adam/lstm_411/lstm_cell_411/kernel/m
?:=	d?2.Adam/lstm_411/lstm_cell_411/recurrent_kernel/m
/:-?2"Adam/lstm_411/lstm_cell_411/bias/m
5:3	d?2$Adam/lstm_412/lstm_cell_412/kernel/m
?:=	2?2.Adam/lstm_412/lstm_cell_412/recurrent_kernel/m
/:-?2"Adam/lstm_412/lstm_cell_412/bias/m
4:22(2$Adam/lstm_413/lstm_cell_413/kernel/m
>:<
(2.Adam/lstm_413/lstm_cell_413/recurrent_kernel/m
.:,(2"Adam/lstm_413/lstm_cell_413/bias/m
':%
2Adam/dense_137/kernel/v
!:2Adam/dense_137/bias/v
5:3	?2$Adam/lstm_411/lstm_cell_411/kernel/v
?:=	d?2.Adam/lstm_411/lstm_cell_411/recurrent_kernel/v
/:-?2"Adam/lstm_411/lstm_cell_411/bias/v
5:3	d?2$Adam/lstm_412/lstm_cell_412/kernel/v
?:=	2?2.Adam/lstm_412/lstm_cell_412/recurrent_kernel/v
/:-?2"Adam/lstm_412/lstm_cell_412/bias/v
4:22(2$Adam/lstm_413/lstm_cell_413/kernel/v
>:<
(2.Adam/lstm_413/lstm_cell_413/recurrent_kernel/v
.:,(2"Adam/lstm_413/lstm_cell_413/bias/v
?2?
0__inference_sequential_137_layer_call_fn_2408315
0__inference_sequential_137_layer_call_fn_2409053
0__inference_sequential_137_layer_call_fn_2409080
0__inference_sequential_137_layer_call_fn_2408931?
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409507
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409934
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408961
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408991?
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
"__inference__wrapped_model_2406766lstm_411_input"?
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
*__inference_lstm_411_layer_call_fn_2409945
*__inference_lstm_411_layer_call_fn_2409956
*__inference_lstm_411_layer_call_fn_2409967
*__inference_lstm_411_layer_call_fn_2409978?
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410121
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410264
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410407
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410550?
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
*__inference_lstm_412_layer_call_fn_2410561
*__inference_lstm_412_layer_call_fn_2410572
*__inference_lstm_412_layer_call_fn_2410583
*__inference_lstm_412_layer_call_fn_2410594?
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410737
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410880
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411023
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411166?
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
*__inference_lstm_413_layer_call_fn_2411177
*__inference_lstm_413_layer_call_fn_2411188
*__inference_lstm_413_layer_call_fn_2411199
*__inference_lstm_413_layer_call_fn_2411210?
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411353
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411496
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411639
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411782?
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
+__inference_dense_137_layer_call_fn_2411791?
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
F__inference_dense_137_layer_call_and_return_conditional_losses_2411801?
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
%__inference_signature_wrapper_2409026lstm_411_input"?
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
/__inference_lstm_cell_396_layer_call_fn_2411818
/__inference_lstm_cell_396_layer_call_fn_2411835?
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411867
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411899?
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
/__inference_lstm_cell_397_layer_call_fn_2411916
/__inference_lstm_cell_397_layer_call_fn_2411933?
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411965
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411997?
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
/__inference_lstm_cell_398_layer_call_fn_2412014
/__inference_lstm_cell_398_layer_call_fn_2412031?
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412063
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412095?
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
"__inference__wrapped_model_2406766?-./012345!";?8
1?.
,?)
lstm_411_input?????????
? "5?2
0
	dense_137#? 
	dense_137??????????
F__inference_dense_137_layer_call_and_return_conditional_losses_2411801\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_137_layer_call_fn_2411791O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410121?-./O?L
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410264?-./O?L
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410407q-./??<
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
E__inference_lstm_411_layer_call_and_return_conditional_losses_2410550q-./??<
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
*__inference_lstm_411_layer_call_fn_2409945}-./O?L
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
*__inference_lstm_411_layer_call_fn_2409956}-./O?L
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
*__inference_lstm_411_layer_call_fn_2409967d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_411_layer_call_fn_2409978d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410737?012O?L
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2410880?012O?L
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411023q012??<
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
E__inference_lstm_412_layer_call_and_return_conditional_losses_2411166q012??<
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
*__inference_lstm_412_layer_call_fn_2410561}012O?L
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
*__inference_lstm_412_layer_call_fn_2410572}012O?L
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
*__inference_lstm_412_layer_call_fn_2410583d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_412_layer_call_fn_2410594d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411353}345O?L
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411496}345O?L
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411639m345??<
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
E__inference_lstm_413_layer_call_and_return_conditional_losses_2411782m345??<
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
*__inference_lstm_413_layer_call_fn_2411177p345O?L
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
*__inference_lstm_413_layer_call_fn_2411188p345O?L
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
*__inference_lstm_413_layer_call_fn_2411199`345??<
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
*__inference_lstm_413_layer_call_fn_2411210`345??<
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411867?-./??}
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
J__inference_lstm_cell_396_layer_call_and_return_conditional_losses_2411899?-./??}
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
/__inference_lstm_cell_396_layer_call_fn_2411818?-./??}
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
/__inference_lstm_cell_396_layer_call_fn_2411835?-./??}
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411965?012??}
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
J__inference_lstm_cell_397_layer_call_and_return_conditional_losses_2411997?012??}
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
/__inference_lstm_cell_397_layer_call_fn_2411916?012??}
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
/__inference_lstm_cell_397_layer_call_fn_2411933?012??}
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412063?345??}
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
J__inference_lstm_cell_398_layer_call_and_return_conditional_losses_2412095?345??}
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
/__inference_lstm_cell_398_layer_call_fn_2412014?345??}
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
/__inference_lstm_cell_398_layer_call_fn_2412031?345??}
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408961y-./012345!"C?@
9?6
,?)
lstm_411_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2408991y-./012345!"C?@
9?6
,?)
lstm_411_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409507q-./012345!";?8
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
K__inference_sequential_137_layer_call_and_return_conditional_losses_2409934q-./012345!";?8
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
0__inference_sequential_137_layer_call_fn_2408315l-./012345!"C?@
9?6
,?)
lstm_411_input?????????
p 

 
? "???????????
0__inference_sequential_137_layer_call_fn_2408931l-./012345!"C?@
9?6
,?)
lstm_411_input?????????
p

 
? "???????????
0__inference_sequential_137_layer_call_fn_2409053d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_137_layer_call_fn_2409080d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2409026?-./012345!"M?J
? 
C?@
>
lstm_411_input,?)
lstm_411_input?????????"5?2
0
	dense_137#? 
	dense_137?????????