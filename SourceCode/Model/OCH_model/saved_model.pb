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
dense_154/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_154/kernel
u
$dense_154/kernel/Read/ReadVariableOpReadVariableOpdense_154/kernel*
_output_shapes

:
*
dtype0
t
dense_154/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_154/bias
m
"dense_154/bias/Read/ReadVariableOpReadVariableOpdense_154/bias*
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
lstm_462/lstm_cell_462/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_462/lstm_cell_462/kernel
?
1lstm_462/lstm_cell_462/kernel/Read/ReadVariableOpReadVariableOplstm_462/lstm_cell_462/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_462/lstm_cell_462/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_462/lstm_cell_462/recurrent_kernel
?
;lstm_462/lstm_cell_462/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_462/lstm_cell_462/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_462/lstm_cell_462/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_462/lstm_cell_462/bias
?
/lstm_462/lstm_cell_462/bias/Read/ReadVariableOpReadVariableOplstm_462/lstm_cell_462/bias*
_output_shapes	
:?*
dtype0
?
lstm_463/lstm_cell_463/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_463/lstm_cell_463/kernel
?
1lstm_463/lstm_cell_463/kernel/Read/ReadVariableOpReadVariableOplstm_463/lstm_cell_463/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_463/lstm_cell_463/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_463/lstm_cell_463/recurrent_kernel
?
;lstm_463/lstm_cell_463/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_463/lstm_cell_463/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_463/lstm_cell_463/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_463/lstm_cell_463/bias
?
/lstm_463/lstm_cell_463/bias/Read/ReadVariableOpReadVariableOplstm_463/lstm_cell_463/bias*
_output_shapes	
:?*
dtype0
?
lstm_464/lstm_cell_464/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_464/lstm_cell_464/kernel
?
1lstm_464/lstm_cell_464/kernel/Read/ReadVariableOpReadVariableOplstm_464/lstm_cell_464/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_464/lstm_cell_464/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_464/lstm_cell_464/recurrent_kernel
?
;lstm_464/lstm_cell_464/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_464/lstm_cell_464/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_464/lstm_cell_464/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_464/lstm_cell_464/bias
?
/lstm_464/lstm_cell_464/bias/Read/ReadVariableOpReadVariableOplstm_464/lstm_cell_464/bias*
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
Adam/dense_154/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_154/kernel/m
?
+Adam/dense_154/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_154/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_154/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_154/bias/m
{
)Adam/dense_154/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_154/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_462/lstm_cell_462/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_462/lstm_cell_462/kernel/m
?
8Adam/lstm_462/lstm_cell_462/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_462/lstm_cell_462/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_462/lstm_cell_462/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_462/lstm_cell_462/recurrent_kernel/m
?
BAdam/lstm_462/lstm_cell_462/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_462/lstm_cell_462/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_462/lstm_cell_462/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_462/lstm_cell_462/bias/m
?
6Adam/lstm_462/lstm_cell_462/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_462/lstm_cell_462/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_463/lstm_cell_463/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_463/lstm_cell_463/kernel/m
?
8Adam/lstm_463/lstm_cell_463/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_463/lstm_cell_463/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_463/lstm_cell_463/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_463/lstm_cell_463/recurrent_kernel/m
?
BAdam/lstm_463/lstm_cell_463/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_463/lstm_cell_463/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_463/lstm_cell_463/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_463/lstm_cell_463/bias/m
?
6Adam/lstm_463/lstm_cell_463/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_463/lstm_cell_463/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_464/lstm_cell_464/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_464/lstm_cell_464/kernel/m
?
8Adam/lstm_464/lstm_cell_464/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_464/lstm_cell_464/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_464/lstm_cell_464/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_464/lstm_cell_464/recurrent_kernel/m
?
BAdam/lstm_464/lstm_cell_464/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_464/lstm_cell_464/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_464/lstm_cell_464/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_464/lstm_cell_464/bias/m
?
6Adam/lstm_464/lstm_cell_464/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_464/lstm_cell_464/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_154/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_154/kernel/v
?
+Adam/dense_154/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_154/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_154/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_154/bias/v
{
)Adam/dense_154/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_154/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_462/lstm_cell_462/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_462/lstm_cell_462/kernel/v
?
8Adam/lstm_462/lstm_cell_462/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_462/lstm_cell_462/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_462/lstm_cell_462/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_462/lstm_cell_462/recurrent_kernel/v
?
BAdam/lstm_462/lstm_cell_462/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_462/lstm_cell_462/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_462/lstm_cell_462/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_462/lstm_cell_462/bias/v
?
6Adam/lstm_462/lstm_cell_462/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_462/lstm_cell_462/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_463/lstm_cell_463/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_463/lstm_cell_463/kernel/v
?
8Adam/lstm_463/lstm_cell_463/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_463/lstm_cell_463/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_463/lstm_cell_463/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_463/lstm_cell_463/recurrent_kernel/v
?
BAdam/lstm_463/lstm_cell_463/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_463/lstm_cell_463/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_463/lstm_cell_463/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_463/lstm_cell_463/bias/v
?
6Adam/lstm_463/lstm_cell_463/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_463/lstm_cell_463/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_464/lstm_cell_464/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_464/lstm_cell_464/kernel/v
?
8Adam/lstm_464/lstm_cell_464/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_464/lstm_cell_464/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_464/lstm_cell_464/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_464/lstm_cell_464/recurrent_kernel/v
?
BAdam/lstm_464/lstm_cell_464/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_464/lstm_cell_464/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_464/lstm_cell_464/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_464/lstm_cell_464/bias/v
?
6Adam/lstm_464/lstm_cell_464/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_464/lstm_cell_464/bias/v*
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
VARIABLE_VALUEdense_154/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_154/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_462/lstm_cell_462/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_462/lstm_cell_462/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_462/lstm_cell_462/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_463/lstm_cell_463/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_463/lstm_cell_463/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_463/lstm_cell_463/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_464/lstm_cell_464/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_464/lstm_cell_464/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_464/lstm_cell_464/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_154/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_154/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_462/lstm_cell_462/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_462/lstm_cell_462/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_462/lstm_cell_462/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_463/lstm_cell_463/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_463/lstm_cell_463/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_463/lstm_cell_463/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_464/lstm_cell_464/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_464/lstm_cell_464/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_464/lstm_cell_464/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_154/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_154/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_462/lstm_cell_462/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_462/lstm_cell_462/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_462/lstm_cell_462/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_463/lstm_cell_463/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_463/lstm_cell_463/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_463/lstm_cell_463/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_464/lstm_cell_464/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_464/lstm_cell_464/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_464/lstm_cell_464/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_462_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_462_inputlstm_462/lstm_cell_462/kernel'lstm_462/lstm_cell_462/recurrent_kernellstm_462/lstm_cell_462/biaslstm_463/lstm_cell_463/kernel'lstm_463/lstm_cell_463/recurrent_kernellstm_463/lstm_cell_463/biaslstm_464/lstm_cell_464/kernel'lstm_464/lstm_cell_464/recurrent_kernellstm_464/lstm_cell_464/biasdense_154/kerneldense_154/bias*
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
%__inference_signature_wrapper_2499768
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_154/kernel/Read/ReadVariableOp"dense_154/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_462/lstm_cell_462/kernel/Read/ReadVariableOp;lstm_462/lstm_cell_462/recurrent_kernel/Read/ReadVariableOp/lstm_462/lstm_cell_462/bias/Read/ReadVariableOp1lstm_463/lstm_cell_463/kernel/Read/ReadVariableOp;lstm_463/lstm_cell_463/recurrent_kernel/Read/ReadVariableOp/lstm_463/lstm_cell_463/bias/Read/ReadVariableOp1lstm_464/lstm_cell_464/kernel/Read/ReadVariableOp;lstm_464/lstm_cell_464/recurrent_kernel/Read/ReadVariableOp/lstm_464/lstm_cell_464/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_154/kernel/m/Read/ReadVariableOp)Adam/dense_154/bias/m/Read/ReadVariableOp8Adam/lstm_462/lstm_cell_462/kernel/m/Read/ReadVariableOpBAdam/lstm_462/lstm_cell_462/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_462/lstm_cell_462/bias/m/Read/ReadVariableOp8Adam/lstm_463/lstm_cell_463/kernel/m/Read/ReadVariableOpBAdam/lstm_463/lstm_cell_463/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_463/lstm_cell_463/bias/m/Read/ReadVariableOp8Adam/lstm_464/lstm_cell_464/kernel/m/Read/ReadVariableOpBAdam/lstm_464/lstm_cell_464/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_464/lstm_cell_464/bias/m/Read/ReadVariableOp+Adam/dense_154/kernel/v/Read/ReadVariableOp)Adam/dense_154/bias/v/Read/ReadVariableOp8Adam/lstm_462/lstm_cell_462/kernel/v/Read/ReadVariableOpBAdam/lstm_462/lstm_cell_462/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_462/lstm_cell_462/bias/v/Read/ReadVariableOp8Adam/lstm_463/lstm_cell_463/kernel/v/Read/ReadVariableOpBAdam/lstm_463/lstm_cell_463/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_463/lstm_cell_463/bias/v/Read/ReadVariableOp8Adam/lstm_464/lstm_cell_464/kernel/v/Read/ReadVariableOpBAdam/lstm_464/lstm_cell_464/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_464/lstm_cell_464/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2502980
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_154/kerneldense_154/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_462/lstm_cell_462/kernel'lstm_462/lstm_cell_462/recurrent_kernellstm_462/lstm_cell_462/biaslstm_463/lstm_cell_463/kernel'lstm_463/lstm_cell_463/recurrent_kernellstm_463/lstm_cell_463/biaslstm_464/lstm_cell_464/kernel'lstm_464/lstm_cell_464/recurrent_kernellstm_464/lstm_cell_464/biastotalcountAdam/dense_154/kernel/mAdam/dense_154/bias/m$Adam/lstm_462/lstm_cell_462/kernel/m.Adam/lstm_462/lstm_cell_462/recurrent_kernel/m"Adam/lstm_462/lstm_cell_462/bias/m$Adam/lstm_463/lstm_cell_463/kernel/m.Adam/lstm_463/lstm_cell_463/recurrent_kernel/m"Adam/lstm_463/lstm_cell_463/bias/m$Adam/lstm_464/lstm_cell_464/kernel/m.Adam/lstm_464/lstm_cell_464/recurrent_kernel/m"Adam/lstm_464/lstm_cell_464/bias/mAdam/dense_154/kernel/vAdam/dense_154/bias/v$Adam/lstm_462/lstm_cell_462/kernel/v.Adam/lstm_462/lstm_cell_462/recurrent_kernel/v"Adam/lstm_462/lstm_cell_462/bias/v$Adam/lstm_463/lstm_cell_463/kernel/v.Adam/lstm_463/lstm_cell_463/recurrent_kernel/v"Adam/lstm_463/lstm_cell_463/bias/v$Adam/lstm_464/lstm_cell_464/kernel/v.Adam/lstm_464/lstm_cell_464/recurrent_kernel/v"Adam/lstm_464/lstm_cell_464/bias/v*4
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
#__inference__traced_restore_2503110??+
?

?
lstm_462_while_cond_2499880.
*lstm_462_while_lstm_462_while_loop_counter4
0lstm_462_while_lstm_462_while_maximum_iterations
lstm_462_while_placeholder 
lstm_462_while_placeholder_1 
lstm_462_while_placeholder_2 
lstm_462_while_placeholder_30
,lstm_462_while_less_lstm_462_strided_slice_1G
Clstm_462_while_lstm_462_while_cond_2499880___redundant_placeholder0G
Clstm_462_while_lstm_462_while_cond_2499880___redundant_placeholder1G
Clstm_462_while_lstm_462_while_cond_2499880___redundant_placeholder2G
Clstm_462_while_lstm_462_while_cond_2499880___redundant_placeholder3
lstm_462_while_identity
?
lstm_462/while/LessLesslstm_462_while_placeholder,lstm_462_while_less_lstm_462_strided_slice_1*
T0*
_output_shapes
: ]
lstm_462/while/IdentityIdentitylstm_462/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_462_while_identity lstm_462/while/Identity:output:0*(
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498199

inputs(
lstm_cell_412_2498117:	d?(
lstm_cell_412_2498119:	2?$
lstm_cell_412_2498121:	?
identity??%lstm_cell_412/StatefulPartitionedCall?while;
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
%lstm_cell_412/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_412_2498117lstm_cell_412_2498119lstm_cell_412_2498121*
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2498071n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_412_2498117lstm_cell_412_2498119lstm_cell_412_2498121*
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
while_body_2498130*
condR
while_cond_2498129*K
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
NoOpNoOp&^lstm_cell_412/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_412/StatefulPartitionedCall%lstm_cell_412/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_154_layer_call_fn_2499057
lstm_462_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_462_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499032o
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
_user_specified_namelstm_462_input
?T
?
*sequential_154_lstm_462_while_body_2497140L
Hsequential_154_lstm_462_while_sequential_154_lstm_462_while_loop_counterR
Nsequential_154_lstm_462_while_sequential_154_lstm_462_while_maximum_iterations-
)sequential_154_lstm_462_while_placeholder/
+sequential_154_lstm_462_while_placeholder_1/
+sequential_154_lstm_462_while_placeholder_2/
+sequential_154_lstm_462_while_placeholder_3K
Gsequential_154_lstm_462_while_sequential_154_lstm_462_strided_slice_1_0?
?sequential_154_lstm_462_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_462_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_154_lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0:	?a
Nsequential_154_lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?\
Msequential_154_lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0:	?*
&sequential_154_lstm_462_while_identity,
(sequential_154_lstm_462_while_identity_1,
(sequential_154_lstm_462_while_identity_2,
(sequential_154_lstm_462_while_identity_3,
(sequential_154_lstm_462_while_identity_4,
(sequential_154_lstm_462_while_identity_5I
Esequential_154_lstm_462_while_sequential_154_lstm_462_strided_slice_1?
?sequential_154_lstm_462_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_462_tensorarrayunstack_tensorlistfromtensor]
Jsequential_154_lstm_462_while_lstm_cell_411_matmul_readvariableop_resource:	?_
Lsequential_154_lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource:	d?Z
Ksequential_154_lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource:	???Bsequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp?Asequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp?Csequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp?
Osequential_154/lstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_154/lstm_462/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_154_lstm_462_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_462_tensorarrayunstack_tensorlistfromtensor_0)sequential_154_lstm_462_while_placeholderXsequential_154/lstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOpLsequential_154_lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_154/lstm_462/while/lstm_cell_411/MatMulMatMulHsequential_154/lstm_462/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOpNsequential_154_lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_154/lstm_462/while/lstm_cell_411/MatMul_1MatMul+sequential_154_lstm_462_while_placeholder_2Ksequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_154/lstm_462/while/lstm_cell_411/addAddV2<sequential_154/lstm_462/while/lstm_cell_411/MatMul:product:0>sequential_154/lstm_462/while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOpMsequential_154_lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_154/lstm_462/while/lstm_cell_411/BiasAddBiasAdd3sequential_154/lstm_462/while/lstm_cell_411/add:z:0Jsequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_154/lstm_462/while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_154/lstm_462/while/lstm_cell_411/splitSplitDsequential_154/lstm_462/while/lstm_cell_411/split/split_dim:output:0<sequential_154/lstm_462/while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_154/lstm_462/while/lstm_cell_411/SigmoidSigmoid:sequential_154/lstm_462/while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_154/lstm_462/while/lstm_cell_411/Sigmoid_1Sigmoid:sequential_154/lstm_462/while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_154/lstm_462/while/lstm_cell_411/mulMul9sequential_154/lstm_462/while/lstm_cell_411/Sigmoid_1:y:0+sequential_154_lstm_462_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_154/lstm_462/while/lstm_cell_411/ReluRelu:sequential_154/lstm_462/while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_154/lstm_462/while/lstm_cell_411/mul_1Mul7sequential_154/lstm_462/while/lstm_cell_411/Sigmoid:y:0>sequential_154/lstm_462/while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_154/lstm_462/while/lstm_cell_411/add_1AddV23sequential_154/lstm_462/while/lstm_cell_411/mul:z:05sequential_154/lstm_462/while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_154/lstm_462/while/lstm_cell_411/Sigmoid_2Sigmoid:sequential_154/lstm_462/while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_154/lstm_462/while/lstm_cell_411/Relu_1Relu5sequential_154/lstm_462/while/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_154/lstm_462/while/lstm_cell_411/mul_2Mul9sequential_154/lstm_462/while/lstm_cell_411/Sigmoid_2:y:0@sequential_154/lstm_462/while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_154/lstm_462/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_154_lstm_462_while_placeholder_1)sequential_154_lstm_462_while_placeholder5sequential_154/lstm_462/while/lstm_cell_411/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_154/lstm_462/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_154/lstm_462/while/addAddV2)sequential_154_lstm_462_while_placeholder,sequential_154/lstm_462/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_154/lstm_462/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_154/lstm_462/while/add_1AddV2Hsequential_154_lstm_462_while_sequential_154_lstm_462_while_loop_counter.sequential_154/lstm_462/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_154/lstm_462/while/IdentityIdentity'sequential_154/lstm_462/while/add_1:z:0#^sequential_154/lstm_462/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_462/while/Identity_1IdentityNsequential_154_lstm_462_while_sequential_154_lstm_462_while_maximum_iterations#^sequential_154/lstm_462/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_462/while/Identity_2Identity%sequential_154/lstm_462/while/add:z:0#^sequential_154/lstm_462/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_462/while/Identity_3IdentityRsequential_154/lstm_462/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_154/lstm_462/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_462/while/Identity_4Identity5sequential_154/lstm_462/while/lstm_cell_411/mul_2:z:0#^sequential_154/lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_154/lstm_462/while/Identity_5Identity5sequential_154/lstm_462/while/lstm_cell_411/add_1:z:0#^sequential_154/lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_154/lstm_462/while/NoOpNoOpC^sequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOpB^sequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOpD^sequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_154_lstm_462_while_identity/sequential_154/lstm_462/while/Identity:output:0"]
(sequential_154_lstm_462_while_identity_11sequential_154/lstm_462/while/Identity_1:output:0"]
(sequential_154_lstm_462_while_identity_21sequential_154/lstm_462/while/Identity_2:output:0"]
(sequential_154_lstm_462_while_identity_31sequential_154/lstm_462/while/Identity_3:output:0"]
(sequential_154_lstm_462_while_identity_41sequential_154/lstm_462/while/Identity_4:output:0"]
(sequential_154_lstm_462_while_identity_51sequential_154/lstm_462/while/Identity_5:output:0"?
Ksequential_154_lstm_462_while_lstm_cell_411_biasadd_readvariableop_resourceMsequential_154_lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0"?
Lsequential_154_lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resourceNsequential_154_lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0"?
Jsequential_154_lstm_462_while_lstm_cell_411_matmul_readvariableop_resourceLsequential_154_lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0"?
Esequential_154_lstm_462_while_sequential_154_lstm_462_strided_slice_1Gsequential_154_lstm_462_while_sequential_154_lstm_462_strided_slice_1_0"?
?sequential_154_lstm_462_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_462_tensorarrayunstack_tensorlistfromtensor?sequential_154_lstm_462_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_462_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOpBsequential_154/lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp2?
Asequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOpAsequential_154/lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp2?
Csequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOpCsequential_154/lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_2499768
lstm_462_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_462_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2497508o
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
_user_specified_namelstm_462_input
?T
?
*sequential_154_lstm_464_while_body_2497418L
Hsequential_154_lstm_464_while_sequential_154_lstm_464_while_loop_counterR
Nsequential_154_lstm_464_while_sequential_154_lstm_464_while_maximum_iterations-
)sequential_154_lstm_464_while_placeholder/
+sequential_154_lstm_464_while_placeholder_1/
+sequential_154_lstm_464_while_placeholder_2/
+sequential_154_lstm_464_while_placeholder_3K
Gsequential_154_lstm_464_while_sequential_154_lstm_464_strided_slice_1_0?
?sequential_154_lstm_464_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_464_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_154_lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0:2(`
Nsequential_154_lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0:
([
Msequential_154_lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0:(*
&sequential_154_lstm_464_while_identity,
(sequential_154_lstm_464_while_identity_1,
(sequential_154_lstm_464_while_identity_2,
(sequential_154_lstm_464_while_identity_3,
(sequential_154_lstm_464_while_identity_4,
(sequential_154_lstm_464_while_identity_5I
Esequential_154_lstm_464_while_sequential_154_lstm_464_strided_slice_1?
?sequential_154_lstm_464_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_464_tensorarrayunstack_tensorlistfromtensor\
Jsequential_154_lstm_464_while_lstm_cell_413_matmul_readvariableop_resource:2(^
Lsequential_154_lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource:
(Y
Ksequential_154_lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource:(??Bsequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp?Asequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp?Csequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp?
Osequential_154/lstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_154/lstm_464/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_154_lstm_464_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_464_tensorarrayunstack_tensorlistfromtensor_0)sequential_154_lstm_464_while_placeholderXsequential_154/lstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOpLsequential_154_lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_154/lstm_464/while/lstm_cell_413/MatMulMatMulHsequential_154/lstm_464/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOpNsequential_154_lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_154/lstm_464/while/lstm_cell_413/MatMul_1MatMul+sequential_154_lstm_464_while_placeholder_2Ksequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_154/lstm_464/while/lstm_cell_413/addAddV2<sequential_154/lstm_464/while/lstm_cell_413/MatMul:product:0>sequential_154/lstm_464/while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOpMsequential_154_lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_154/lstm_464/while/lstm_cell_413/BiasAddBiasAdd3sequential_154/lstm_464/while/lstm_cell_413/add:z:0Jsequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_154/lstm_464/while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_154/lstm_464/while/lstm_cell_413/splitSplitDsequential_154/lstm_464/while/lstm_cell_413/split/split_dim:output:0<sequential_154/lstm_464/while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_154/lstm_464/while/lstm_cell_413/SigmoidSigmoid:sequential_154/lstm_464/while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_154/lstm_464/while/lstm_cell_413/Sigmoid_1Sigmoid:sequential_154/lstm_464/while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_154/lstm_464/while/lstm_cell_413/mulMul9sequential_154/lstm_464/while/lstm_cell_413/Sigmoid_1:y:0+sequential_154_lstm_464_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_154/lstm_464/while/lstm_cell_413/ReluRelu:sequential_154/lstm_464/while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_154/lstm_464/while/lstm_cell_413/mul_1Mul7sequential_154/lstm_464/while/lstm_cell_413/Sigmoid:y:0>sequential_154/lstm_464/while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_154/lstm_464/while/lstm_cell_413/add_1AddV23sequential_154/lstm_464/while/lstm_cell_413/mul:z:05sequential_154/lstm_464/while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_154/lstm_464/while/lstm_cell_413/Sigmoid_2Sigmoid:sequential_154/lstm_464/while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_154/lstm_464/while/lstm_cell_413/Relu_1Relu5sequential_154/lstm_464/while/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_154/lstm_464/while/lstm_cell_413/mul_2Mul9sequential_154/lstm_464/while/lstm_cell_413/Sigmoid_2:y:0@sequential_154/lstm_464/while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_154/lstm_464/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_154_lstm_464_while_placeholder_1)sequential_154_lstm_464_while_placeholder5sequential_154/lstm_464/while/lstm_cell_413/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_154/lstm_464/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_154/lstm_464/while/addAddV2)sequential_154_lstm_464_while_placeholder,sequential_154/lstm_464/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_154/lstm_464/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_154/lstm_464/while/add_1AddV2Hsequential_154_lstm_464_while_sequential_154_lstm_464_while_loop_counter.sequential_154/lstm_464/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_154/lstm_464/while/IdentityIdentity'sequential_154/lstm_464/while/add_1:z:0#^sequential_154/lstm_464/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_464/while/Identity_1IdentityNsequential_154_lstm_464_while_sequential_154_lstm_464_while_maximum_iterations#^sequential_154/lstm_464/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_464/while/Identity_2Identity%sequential_154/lstm_464/while/add:z:0#^sequential_154/lstm_464/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_464/while/Identity_3IdentityRsequential_154/lstm_464/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_154/lstm_464/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_464/while/Identity_4Identity5sequential_154/lstm_464/while/lstm_cell_413/mul_2:z:0#^sequential_154/lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_154/lstm_464/while/Identity_5Identity5sequential_154/lstm_464/while/lstm_cell_413/add_1:z:0#^sequential_154/lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_154/lstm_464/while/NoOpNoOpC^sequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOpB^sequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOpD^sequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_154_lstm_464_while_identity/sequential_154/lstm_464/while/Identity:output:0"]
(sequential_154_lstm_464_while_identity_11sequential_154/lstm_464/while/Identity_1:output:0"]
(sequential_154_lstm_464_while_identity_21sequential_154/lstm_464/while/Identity_2:output:0"]
(sequential_154_lstm_464_while_identity_31sequential_154/lstm_464/while/Identity_3:output:0"]
(sequential_154_lstm_464_while_identity_41sequential_154/lstm_464/while/Identity_4:output:0"]
(sequential_154_lstm_464_while_identity_51sequential_154/lstm_464/while/Identity_5:output:0"?
Ksequential_154_lstm_464_while_lstm_cell_413_biasadd_readvariableop_resourceMsequential_154_lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0"?
Lsequential_154_lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resourceNsequential_154_lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0"?
Jsequential_154_lstm_464_while_lstm_cell_413_matmul_readvariableop_resourceLsequential_154_lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0"?
Esequential_154_lstm_464_while_sequential_154_lstm_464_strided_slice_1Gsequential_154_lstm_464_while_sequential_154_lstm_464_strided_slice_1_0"?
?sequential_154_lstm_464_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_464_tensorarrayunstack_tensorlistfromtensor?sequential_154_lstm_464_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_464_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOpBsequential_154/lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp2?
Asequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOpAsequential_154/lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp2?
Csequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOpCsequential_154/lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499032

inputs#
lstm_462_2498708:	?#
lstm_462_2498710:	d?
lstm_462_2498712:	?#
lstm_463_2498858:	d?#
lstm_463_2498860:	2?
lstm_463_2498862:	?"
lstm_464_2499008:2("
lstm_464_2499010:
(
lstm_464_2499012:(#
dense_154_2499026:

dense_154_2499028:
identity??!dense_154/StatefulPartitionedCall? lstm_462/StatefulPartitionedCall? lstm_463/StatefulPartitionedCall? lstm_464/StatefulPartitionedCall?
 lstm_462/StatefulPartitionedCallStatefulPartitionedCallinputslstm_462_2498708lstm_462_2498710lstm_462_2498712*
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2498707?
 lstm_463/StatefulPartitionedCallStatefulPartitionedCall)lstm_462/StatefulPartitionedCall:output:0lstm_463_2498858lstm_463_2498860lstm_463_2498862*
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498857?
 lstm_464/StatefulPartitionedCallStatefulPartitionedCall)lstm_463/StatefulPartitionedCall:output:0lstm_464_2499008lstm_464_2499010lstm_464_2499012*
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499007?
!dense_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_464/StatefulPartitionedCall:output:0dense_154_2499026dense_154_2499028*
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025y
IdentityIdentity*dense_154/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_154/StatefulPartitionedCall!^lstm_462/StatefulPartitionedCall!^lstm_463/StatefulPartitionedCall!^lstm_464/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2D
 lstm_462/StatefulPartitionedCall lstm_462/StatefulPartitionedCall2D
 lstm_463/StatefulPartitionedCall lstm_463/StatefulPartitionedCall2D
 lstm_464/StatefulPartitionedCall lstm_464/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2501207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501207___redundant_placeholder05
1while_while_cond_2501207___redundant_placeholder15
1while_while_cond_2501207___redundant_placeholder25
1while_while_cond_2501207___redundant_placeholder3
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501622
inputs_0?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2501538*
condR
while_cond_2501537*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_154_layer_call_fn_2499673
lstm_462_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_462_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499621o
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
_user_specified_namelstm_462_input
?
?
while_cond_2501537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501537___redundant_placeholder05
1while_while_cond_2501537___redundant_placeholder15
1while_while_cond_2501537___redundant_placeholder25
1while_while_cond_2501537___redundant_placeholder3
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501006
inputs_0?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2500922*
condR
while_cond_2500921*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2502439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2502439___redundant_placeholder05
1while_while_cond_2502439___redundant_placeholder15
1while_while_cond_2502439___redundant_placeholder25
1while_while_cond_2502439___redundant_placeholder3
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
*sequential_154_lstm_464_while_cond_2497417L
Hsequential_154_lstm_464_while_sequential_154_lstm_464_while_loop_counterR
Nsequential_154_lstm_464_while_sequential_154_lstm_464_while_maximum_iterations-
)sequential_154_lstm_464_while_placeholder/
+sequential_154_lstm_464_while_placeholder_1/
+sequential_154_lstm_464_while_placeholder_2/
+sequential_154_lstm_464_while_placeholder_3N
Jsequential_154_lstm_464_while_less_sequential_154_lstm_464_strided_slice_1e
asequential_154_lstm_464_while_sequential_154_lstm_464_while_cond_2497417___redundant_placeholder0e
asequential_154_lstm_464_while_sequential_154_lstm_464_while_cond_2497417___redundant_placeholder1e
asequential_154_lstm_464_while_sequential_154_lstm_464_while_cond_2497417___redundant_placeholder2e
asequential_154_lstm_464_while_sequential_154_lstm_464_while_cond_2497417___redundant_placeholder3*
&sequential_154_lstm_464_while_identity
?
"sequential_154/lstm_464/while/LessLess)sequential_154_lstm_464_while_placeholderJsequential_154_lstm_464_while_less_sequential_154_lstm_464_strided_slice_1*
T0*
_output_shapes
: {
&sequential_154/lstm_464/while/IdentityIdentity&sequential_154/lstm_464/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_154_lstm_464_while_identity/sequential_154/lstm_464/while/Identity:output:0*(
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
while_body_2498773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2497658

inputs(
lstm_cell_411_2497576:	?(
lstm_cell_411_2497578:	d?$
lstm_cell_411_2497580:	?
identity??%lstm_cell_411/StatefulPartitionedCall?while;
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
%lstm_cell_411/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_411_2497576lstm_cell_411_2497578lstm_cell_411_2497580*
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497575n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_411_2497576lstm_cell_411_2497578lstm_cell_411_2497580*
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
while_body_2497589*
condR
while_cond_2497588*K
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
NoOpNoOp&^lstm_cell_411/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_411/StatefulPartitionedCall%lstm_cell_411/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2497588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2497588___redundant_placeholder05
1while_while_cond_2497588___redundant_placeholder15
1while_while_cond_2497588___redundant_placeholder25
1while_while_cond_2497588___redundant_placeholder3
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
while_body_2499139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2500778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2500778___redundant_placeholder05
1while_while_cond_2500778___redundant_placeholder15
1while_while_cond_2500778___redundant_placeholder25
1while_while_cond_2500778___redundant_placeholder3
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025

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
*__inference_lstm_463_layer_call_fn_2501314
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498199|
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
?
?
*__inference_lstm_464_layer_call_fn_2501952

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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499223o
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2499553

inputs?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2499469*
condR
while_cond_2499468*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2499469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_413_layer_call_fn_2502756

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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498275o
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
*__inference_lstm_463_layer_call_fn_2501303
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498008|
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
?K
?
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502095
inputs_0>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2502011*
condR
while_cond_2502010*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_411_layer_call_fn_2502560

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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497575o
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500249

inputsH
5lstm_462_lstm_cell_411_matmul_readvariableop_resource:	?J
7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource:	d?E
6lstm_462_lstm_cell_411_biasadd_readvariableop_resource:	?H
5lstm_463_lstm_cell_412_matmul_readvariableop_resource:	d?J
7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource:	2?E
6lstm_463_lstm_cell_412_biasadd_readvariableop_resource:	?G
5lstm_464_lstm_cell_413_matmul_readvariableop_resource:2(I
7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource:
(D
6lstm_464_lstm_cell_413_biasadd_readvariableop_resource:(:
(dense_154_matmul_readvariableop_resource:
7
)dense_154_biasadd_readvariableop_resource:
identity?? dense_154/BiasAdd/ReadVariableOp?dense_154/MatMul/ReadVariableOp?-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp?,lstm_462/lstm_cell_411/MatMul/ReadVariableOp?.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp?lstm_462/while?-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp?,lstm_463/lstm_cell_412/MatMul/ReadVariableOp?.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp?lstm_463/while?-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp?,lstm_464/lstm_cell_413/MatMul/ReadVariableOp?.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp?lstm_464/whileD
lstm_462/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_462/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_462/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_462/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_sliceStridedSlicelstm_462/Shape:output:0%lstm_462/strided_slice/stack:output:0'lstm_462/strided_slice/stack_1:output:0'lstm_462/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_462/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_462/zeros/packedPacklstm_462/strided_slice:output:0 lstm_462/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_462/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_462/zerosFilllstm_462/zeros/packed:output:0lstm_462/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_462/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_462/zeros_1/packedPacklstm_462/strided_slice:output:0"lstm_462/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_462/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_462/zeros_1Fill lstm_462/zeros_1/packed:output:0lstm_462/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_462/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_462/transpose	Transposeinputs lstm_462/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_462/Shape_1Shapelstm_462/transpose:y:0*
T0*
_output_shapes
:h
lstm_462/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_462/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_1StridedSlicelstm_462/Shape_1:output:0'lstm_462/strided_slice_1/stack:output:0)lstm_462/strided_slice_1/stack_1:output:0)lstm_462/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_462/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_462/TensorArrayV2TensorListReserve-lstm_462/TensorArrayV2/element_shape:output:0!lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_462/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_462/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_462/transpose:y:0Glstm_462/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_462/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_462/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_2StridedSlicelstm_462/transpose:y:0'lstm_462/strided_slice_2/stack:output:0)lstm_462/strided_slice_2/stack_1:output:0)lstm_462/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_462/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp5lstm_462_lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_462/lstm_cell_411/MatMulMatMul!lstm_462/strided_slice_2:output:04lstm_462/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_462/lstm_cell_411/MatMul_1MatMullstm_462/zeros:output:06lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_462/lstm_cell_411/addAddV2'lstm_462/lstm_cell_411/MatMul:product:0)lstm_462/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp6lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_462/lstm_cell_411/BiasAddBiasAddlstm_462/lstm_cell_411/add:z:05lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_462/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_462/lstm_cell_411/splitSplit/lstm_462/lstm_cell_411/split/split_dim:output:0'lstm_462/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_462/lstm_cell_411/SigmoidSigmoid%lstm_462/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_462/lstm_cell_411/Sigmoid_1Sigmoid%lstm_462/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mulMul$lstm_462/lstm_cell_411/Sigmoid_1:y:0lstm_462/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_462/lstm_cell_411/ReluRelu%lstm_462/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mul_1Mul"lstm_462/lstm_cell_411/Sigmoid:y:0)lstm_462/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/add_1AddV2lstm_462/lstm_cell_411/mul:z:0 lstm_462/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_462/lstm_cell_411/Sigmoid_2Sigmoid%lstm_462/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_462/lstm_cell_411/Relu_1Relu lstm_462/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mul_2Mul$lstm_462/lstm_cell_411/Sigmoid_2:y:0+lstm_462/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_462/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_462/TensorArrayV2_1TensorListReserve/lstm_462/TensorArrayV2_1/element_shape:output:0!lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_462/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_462/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_462/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_462/whileWhile$lstm_462/while/loop_counter:output:0*lstm_462/while/maximum_iterations:output:0lstm_462/time:output:0!lstm_462/TensorArrayV2_1:handle:0lstm_462/zeros:output:0lstm_462/zeros_1:output:0!lstm_462/strided_slice_1:output:0@lstm_462/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_462_lstm_cell_411_matmul_readvariableop_resource7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource6lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
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
lstm_462_while_body_2499881*'
condR
lstm_462_while_cond_2499880*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_462/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_462/TensorArrayV2Stack/TensorListStackTensorListStacklstm_462/while:output:3Blstm_462/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_462/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_462/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_3StridedSlice4lstm_462/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_462/strided_slice_3/stack:output:0)lstm_462/strided_slice_3/stack_1:output:0)lstm_462/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_462/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_462/transpose_1	Transpose4lstm_462/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_462/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_462/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_463/ShapeShapelstm_462/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_463/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_463/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_463/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_sliceStridedSlicelstm_463/Shape:output:0%lstm_463/strided_slice/stack:output:0'lstm_463/strided_slice/stack_1:output:0'lstm_463/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_463/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_463/zeros/packedPacklstm_463/strided_slice:output:0 lstm_463/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_463/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_463/zerosFilllstm_463/zeros/packed:output:0lstm_463/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_463/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_463/zeros_1/packedPacklstm_463/strided_slice:output:0"lstm_463/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_463/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_463/zeros_1Fill lstm_463/zeros_1/packed:output:0lstm_463/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_463/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_463/transpose	Transposelstm_462/transpose_1:y:0 lstm_463/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_463/Shape_1Shapelstm_463/transpose:y:0*
T0*
_output_shapes
:h
lstm_463/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_463/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_1StridedSlicelstm_463/Shape_1:output:0'lstm_463/strided_slice_1/stack:output:0)lstm_463/strided_slice_1/stack_1:output:0)lstm_463/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_463/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_463/TensorArrayV2TensorListReserve-lstm_463/TensorArrayV2/element_shape:output:0!lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_463/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_463/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_463/transpose:y:0Glstm_463/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_463/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_463/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_2StridedSlicelstm_463/transpose:y:0'lstm_463/strided_slice_2/stack:output:0)lstm_463/strided_slice_2/stack_1:output:0)lstm_463/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_463/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp5lstm_463_lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_463/lstm_cell_412/MatMulMatMul!lstm_463/strided_slice_2:output:04lstm_463/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_463/lstm_cell_412/MatMul_1MatMullstm_463/zeros:output:06lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_463/lstm_cell_412/addAddV2'lstm_463/lstm_cell_412/MatMul:product:0)lstm_463/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp6lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_463/lstm_cell_412/BiasAddBiasAddlstm_463/lstm_cell_412/add:z:05lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_463/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_463/lstm_cell_412/splitSplit/lstm_463/lstm_cell_412/split/split_dim:output:0'lstm_463/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_463/lstm_cell_412/SigmoidSigmoid%lstm_463/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_463/lstm_cell_412/Sigmoid_1Sigmoid%lstm_463/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mulMul$lstm_463/lstm_cell_412/Sigmoid_1:y:0lstm_463/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_463/lstm_cell_412/ReluRelu%lstm_463/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mul_1Mul"lstm_463/lstm_cell_412/Sigmoid:y:0)lstm_463/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/add_1AddV2lstm_463/lstm_cell_412/mul:z:0 lstm_463/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_463/lstm_cell_412/Sigmoid_2Sigmoid%lstm_463/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_463/lstm_cell_412/Relu_1Relu lstm_463/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mul_2Mul$lstm_463/lstm_cell_412/Sigmoid_2:y:0+lstm_463/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_463/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_463/TensorArrayV2_1TensorListReserve/lstm_463/TensorArrayV2_1/element_shape:output:0!lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_463/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_463/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_463/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_463/whileWhile$lstm_463/while/loop_counter:output:0*lstm_463/while/maximum_iterations:output:0lstm_463/time:output:0!lstm_463/TensorArrayV2_1:handle:0lstm_463/zeros:output:0lstm_463/zeros_1:output:0!lstm_463/strided_slice_1:output:0@lstm_463/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_463_lstm_cell_412_matmul_readvariableop_resource7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource6lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
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
lstm_463_while_body_2500020*'
condR
lstm_463_while_cond_2500019*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_463/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_463/TensorArrayV2Stack/TensorListStackTensorListStacklstm_463/while:output:3Blstm_463/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_463/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_463/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_3StridedSlice4lstm_463/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_463/strided_slice_3/stack:output:0)lstm_463/strided_slice_3/stack_1:output:0)lstm_463/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_463/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_463/transpose_1	Transpose4lstm_463/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_463/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_463/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_464/ShapeShapelstm_463/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_464/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_464/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_464/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_sliceStridedSlicelstm_464/Shape:output:0%lstm_464/strided_slice/stack:output:0'lstm_464/strided_slice/stack_1:output:0'lstm_464/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_464/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_464/zeros/packedPacklstm_464/strided_slice:output:0 lstm_464/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_464/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_464/zerosFilllstm_464/zeros/packed:output:0lstm_464/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_464/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_464/zeros_1/packedPacklstm_464/strided_slice:output:0"lstm_464/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_464/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_464/zeros_1Fill lstm_464/zeros_1/packed:output:0lstm_464/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_464/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_464/transpose	Transposelstm_463/transpose_1:y:0 lstm_464/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_464/Shape_1Shapelstm_464/transpose:y:0*
T0*
_output_shapes
:h
lstm_464/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_464/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_1StridedSlicelstm_464/Shape_1:output:0'lstm_464/strided_slice_1/stack:output:0)lstm_464/strided_slice_1/stack_1:output:0)lstm_464/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_464/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_464/TensorArrayV2TensorListReserve-lstm_464/TensorArrayV2/element_shape:output:0!lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_464/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_464/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_464/transpose:y:0Glstm_464/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_464/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_464/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_2StridedSlicelstm_464/transpose:y:0'lstm_464/strided_slice_2/stack:output:0)lstm_464/strided_slice_2/stack_1:output:0)lstm_464/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_464/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp5lstm_464_lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_464/lstm_cell_413/MatMulMatMul!lstm_464/strided_slice_2:output:04lstm_464/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_464/lstm_cell_413/MatMul_1MatMullstm_464/zeros:output:06lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_464/lstm_cell_413/addAddV2'lstm_464/lstm_cell_413/MatMul:product:0)lstm_464/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp6lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_464/lstm_cell_413/BiasAddBiasAddlstm_464/lstm_cell_413/add:z:05lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_464/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_464/lstm_cell_413/splitSplit/lstm_464/lstm_cell_413/split/split_dim:output:0'lstm_464/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_464/lstm_cell_413/SigmoidSigmoid%lstm_464/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_464/lstm_cell_413/Sigmoid_1Sigmoid%lstm_464/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mulMul$lstm_464/lstm_cell_413/Sigmoid_1:y:0lstm_464/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_464/lstm_cell_413/ReluRelu%lstm_464/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mul_1Mul"lstm_464/lstm_cell_413/Sigmoid:y:0)lstm_464/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/add_1AddV2lstm_464/lstm_cell_413/mul:z:0 lstm_464/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_464/lstm_cell_413/Sigmoid_2Sigmoid%lstm_464/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_464/lstm_cell_413/Relu_1Relu lstm_464/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mul_2Mul$lstm_464/lstm_cell_413/Sigmoid_2:y:0+lstm_464/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_464/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_464/TensorArrayV2_1TensorListReserve/lstm_464/TensorArrayV2_1/element_shape:output:0!lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_464/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_464/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_464/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_464/whileWhile$lstm_464/while/loop_counter:output:0*lstm_464/while/maximum_iterations:output:0lstm_464/time:output:0!lstm_464/TensorArrayV2_1:handle:0lstm_464/zeros:output:0lstm_464/zeros_1:output:0!lstm_464/strided_slice_1:output:0@lstm_464/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_464_lstm_cell_413_matmul_readvariableop_resource7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource6lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
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
lstm_464_while_body_2500159*'
condR
lstm_464_while_cond_2500158*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_464/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_464/TensorArrayV2Stack/TensorListStackTensorListStacklstm_464/while:output:3Blstm_464/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_464/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_464/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_3StridedSlice4lstm_464/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_464/strided_slice_3/stack:output:0)lstm_464/strided_slice_3/stack_1:output:0)lstm_464/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_464/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_464/transpose_1	Transpose4lstm_464/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_464/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_464/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_154/MatMul/ReadVariableOpReadVariableOp(dense_154_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_154/MatMulMatMul!lstm_464/strided_slice_3:output:0'dense_154/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_154/BiasAdd/ReadVariableOpReadVariableOp)dense_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_154/BiasAddBiasAdddense_154/MatMul:product:0(dense_154/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_154/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_154/BiasAdd/ReadVariableOp ^dense_154/MatMul/ReadVariableOp.^lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp-^lstm_462/lstm_cell_411/MatMul/ReadVariableOp/^lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp^lstm_462/while.^lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp-^lstm_463/lstm_cell_412/MatMul/ReadVariableOp/^lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp^lstm_463/while.^lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp-^lstm_464/lstm_cell_413/MatMul/ReadVariableOp/^lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp^lstm_464/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_154/BiasAdd/ReadVariableOp dense_154/BiasAdd/ReadVariableOp2B
dense_154/MatMul/ReadVariableOpdense_154/MatMul/ReadVariableOp2^
-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp2\
,lstm_462/lstm_cell_411/MatMul/ReadVariableOp,lstm_462/lstm_cell_411/MatMul/ReadVariableOp2`
.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp2 
lstm_462/whilelstm_462/while2^
-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp2\
,lstm_463/lstm_cell_412/MatMul/ReadVariableOp,lstm_463/lstm_cell_412/MatMul/ReadVariableOp2`
.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp2 
lstm_463/whilelstm_463/while2^
-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp2\
,lstm_464/lstm_cell_413/MatMul/ReadVariableOp,lstm_464/lstm_cell_413/MatMul/ReadVariableOp2`
.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp2 
lstm_464/whilelstm_464/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499703
lstm_462_input#
lstm_462_2499676:	?#
lstm_462_2499678:	d?
lstm_462_2499680:	?#
lstm_463_2499683:	d?#
lstm_463_2499685:	2?
lstm_463_2499687:	?"
lstm_464_2499690:2("
lstm_464_2499692:
(
lstm_464_2499694:(#
dense_154_2499697:

dense_154_2499699:
identity??!dense_154/StatefulPartitionedCall? lstm_462/StatefulPartitionedCall? lstm_463/StatefulPartitionedCall? lstm_464/StatefulPartitionedCall?
 lstm_462/StatefulPartitionedCallStatefulPartitionedCalllstm_462_inputlstm_462_2499676lstm_462_2499678lstm_462_2499680*
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2498707?
 lstm_463/StatefulPartitionedCallStatefulPartitionedCall)lstm_462/StatefulPartitionedCall:output:0lstm_463_2499683lstm_463_2499685lstm_463_2499687*
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498857?
 lstm_464/StatefulPartitionedCallStatefulPartitionedCall)lstm_463/StatefulPartitionedCall:output:0lstm_464_2499690lstm_464_2499692lstm_464_2499694*
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499007?
!dense_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_464/StatefulPartitionedCall:output:0dense_154_2499697dense_154_2499699*
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025y
IdentityIdentity*dense_154/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_154/StatefulPartitionedCall!^lstm_462/StatefulPartitionedCall!^lstm_463/StatefulPartitionedCall!^lstm_464/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2D
 lstm_462/StatefulPartitionedCall lstm_462/StatefulPartitionedCall2D
 lstm_463/StatefulPartitionedCall lstm_463/StatefulPartitionedCall2D
 lstm_464/StatefulPartitionedCall lstm_464/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_462_input
?
?
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2498071

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
while_cond_2499468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2499468___redundant_placeholder05
1while_while_cond_2499468___redundant_placeholder15
1while_while_cond_2499468___redundant_placeholder25
1while_while_cond_2499468___redundant_placeholder3
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
/__inference_lstm_cell_412_layer_call_fn_2502658

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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2497925o
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499733
lstm_462_input#
lstm_462_2499706:	?#
lstm_462_2499708:	d?
lstm_462_2499710:	?#
lstm_463_2499713:	d?#
lstm_463_2499715:	2?
lstm_463_2499717:	?"
lstm_464_2499720:2("
lstm_464_2499722:
(
lstm_464_2499724:(#
dense_154_2499727:

dense_154_2499729:
identity??!dense_154/StatefulPartitionedCall? lstm_462/StatefulPartitionedCall? lstm_463/StatefulPartitionedCall? lstm_464/StatefulPartitionedCall?
 lstm_462/StatefulPartitionedCallStatefulPartitionedCalllstm_462_inputlstm_462_2499706lstm_462_2499708lstm_462_2499710*
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2499553?
 lstm_463/StatefulPartitionedCallStatefulPartitionedCall)lstm_462/StatefulPartitionedCall:output:0lstm_463_2499713lstm_463_2499715lstm_463_2499717*
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2499388?
 lstm_464/StatefulPartitionedCallStatefulPartitionedCall)lstm_463/StatefulPartitionedCall:output:0lstm_464_2499720lstm_464_2499722lstm_464_2499724*
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499223?
!dense_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_464/StatefulPartitionedCall:output:0dense_154_2499727dense_154_2499729*
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025y
IdentityIdentity*dense_154/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_154/StatefulPartitionedCall!^lstm_462/StatefulPartitionedCall!^lstm_463/StatefulPartitionedCall!^lstm_464/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2D
 lstm_462/StatefulPartitionedCall lstm_462/StatefulPartitionedCall2D
 lstm_463/StatefulPartitionedCall lstm_463/StatefulPartitionedCall2D
 lstm_464/StatefulPartitionedCall lstm_464/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_462_input
?
?
while_cond_2498922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498922___redundant_placeholder05
1while_while_cond_2498922___redundant_placeholder15
1while_while_cond_2498922___redundant_placeholder25
1while_while_cond_2498922___redundant_placeholder3
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502238
inputs_0>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2502154*
condR
while_cond_2502153*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_462_layer_call_fn_2500687
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2497658|
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
?
?
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499621

inputs#
lstm_462_2499594:	?#
lstm_462_2499596:	d?
lstm_462_2499598:	?#
lstm_463_2499601:	d?#
lstm_463_2499603:	2?
lstm_463_2499605:	?"
lstm_464_2499608:2("
lstm_464_2499610:
(
lstm_464_2499612:(#
dense_154_2499615:

dense_154_2499617:
identity??!dense_154/StatefulPartitionedCall? lstm_462/StatefulPartitionedCall? lstm_463/StatefulPartitionedCall? lstm_464/StatefulPartitionedCall?
 lstm_462/StatefulPartitionedCallStatefulPartitionedCallinputslstm_462_2499594lstm_462_2499596lstm_462_2499598*
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2499553?
 lstm_463/StatefulPartitionedCallStatefulPartitionedCall)lstm_462/StatefulPartitionedCall:output:0lstm_463_2499601lstm_463_2499603lstm_463_2499605*
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2499388?
 lstm_464/StatefulPartitionedCallStatefulPartitionedCall)lstm_463/StatefulPartitionedCall:output:0lstm_464_2499608lstm_464_2499610lstm_464_2499612*
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499223?
!dense_154/StatefulPartitionedCallStatefulPartitionedCall)lstm_464/StatefulPartitionedCall:output:0dense_154_2499615dense_154_2499617*
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025y
IdentityIdentity*dense_154/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_154/StatefulPartitionedCall!^lstm_462/StatefulPartitionedCall!^lstm_463/StatefulPartitionedCall!^lstm_464/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2D
 lstm_462/StatefulPartitionedCall lstm_462/StatefulPartitionedCall2D
 lstm_463/StatefulPartitionedCall lstm_463/StatefulPartitionedCall2D
 lstm_464/StatefulPartitionedCall lstm_464/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2499304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_462_layer_call_fn_2500720

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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2499553s
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
?
?
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502609

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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499007

inputs>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2498923*
condR
while_cond_2498922*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2498129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498129___redundant_placeholder05
1while_while_cond_2498129___redundant_placeholder15
1while_while_cond_2498129___redundant_placeholder25
1while_while_cond_2498129___redundant_placeholder3
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
while_cond_2497938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2497938___redundant_placeholder05
1while_while_cond_2497938___redundant_placeholder15
1while_while_cond_2497938___redundant_placeholder25
1while_while_cond_2497938___redundant_placeholder3
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
*__inference_lstm_464_layer_call_fn_2501941

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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499007o
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

lstm_462_while_body_2499881.
*lstm_462_while_lstm_462_while_loop_counter4
0lstm_462_while_lstm_462_while_maximum_iterations
lstm_462_while_placeholder 
lstm_462_while_placeholder_1 
lstm_462_while_placeholder_2 
lstm_462_while_placeholder_3-
)lstm_462_while_lstm_462_strided_slice_1_0i
elstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0:	?R
?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?M
>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
lstm_462_while_identity
lstm_462_while_identity_1
lstm_462_while_identity_2
lstm_462_while_identity_3
lstm_462_while_identity_4
lstm_462_while_identity_5+
'lstm_462_while_lstm_462_strided_slice_1g
clstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensorN
;lstm_462_while_lstm_cell_411_matmul_readvariableop_resource:	?P
=lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource:	d?K
<lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource:	???3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp?2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp?4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp?
@lstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_462/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0lstm_462_while_placeholderIlstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_462/while/lstm_cell_411/MatMulMatMul9lstm_462/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_462/while/lstm_cell_411/MatMul_1MatMullstm_462_while_placeholder_2<lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_462/while/lstm_cell_411/addAddV2-lstm_462/while/lstm_cell_411/MatMul:product:0/lstm_462/while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_462/while/lstm_cell_411/BiasAddBiasAdd$lstm_462/while/lstm_cell_411/add:z:0;lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_462/while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_462/while/lstm_cell_411/splitSplit5lstm_462/while/lstm_cell_411/split/split_dim:output:0-lstm_462/while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_462/while/lstm_cell_411/SigmoidSigmoid+lstm_462/while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_462/while/lstm_cell_411/Sigmoid_1Sigmoid+lstm_462/while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_462/while/lstm_cell_411/mulMul*lstm_462/while/lstm_cell_411/Sigmoid_1:y:0lstm_462_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_462/while/lstm_cell_411/ReluRelu+lstm_462/while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/mul_1Mul(lstm_462/while/lstm_cell_411/Sigmoid:y:0/lstm_462/while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/add_1AddV2$lstm_462/while/lstm_cell_411/mul:z:0&lstm_462/while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_462/while/lstm_cell_411/Sigmoid_2Sigmoid+lstm_462/while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_462/while/lstm_cell_411/Relu_1Relu&lstm_462/while/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/mul_2Mul*lstm_462/while/lstm_cell_411/Sigmoid_2:y:01lstm_462/while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_462/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_462_while_placeholder_1lstm_462_while_placeholder&lstm_462/while/lstm_cell_411/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_462/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_462/while/addAddV2lstm_462_while_placeholderlstm_462/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_462/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_462/while/add_1AddV2*lstm_462_while_lstm_462_while_loop_counterlstm_462/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_462/while/IdentityIdentitylstm_462/while/add_1:z:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_1Identity0lstm_462_while_lstm_462_while_maximum_iterations^lstm_462/while/NoOp*
T0*
_output_shapes
: t
lstm_462/while/Identity_2Identitylstm_462/while/add:z:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_3IdentityClstm_462/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_4Identity&lstm_462/while/lstm_cell_411/mul_2:z:0^lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_462/while/Identity_5Identity&lstm_462/while/lstm_cell_411/add_1:z:0^lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_462/while/NoOpNoOp4^lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp3^lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp5^lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_462_while_identity lstm_462/while/Identity:output:0"?
lstm_462_while_identity_1"lstm_462/while/Identity_1:output:0"?
lstm_462_while_identity_2"lstm_462/while/Identity_2:output:0"?
lstm_462_while_identity_3"lstm_462/while/Identity_3:output:0"?
lstm_462_while_identity_4"lstm_462/while/Identity_4:output:0"?
lstm_462_while_identity_5"lstm_462/while/Identity_5:output:0"T
'lstm_462_while_lstm_462_strided_slice_1)lstm_462_while_lstm_462_strided_slice_1_0"~
<lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0"?
=lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0"|
;lstm_462_while_lstm_cell_411_matmul_readvariableop_resource=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0"?
clstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensorelstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp2h
2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp2l
4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2497779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2497779___redundant_placeholder05
1while_while_cond_2497779___redundant_placeholder15
1while_while_cond_2497779___redundant_placeholder25
1while_while_cond_2497779___redundant_placeholder3
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
*sequential_154_lstm_463_while_body_2497279L
Hsequential_154_lstm_463_while_sequential_154_lstm_463_while_loop_counterR
Nsequential_154_lstm_463_while_sequential_154_lstm_463_while_maximum_iterations-
)sequential_154_lstm_463_while_placeholder/
+sequential_154_lstm_463_while_placeholder_1/
+sequential_154_lstm_463_while_placeholder_2/
+sequential_154_lstm_463_while_placeholder_3K
Gsequential_154_lstm_463_while_sequential_154_lstm_463_strided_slice_1_0?
?sequential_154_lstm_463_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_463_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_154_lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0:	d?a
Nsequential_154_lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?\
Msequential_154_lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0:	?*
&sequential_154_lstm_463_while_identity,
(sequential_154_lstm_463_while_identity_1,
(sequential_154_lstm_463_while_identity_2,
(sequential_154_lstm_463_while_identity_3,
(sequential_154_lstm_463_while_identity_4,
(sequential_154_lstm_463_while_identity_5I
Esequential_154_lstm_463_while_sequential_154_lstm_463_strided_slice_1?
?sequential_154_lstm_463_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_463_tensorarrayunstack_tensorlistfromtensor]
Jsequential_154_lstm_463_while_lstm_cell_412_matmul_readvariableop_resource:	d?_
Lsequential_154_lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource:	2?Z
Ksequential_154_lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource:	???Bsequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp?Asequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp?Csequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp?
Osequential_154/lstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_154/lstm_463/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_154_lstm_463_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_463_tensorarrayunstack_tensorlistfromtensor_0)sequential_154_lstm_463_while_placeholderXsequential_154/lstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOpLsequential_154_lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_154/lstm_463/while/lstm_cell_412/MatMulMatMulHsequential_154/lstm_463/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOpNsequential_154_lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_154/lstm_463/while/lstm_cell_412/MatMul_1MatMul+sequential_154_lstm_463_while_placeholder_2Ksequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_154/lstm_463/while/lstm_cell_412/addAddV2<sequential_154/lstm_463/while/lstm_cell_412/MatMul:product:0>sequential_154/lstm_463/while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOpMsequential_154_lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_154/lstm_463/while/lstm_cell_412/BiasAddBiasAdd3sequential_154/lstm_463/while/lstm_cell_412/add:z:0Jsequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_154/lstm_463/while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_154/lstm_463/while/lstm_cell_412/splitSplitDsequential_154/lstm_463/while/lstm_cell_412/split/split_dim:output:0<sequential_154/lstm_463/while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_154/lstm_463/while/lstm_cell_412/SigmoidSigmoid:sequential_154/lstm_463/while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_154/lstm_463/while/lstm_cell_412/Sigmoid_1Sigmoid:sequential_154/lstm_463/while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_154/lstm_463/while/lstm_cell_412/mulMul9sequential_154/lstm_463/while/lstm_cell_412/Sigmoid_1:y:0+sequential_154_lstm_463_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_154/lstm_463/while/lstm_cell_412/ReluRelu:sequential_154/lstm_463/while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_154/lstm_463/while/lstm_cell_412/mul_1Mul7sequential_154/lstm_463/while/lstm_cell_412/Sigmoid:y:0>sequential_154/lstm_463/while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_154/lstm_463/while/lstm_cell_412/add_1AddV23sequential_154/lstm_463/while/lstm_cell_412/mul:z:05sequential_154/lstm_463/while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_154/lstm_463/while/lstm_cell_412/Sigmoid_2Sigmoid:sequential_154/lstm_463/while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_154/lstm_463/while/lstm_cell_412/Relu_1Relu5sequential_154/lstm_463/while/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_154/lstm_463/while/lstm_cell_412/mul_2Mul9sequential_154/lstm_463/while/lstm_cell_412/Sigmoid_2:y:0@sequential_154/lstm_463/while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_154/lstm_463/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_154_lstm_463_while_placeholder_1)sequential_154_lstm_463_while_placeholder5sequential_154/lstm_463/while/lstm_cell_412/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_154/lstm_463/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_154/lstm_463/while/addAddV2)sequential_154_lstm_463_while_placeholder,sequential_154/lstm_463/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_154/lstm_463/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_154/lstm_463/while/add_1AddV2Hsequential_154_lstm_463_while_sequential_154_lstm_463_while_loop_counter.sequential_154/lstm_463/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_154/lstm_463/while/IdentityIdentity'sequential_154/lstm_463/while/add_1:z:0#^sequential_154/lstm_463/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_463/while/Identity_1IdentityNsequential_154_lstm_463_while_sequential_154_lstm_463_while_maximum_iterations#^sequential_154/lstm_463/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_463/while/Identity_2Identity%sequential_154/lstm_463/while/add:z:0#^sequential_154/lstm_463/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_463/while/Identity_3IdentityRsequential_154/lstm_463/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_154/lstm_463/while/NoOp*
T0*
_output_shapes
: ?
(sequential_154/lstm_463/while/Identity_4Identity5sequential_154/lstm_463/while/lstm_cell_412/mul_2:z:0#^sequential_154/lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_154/lstm_463/while/Identity_5Identity5sequential_154/lstm_463/while/lstm_cell_412/add_1:z:0#^sequential_154/lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_154/lstm_463/while/NoOpNoOpC^sequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOpB^sequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOpD^sequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_154_lstm_463_while_identity/sequential_154/lstm_463/while/Identity:output:0"]
(sequential_154_lstm_463_while_identity_11sequential_154/lstm_463/while/Identity_1:output:0"]
(sequential_154_lstm_463_while_identity_21sequential_154/lstm_463/while/Identity_2:output:0"]
(sequential_154_lstm_463_while_identity_31sequential_154/lstm_463/while/Identity_3:output:0"]
(sequential_154_lstm_463_while_identity_41sequential_154/lstm_463/while/Identity_4:output:0"]
(sequential_154_lstm_463_while_identity_51sequential_154/lstm_463/while/Identity_5:output:0"?
Ksequential_154_lstm_463_while_lstm_cell_412_biasadd_readvariableop_resourceMsequential_154_lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0"?
Lsequential_154_lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resourceNsequential_154_lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0"?
Jsequential_154_lstm_463_while_lstm_cell_412_matmul_readvariableop_resourceLsequential_154_lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0"?
Esequential_154_lstm_463_while_sequential_154_lstm_463_strided_slice_1Gsequential_154_lstm_463_while_sequential_154_lstm_463_strided_slice_1_0"?
?sequential_154_lstm_463_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_463_tensorarrayunstack_tensorlistfromtensor?sequential_154_lstm_463_while_tensorarrayv2read_tensorlistgetitem_sequential_154_lstm_463_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOpBsequential_154/lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp2?
Asequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOpAsequential_154/lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp2?
Csequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOpCsequential_154/lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_464_layer_call_fn_2501919
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2498358o
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
while_body_2501395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2501681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2502543

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
?
*sequential_154_lstm_463_while_cond_2497278L
Hsequential_154_lstm_463_while_sequential_154_lstm_463_while_loop_counterR
Nsequential_154_lstm_463_while_sequential_154_lstm_463_while_maximum_iterations-
)sequential_154_lstm_463_while_placeholder/
+sequential_154_lstm_463_while_placeholder_1/
+sequential_154_lstm_463_while_placeholder_2/
+sequential_154_lstm_463_while_placeholder_3N
Jsequential_154_lstm_463_while_less_sequential_154_lstm_463_strided_slice_1e
asequential_154_lstm_463_while_sequential_154_lstm_463_while_cond_2497278___redundant_placeholder0e
asequential_154_lstm_463_while_sequential_154_lstm_463_while_cond_2497278___redundant_placeholder1e
asequential_154_lstm_463_while_sequential_154_lstm_463_while_cond_2497278___redundant_placeholder2e
asequential_154_lstm_463_while_sequential_154_lstm_463_while_cond_2497278___redundant_placeholder3*
&sequential_154_lstm_463_while_identity
?
"sequential_154/lstm_463/while/LessLess)sequential_154_lstm_463_while_placeholderJsequential_154_lstm_463_while_less_sequential_154_lstm_463_strided_slice_1*
T0*
_output_shapes
: {
&sequential_154/lstm_463/while/IdentityIdentity&sequential_154/lstm_463/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_154_lstm_463_while_identity/sequential_154/lstm_463/while/Identity:output:0*(
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
while_cond_2500921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2500921___redundant_placeholder05
1while_while_cond_2500921___redundant_placeholder15
1while_while_cond_2500921___redundant_placeholder25
1while_while_cond_2500921___redundant_placeholder3
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
while_body_2500779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2498622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498622___redundant_placeholder05
1while_while_cond_2498622___redundant_placeholder15
1while_while_cond_2498622___redundant_placeholder25
1while_while_cond_2498622___redundant_placeholder3
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2498549

inputs'
lstm_cell_413_2498467:2('
lstm_cell_413_2498469:
(#
lstm_cell_413_2498471:(
identity??%lstm_cell_413/StatefulPartitionedCall?while;
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
%lstm_cell_413/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_413_2498467lstm_cell_413_2498469lstm_cell_413_2498471*
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498421n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_413_2498467lstm_cell_413_2498469lstm_cell_413_2498471*
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
while_body_2498480*
condR
while_cond_2498479*K
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
NoOpNoOp&^lstm_cell_413/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_413/StatefulPartitionedCall%lstm_cell_413/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_2498289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_413_2498313_0:2(/
while_lstm_cell_413_2498315_0:
(+
while_lstm_cell_413_2498317_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_413_2498313:2(-
while_lstm_cell_413_2498315:
()
while_lstm_cell_413_2498317:(??+while/lstm_cell_413/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_413/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_413_2498313_0while_lstm_cell_413_2498315_0while_lstm_cell_413_2498317_0*
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498275?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_413/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_413/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_413/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_413_2498313while_lstm_cell_413_2498313_0"<
while_lstm_cell_413_2498315while_lstm_cell_413_2498315_0"<
while_lstm_cell_413_2498317while_lstm_cell_413_2498317_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_413/StatefulPartitionedCall+while/lstm_cell_413/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2498130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_412_2498154_0:	d?0
while_lstm_cell_412_2498156_0:	2?,
while_lstm_cell_412_2498158_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_412_2498154:	d?.
while_lstm_cell_412_2498156:	2?*
while_lstm_cell_412_2498158:	???+while/lstm_cell_412/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_412/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_412_2498154_0while_lstm_cell_412_2498156_0while_lstm_cell_412_2498158_0*
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2498071?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_412/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_412/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_412/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_412/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_412_2498154while_lstm_cell_412_2498154_0"<
while_lstm_cell_412_2498156while_lstm_cell_412_2498156_0"<
while_lstm_cell_412_2498158while_lstm_cell_412_2498158_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_412/StatefulPartitionedCall+while/lstm_cell_412/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501908

inputs?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2501824*
condR
while_cond_2501823*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_2503110
file_prefix3
!assignvariableop_dense_154_kernel:
/
!assignvariableop_1_dense_154_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_462_lstm_cell_462_kernel:	?M
:assignvariableop_8_lstm_462_lstm_cell_462_recurrent_kernel:	d?=
.assignvariableop_9_lstm_462_lstm_cell_462_bias:	?D
1assignvariableop_10_lstm_463_lstm_cell_463_kernel:	d?N
;assignvariableop_11_lstm_463_lstm_cell_463_recurrent_kernel:	2?>
/assignvariableop_12_lstm_463_lstm_cell_463_bias:	?C
1assignvariableop_13_lstm_464_lstm_cell_464_kernel:2(M
;assignvariableop_14_lstm_464_lstm_cell_464_recurrent_kernel:
(=
/assignvariableop_15_lstm_464_lstm_cell_464_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_154_kernel_m:
7
)assignvariableop_19_adam_dense_154_bias_m:K
8assignvariableop_20_adam_lstm_462_lstm_cell_462_kernel_m:	?U
Bassignvariableop_21_adam_lstm_462_lstm_cell_462_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_462_lstm_cell_462_bias_m:	?K
8assignvariableop_23_adam_lstm_463_lstm_cell_463_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_463_lstm_cell_463_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_463_lstm_cell_463_bias_m:	?J
8assignvariableop_26_adam_lstm_464_lstm_cell_464_kernel_m:2(T
Bassignvariableop_27_adam_lstm_464_lstm_cell_464_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_464_lstm_cell_464_bias_m:(=
+assignvariableop_29_adam_dense_154_kernel_v:
7
)assignvariableop_30_adam_dense_154_bias_v:K
8assignvariableop_31_adam_lstm_462_lstm_cell_462_kernel_v:	?U
Bassignvariableop_32_adam_lstm_462_lstm_cell_462_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_462_lstm_cell_462_bias_v:	?K
8assignvariableop_34_adam_lstm_463_lstm_cell_463_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_463_lstm_cell_463_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_463_lstm_cell_463_bias_v:	?J
8assignvariableop_37_adam_lstm_464_lstm_cell_464_kernel_v:2(T
Bassignvariableop_38_adam_lstm_464_lstm_cell_464_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_464_lstm_cell_464_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_154_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_154_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_462_lstm_cell_462_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_462_lstm_cell_462_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_462_lstm_cell_462_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_463_lstm_cell_463_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_463_lstm_cell_463_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_463_lstm_cell_463_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_464_lstm_cell_464_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_464_lstm_cell_464_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_464_lstm_cell_464_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_154_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_154_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_462_lstm_cell_462_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_462_lstm_cell_462_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_462_lstm_cell_462_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_463_lstm_cell_463_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_463_lstm_cell_463_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_463_lstm_cell_463_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_464_lstm_cell_464_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_464_lstm_cell_464_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_464_lstm_cell_464_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_154_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_154_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_462_lstm_cell_462_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_462_lstm_cell_462_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_462_lstm_cell_462_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_463_lstm_cell_463_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_463_lstm_cell_463_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_463_lstm_cell_463_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_464_lstm_cell_464_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_464_lstm_cell_464_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_464_lstm_cell_464_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
*__inference_lstm_464_layer_call_fn_2501930
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2498549o
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
while_cond_2498288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498288___redundant_placeholder05
1while_while_cond_2498288___redundant_placeholder15
1while_while_cond_2498288___redundant_placeholder25
1while_while_cond_2498288___redundant_placeholder3
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498857

inputs?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2498773*
condR
while_cond_2498772*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501479
inputs_0?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2501395*
condR
while_cond_2501394*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498421

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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501292

inputs?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2501208*
condR
while_cond_2501207*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_463_layer_call_and_return_conditional_losses_2499388

inputs?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2499304*
condR
while_cond_2499303*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_463_layer_call_fn_2501325

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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498857s
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
while_cond_2498479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498479___redundant_placeholder05
1while_while_cond_2498479___redundant_placeholder15
1while_while_cond_2498479___redundant_placeholder25
1while_while_cond_2498479___redundant_placeholder3
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
while_cond_2501394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501394___redundant_placeholder05
1while_while_cond_2501394___redundant_placeholder15
1while_while_cond_2501394___redundant_placeholder25
1while_while_cond_2501394___redundant_placeholder3
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502739

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
while_body_2498923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2500863
inputs_0?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2500779*
condR
while_cond_2500778*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2502297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_412_layer_call_fn_2502675

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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2498071o
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502524

inputs>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2502440*
condR
while_cond_2502439*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502837

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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502805

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
?C
?

lstm_463_while_body_2500447.
*lstm_463_while_lstm_463_while_loop_counter4
0lstm_463_while_lstm_463_while_maximum_iterations
lstm_463_while_placeholder 
lstm_463_while_placeholder_1 
lstm_463_while_placeholder_2 
lstm_463_while_placeholder_3-
)lstm_463_while_lstm_463_strided_slice_1_0i
elstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0:	d?R
?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?M
>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
lstm_463_while_identity
lstm_463_while_identity_1
lstm_463_while_identity_2
lstm_463_while_identity_3
lstm_463_while_identity_4
lstm_463_while_identity_5+
'lstm_463_while_lstm_463_strided_slice_1g
clstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensorN
;lstm_463_while_lstm_cell_412_matmul_readvariableop_resource:	d?P
=lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource:	2?K
<lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource:	???3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp?2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp?4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp?
@lstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_463/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0lstm_463_while_placeholderIlstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_463/while/lstm_cell_412/MatMulMatMul9lstm_463/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_463/while/lstm_cell_412/MatMul_1MatMullstm_463_while_placeholder_2<lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_463/while/lstm_cell_412/addAddV2-lstm_463/while/lstm_cell_412/MatMul:product:0/lstm_463/while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_463/while/lstm_cell_412/BiasAddBiasAdd$lstm_463/while/lstm_cell_412/add:z:0;lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_463/while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_463/while/lstm_cell_412/splitSplit5lstm_463/while/lstm_cell_412/split/split_dim:output:0-lstm_463/while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_463/while/lstm_cell_412/SigmoidSigmoid+lstm_463/while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_463/while/lstm_cell_412/Sigmoid_1Sigmoid+lstm_463/while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_463/while/lstm_cell_412/mulMul*lstm_463/while/lstm_cell_412/Sigmoid_1:y:0lstm_463_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_463/while/lstm_cell_412/ReluRelu+lstm_463/while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/mul_1Mul(lstm_463/while/lstm_cell_412/Sigmoid:y:0/lstm_463/while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/add_1AddV2$lstm_463/while/lstm_cell_412/mul:z:0&lstm_463/while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_463/while/lstm_cell_412/Sigmoid_2Sigmoid+lstm_463/while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_463/while/lstm_cell_412/Relu_1Relu&lstm_463/while/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/mul_2Mul*lstm_463/while/lstm_cell_412/Sigmoid_2:y:01lstm_463/while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_463/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_463_while_placeholder_1lstm_463_while_placeholder&lstm_463/while/lstm_cell_412/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_463/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_463/while/addAddV2lstm_463_while_placeholderlstm_463/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_463/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_463/while/add_1AddV2*lstm_463_while_lstm_463_while_loop_counterlstm_463/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_463/while/IdentityIdentitylstm_463/while/add_1:z:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_1Identity0lstm_463_while_lstm_463_while_maximum_iterations^lstm_463/while/NoOp*
T0*
_output_shapes
: t
lstm_463/while/Identity_2Identitylstm_463/while/add:z:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_3IdentityClstm_463/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_4Identity&lstm_463/while/lstm_cell_412/mul_2:z:0^lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_463/while/Identity_5Identity&lstm_463/while/lstm_cell_412/add_1:z:0^lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_463/while/NoOpNoOp4^lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp3^lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp5^lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_463_while_identity lstm_463/while/Identity:output:0"?
lstm_463_while_identity_1"lstm_463/while/Identity_1:output:0"?
lstm_463_while_identity_2"lstm_463/while/Identity_2:output:0"?
lstm_463_while_identity_3"lstm_463/while/Identity_3:output:0"?
lstm_463_while_identity_4"lstm_463/while/Identity_4:output:0"?
lstm_463_while_identity_5"lstm_463/while/Identity_5:output:0"T
'lstm_463_while_lstm_463_strided_slice_1)lstm_463_while_lstm_463_strided_slice_1_0"~
<lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0"?
=lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0"|
;lstm_463_while_lstm_cell_412_matmul_readvariableop_resource=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0"?
clstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensorelstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp2h
2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp2l
4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497575

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
while_body_2500922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2498008

inputs(
lstm_cell_412_2497926:	d?(
lstm_cell_412_2497928:	2?$
lstm_cell_412_2497930:	?
identity??%lstm_cell_412/StatefulPartitionedCall?while;
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
%lstm_cell_412/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_412_2497926lstm_cell_412_2497928lstm_cell_412_2497930*
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2497925n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_412_2497926lstm_cell_412_2497928lstm_cell_412_2497930*
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
while_body_2497939*
condR
while_cond_2497938*K
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
NoOpNoOp&^lstm_cell_412/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_412/StatefulPartitionedCall%lstm_cell_412/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2501680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501680___redundant_placeholder05
1while_while_cond_2501680___redundant_placeholder15
1while_while_cond_2501680___redundant_placeholder25
1while_while_cond_2501680___redundant_placeholder3
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
?
E__inference_lstm_464_layer_call_and_return_conditional_losses_2498358

inputs'
lstm_cell_413_2498276:2('
lstm_cell_413_2498278:
(#
lstm_cell_413_2498280:(
identity??%lstm_cell_413/StatefulPartitionedCall?while;
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
%lstm_cell_413/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_413_2498276lstm_cell_413_2498278lstm_cell_413_2498280*
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498275n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_413_2498276lstm_cell_413_2498278lstm_cell_413_2498280*
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
while_body_2498289*
condR
while_cond_2498288*K
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
NoOpNoOp&^lstm_cell_413/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_413/StatefulPartitionedCall%lstm_cell_413/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_154_layer_call_fn_2499795

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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499032o
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502641

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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502381

inputs>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2502297*
condR
while_cond_2502296*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2497939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_412_2497963_0:	d?0
while_lstm_cell_412_2497965_0:	2?,
while_lstm_cell_412_2497967_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_412_2497963:	d?.
while_lstm_cell_412_2497965:	2?*
while_lstm_cell_412_2497967:	???+while/lstm_cell_412/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_412/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_412_2497963_0while_lstm_cell_412_2497965_0while_lstm_cell_412_2497967_0*
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2497925?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_412/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_412/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_412/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_412/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_412_2497963while_lstm_cell_412_2497963_0"<
while_lstm_cell_412_2497965while_lstm_cell_412_2497965_0"<
while_lstm_cell_412_2497967while_lstm_cell_412_2497967_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_412/StatefulPartitionedCall+while/lstm_cell_412/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_462_layer_call_fn_2500709

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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2498707s
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
+__inference_dense_154_layer_call_fn_2502533

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
F__inference_dense_154_layer_call_and_return_conditional_losses_2499025o
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
?
E__inference_lstm_462_layer_call_and_return_conditional_losses_2497849

inputs(
lstm_cell_411_2497767:	?(
lstm_cell_411_2497769:	d?$
lstm_cell_411_2497771:	?
identity??%lstm_cell_411/StatefulPartitionedCall?while;
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
%lstm_cell_411/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_411_2497767lstm_cell_411_2497769lstm_cell_411_2497771*
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497721n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_411_2497767lstm_cell_411_2497769lstm_cell_411_2497771*
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
while_body_2497780*
condR
while_cond_2497779*K
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
NoOpNoOp&^lstm_cell_411/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_411/StatefulPartitionedCall%lstm_cell_411/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_2502154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_463_while_body_2500020.
*lstm_463_while_lstm_463_while_loop_counter4
0lstm_463_while_lstm_463_while_maximum_iterations
lstm_463_while_placeholder 
lstm_463_while_placeholder_1 
lstm_463_while_placeholder_2 
lstm_463_while_placeholder_3-
)lstm_463_while_lstm_463_strided_slice_1_0i
elstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0:	d?R
?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?M
>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
lstm_463_while_identity
lstm_463_while_identity_1
lstm_463_while_identity_2
lstm_463_while_identity_3
lstm_463_while_identity_4
lstm_463_while_identity_5+
'lstm_463_while_lstm_463_strided_slice_1g
clstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensorN
;lstm_463_while_lstm_cell_412_matmul_readvariableop_resource:	d?P
=lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource:	2?K
<lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource:	???3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp?2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp?4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp?
@lstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_463/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0lstm_463_while_placeholderIlstm_463/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_463/while/lstm_cell_412/MatMulMatMul9lstm_463/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_463/while/lstm_cell_412/MatMul_1MatMullstm_463_while_placeholder_2<lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_463/while/lstm_cell_412/addAddV2-lstm_463/while/lstm_cell_412/MatMul:product:0/lstm_463/while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_463/while/lstm_cell_412/BiasAddBiasAdd$lstm_463/while/lstm_cell_412/add:z:0;lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_463/while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_463/while/lstm_cell_412/splitSplit5lstm_463/while/lstm_cell_412/split/split_dim:output:0-lstm_463/while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_463/while/lstm_cell_412/SigmoidSigmoid+lstm_463/while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_463/while/lstm_cell_412/Sigmoid_1Sigmoid+lstm_463/while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_463/while/lstm_cell_412/mulMul*lstm_463/while/lstm_cell_412/Sigmoid_1:y:0lstm_463_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_463/while/lstm_cell_412/ReluRelu+lstm_463/while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/mul_1Mul(lstm_463/while/lstm_cell_412/Sigmoid:y:0/lstm_463/while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/add_1AddV2$lstm_463/while/lstm_cell_412/mul:z:0&lstm_463/while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_463/while/lstm_cell_412/Sigmoid_2Sigmoid+lstm_463/while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_463/while/lstm_cell_412/Relu_1Relu&lstm_463/while/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_463/while/lstm_cell_412/mul_2Mul*lstm_463/while/lstm_cell_412/Sigmoid_2:y:01lstm_463/while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_463/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_463_while_placeholder_1lstm_463_while_placeholder&lstm_463/while/lstm_cell_412/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_463/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_463/while/addAddV2lstm_463_while_placeholderlstm_463/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_463/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_463/while/add_1AddV2*lstm_463_while_lstm_463_while_loop_counterlstm_463/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_463/while/IdentityIdentitylstm_463/while/add_1:z:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_1Identity0lstm_463_while_lstm_463_while_maximum_iterations^lstm_463/while/NoOp*
T0*
_output_shapes
: t
lstm_463/while/Identity_2Identitylstm_463/while/add:z:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_3IdentityClstm_463/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_463/while/NoOp*
T0*
_output_shapes
: ?
lstm_463/while/Identity_4Identity&lstm_463/while/lstm_cell_412/mul_2:z:0^lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_463/while/Identity_5Identity&lstm_463/while/lstm_cell_412/add_1:z:0^lstm_463/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_463/while/NoOpNoOp4^lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp3^lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp5^lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_463_while_identity lstm_463/while/Identity:output:0"?
lstm_463_while_identity_1"lstm_463/while/Identity_1:output:0"?
lstm_463_while_identity_2"lstm_463/while/Identity_2:output:0"?
lstm_463_while_identity_3"lstm_463/while/Identity_3:output:0"?
lstm_463_while_identity_4"lstm_463/while/Identity_4:output:0"?
lstm_463_while_identity_5"lstm_463/while/Identity_5:output:0"T
'lstm_463_while_lstm_463_strided_slice_1)lstm_463_while_lstm_463_strided_slice_1_0"~
<lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource>lstm_463_while_lstm_cell_412_biasadd_readvariableop_resource_0"?
=lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource?lstm_463_while_lstm_cell_412_matmul_1_readvariableop_resource_0"|
;lstm_463_while_lstm_cell_412_matmul_readvariableop_resource=lstm_463_while_lstm_cell_412_matmul_readvariableop_resource_0"?
clstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensorelstm_463_while_tensorarrayv2read_tensorlistgetitem_lstm_463_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp3lstm_463/while/lstm_cell_412/BiasAdd/ReadVariableOp2h
2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp2lstm_463/while/lstm_cell_412/MatMul/ReadVariableOp2l
4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp4lstm_463/while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_464_while_cond_2500158.
*lstm_464_while_lstm_464_while_loop_counter4
0lstm_464_while_lstm_464_while_maximum_iterations
lstm_464_while_placeholder 
lstm_464_while_placeholder_1 
lstm_464_while_placeholder_2 
lstm_464_while_placeholder_30
,lstm_464_while_less_lstm_464_strided_slice_1G
Clstm_464_while_lstm_464_while_cond_2500158___redundant_placeholder0G
Clstm_464_while_lstm_464_while_cond_2500158___redundant_placeholder1G
Clstm_464_while_lstm_464_while_cond_2500158___redundant_placeholder2G
Clstm_464_while_lstm_464_while_cond_2500158___redundant_placeholder3
lstm_464_while_identity
?
lstm_464/while/LessLesslstm_464_while_placeholder,lstm_464_while_less_lstm_464_strided_slice_1*
T0*
_output_shapes
: ]
lstm_464/while/IdentityIdentitylstm_464/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_464_while_identity lstm_464/while/Identity:output:0*(
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
while_body_2497780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_411_2497804_0:	?0
while_lstm_cell_411_2497806_0:	d?,
while_lstm_cell_411_2497808_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_411_2497804:	?.
while_lstm_cell_411_2497806:	d?*
while_lstm_cell_411_2497808:	???+while/lstm_cell_411/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_411/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_411_2497804_0while_lstm_cell_411_2497806_0while_lstm_cell_411_2497808_0*
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497721?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_411/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_411/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_411/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_411/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_411_2497804while_lstm_cell_411_2497804_0"<
while_lstm_cell_411_2497806while_lstm_cell_411_2497806_0"<
while_lstm_cell_411_2497808while_lstm_cell_411_2497808_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_411/StatefulPartitionedCall+while/lstm_cell_411/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_154_lstm_462_while_cond_2497139L
Hsequential_154_lstm_462_while_sequential_154_lstm_462_while_loop_counterR
Nsequential_154_lstm_462_while_sequential_154_lstm_462_while_maximum_iterations-
)sequential_154_lstm_462_while_placeholder/
+sequential_154_lstm_462_while_placeholder_1/
+sequential_154_lstm_462_while_placeholder_2/
+sequential_154_lstm_462_while_placeholder_3N
Jsequential_154_lstm_462_while_less_sequential_154_lstm_462_strided_slice_1e
asequential_154_lstm_462_while_sequential_154_lstm_462_while_cond_2497139___redundant_placeholder0e
asequential_154_lstm_462_while_sequential_154_lstm_462_while_cond_2497139___redundant_placeholder1e
asequential_154_lstm_462_while_sequential_154_lstm_462_while_cond_2497139___redundant_placeholder2e
asequential_154_lstm_462_while_sequential_154_lstm_462_while_cond_2497139___redundant_placeholder3*
&sequential_154_lstm_462_while_identity
?
"sequential_154/lstm_462/while/LessLess)sequential_154_lstm_462_while_placeholderJsequential_154_lstm_462_while_less_sequential_154_lstm_462_strided_slice_1*
T0*
_output_shapes
: {
&sequential_154/lstm_462/while/IdentityIdentity&sequential_154/lstm_462/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_154_lstm_462_while_identity/sequential_154/lstm_462/while/Identity:output:0*(
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
while_body_2498623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498275

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
while_cond_2502010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2502010___redundant_placeholder05
1while_while_cond_2502010___redundant_placeholder15
1while_while_cond_2502010___redundant_placeholder25
1while_while_cond_2502010___redundant_placeholder3
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
while_cond_2498772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2498772___redundant_placeholder05
1while_while_cond_2498772___redundant_placeholder15
1while_while_cond_2498772___redundant_placeholder25
1while_while_cond_2498772___redundant_placeholder3
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

lstm_464_while_body_2500159.
*lstm_464_while_lstm_464_while_loop_counter4
0lstm_464_while_lstm_464_while_maximum_iterations
lstm_464_while_placeholder 
lstm_464_while_placeholder_1 
lstm_464_while_placeholder_2 
lstm_464_while_placeholder_3-
)lstm_464_while_lstm_464_strided_slice_1_0i
elstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0:2(Q
?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(L
>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0:(
lstm_464_while_identity
lstm_464_while_identity_1
lstm_464_while_identity_2
lstm_464_while_identity_3
lstm_464_while_identity_4
lstm_464_while_identity_5+
'lstm_464_while_lstm_464_strided_slice_1g
clstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensorM
;lstm_464_while_lstm_cell_413_matmul_readvariableop_resource:2(O
=lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource:
(J
<lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource:(??3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp?2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp?4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp?
@lstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_464/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0lstm_464_while_placeholderIlstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_464/while/lstm_cell_413/MatMulMatMul9lstm_464/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_464/while/lstm_cell_413/MatMul_1MatMullstm_464_while_placeholder_2<lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_464/while/lstm_cell_413/addAddV2-lstm_464/while/lstm_cell_413/MatMul:product:0/lstm_464/while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_464/while/lstm_cell_413/BiasAddBiasAdd$lstm_464/while/lstm_cell_413/add:z:0;lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_464/while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_464/while/lstm_cell_413/splitSplit5lstm_464/while/lstm_cell_413/split/split_dim:output:0-lstm_464/while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_464/while/lstm_cell_413/SigmoidSigmoid+lstm_464/while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_464/while/lstm_cell_413/Sigmoid_1Sigmoid+lstm_464/while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_464/while/lstm_cell_413/mulMul*lstm_464/while/lstm_cell_413/Sigmoid_1:y:0lstm_464_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_464/while/lstm_cell_413/ReluRelu+lstm_464/while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/mul_1Mul(lstm_464/while/lstm_cell_413/Sigmoid:y:0/lstm_464/while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/add_1AddV2$lstm_464/while/lstm_cell_413/mul:z:0&lstm_464/while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_464/while/lstm_cell_413/Sigmoid_2Sigmoid+lstm_464/while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_464/while/lstm_cell_413/Relu_1Relu&lstm_464/while/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/mul_2Mul*lstm_464/while/lstm_cell_413/Sigmoid_2:y:01lstm_464/while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_464/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_464_while_placeholder_1lstm_464_while_placeholder&lstm_464/while/lstm_cell_413/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_464/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_464/while/addAddV2lstm_464_while_placeholderlstm_464/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_464/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_464/while/add_1AddV2*lstm_464_while_lstm_464_while_loop_counterlstm_464/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_464/while/IdentityIdentitylstm_464/while/add_1:z:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_1Identity0lstm_464_while_lstm_464_while_maximum_iterations^lstm_464/while/NoOp*
T0*
_output_shapes
: t
lstm_464/while/Identity_2Identitylstm_464/while/add:z:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_3IdentityClstm_464/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_4Identity&lstm_464/while/lstm_cell_413/mul_2:z:0^lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_464/while/Identity_5Identity&lstm_464/while/lstm_cell_413/add_1:z:0^lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_464/while/NoOpNoOp4^lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp3^lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp5^lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_464_while_identity lstm_464/while/Identity:output:0"?
lstm_464_while_identity_1"lstm_464/while/Identity_1:output:0"?
lstm_464_while_identity_2"lstm_464/while/Identity_2:output:0"?
lstm_464_while_identity_3"lstm_464/while/Identity_3:output:0"?
lstm_464_while_identity_4"lstm_464/while/Identity_4:output:0"?
lstm_464_while_identity_5"lstm_464/while/Identity_5:output:0"T
'lstm_464_while_lstm_464_strided_slice_1)lstm_464_while_lstm_464_strided_slice_1_0"~
<lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0"?
=lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0"|
;lstm_464_while_lstm_cell_413_matmul_readvariableop_resource=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0"?
clstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensorelstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp2h
2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp2l
4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_464_while_cond_2500585.
*lstm_464_while_lstm_464_while_loop_counter4
0lstm_464_while_lstm_464_while_maximum_iterations
lstm_464_while_placeholder 
lstm_464_while_placeholder_1 
lstm_464_while_placeholder_2 
lstm_464_while_placeholder_30
,lstm_464_while_less_lstm_464_strided_slice_1G
Clstm_464_while_lstm_464_while_cond_2500585___redundant_placeholder0G
Clstm_464_while_lstm_464_while_cond_2500585___redundant_placeholder1G
Clstm_464_while_lstm_464_while_cond_2500585___redundant_placeholder2G
Clstm_464_while_lstm_464_while_cond_2500585___redundant_placeholder3
lstm_464_while_identity
?
lstm_464/while/LessLesslstm_464_while_placeholder,lstm_464_while_less_lstm_464_strided_slice_1*
T0*
_output_shapes
: ]
lstm_464/while/IdentityIdentitylstm_464/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_464_while_identity lstm_464/while/Identity:output:0*(
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501149

inputs?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2501065*
condR
while_cond_2501064*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2498480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_413_2498504_0:2(/
while_lstm_cell_413_2498506_0:
(+
while_lstm_cell_413_2498508_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_413_2498504:2(-
while_lstm_cell_413_2498506:
()
while_lstm_cell_413_2498508:(??+while/lstm_cell_413/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_413/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_413_2498504_0while_lstm_cell_413_2498506_0while_lstm_cell_413_2498508_0*
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498421?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_413/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_413/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_413/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_413/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_413_2498504while_lstm_cell_413_2498504_0"<
while_lstm_cell_413_2498506while_lstm_cell_413_2498506_0"<
while_lstm_cell_413_2498508while_lstm_cell_413_2498508_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_413/StatefulPartitionedCall+while/lstm_cell_413/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2501208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497721

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
?W
?
 __inference__traced_save_2502980
file_prefix/
+savev2_dense_154_kernel_read_readvariableop-
)savev2_dense_154_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_462_lstm_cell_462_kernel_read_readvariableopF
Bsavev2_lstm_462_lstm_cell_462_recurrent_kernel_read_readvariableop:
6savev2_lstm_462_lstm_cell_462_bias_read_readvariableop<
8savev2_lstm_463_lstm_cell_463_kernel_read_readvariableopF
Bsavev2_lstm_463_lstm_cell_463_recurrent_kernel_read_readvariableop:
6savev2_lstm_463_lstm_cell_463_bias_read_readvariableop<
8savev2_lstm_464_lstm_cell_464_kernel_read_readvariableopF
Bsavev2_lstm_464_lstm_cell_464_recurrent_kernel_read_readvariableop:
6savev2_lstm_464_lstm_cell_464_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_154_kernel_m_read_readvariableop4
0savev2_adam_dense_154_bias_m_read_readvariableopC
?savev2_adam_lstm_462_lstm_cell_462_kernel_m_read_readvariableopM
Isavev2_adam_lstm_462_lstm_cell_462_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_462_lstm_cell_462_bias_m_read_readvariableopC
?savev2_adam_lstm_463_lstm_cell_463_kernel_m_read_readvariableopM
Isavev2_adam_lstm_463_lstm_cell_463_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_463_lstm_cell_463_bias_m_read_readvariableopC
?savev2_adam_lstm_464_lstm_cell_464_kernel_m_read_readvariableopM
Isavev2_adam_lstm_464_lstm_cell_464_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_464_lstm_cell_464_bias_m_read_readvariableop6
2savev2_adam_dense_154_kernel_v_read_readvariableop4
0savev2_adam_dense_154_bias_v_read_readvariableopC
?savev2_adam_lstm_462_lstm_cell_462_kernel_v_read_readvariableopM
Isavev2_adam_lstm_462_lstm_cell_462_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_462_lstm_cell_462_bias_v_read_readvariableopC
?savev2_adam_lstm_463_lstm_cell_463_kernel_v_read_readvariableopM
Isavev2_adam_lstm_463_lstm_cell_463_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_463_lstm_cell_463_bias_v_read_readvariableopC
?savev2_adam_lstm_464_lstm_cell_464_kernel_v_read_readvariableopM
Isavev2_adam_lstm_464_lstm_cell_464_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_464_lstm_cell_464_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_154_kernel_read_readvariableop)savev2_dense_154_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_462_lstm_cell_462_kernel_read_readvariableopBsavev2_lstm_462_lstm_cell_462_recurrent_kernel_read_readvariableop6savev2_lstm_462_lstm_cell_462_bias_read_readvariableop8savev2_lstm_463_lstm_cell_463_kernel_read_readvariableopBsavev2_lstm_463_lstm_cell_463_recurrent_kernel_read_readvariableop6savev2_lstm_463_lstm_cell_463_bias_read_readvariableop8savev2_lstm_464_lstm_cell_464_kernel_read_readvariableopBsavev2_lstm_464_lstm_cell_464_recurrent_kernel_read_readvariableop6savev2_lstm_464_lstm_cell_464_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_154_kernel_m_read_readvariableop0savev2_adam_dense_154_bias_m_read_readvariableop?savev2_adam_lstm_462_lstm_cell_462_kernel_m_read_readvariableopIsavev2_adam_lstm_462_lstm_cell_462_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_462_lstm_cell_462_bias_m_read_readvariableop?savev2_adam_lstm_463_lstm_cell_463_kernel_m_read_readvariableopIsavev2_adam_lstm_463_lstm_cell_463_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_463_lstm_cell_463_bias_m_read_readvariableop?savev2_adam_lstm_464_lstm_cell_464_kernel_m_read_readvariableopIsavev2_adam_lstm_464_lstm_cell_464_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_464_lstm_cell_464_bias_m_read_readvariableop2savev2_adam_dense_154_kernel_v_read_readvariableop0savev2_adam_dense_154_bias_v_read_readvariableop?savev2_adam_lstm_462_lstm_cell_462_kernel_v_read_readvariableopIsavev2_adam_lstm_462_lstm_cell_462_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_462_lstm_cell_462_bias_v_read_readvariableop?savev2_adam_lstm_463_lstm_cell_463_kernel_v_read_readvariableopIsavev2_adam_lstm_463_lstm_cell_463_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_463_lstm_cell_463_bias_v_read_readvariableop?savev2_adam_lstm_464_lstm_cell_464_kernel_v_read_readvariableopIsavev2_adam_lstm_464_lstm_cell_464_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_464_lstm_cell_464_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_2502153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2502153___redundant_placeholder05
1while_while_cond_2502153___redundant_placeholder15
1while_while_cond_2502153___redundant_placeholder25
1while_while_cond_2502153___redundant_placeholder3
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
0__inference_sequential_154_layer_call_fn_2499822

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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499621o
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
"__inference__wrapped_model_2497508
lstm_462_inputW
Dsequential_154_lstm_462_lstm_cell_411_matmul_readvariableop_resource:	?Y
Fsequential_154_lstm_462_lstm_cell_411_matmul_1_readvariableop_resource:	d?T
Esequential_154_lstm_462_lstm_cell_411_biasadd_readvariableop_resource:	?W
Dsequential_154_lstm_463_lstm_cell_412_matmul_readvariableop_resource:	d?Y
Fsequential_154_lstm_463_lstm_cell_412_matmul_1_readvariableop_resource:	2?T
Esequential_154_lstm_463_lstm_cell_412_biasadd_readvariableop_resource:	?V
Dsequential_154_lstm_464_lstm_cell_413_matmul_readvariableop_resource:2(X
Fsequential_154_lstm_464_lstm_cell_413_matmul_1_readvariableop_resource:
(S
Esequential_154_lstm_464_lstm_cell_413_biasadd_readvariableop_resource:(I
7sequential_154_dense_154_matmul_readvariableop_resource:
F
8sequential_154_dense_154_biasadd_readvariableop_resource:
identity??/sequential_154/dense_154/BiasAdd/ReadVariableOp?.sequential_154/dense_154/MatMul/ReadVariableOp?<sequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp?;sequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOp?=sequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp?sequential_154/lstm_462/while?<sequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp?;sequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOp?=sequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp?sequential_154/lstm_463/while?<sequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp?;sequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOp?=sequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp?sequential_154/lstm_464/while[
sequential_154/lstm_462/ShapeShapelstm_462_input*
T0*
_output_shapes
:u
+sequential_154/lstm_462/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_154/lstm_462/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_154/lstm_462/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_154/lstm_462/strided_sliceStridedSlice&sequential_154/lstm_462/Shape:output:04sequential_154/lstm_462/strided_slice/stack:output:06sequential_154/lstm_462/strided_slice/stack_1:output:06sequential_154/lstm_462/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_154/lstm_462/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_154/lstm_462/zeros/packedPack.sequential_154/lstm_462/strided_slice:output:0/sequential_154/lstm_462/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_154/lstm_462/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_462/zerosFill-sequential_154/lstm_462/zeros/packed:output:0,sequential_154/lstm_462/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_154/lstm_462/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_154/lstm_462/zeros_1/packedPack.sequential_154/lstm_462/strided_slice:output:01sequential_154/lstm_462/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_154/lstm_462/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_462/zeros_1Fill/sequential_154/lstm_462/zeros_1/packed:output:0.sequential_154/lstm_462/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_154/lstm_462/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_154/lstm_462/transpose	Transposelstm_462_input/sequential_154/lstm_462/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_154/lstm_462/Shape_1Shape%sequential_154/lstm_462/transpose:y:0*
T0*
_output_shapes
:w
-sequential_154/lstm_462/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_462/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_462/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_462/strided_slice_1StridedSlice(sequential_154/lstm_462/Shape_1:output:06sequential_154/lstm_462/strided_slice_1/stack:output:08sequential_154/lstm_462/strided_slice_1/stack_1:output:08sequential_154/lstm_462/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_154/lstm_462/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_154/lstm_462/TensorArrayV2TensorListReserve<sequential_154/lstm_462/TensorArrayV2/element_shape:output:00sequential_154/lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_154/lstm_462/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_154/lstm_462/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_154/lstm_462/transpose:y:0Vsequential_154/lstm_462/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_154/lstm_462/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_462/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_462/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_462/strided_slice_2StridedSlice%sequential_154/lstm_462/transpose:y:06sequential_154/lstm_462/strided_slice_2/stack:output:08sequential_154/lstm_462/strided_slice_2/stack_1:output:08sequential_154/lstm_462/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOpReadVariableOpDsequential_154_lstm_462_lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_154/lstm_462/lstm_cell_411/MatMulMatMul0sequential_154/lstm_462/strided_slice_2:output:0Csequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOpFsequential_154_lstm_462_lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_154/lstm_462/lstm_cell_411/MatMul_1MatMul&sequential_154/lstm_462/zeros:output:0Esequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_154/lstm_462/lstm_cell_411/addAddV26sequential_154/lstm_462/lstm_cell_411/MatMul:product:08sequential_154/lstm_462/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOpEsequential_154_lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_154/lstm_462/lstm_cell_411/BiasAddBiasAdd-sequential_154/lstm_462/lstm_cell_411/add:z:0Dsequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_154/lstm_462/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_154/lstm_462/lstm_cell_411/splitSplit>sequential_154/lstm_462/lstm_cell_411/split/split_dim:output:06sequential_154/lstm_462/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_154/lstm_462/lstm_cell_411/SigmoidSigmoid4sequential_154/lstm_462/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_154/lstm_462/lstm_cell_411/Sigmoid_1Sigmoid4sequential_154/lstm_462/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_154/lstm_462/lstm_cell_411/mulMul3sequential_154/lstm_462/lstm_cell_411/Sigmoid_1:y:0(sequential_154/lstm_462/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_154/lstm_462/lstm_cell_411/ReluRelu4sequential_154/lstm_462/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_154/lstm_462/lstm_cell_411/mul_1Mul1sequential_154/lstm_462/lstm_cell_411/Sigmoid:y:08sequential_154/lstm_462/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_154/lstm_462/lstm_cell_411/add_1AddV2-sequential_154/lstm_462/lstm_cell_411/mul:z:0/sequential_154/lstm_462/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_154/lstm_462/lstm_cell_411/Sigmoid_2Sigmoid4sequential_154/lstm_462/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_154/lstm_462/lstm_cell_411/Relu_1Relu/sequential_154/lstm_462/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_154/lstm_462/lstm_cell_411/mul_2Mul3sequential_154/lstm_462/lstm_cell_411/Sigmoid_2:y:0:sequential_154/lstm_462/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_154/lstm_462/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_154/lstm_462/TensorArrayV2_1TensorListReserve>sequential_154/lstm_462/TensorArrayV2_1/element_shape:output:00sequential_154/lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_154/lstm_462/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_154/lstm_462/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_154/lstm_462/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_154/lstm_462/whileWhile3sequential_154/lstm_462/while/loop_counter:output:09sequential_154/lstm_462/while/maximum_iterations:output:0%sequential_154/lstm_462/time:output:00sequential_154/lstm_462/TensorArrayV2_1:handle:0&sequential_154/lstm_462/zeros:output:0(sequential_154/lstm_462/zeros_1:output:00sequential_154/lstm_462/strided_slice_1:output:0Osequential_154/lstm_462/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_154_lstm_462_lstm_cell_411_matmul_readvariableop_resourceFsequential_154_lstm_462_lstm_cell_411_matmul_1_readvariableop_resourceEsequential_154_lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
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
*sequential_154_lstm_462_while_body_2497140*6
cond.R,
*sequential_154_lstm_462_while_cond_2497139*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_154/lstm_462/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_154/lstm_462/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_154/lstm_462/while:output:3Qsequential_154/lstm_462/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_154/lstm_462/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_154/lstm_462/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_462/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_462/strided_slice_3StridedSliceCsequential_154/lstm_462/TensorArrayV2Stack/TensorListStack:tensor:06sequential_154/lstm_462/strided_slice_3/stack:output:08sequential_154/lstm_462/strided_slice_3/stack_1:output:08sequential_154/lstm_462/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_154/lstm_462/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_154/lstm_462/transpose_1	TransposeCsequential_154/lstm_462/TensorArrayV2Stack/TensorListStack:tensor:01sequential_154/lstm_462/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_154/lstm_462/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_154/lstm_463/ShapeShape'sequential_154/lstm_462/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_154/lstm_463/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_154/lstm_463/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_154/lstm_463/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_154/lstm_463/strided_sliceStridedSlice&sequential_154/lstm_463/Shape:output:04sequential_154/lstm_463/strided_slice/stack:output:06sequential_154/lstm_463/strided_slice/stack_1:output:06sequential_154/lstm_463/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_154/lstm_463/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_154/lstm_463/zeros/packedPack.sequential_154/lstm_463/strided_slice:output:0/sequential_154/lstm_463/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_154/lstm_463/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_463/zerosFill-sequential_154/lstm_463/zeros/packed:output:0,sequential_154/lstm_463/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_154/lstm_463/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_154/lstm_463/zeros_1/packedPack.sequential_154/lstm_463/strided_slice:output:01sequential_154/lstm_463/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_154/lstm_463/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_463/zeros_1Fill/sequential_154/lstm_463/zeros_1/packed:output:0.sequential_154/lstm_463/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_154/lstm_463/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_154/lstm_463/transpose	Transpose'sequential_154/lstm_462/transpose_1:y:0/sequential_154/lstm_463/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_154/lstm_463/Shape_1Shape%sequential_154/lstm_463/transpose:y:0*
T0*
_output_shapes
:w
-sequential_154/lstm_463/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_463/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_463/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_463/strided_slice_1StridedSlice(sequential_154/lstm_463/Shape_1:output:06sequential_154/lstm_463/strided_slice_1/stack:output:08sequential_154/lstm_463/strided_slice_1/stack_1:output:08sequential_154/lstm_463/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_154/lstm_463/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_154/lstm_463/TensorArrayV2TensorListReserve<sequential_154/lstm_463/TensorArrayV2/element_shape:output:00sequential_154/lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_154/lstm_463/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_154/lstm_463/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_154/lstm_463/transpose:y:0Vsequential_154/lstm_463/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_154/lstm_463/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_463/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_463/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_463/strided_slice_2StridedSlice%sequential_154/lstm_463/transpose:y:06sequential_154/lstm_463/strided_slice_2/stack:output:08sequential_154/lstm_463/strided_slice_2/stack_1:output:08sequential_154/lstm_463/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOpReadVariableOpDsequential_154_lstm_463_lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_154/lstm_463/lstm_cell_412/MatMulMatMul0sequential_154/lstm_463/strided_slice_2:output:0Csequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOpFsequential_154_lstm_463_lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_154/lstm_463/lstm_cell_412/MatMul_1MatMul&sequential_154/lstm_463/zeros:output:0Esequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_154/lstm_463/lstm_cell_412/addAddV26sequential_154/lstm_463/lstm_cell_412/MatMul:product:08sequential_154/lstm_463/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOpEsequential_154_lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_154/lstm_463/lstm_cell_412/BiasAddBiasAdd-sequential_154/lstm_463/lstm_cell_412/add:z:0Dsequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_154/lstm_463/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_154/lstm_463/lstm_cell_412/splitSplit>sequential_154/lstm_463/lstm_cell_412/split/split_dim:output:06sequential_154/lstm_463/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_154/lstm_463/lstm_cell_412/SigmoidSigmoid4sequential_154/lstm_463/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_154/lstm_463/lstm_cell_412/Sigmoid_1Sigmoid4sequential_154/lstm_463/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_154/lstm_463/lstm_cell_412/mulMul3sequential_154/lstm_463/lstm_cell_412/Sigmoid_1:y:0(sequential_154/lstm_463/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_154/lstm_463/lstm_cell_412/ReluRelu4sequential_154/lstm_463/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_154/lstm_463/lstm_cell_412/mul_1Mul1sequential_154/lstm_463/lstm_cell_412/Sigmoid:y:08sequential_154/lstm_463/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_154/lstm_463/lstm_cell_412/add_1AddV2-sequential_154/lstm_463/lstm_cell_412/mul:z:0/sequential_154/lstm_463/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_154/lstm_463/lstm_cell_412/Sigmoid_2Sigmoid4sequential_154/lstm_463/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_154/lstm_463/lstm_cell_412/Relu_1Relu/sequential_154/lstm_463/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_154/lstm_463/lstm_cell_412/mul_2Mul3sequential_154/lstm_463/lstm_cell_412/Sigmoid_2:y:0:sequential_154/lstm_463/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_154/lstm_463/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_154/lstm_463/TensorArrayV2_1TensorListReserve>sequential_154/lstm_463/TensorArrayV2_1/element_shape:output:00sequential_154/lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_154/lstm_463/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_154/lstm_463/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_154/lstm_463/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_154/lstm_463/whileWhile3sequential_154/lstm_463/while/loop_counter:output:09sequential_154/lstm_463/while/maximum_iterations:output:0%sequential_154/lstm_463/time:output:00sequential_154/lstm_463/TensorArrayV2_1:handle:0&sequential_154/lstm_463/zeros:output:0(sequential_154/lstm_463/zeros_1:output:00sequential_154/lstm_463/strided_slice_1:output:0Osequential_154/lstm_463/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_154_lstm_463_lstm_cell_412_matmul_readvariableop_resourceFsequential_154_lstm_463_lstm_cell_412_matmul_1_readvariableop_resourceEsequential_154_lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
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
*sequential_154_lstm_463_while_body_2497279*6
cond.R,
*sequential_154_lstm_463_while_cond_2497278*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_154/lstm_463/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_154/lstm_463/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_154/lstm_463/while:output:3Qsequential_154/lstm_463/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_154/lstm_463/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_154/lstm_463/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_463/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_463/strided_slice_3StridedSliceCsequential_154/lstm_463/TensorArrayV2Stack/TensorListStack:tensor:06sequential_154/lstm_463/strided_slice_3/stack:output:08sequential_154/lstm_463/strided_slice_3/stack_1:output:08sequential_154/lstm_463/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_154/lstm_463/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_154/lstm_463/transpose_1	TransposeCsequential_154/lstm_463/TensorArrayV2Stack/TensorListStack:tensor:01sequential_154/lstm_463/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_154/lstm_463/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_154/lstm_464/ShapeShape'sequential_154/lstm_463/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_154/lstm_464/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_154/lstm_464/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_154/lstm_464/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_154/lstm_464/strided_sliceStridedSlice&sequential_154/lstm_464/Shape:output:04sequential_154/lstm_464/strided_slice/stack:output:06sequential_154/lstm_464/strided_slice/stack_1:output:06sequential_154/lstm_464/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_154/lstm_464/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_154/lstm_464/zeros/packedPack.sequential_154/lstm_464/strided_slice:output:0/sequential_154/lstm_464/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_154/lstm_464/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_464/zerosFill-sequential_154/lstm_464/zeros/packed:output:0,sequential_154/lstm_464/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_154/lstm_464/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_154/lstm_464/zeros_1/packedPack.sequential_154/lstm_464/strided_slice:output:01sequential_154/lstm_464/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_154/lstm_464/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_154/lstm_464/zeros_1Fill/sequential_154/lstm_464/zeros_1/packed:output:0.sequential_154/lstm_464/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_154/lstm_464/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_154/lstm_464/transpose	Transpose'sequential_154/lstm_463/transpose_1:y:0/sequential_154/lstm_464/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_154/lstm_464/Shape_1Shape%sequential_154/lstm_464/transpose:y:0*
T0*
_output_shapes
:w
-sequential_154/lstm_464/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_464/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_464/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_464/strided_slice_1StridedSlice(sequential_154/lstm_464/Shape_1:output:06sequential_154/lstm_464/strided_slice_1/stack:output:08sequential_154/lstm_464/strided_slice_1/stack_1:output:08sequential_154/lstm_464/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_154/lstm_464/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_154/lstm_464/TensorArrayV2TensorListReserve<sequential_154/lstm_464/TensorArrayV2/element_shape:output:00sequential_154/lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_154/lstm_464/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_154/lstm_464/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_154/lstm_464/transpose:y:0Vsequential_154/lstm_464/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_154/lstm_464/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_464/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_154/lstm_464/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_464/strided_slice_2StridedSlice%sequential_154/lstm_464/transpose:y:06sequential_154/lstm_464/strided_slice_2/stack:output:08sequential_154/lstm_464/strided_slice_2/stack_1:output:08sequential_154/lstm_464/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOpReadVariableOpDsequential_154_lstm_464_lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_154/lstm_464/lstm_cell_413/MatMulMatMul0sequential_154/lstm_464/strided_slice_2:output:0Csequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOpFsequential_154_lstm_464_lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_154/lstm_464/lstm_cell_413/MatMul_1MatMul&sequential_154/lstm_464/zeros:output:0Esequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_154/lstm_464/lstm_cell_413/addAddV26sequential_154/lstm_464/lstm_cell_413/MatMul:product:08sequential_154/lstm_464/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOpEsequential_154_lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_154/lstm_464/lstm_cell_413/BiasAddBiasAdd-sequential_154/lstm_464/lstm_cell_413/add:z:0Dsequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_154/lstm_464/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_154/lstm_464/lstm_cell_413/splitSplit>sequential_154/lstm_464/lstm_cell_413/split/split_dim:output:06sequential_154/lstm_464/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_154/lstm_464/lstm_cell_413/SigmoidSigmoid4sequential_154/lstm_464/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_154/lstm_464/lstm_cell_413/Sigmoid_1Sigmoid4sequential_154/lstm_464/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_154/lstm_464/lstm_cell_413/mulMul3sequential_154/lstm_464/lstm_cell_413/Sigmoid_1:y:0(sequential_154/lstm_464/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_154/lstm_464/lstm_cell_413/ReluRelu4sequential_154/lstm_464/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_154/lstm_464/lstm_cell_413/mul_1Mul1sequential_154/lstm_464/lstm_cell_413/Sigmoid:y:08sequential_154/lstm_464/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_154/lstm_464/lstm_cell_413/add_1AddV2-sequential_154/lstm_464/lstm_cell_413/mul:z:0/sequential_154/lstm_464/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_154/lstm_464/lstm_cell_413/Sigmoid_2Sigmoid4sequential_154/lstm_464/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_154/lstm_464/lstm_cell_413/Relu_1Relu/sequential_154/lstm_464/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_154/lstm_464/lstm_cell_413/mul_2Mul3sequential_154/lstm_464/lstm_cell_413/Sigmoid_2:y:0:sequential_154/lstm_464/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_154/lstm_464/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_154/lstm_464/TensorArrayV2_1TensorListReserve>sequential_154/lstm_464/TensorArrayV2_1/element_shape:output:00sequential_154/lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_154/lstm_464/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_154/lstm_464/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_154/lstm_464/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_154/lstm_464/whileWhile3sequential_154/lstm_464/while/loop_counter:output:09sequential_154/lstm_464/while/maximum_iterations:output:0%sequential_154/lstm_464/time:output:00sequential_154/lstm_464/TensorArrayV2_1:handle:0&sequential_154/lstm_464/zeros:output:0(sequential_154/lstm_464/zeros_1:output:00sequential_154/lstm_464/strided_slice_1:output:0Osequential_154/lstm_464/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_154_lstm_464_lstm_cell_413_matmul_readvariableop_resourceFsequential_154_lstm_464_lstm_cell_413_matmul_1_readvariableop_resourceEsequential_154_lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
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
*sequential_154_lstm_464_while_body_2497418*6
cond.R,
*sequential_154_lstm_464_while_cond_2497417*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_154/lstm_464/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_154/lstm_464/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_154/lstm_464/while:output:3Qsequential_154/lstm_464/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_154/lstm_464/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_154/lstm_464/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_154/lstm_464/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_154/lstm_464/strided_slice_3StridedSliceCsequential_154/lstm_464/TensorArrayV2Stack/TensorListStack:tensor:06sequential_154/lstm_464/strided_slice_3/stack:output:08sequential_154/lstm_464/strided_slice_3/stack_1:output:08sequential_154/lstm_464/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_154/lstm_464/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_154/lstm_464/transpose_1	TransposeCsequential_154/lstm_464/TensorArrayV2Stack/TensorListStack:tensor:01sequential_154/lstm_464/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_154/lstm_464/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_154/dense_154/MatMul/ReadVariableOpReadVariableOp7sequential_154_dense_154_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_154/dense_154/MatMulMatMul0sequential_154/lstm_464/strided_slice_3:output:06sequential_154/dense_154/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_154/dense_154/BiasAdd/ReadVariableOpReadVariableOp8sequential_154_dense_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_154/dense_154/BiasAddBiasAdd)sequential_154/dense_154/MatMul:product:07sequential_154/dense_154/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_154/dense_154/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_154/dense_154/BiasAdd/ReadVariableOp/^sequential_154/dense_154/MatMul/ReadVariableOp=^sequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp<^sequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOp>^sequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp^sequential_154/lstm_462/while=^sequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp<^sequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOp>^sequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp^sequential_154/lstm_463/while=^sequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp<^sequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOp>^sequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp^sequential_154/lstm_464/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_154/dense_154/BiasAdd/ReadVariableOp/sequential_154/dense_154/BiasAdd/ReadVariableOp2`
.sequential_154/dense_154/MatMul/ReadVariableOp.sequential_154/dense_154/MatMul/ReadVariableOp2|
<sequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp<sequential_154/lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp2z
;sequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOp;sequential_154/lstm_462/lstm_cell_411/MatMul/ReadVariableOp2~
=sequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp=sequential_154/lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp2>
sequential_154/lstm_462/whilesequential_154/lstm_462/while2|
<sequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp<sequential_154/lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp2z
;sequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOp;sequential_154/lstm_463/lstm_cell_412/MatMul/ReadVariableOp2~
=sequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp=sequential_154/lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp2>
sequential_154/lstm_463/whilesequential_154/lstm_463/while2|
<sequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp<sequential_154/lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp2z
;sequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOp;sequential_154/lstm_464/lstm_cell_413/MatMul/ReadVariableOp2~
=sequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp=sequential_154/lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp2>
sequential_154/lstm_464/whilesequential_154/lstm_464/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_462_input
?
?
while_cond_2499303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2499303___redundant_placeholder05
1while_while_cond_2499303___redundant_placeholder15
1while_while_cond_2499303___redundant_placeholder25
1while_while_cond_2499303___redundant_placeholder3
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

lstm_464_while_body_2500586.
*lstm_464_while_lstm_464_while_loop_counter4
0lstm_464_while_lstm_464_while_maximum_iterations
lstm_464_while_placeholder 
lstm_464_while_placeholder_1 
lstm_464_while_placeholder_2 
lstm_464_while_placeholder_3-
)lstm_464_while_lstm_464_strided_slice_1_0i
elstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0:2(Q
?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(L
>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0:(
lstm_464_while_identity
lstm_464_while_identity_1
lstm_464_while_identity_2
lstm_464_while_identity_3
lstm_464_while_identity_4
lstm_464_while_identity_5+
'lstm_464_while_lstm_464_strided_slice_1g
clstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensorM
;lstm_464_while_lstm_cell_413_matmul_readvariableop_resource:2(O
=lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource:
(J
<lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource:(??3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp?2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp?4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp?
@lstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_464/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0lstm_464_while_placeholderIlstm_464/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_464/while/lstm_cell_413/MatMulMatMul9lstm_464/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_464/while/lstm_cell_413/MatMul_1MatMullstm_464_while_placeholder_2<lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_464/while/lstm_cell_413/addAddV2-lstm_464/while/lstm_cell_413/MatMul:product:0/lstm_464/while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_464/while/lstm_cell_413/BiasAddBiasAdd$lstm_464/while/lstm_cell_413/add:z:0;lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_464/while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_464/while/lstm_cell_413/splitSplit5lstm_464/while/lstm_cell_413/split/split_dim:output:0-lstm_464/while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_464/while/lstm_cell_413/SigmoidSigmoid+lstm_464/while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_464/while/lstm_cell_413/Sigmoid_1Sigmoid+lstm_464/while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_464/while/lstm_cell_413/mulMul*lstm_464/while/lstm_cell_413/Sigmoid_1:y:0lstm_464_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_464/while/lstm_cell_413/ReluRelu+lstm_464/while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/mul_1Mul(lstm_464/while/lstm_cell_413/Sigmoid:y:0/lstm_464/while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/add_1AddV2$lstm_464/while/lstm_cell_413/mul:z:0&lstm_464/while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_464/while/lstm_cell_413/Sigmoid_2Sigmoid+lstm_464/while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_464/while/lstm_cell_413/Relu_1Relu&lstm_464/while/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_464/while/lstm_cell_413/mul_2Mul*lstm_464/while/lstm_cell_413/Sigmoid_2:y:01lstm_464/while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_464/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_464_while_placeholder_1lstm_464_while_placeholder&lstm_464/while/lstm_cell_413/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_464/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_464/while/addAddV2lstm_464_while_placeholderlstm_464/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_464/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_464/while/add_1AddV2*lstm_464_while_lstm_464_while_loop_counterlstm_464/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_464/while/IdentityIdentitylstm_464/while/add_1:z:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_1Identity0lstm_464_while_lstm_464_while_maximum_iterations^lstm_464/while/NoOp*
T0*
_output_shapes
: t
lstm_464/while/Identity_2Identitylstm_464/while/add:z:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_3IdentityClstm_464/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_464/while/NoOp*
T0*
_output_shapes
: ?
lstm_464/while/Identity_4Identity&lstm_464/while/lstm_cell_413/mul_2:z:0^lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_464/while/Identity_5Identity&lstm_464/while/lstm_cell_413/add_1:z:0^lstm_464/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_464/while/NoOpNoOp4^lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp3^lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp5^lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_464_while_identity lstm_464/while/Identity:output:0"?
lstm_464_while_identity_1"lstm_464/while/Identity_1:output:0"?
lstm_464_while_identity_2"lstm_464/while/Identity_2:output:0"?
lstm_464_while_identity_3"lstm_464/while/Identity_3:output:0"?
lstm_464_while_identity_4"lstm_464/while/Identity_4:output:0"?
lstm_464_while_identity_5"lstm_464/while/Identity_5:output:0"T
'lstm_464_while_lstm_464_strided_slice_1)lstm_464_while_lstm_464_strided_slice_1_0"~
<lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource>lstm_464_while_lstm_cell_413_biasadd_readvariableop_resource_0"?
=lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource?lstm_464_while_lstm_cell_413_matmul_1_readvariableop_resource_0"|
;lstm_464_while_lstm_cell_413_matmul_readvariableop_resource=lstm_464_while_lstm_cell_413_matmul_readvariableop_resource_0"?
clstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensorelstm_464_while_tensorarrayv2read_tensorlistgetitem_lstm_464_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp3lstm_464/while/lstm_cell_413/BiasAdd/ReadVariableOp2h
2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp2lstm_464/while/lstm_cell_413/MatMul/ReadVariableOp2l
4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp4lstm_464/while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2501823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501823___redundant_placeholder05
1while_while_cond_2501823___redundant_placeholder15
1while_while_cond_2501823___redundant_placeholder25
1while_while_cond_2501823___redundant_placeholder3
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2497925

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
?
while_body_2502011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_462_while_cond_2500307.
*lstm_462_while_lstm_462_while_loop_counter4
0lstm_462_while_lstm_462_while_maximum_iterations
lstm_462_while_placeholder 
lstm_462_while_placeholder_1 
lstm_462_while_placeholder_2 
lstm_462_while_placeholder_30
,lstm_462_while_less_lstm_462_strided_slice_1G
Clstm_462_while_lstm_462_while_cond_2500307___redundant_placeholder0G
Clstm_462_while_lstm_462_while_cond_2500307___redundant_placeholder1G
Clstm_462_while_lstm_462_while_cond_2500307___redundant_placeholder2G
Clstm_462_while_lstm_462_while_cond_2500307___redundant_placeholder3
lstm_462_while_identity
?
lstm_462/while/LessLesslstm_462_while_placeholder,lstm_462_while_less_lstm_462_strided_slice_1*
T0*
_output_shapes
: ]
lstm_462/while/IdentityIdentitylstm_462/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_462_while_identity lstm_462/while/Identity:output:0*(
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

lstm_462_while_body_2500308.
*lstm_462_while_lstm_462_while_loop_counter4
0lstm_462_while_lstm_462_while_maximum_iterations
lstm_462_while_placeholder 
lstm_462_while_placeholder_1 
lstm_462_while_placeholder_2 
lstm_462_while_placeholder_3-
)lstm_462_while_lstm_462_strided_slice_1_0i
elstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0:	?R
?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?M
>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
lstm_462_while_identity
lstm_462_while_identity_1
lstm_462_while_identity_2
lstm_462_while_identity_3
lstm_462_while_identity_4
lstm_462_while_identity_5+
'lstm_462_while_lstm_462_strided_slice_1g
clstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensorN
;lstm_462_while_lstm_cell_411_matmul_readvariableop_resource:	?P
=lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource:	d?K
<lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource:	???3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp?2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp?4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp?
@lstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_462/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0lstm_462_while_placeholderIlstm_462/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_462/while/lstm_cell_411/MatMulMatMul9lstm_462/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_462/while/lstm_cell_411/MatMul_1MatMullstm_462_while_placeholder_2<lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_462/while/lstm_cell_411/addAddV2-lstm_462/while/lstm_cell_411/MatMul:product:0/lstm_462/while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_462/while/lstm_cell_411/BiasAddBiasAdd$lstm_462/while/lstm_cell_411/add:z:0;lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_462/while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_462/while/lstm_cell_411/splitSplit5lstm_462/while/lstm_cell_411/split/split_dim:output:0-lstm_462/while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_462/while/lstm_cell_411/SigmoidSigmoid+lstm_462/while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_462/while/lstm_cell_411/Sigmoid_1Sigmoid+lstm_462/while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_462/while/lstm_cell_411/mulMul*lstm_462/while/lstm_cell_411/Sigmoid_1:y:0lstm_462_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_462/while/lstm_cell_411/ReluRelu+lstm_462/while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/mul_1Mul(lstm_462/while/lstm_cell_411/Sigmoid:y:0/lstm_462/while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/add_1AddV2$lstm_462/while/lstm_cell_411/mul:z:0&lstm_462/while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_462/while/lstm_cell_411/Sigmoid_2Sigmoid+lstm_462/while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_462/while/lstm_cell_411/Relu_1Relu&lstm_462/while/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_462/while/lstm_cell_411/mul_2Mul*lstm_462/while/lstm_cell_411/Sigmoid_2:y:01lstm_462/while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_462/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_462_while_placeholder_1lstm_462_while_placeholder&lstm_462/while/lstm_cell_411/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_462/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_462/while/addAddV2lstm_462_while_placeholderlstm_462/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_462/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_462/while/add_1AddV2*lstm_462_while_lstm_462_while_loop_counterlstm_462/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_462/while/IdentityIdentitylstm_462/while/add_1:z:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_1Identity0lstm_462_while_lstm_462_while_maximum_iterations^lstm_462/while/NoOp*
T0*
_output_shapes
: t
lstm_462/while/Identity_2Identitylstm_462/while/add:z:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_3IdentityClstm_462/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_462/while/NoOp*
T0*
_output_shapes
: ?
lstm_462/while/Identity_4Identity&lstm_462/while/lstm_cell_411/mul_2:z:0^lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_462/while/Identity_5Identity&lstm_462/while/lstm_cell_411/add_1:z:0^lstm_462/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_462/while/NoOpNoOp4^lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp3^lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp5^lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_462_while_identity lstm_462/while/Identity:output:0"?
lstm_462_while_identity_1"lstm_462/while/Identity_1:output:0"?
lstm_462_while_identity_2"lstm_462/while/Identity_2:output:0"?
lstm_462_while_identity_3"lstm_462/while/Identity_3:output:0"?
lstm_462_while_identity_4"lstm_462/while/Identity_4:output:0"?
lstm_462_while_identity_5"lstm_462/while/Identity_5:output:0"T
'lstm_462_while_lstm_462_strided_slice_1)lstm_462_while_lstm_462_strided_slice_1_0"~
<lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource>lstm_462_while_lstm_cell_411_biasadd_readvariableop_resource_0"?
=lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource?lstm_462_while_lstm_cell_411_matmul_1_readvariableop_resource_0"|
;lstm_462_while_lstm_cell_411_matmul_readvariableop_resource=lstm_462_while_lstm_cell_411_matmul_readvariableop_resource_0"?
clstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensorelstm_462_while_tensorarrayv2read_tensorlistgetitem_lstm_462_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp3lstm_462/while/lstm_cell_411/BiasAdd/ReadVariableOp2h
2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp2lstm_462/while/lstm_cell_411/MatMul/ReadVariableOp2l
4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp4lstm_462/while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502707

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
lstm_463_while_cond_2500446.
*lstm_463_while_lstm_463_while_loop_counter4
0lstm_463_while_lstm_463_while_maximum_iterations
lstm_463_while_placeholder 
lstm_463_while_placeholder_1 
lstm_463_while_placeholder_2 
lstm_463_while_placeholder_30
,lstm_463_while_less_lstm_463_strided_slice_1G
Clstm_463_while_lstm_463_while_cond_2500446___redundant_placeholder0G
Clstm_463_while_lstm_463_while_cond_2500446___redundant_placeholder1G
Clstm_463_while_lstm_463_while_cond_2500446___redundant_placeholder2G
Clstm_463_while_lstm_463_while_cond_2500446___redundant_placeholder3
lstm_463_while_identity
?
lstm_463/while/LessLesslstm_463_while_placeholder,lstm_463_while_less_lstm_463_strided_slice_1*
T0*
_output_shapes
: ]
lstm_463/while/IdentityIdentitylstm_463/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_463_while_identity lstm_463/while/Identity:output:0*(
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
while_body_2501824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2501538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_412_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_412_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_412_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_412_matmul_readvariableop_resource:	d?G
4while_lstm_cell_412_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_412_biasadd_readvariableop_resource:	???*while/lstm_cell_412/BiasAdd/ReadVariableOp?)while/lstm_cell_412/MatMul/ReadVariableOp?+while/lstm_cell_412/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_412_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_412/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_412_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_412/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_412/addAddV2$while/lstm_cell_412/MatMul:product:0&while/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_412_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_412/BiasAddBiasAddwhile/lstm_cell_412/add:z:02while/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_412/splitSplit,while/lstm_cell_412/split/split_dim:output:0$while/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_412/SigmoidSigmoid"while/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_1Sigmoid"while/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mulMul!while/lstm_cell_412/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_412/ReluRelu"while/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_1Mulwhile/lstm_cell_412/Sigmoid:y:0&while/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/add_1AddV2while/lstm_cell_412/mul:z:0while/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_412/Sigmoid_2Sigmoid"while/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_412/Relu_1Reluwhile/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_412/mul_2Mul!while/lstm_cell_412/Sigmoid_2:y:0(while/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_412/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_412/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_412/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_412/BiasAdd/ReadVariableOp*^while/lstm_cell_412/MatMul/ReadVariableOp,^while/lstm_cell_412/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_412_biasadd_readvariableop_resource5while_lstm_cell_412_biasadd_readvariableop_resource_0"n
4while_lstm_cell_412_matmul_1_readvariableop_resource6while_lstm_cell_412_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_412_matmul_readvariableop_resource4while_lstm_cell_412_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_412/BiasAdd/ReadVariableOp*while/lstm_cell_412/BiasAdd/ReadVariableOp2V
)while/lstm_cell_412/MatMul/ReadVariableOp)while/lstm_cell_412/MatMul/ReadVariableOp2Z
+while/lstm_cell_412/MatMul_1/ReadVariableOp+while/lstm_cell_412/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_411_layer_call_fn_2502577

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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497721o
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
*__inference_lstm_463_layer_call_fn_2501336

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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2499388s
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2498707

inputs?
,lstm_cell_411_matmul_readvariableop_resource:	?A
.lstm_cell_411_matmul_1_readvariableop_resource:	d?<
-lstm_cell_411_biasadd_readvariableop_resource:	?
identity??$lstm_cell_411/BiasAdd/ReadVariableOp?#lstm_cell_411/MatMul/ReadVariableOp?%lstm_cell_411/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_411/MatMul/ReadVariableOpReadVariableOp,lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_411/MatMulMatMulstrided_slice_2:output:0+lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_411/MatMul_1MatMulzeros:output:0-lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_411/addAddV2lstm_cell_411/MatMul:product:0 lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_411/BiasAddBiasAddlstm_cell_411/add:z:0,lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_411/splitSplit&lstm_cell_411/split/split_dim:output:0lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_411/SigmoidSigmoidlstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_1Sigmoidlstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_411/mulMullstm_cell_411/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_411/ReluRelulstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_1Mullstm_cell_411/Sigmoid:y:0 lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_411/add_1AddV2lstm_cell_411/mul:z:0lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_411/Sigmoid_2Sigmoidlstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_411/Relu_1Relulstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_411/mul_2Mullstm_cell_411/Sigmoid_2:y:0"lstm_cell_411/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_411_matmul_readvariableop_resource.lstm_cell_411_matmul_1_readvariableop_resource-lstm_cell_411_biasadd_readvariableop_resource*
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
while_body_2498623*
condR
while_cond_2498622*K
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
NoOpNoOp%^lstm_cell_411/BiasAdd/ReadVariableOp$^lstm_cell_411/MatMul/ReadVariableOp&^lstm_cell_411/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_411/BiasAdd/ReadVariableOp$lstm_cell_411/BiasAdd/ReadVariableOp2J
#lstm_cell_411/MatMul/ReadVariableOp#lstm_cell_411/MatMul/ReadVariableOp2N
%lstm_cell_411/MatMul_1/ReadVariableOp%lstm_cell_411/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2502296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2502296___redundant_placeholder05
1while_while_cond_2502296___redundant_placeholder15
1while_while_cond_2502296___redundant_placeholder25
1while_while_cond_2502296___redundant_placeholder3
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
*__inference_lstm_462_layer_call_fn_2500698
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2497849|
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2499223

inputs>
,lstm_cell_413_matmul_readvariableop_resource:2(@
.lstm_cell_413_matmul_1_readvariableop_resource:
(;
-lstm_cell_413_biasadd_readvariableop_resource:(
identity??$lstm_cell_413/BiasAdd/ReadVariableOp?#lstm_cell_413/MatMul/ReadVariableOp?%lstm_cell_413/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_413/MatMul/ReadVariableOpReadVariableOp,lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_413/MatMulMatMulstrided_slice_2:output:0+lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_413/MatMul_1MatMulzeros:output:0-lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_413/addAddV2lstm_cell_413/MatMul:product:0 lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_413/BiasAddBiasAddlstm_cell_413/add:z:0,lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_413/splitSplit&lstm_cell_413/split/split_dim:output:0lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_413/SigmoidSigmoidlstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_1Sigmoidlstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_413/mulMullstm_cell_413/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_413/ReluRelulstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_1Mullstm_cell_413/Sigmoid:y:0 lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_413/add_1AddV2lstm_cell_413/mul:z:0lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_413/Sigmoid_2Sigmoidlstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_413/Relu_1Relulstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_413/mul_2Mullstm_cell_413/Sigmoid_2:y:0"lstm_cell_413/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_413_matmul_readvariableop_resource.lstm_cell_413_matmul_1_readvariableop_resource-lstm_cell_413_biasadd_readvariableop_resource*
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
while_body_2499139*
condR
while_cond_2499138*K
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
NoOpNoOp%^lstm_cell_413/BiasAdd/ReadVariableOp$^lstm_cell_413/MatMul/ReadVariableOp&^lstm_cell_413/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_413/BiasAdd/ReadVariableOp$lstm_cell_413/BiasAdd/ReadVariableOp2J
#lstm_cell_413/MatMul/ReadVariableOp#lstm_cell_413/MatMul/ReadVariableOp2N
%lstm_cell_413/MatMul_1/ReadVariableOp%lstm_cell_413/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_463_while_cond_2500019.
*lstm_463_while_lstm_463_while_loop_counter4
0lstm_463_while_lstm_463_while_maximum_iterations
lstm_463_while_placeholder 
lstm_463_while_placeholder_1 
lstm_463_while_placeholder_2 
lstm_463_while_placeholder_30
,lstm_463_while_less_lstm_463_strided_slice_1G
Clstm_463_while_lstm_463_while_cond_2500019___redundant_placeholder0G
Clstm_463_while_lstm_463_while_cond_2500019___redundant_placeholder1G
Clstm_463_while_lstm_463_while_cond_2500019___redundant_placeholder2G
Clstm_463_while_lstm_463_while_cond_2500019___redundant_placeholder3
lstm_463_while_identity
?
lstm_463/while/LessLesslstm_463_while_placeholder,lstm_463_while_less_lstm_463_strided_slice_1*
T0*
_output_shapes
: ]
lstm_463/while/IdentityIdentitylstm_463/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_463_while_identity lstm_463/while/Identity:output:0*(
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
/__inference_lstm_cell_413_layer_call_fn_2502773

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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2498421o
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500676

inputsH
5lstm_462_lstm_cell_411_matmul_readvariableop_resource:	?J
7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource:	d?E
6lstm_462_lstm_cell_411_biasadd_readvariableop_resource:	?H
5lstm_463_lstm_cell_412_matmul_readvariableop_resource:	d?J
7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource:	2?E
6lstm_463_lstm_cell_412_biasadd_readvariableop_resource:	?G
5lstm_464_lstm_cell_413_matmul_readvariableop_resource:2(I
7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource:
(D
6lstm_464_lstm_cell_413_biasadd_readvariableop_resource:(:
(dense_154_matmul_readvariableop_resource:
7
)dense_154_biasadd_readvariableop_resource:
identity?? dense_154/BiasAdd/ReadVariableOp?dense_154/MatMul/ReadVariableOp?-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp?,lstm_462/lstm_cell_411/MatMul/ReadVariableOp?.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp?lstm_462/while?-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp?,lstm_463/lstm_cell_412/MatMul/ReadVariableOp?.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp?lstm_463/while?-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp?,lstm_464/lstm_cell_413/MatMul/ReadVariableOp?.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp?lstm_464/whileD
lstm_462/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_462/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_462/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_462/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_sliceStridedSlicelstm_462/Shape:output:0%lstm_462/strided_slice/stack:output:0'lstm_462/strided_slice/stack_1:output:0'lstm_462/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_462/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_462/zeros/packedPacklstm_462/strided_slice:output:0 lstm_462/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_462/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_462/zerosFilllstm_462/zeros/packed:output:0lstm_462/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_462/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_462/zeros_1/packedPacklstm_462/strided_slice:output:0"lstm_462/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_462/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_462/zeros_1Fill lstm_462/zeros_1/packed:output:0lstm_462/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_462/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_462/transpose	Transposeinputs lstm_462/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_462/Shape_1Shapelstm_462/transpose:y:0*
T0*
_output_shapes
:h
lstm_462/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_462/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_1StridedSlicelstm_462/Shape_1:output:0'lstm_462/strided_slice_1/stack:output:0)lstm_462/strided_slice_1/stack_1:output:0)lstm_462/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_462/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_462/TensorArrayV2TensorListReserve-lstm_462/TensorArrayV2/element_shape:output:0!lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_462/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_462/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_462/transpose:y:0Glstm_462/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_462/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_462/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_2StridedSlicelstm_462/transpose:y:0'lstm_462/strided_slice_2/stack:output:0)lstm_462/strided_slice_2/stack_1:output:0)lstm_462/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_462/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp5lstm_462_lstm_cell_411_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_462/lstm_cell_411/MatMulMatMul!lstm_462/strided_slice_2:output:04lstm_462/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_462/lstm_cell_411/MatMul_1MatMullstm_462/zeros:output:06lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_462/lstm_cell_411/addAddV2'lstm_462/lstm_cell_411/MatMul:product:0)lstm_462/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp6lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_462/lstm_cell_411/BiasAddBiasAddlstm_462/lstm_cell_411/add:z:05lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_462/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_462/lstm_cell_411/splitSplit/lstm_462/lstm_cell_411/split/split_dim:output:0'lstm_462/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_462/lstm_cell_411/SigmoidSigmoid%lstm_462/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_462/lstm_cell_411/Sigmoid_1Sigmoid%lstm_462/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mulMul$lstm_462/lstm_cell_411/Sigmoid_1:y:0lstm_462/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_462/lstm_cell_411/ReluRelu%lstm_462/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mul_1Mul"lstm_462/lstm_cell_411/Sigmoid:y:0)lstm_462/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/add_1AddV2lstm_462/lstm_cell_411/mul:z:0 lstm_462/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_462/lstm_cell_411/Sigmoid_2Sigmoid%lstm_462/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_462/lstm_cell_411/Relu_1Relu lstm_462/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_462/lstm_cell_411/mul_2Mul$lstm_462/lstm_cell_411/Sigmoid_2:y:0+lstm_462/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_462/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_462/TensorArrayV2_1TensorListReserve/lstm_462/TensorArrayV2_1/element_shape:output:0!lstm_462/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_462/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_462/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_462/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_462/whileWhile$lstm_462/while/loop_counter:output:0*lstm_462/while/maximum_iterations:output:0lstm_462/time:output:0!lstm_462/TensorArrayV2_1:handle:0lstm_462/zeros:output:0lstm_462/zeros_1:output:0!lstm_462/strided_slice_1:output:0@lstm_462/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_462_lstm_cell_411_matmul_readvariableop_resource7lstm_462_lstm_cell_411_matmul_1_readvariableop_resource6lstm_462_lstm_cell_411_biasadd_readvariableop_resource*
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
lstm_462_while_body_2500308*'
condR
lstm_462_while_cond_2500307*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_462/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_462/TensorArrayV2Stack/TensorListStackTensorListStacklstm_462/while:output:3Blstm_462/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_462/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_462/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_462/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_462/strided_slice_3StridedSlice4lstm_462/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_462/strided_slice_3/stack:output:0)lstm_462/strided_slice_3/stack_1:output:0)lstm_462/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_462/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_462/transpose_1	Transpose4lstm_462/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_462/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_462/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_463/ShapeShapelstm_462/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_463/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_463/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_463/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_sliceStridedSlicelstm_463/Shape:output:0%lstm_463/strided_slice/stack:output:0'lstm_463/strided_slice/stack_1:output:0'lstm_463/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_463/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_463/zeros/packedPacklstm_463/strided_slice:output:0 lstm_463/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_463/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_463/zerosFilllstm_463/zeros/packed:output:0lstm_463/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_463/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_463/zeros_1/packedPacklstm_463/strided_slice:output:0"lstm_463/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_463/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_463/zeros_1Fill lstm_463/zeros_1/packed:output:0lstm_463/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_463/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_463/transpose	Transposelstm_462/transpose_1:y:0 lstm_463/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_463/Shape_1Shapelstm_463/transpose:y:0*
T0*
_output_shapes
:h
lstm_463/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_463/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_1StridedSlicelstm_463/Shape_1:output:0'lstm_463/strided_slice_1/stack:output:0)lstm_463/strided_slice_1/stack_1:output:0)lstm_463/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_463/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_463/TensorArrayV2TensorListReserve-lstm_463/TensorArrayV2/element_shape:output:0!lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_463/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_463/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_463/transpose:y:0Glstm_463/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_463/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_463/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_2StridedSlicelstm_463/transpose:y:0'lstm_463/strided_slice_2/stack:output:0)lstm_463/strided_slice_2/stack_1:output:0)lstm_463/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_463/lstm_cell_412/MatMul/ReadVariableOpReadVariableOp5lstm_463_lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_463/lstm_cell_412/MatMulMatMul!lstm_463/strided_slice_2:output:04lstm_463/lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_463/lstm_cell_412/MatMul_1MatMullstm_463/zeros:output:06lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_463/lstm_cell_412/addAddV2'lstm_463/lstm_cell_412/MatMul:product:0)lstm_463/lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp6lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_463/lstm_cell_412/BiasAddBiasAddlstm_463/lstm_cell_412/add:z:05lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_463/lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_463/lstm_cell_412/splitSplit/lstm_463/lstm_cell_412/split/split_dim:output:0'lstm_463/lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_463/lstm_cell_412/SigmoidSigmoid%lstm_463/lstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_463/lstm_cell_412/Sigmoid_1Sigmoid%lstm_463/lstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mulMul$lstm_463/lstm_cell_412/Sigmoid_1:y:0lstm_463/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_463/lstm_cell_412/ReluRelu%lstm_463/lstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mul_1Mul"lstm_463/lstm_cell_412/Sigmoid:y:0)lstm_463/lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/add_1AddV2lstm_463/lstm_cell_412/mul:z:0 lstm_463/lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_463/lstm_cell_412/Sigmoid_2Sigmoid%lstm_463/lstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_463/lstm_cell_412/Relu_1Relu lstm_463/lstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_463/lstm_cell_412/mul_2Mul$lstm_463/lstm_cell_412/Sigmoid_2:y:0+lstm_463/lstm_cell_412/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_463/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_463/TensorArrayV2_1TensorListReserve/lstm_463/TensorArrayV2_1/element_shape:output:0!lstm_463/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_463/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_463/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_463/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_463/whileWhile$lstm_463/while/loop_counter:output:0*lstm_463/while/maximum_iterations:output:0lstm_463/time:output:0!lstm_463/TensorArrayV2_1:handle:0lstm_463/zeros:output:0lstm_463/zeros_1:output:0!lstm_463/strided_slice_1:output:0@lstm_463/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_463_lstm_cell_412_matmul_readvariableop_resource7lstm_463_lstm_cell_412_matmul_1_readvariableop_resource6lstm_463_lstm_cell_412_biasadd_readvariableop_resource*
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
lstm_463_while_body_2500447*'
condR
lstm_463_while_cond_2500446*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_463/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_463/TensorArrayV2Stack/TensorListStackTensorListStacklstm_463/while:output:3Blstm_463/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_463/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_463/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_463/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_463/strided_slice_3StridedSlice4lstm_463/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_463/strided_slice_3/stack:output:0)lstm_463/strided_slice_3/stack_1:output:0)lstm_463/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_463/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_463/transpose_1	Transpose4lstm_463/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_463/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_463/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_464/ShapeShapelstm_463/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_464/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_464/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_464/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_sliceStridedSlicelstm_464/Shape:output:0%lstm_464/strided_slice/stack:output:0'lstm_464/strided_slice/stack_1:output:0'lstm_464/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_464/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_464/zeros/packedPacklstm_464/strided_slice:output:0 lstm_464/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_464/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_464/zerosFilllstm_464/zeros/packed:output:0lstm_464/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_464/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_464/zeros_1/packedPacklstm_464/strided_slice:output:0"lstm_464/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_464/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_464/zeros_1Fill lstm_464/zeros_1/packed:output:0lstm_464/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_464/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_464/transpose	Transposelstm_463/transpose_1:y:0 lstm_464/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_464/Shape_1Shapelstm_464/transpose:y:0*
T0*
_output_shapes
:h
lstm_464/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_464/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_1StridedSlicelstm_464/Shape_1:output:0'lstm_464/strided_slice_1/stack:output:0)lstm_464/strided_slice_1/stack_1:output:0)lstm_464/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_464/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_464/TensorArrayV2TensorListReserve-lstm_464/TensorArrayV2/element_shape:output:0!lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_464/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_464/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_464/transpose:y:0Glstm_464/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_464/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_464/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_2StridedSlicelstm_464/transpose:y:0'lstm_464/strided_slice_2/stack:output:0)lstm_464/strided_slice_2/stack_1:output:0)lstm_464/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_464/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp5lstm_464_lstm_cell_413_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_464/lstm_cell_413/MatMulMatMul!lstm_464/strided_slice_2:output:04lstm_464/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_464/lstm_cell_413/MatMul_1MatMullstm_464/zeros:output:06lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_464/lstm_cell_413/addAddV2'lstm_464/lstm_cell_413/MatMul:product:0)lstm_464/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp6lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_464/lstm_cell_413/BiasAddBiasAddlstm_464/lstm_cell_413/add:z:05lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_464/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_464/lstm_cell_413/splitSplit/lstm_464/lstm_cell_413/split/split_dim:output:0'lstm_464/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_464/lstm_cell_413/SigmoidSigmoid%lstm_464/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_464/lstm_cell_413/Sigmoid_1Sigmoid%lstm_464/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mulMul$lstm_464/lstm_cell_413/Sigmoid_1:y:0lstm_464/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_464/lstm_cell_413/ReluRelu%lstm_464/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mul_1Mul"lstm_464/lstm_cell_413/Sigmoid:y:0)lstm_464/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/add_1AddV2lstm_464/lstm_cell_413/mul:z:0 lstm_464/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_464/lstm_cell_413/Sigmoid_2Sigmoid%lstm_464/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_464/lstm_cell_413/Relu_1Relu lstm_464/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_464/lstm_cell_413/mul_2Mul$lstm_464/lstm_cell_413/Sigmoid_2:y:0+lstm_464/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_464/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_464/TensorArrayV2_1TensorListReserve/lstm_464/TensorArrayV2_1/element_shape:output:0!lstm_464/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_464/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_464/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_464/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_464/whileWhile$lstm_464/while/loop_counter:output:0*lstm_464/while/maximum_iterations:output:0lstm_464/time:output:0!lstm_464/TensorArrayV2_1:handle:0lstm_464/zeros:output:0lstm_464/zeros_1:output:0!lstm_464/strided_slice_1:output:0@lstm_464/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_464_lstm_cell_413_matmul_readvariableop_resource7lstm_464_lstm_cell_413_matmul_1_readvariableop_resource6lstm_464_lstm_cell_413_biasadd_readvariableop_resource*
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
lstm_464_while_body_2500586*'
condR
lstm_464_while_cond_2500585*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_464/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_464/TensorArrayV2Stack/TensorListStackTensorListStacklstm_464/while:output:3Blstm_464/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_464/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_464/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_464/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_464/strided_slice_3StridedSlice4lstm_464/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_464/strided_slice_3/stack:output:0)lstm_464/strided_slice_3/stack_1:output:0)lstm_464/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_464/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_464/transpose_1	Transpose4lstm_464/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_464/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_464/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_154/MatMul/ReadVariableOpReadVariableOp(dense_154_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_154/MatMulMatMul!lstm_464/strided_slice_3:output:0'dense_154/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_154/BiasAdd/ReadVariableOpReadVariableOp)dense_154_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_154/BiasAddBiasAdddense_154/MatMul:product:0(dense_154/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_154/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_154/BiasAdd/ReadVariableOp ^dense_154/MatMul/ReadVariableOp.^lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp-^lstm_462/lstm_cell_411/MatMul/ReadVariableOp/^lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp^lstm_462/while.^lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp-^lstm_463/lstm_cell_412/MatMul/ReadVariableOp/^lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp^lstm_463/while.^lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp-^lstm_464/lstm_cell_413/MatMul/ReadVariableOp/^lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp^lstm_464/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_154/BiasAdd/ReadVariableOp dense_154/BiasAdd/ReadVariableOp2B
dense_154/MatMul/ReadVariableOpdense_154/MatMul/ReadVariableOp2^
-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp-lstm_462/lstm_cell_411/BiasAdd/ReadVariableOp2\
,lstm_462/lstm_cell_411/MatMul/ReadVariableOp,lstm_462/lstm_cell_411/MatMul/ReadVariableOp2`
.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp.lstm_462/lstm_cell_411/MatMul_1/ReadVariableOp2 
lstm_462/whilelstm_462/while2^
-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp-lstm_463/lstm_cell_412/BiasAdd/ReadVariableOp2\
,lstm_463/lstm_cell_412/MatMul/ReadVariableOp,lstm_463/lstm_cell_412/MatMul/ReadVariableOp2`
.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp.lstm_463/lstm_cell_412/MatMul_1/ReadVariableOp2 
lstm_463/whilelstm_463/while2^
-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp-lstm_464/lstm_cell_413/BiasAdd/ReadVariableOp2\
,lstm_464/lstm_cell_413/MatMul/ReadVariableOp,lstm_464/lstm_cell_413/MatMul/ReadVariableOp2`
.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp.lstm_464/lstm_cell_413/MatMul_1/ReadVariableOp2 
lstm_464/whilelstm_464/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2502440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_413_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_413_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_413_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_413_matmul_readvariableop_resource:2(F
4while_lstm_cell_413_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_413_biasadd_readvariableop_resource:(??*while/lstm_cell_413/BiasAdd/ReadVariableOp?)while/lstm_cell_413/MatMul/ReadVariableOp?+while/lstm_cell_413/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_413/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_413_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_413/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_413/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_413/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_413_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_413/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_413/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_413/addAddV2$while/lstm_cell_413/MatMul:product:0&while/lstm_cell_413/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_413/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_413_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_413/BiasAddBiasAddwhile/lstm_cell_413/add:z:02while/lstm_cell_413/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_413/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_413/splitSplit,while/lstm_cell_413/split/split_dim:output:0$while/lstm_cell_413/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_413/SigmoidSigmoid"while/lstm_cell_413/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_1Sigmoid"while/lstm_cell_413/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mulMul!while/lstm_cell_413/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_413/ReluRelu"while/lstm_cell_413/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_1Mulwhile/lstm_cell_413/Sigmoid:y:0&while/lstm_cell_413/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/add_1AddV2while/lstm_cell_413/mul:z:0while/lstm_cell_413/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_413/Sigmoid_2Sigmoid"while/lstm_cell_413/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_413/Relu_1Reluwhile/lstm_cell_413/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_413/mul_2Mul!while/lstm_cell_413/Sigmoid_2:y:0(while/lstm_cell_413/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_413/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_413/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_413/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_413/BiasAdd/ReadVariableOp*^while/lstm_cell_413/MatMul/ReadVariableOp,^while/lstm_cell_413/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_413_biasadd_readvariableop_resource5while_lstm_cell_413_biasadd_readvariableop_resource_0"n
4while_lstm_cell_413_matmul_1_readvariableop_resource6while_lstm_cell_413_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_413_matmul_readvariableop_resource4while_lstm_cell_413_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_413/BiasAdd/ReadVariableOp*while/lstm_cell_413/BiasAdd/ReadVariableOp2V
)while/lstm_cell_413/MatMul/ReadVariableOp)while/lstm_cell_413/MatMul/ReadVariableOp2Z
+while/lstm_cell_413/MatMul_1/ReadVariableOp+while/lstm_cell_413/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501765

inputs?
,lstm_cell_412_matmul_readvariableop_resource:	d?A
.lstm_cell_412_matmul_1_readvariableop_resource:	2?<
-lstm_cell_412_biasadd_readvariableop_resource:	?
identity??$lstm_cell_412/BiasAdd/ReadVariableOp?#lstm_cell_412/MatMul/ReadVariableOp?%lstm_cell_412/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_412/MatMul/ReadVariableOpReadVariableOp,lstm_cell_412_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_412/MatMulMatMulstrided_slice_2:output:0+lstm_cell_412/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_412/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_412_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_412/MatMul_1MatMulzeros:output:0-lstm_cell_412/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_412/addAddV2lstm_cell_412/MatMul:product:0 lstm_cell_412/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_412/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_412_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_412/BiasAddBiasAddlstm_cell_412/add:z:0,lstm_cell_412/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_412/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_412/splitSplit&lstm_cell_412/split/split_dim:output:0lstm_cell_412/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_412/SigmoidSigmoidlstm_cell_412/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_1Sigmoidlstm_cell_412/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_412/mulMullstm_cell_412/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_412/ReluRelulstm_cell_412/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_1Mullstm_cell_412/Sigmoid:y:0 lstm_cell_412/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_412/add_1AddV2lstm_cell_412/mul:z:0lstm_cell_412/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_412/Sigmoid_2Sigmoidlstm_cell_412/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_412/Relu_1Relulstm_cell_412/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_412/mul_2Mullstm_cell_412/Sigmoid_2:y:0"lstm_cell_412/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_412_matmul_readvariableop_resource.lstm_cell_412_matmul_1_readvariableop_resource-lstm_cell_412_biasadd_readvariableop_resource*
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
while_body_2501681*
condR
while_cond_2501680*K
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
NoOpNoOp%^lstm_cell_412/BiasAdd/ReadVariableOp$^lstm_cell_412/MatMul/ReadVariableOp&^lstm_cell_412/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_412/BiasAdd/ReadVariableOp$lstm_cell_412/BiasAdd/ReadVariableOp2J
#lstm_cell_412/MatMul/ReadVariableOp#lstm_cell_412/MatMul/ReadVariableOp2N
%lstm_cell_412/MatMul_1/ReadVariableOp%lstm_cell_412/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2499138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2499138___redundant_placeholder05
1while_while_cond_2499138___redundant_placeholder15
1while_while_cond_2499138___redundant_placeholder25
1while_while_cond_2499138___redundant_placeholder3
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
while_body_2497589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_411_2497613_0:	?0
while_lstm_cell_411_2497615_0:	d?,
while_lstm_cell_411_2497617_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_411_2497613:	?.
while_lstm_cell_411_2497615:	d?*
while_lstm_cell_411_2497617:	???+while/lstm_cell_411/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_411/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_411_2497613_0while_lstm_cell_411_2497615_0while_lstm_cell_411_2497617_0*
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2497575?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_411/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_411/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_411/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_411/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_411_2497613while_lstm_cell_411_2497613_0"<
while_lstm_cell_411_2497615while_lstm_cell_411_2497615_0"<
while_lstm_cell_411_2497617while_lstm_cell_411_2497617_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_411/StatefulPartitionedCall+while/lstm_cell_411/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2501064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2501064___redundant_placeholder05
1while_while_cond_2501064___redundant_placeholder15
1while_while_cond_2501064___redundant_placeholder25
1while_while_cond_2501064___redundant_placeholder3
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
while_body_2501065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_411_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_411_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_411_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_411_matmul_readvariableop_resource:	?G
4while_lstm_cell_411_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_411_biasadd_readvariableop_resource:	???*while/lstm_cell_411/BiasAdd/ReadVariableOp?)while/lstm_cell_411/MatMul/ReadVariableOp?+while/lstm_cell_411/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_411/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_411_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_411/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_411/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_411/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_411_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_411/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_411/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_411/addAddV2$while/lstm_cell_411/MatMul:product:0&while/lstm_cell_411/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_411/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_411_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_411/BiasAddBiasAddwhile/lstm_cell_411/add:z:02while/lstm_cell_411/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_411/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_411/splitSplit,while/lstm_cell_411/split/split_dim:output:0$while/lstm_cell_411/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_411/SigmoidSigmoid"while/lstm_cell_411/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_1Sigmoid"while/lstm_cell_411/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mulMul!while/lstm_cell_411/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_411/ReluRelu"while/lstm_cell_411/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_1Mulwhile/lstm_cell_411/Sigmoid:y:0&while/lstm_cell_411/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/add_1AddV2while/lstm_cell_411/mul:z:0while/lstm_cell_411/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_411/Sigmoid_2Sigmoid"while/lstm_cell_411/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_411/Relu_1Reluwhile/lstm_cell_411/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_411/mul_2Mul!while/lstm_cell_411/Sigmoid_2:y:0(while/lstm_cell_411/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_411/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_411/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_411/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_411/BiasAdd/ReadVariableOp*^while/lstm_cell_411/MatMul/ReadVariableOp,^while/lstm_cell_411/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_411_biasadd_readvariableop_resource5while_lstm_cell_411_biasadd_readvariableop_resource_0"n
4while_lstm_cell_411_matmul_1_readvariableop_resource6while_lstm_cell_411_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_411_matmul_readvariableop_resource4while_lstm_cell_411_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_411/BiasAdd/ReadVariableOp*while/lstm_cell_411/BiasAdd/ReadVariableOp2V
)while/lstm_cell_411/MatMul/ReadVariableOp)while/lstm_cell_411/MatMul/ReadVariableOp2Z
+while/lstm_cell_411/MatMul_1/ReadVariableOp+while/lstm_cell_411/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_462_input;
 serving_default_lstm_462_input:0?????????=
	dense_1540
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
2dense_154/kernel
:2dense_154/bias
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
0:.	?2lstm_462/lstm_cell_462/kernel
::8	d?2'lstm_462/lstm_cell_462/recurrent_kernel
*:(?2lstm_462/lstm_cell_462/bias
0:.	d?2lstm_463/lstm_cell_463/kernel
::8	2?2'lstm_463/lstm_cell_463/recurrent_kernel
*:(?2lstm_463/lstm_cell_463/bias
/:-2(2lstm_464/lstm_cell_464/kernel
9:7
(2'lstm_464/lstm_cell_464/recurrent_kernel
):'(2lstm_464/lstm_cell_464/bias
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
2Adam/dense_154/kernel/m
!:2Adam/dense_154/bias/m
5:3	?2$Adam/lstm_462/lstm_cell_462/kernel/m
?:=	d?2.Adam/lstm_462/lstm_cell_462/recurrent_kernel/m
/:-?2"Adam/lstm_462/lstm_cell_462/bias/m
5:3	d?2$Adam/lstm_463/lstm_cell_463/kernel/m
?:=	2?2.Adam/lstm_463/lstm_cell_463/recurrent_kernel/m
/:-?2"Adam/lstm_463/lstm_cell_463/bias/m
4:22(2$Adam/lstm_464/lstm_cell_464/kernel/m
>:<
(2.Adam/lstm_464/lstm_cell_464/recurrent_kernel/m
.:,(2"Adam/lstm_464/lstm_cell_464/bias/m
':%
2Adam/dense_154/kernel/v
!:2Adam/dense_154/bias/v
5:3	?2$Adam/lstm_462/lstm_cell_462/kernel/v
?:=	d?2.Adam/lstm_462/lstm_cell_462/recurrent_kernel/v
/:-?2"Adam/lstm_462/lstm_cell_462/bias/v
5:3	d?2$Adam/lstm_463/lstm_cell_463/kernel/v
?:=	2?2.Adam/lstm_463/lstm_cell_463/recurrent_kernel/v
/:-?2"Adam/lstm_463/lstm_cell_463/bias/v
4:22(2$Adam/lstm_464/lstm_cell_464/kernel/v
>:<
(2.Adam/lstm_464/lstm_cell_464/recurrent_kernel/v
.:,(2"Adam/lstm_464/lstm_cell_464/bias/v
?2?
0__inference_sequential_154_layer_call_fn_2499057
0__inference_sequential_154_layer_call_fn_2499795
0__inference_sequential_154_layer_call_fn_2499822
0__inference_sequential_154_layer_call_fn_2499673?
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500249
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500676
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499703
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499733?
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
"__inference__wrapped_model_2497508lstm_462_input"?
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
*__inference_lstm_462_layer_call_fn_2500687
*__inference_lstm_462_layer_call_fn_2500698
*__inference_lstm_462_layer_call_fn_2500709
*__inference_lstm_462_layer_call_fn_2500720?
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2500863
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501006
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501149
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501292?
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
*__inference_lstm_463_layer_call_fn_2501303
*__inference_lstm_463_layer_call_fn_2501314
*__inference_lstm_463_layer_call_fn_2501325
*__inference_lstm_463_layer_call_fn_2501336?
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501479
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501622
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501765
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501908?
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
*__inference_lstm_464_layer_call_fn_2501919
*__inference_lstm_464_layer_call_fn_2501930
*__inference_lstm_464_layer_call_fn_2501941
*__inference_lstm_464_layer_call_fn_2501952?
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502095
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502238
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502381
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502524?
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
+__inference_dense_154_layer_call_fn_2502533?
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
F__inference_dense_154_layer_call_and_return_conditional_losses_2502543?
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
%__inference_signature_wrapper_2499768lstm_462_input"?
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
/__inference_lstm_cell_411_layer_call_fn_2502560
/__inference_lstm_cell_411_layer_call_fn_2502577?
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502609
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502641?
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
/__inference_lstm_cell_412_layer_call_fn_2502658
/__inference_lstm_cell_412_layer_call_fn_2502675?
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502707
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502739?
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
/__inference_lstm_cell_413_layer_call_fn_2502756
/__inference_lstm_cell_413_layer_call_fn_2502773?
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502805
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502837?
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
"__inference__wrapped_model_2497508?-./012345!";?8
1?.
,?)
lstm_462_input?????????
? "5?2
0
	dense_154#? 
	dense_154??????????
F__inference_dense_154_layer_call_and_return_conditional_losses_2502543\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_154_layer_call_fn_2502533O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_462_layer_call_and_return_conditional_losses_2500863?-./O?L
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501006?-./O?L
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501149q-./??<
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
E__inference_lstm_462_layer_call_and_return_conditional_losses_2501292q-./??<
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
*__inference_lstm_462_layer_call_fn_2500687}-./O?L
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
*__inference_lstm_462_layer_call_fn_2500698}-./O?L
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
*__inference_lstm_462_layer_call_fn_2500709d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_462_layer_call_fn_2500720d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501479?012O?L
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501622?012O?L
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501765q012??<
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
E__inference_lstm_463_layer_call_and_return_conditional_losses_2501908q012??<
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
*__inference_lstm_463_layer_call_fn_2501303}012O?L
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
*__inference_lstm_463_layer_call_fn_2501314}012O?L
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
*__inference_lstm_463_layer_call_fn_2501325d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_463_layer_call_fn_2501336d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502095}345O?L
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502238}345O?L
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502381m345??<
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
E__inference_lstm_464_layer_call_and_return_conditional_losses_2502524m345??<
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
*__inference_lstm_464_layer_call_fn_2501919p345O?L
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
*__inference_lstm_464_layer_call_fn_2501930p345O?L
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
*__inference_lstm_464_layer_call_fn_2501941`345??<
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
*__inference_lstm_464_layer_call_fn_2501952`345??<
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502609?-./??}
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
J__inference_lstm_cell_411_layer_call_and_return_conditional_losses_2502641?-./??}
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
/__inference_lstm_cell_411_layer_call_fn_2502560?-./??}
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
/__inference_lstm_cell_411_layer_call_fn_2502577?-./??}
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502707?012??}
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
J__inference_lstm_cell_412_layer_call_and_return_conditional_losses_2502739?012??}
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
/__inference_lstm_cell_412_layer_call_fn_2502658?012??}
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
/__inference_lstm_cell_412_layer_call_fn_2502675?012??}
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502805?345??}
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
J__inference_lstm_cell_413_layer_call_and_return_conditional_losses_2502837?345??}
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
/__inference_lstm_cell_413_layer_call_fn_2502756?345??}
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
/__inference_lstm_cell_413_layer_call_fn_2502773?345??}
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499703y-./012345!"C?@
9?6
,?)
lstm_462_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_154_layer_call_and_return_conditional_losses_2499733y-./012345!"C?@
9?6
,?)
lstm_462_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500249q-./012345!";?8
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
K__inference_sequential_154_layer_call_and_return_conditional_losses_2500676q-./012345!";?8
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
0__inference_sequential_154_layer_call_fn_2499057l-./012345!"C?@
9?6
,?)
lstm_462_input?????????
p 

 
? "???????????
0__inference_sequential_154_layer_call_fn_2499673l-./012345!"C?@
9?6
,?)
lstm_462_input?????????
p

 
? "???????????
0__inference_sequential_154_layer_call_fn_2499795d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_154_layer_call_fn_2499822d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2499768?-./012345!"M?J
? 
C?@
>
lstm_462_input,?)
lstm_462_input?????????"5?2
0
	dense_154#? 
	dense_154?????????