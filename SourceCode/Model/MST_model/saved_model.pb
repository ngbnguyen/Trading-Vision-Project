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
dense_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_144/kernel
u
$dense_144/kernel/Read/ReadVariableOpReadVariableOpdense_144/kernel*
_output_shapes

:
*
dtype0
t
dense_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_144/bias
m
"dense_144/bias/Read/ReadVariableOpReadVariableOpdense_144/bias*
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
lstm_432/lstm_cell_432/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_432/lstm_cell_432/kernel
?
1lstm_432/lstm_cell_432/kernel/Read/ReadVariableOpReadVariableOplstm_432/lstm_cell_432/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_432/lstm_cell_432/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_432/lstm_cell_432/recurrent_kernel
?
;lstm_432/lstm_cell_432/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_432/lstm_cell_432/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_432/lstm_cell_432/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_432/lstm_cell_432/bias
?
/lstm_432/lstm_cell_432/bias/Read/ReadVariableOpReadVariableOplstm_432/lstm_cell_432/bias*
_output_shapes	
:?*
dtype0
?
lstm_433/lstm_cell_433/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_433/lstm_cell_433/kernel
?
1lstm_433/lstm_cell_433/kernel/Read/ReadVariableOpReadVariableOplstm_433/lstm_cell_433/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_433/lstm_cell_433/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_433/lstm_cell_433/recurrent_kernel
?
;lstm_433/lstm_cell_433/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_433/lstm_cell_433/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_433/lstm_cell_433/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_433/lstm_cell_433/bias
?
/lstm_433/lstm_cell_433/bias/Read/ReadVariableOpReadVariableOplstm_433/lstm_cell_433/bias*
_output_shapes	
:?*
dtype0
?
lstm_434/lstm_cell_434/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_434/lstm_cell_434/kernel
?
1lstm_434/lstm_cell_434/kernel/Read/ReadVariableOpReadVariableOplstm_434/lstm_cell_434/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_434/lstm_cell_434/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_434/lstm_cell_434/recurrent_kernel
?
;lstm_434/lstm_cell_434/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_434/lstm_cell_434/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_434/lstm_cell_434/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_434/lstm_cell_434/bias
?
/lstm_434/lstm_cell_434/bias/Read/ReadVariableOpReadVariableOplstm_434/lstm_cell_434/bias*
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
Adam/dense_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_144/kernel/m
?
+Adam/dense_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_144/bias/m
{
)Adam/dense_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_432/lstm_cell_432/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_432/lstm_cell_432/kernel/m
?
8Adam/lstm_432/lstm_cell_432/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_432/lstm_cell_432/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_432/lstm_cell_432/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_432/lstm_cell_432/recurrent_kernel/m
?
BAdam/lstm_432/lstm_cell_432/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_432/lstm_cell_432/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_432/lstm_cell_432/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_432/lstm_cell_432/bias/m
?
6Adam/lstm_432/lstm_cell_432/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_432/lstm_cell_432/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_433/lstm_cell_433/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_433/lstm_cell_433/kernel/m
?
8Adam/lstm_433/lstm_cell_433/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_433/lstm_cell_433/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_433/lstm_cell_433/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_433/lstm_cell_433/recurrent_kernel/m
?
BAdam/lstm_433/lstm_cell_433/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_433/lstm_cell_433/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_433/lstm_cell_433/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_433/lstm_cell_433/bias/m
?
6Adam/lstm_433/lstm_cell_433/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_433/lstm_cell_433/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_434/lstm_cell_434/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_434/lstm_cell_434/kernel/m
?
8Adam/lstm_434/lstm_cell_434/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_434/lstm_cell_434/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_434/lstm_cell_434/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_434/lstm_cell_434/recurrent_kernel/m
?
BAdam/lstm_434/lstm_cell_434/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_434/lstm_cell_434/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_434/lstm_cell_434/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_434/lstm_cell_434/bias/m
?
6Adam/lstm_434/lstm_cell_434/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_434/lstm_cell_434/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_144/kernel/v
?
+Adam/dense_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_144/bias/v
{
)Adam/dense_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_432/lstm_cell_432/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_432/lstm_cell_432/kernel/v
?
8Adam/lstm_432/lstm_cell_432/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_432/lstm_cell_432/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_432/lstm_cell_432/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_432/lstm_cell_432/recurrent_kernel/v
?
BAdam/lstm_432/lstm_cell_432/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_432/lstm_cell_432/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_432/lstm_cell_432/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_432/lstm_cell_432/bias/v
?
6Adam/lstm_432/lstm_cell_432/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_432/lstm_cell_432/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_433/lstm_cell_433/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_433/lstm_cell_433/kernel/v
?
8Adam/lstm_433/lstm_cell_433/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_433/lstm_cell_433/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_433/lstm_cell_433/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_433/lstm_cell_433/recurrent_kernel/v
?
BAdam/lstm_433/lstm_cell_433/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_433/lstm_cell_433/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_433/lstm_cell_433/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_433/lstm_cell_433/bias/v
?
6Adam/lstm_433/lstm_cell_433/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_433/lstm_cell_433/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_434/lstm_cell_434/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_434/lstm_cell_434/kernel/v
?
8Adam/lstm_434/lstm_cell_434/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_434/lstm_cell_434/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_434/lstm_cell_434/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_434/lstm_cell_434/recurrent_kernel/v
?
BAdam/lstm_434/lstm_cell_434/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_434/lstm_cell_434/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_434/lstm_cell_434/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_434/lstm_cell_434/bias/v
?
6Adam/lstm_434/lstm_cell_434/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_434/lstm_cell_434/bias/v*
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
VARIABLE_VALUEdense_144/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_144/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_432/lstm_cell_432/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_432/lstm_cell_432/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_432/lstm_cell_432/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_433/lstm_cell_433/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_433/lstm_cell_433/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_433/lstm_cell_433/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_434/lstm_cell_434/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_434/lstm_cell_434/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_434/lstm_cell_434/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_144/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_144/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_432/lstm_cell_432/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_432/lstm_cell_432/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_432/lstm_cell_432/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_433/lstm_cell_433/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_433/lstm_cell_433/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_433/lstm_cell_433/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_434/lstm_cell_434/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_434/lstm_cell_434/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_434/lstm_cell_434/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_144/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_144/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_432/lstm_cell_432/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_432/lstm_cell_432/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_432/lstm_cell_432/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_433/lstm_cell_433/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_433/lstm_cell_433/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_433/lstm_cell_433/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_434/lstm_cell_434/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_434/lstm_cell_434/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_434/lstm_cell_434/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_432_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_432_inputlstm_432/lstm_cell_432/kernel'lstm_432/lstm_cell_432/recurrent_kernellstm_432/lstm_cell_432/biaslstm_433/lstm_cell_433/kernel'lstm_433/lstm_cell_433/recurrent_kernellstm_433/lstm_cell_433/biaslstm_434/lstm_cell_434/kernel'lstm_434/lstm_cell_434/recurrent_kernellstm_434/lstm_cell_434/biasdense_144/kerneldense_144/bias*
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
%__inference_signature_wrapper_2445681
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_144/kernel/Read/ReadVariableOp"dense_144/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_432/lstm_cell_432/kernel/Read/ReadVariableOp;lstm_432/lstm_cell_432/recurrent_kernel/Read/ReadVariableOp/lstm_432/lstm_cell_432/bias/Read/ReadVariableOp1lstm_433/lstm_cell_433/kernel/Read/ReadVariableOp;lstm_433/lstm_cell_433/recurrent_kernel/Read/ReadVariableOp/lstm_433/lstm_cell_433/bias/Read/ReadVariableOp1lstm_434/lstm_cell_434/kernel/Read/ReadVariableOp;lstm_434/lstm_cell_434/recurrent_kernel/Read/ReadVariableOp/lstm_434/lstm_cell_434/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_144/kernel/m/Read/ReadVariableOp)Adam/dense_144/bias/m/Read/ReadVariableOp8Adam/lstm_432/lstm_cell_432/kernel/m/Read/ReadVariableOpBAdam/lstm_432/lstm_cell_432/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_432/lstm_cell_432/bias/m/Read/ReadVariableOp8Adam/lstm_433/lstm_cell_433/kernel/m/Read/ReadVariableOpBAdam/lstm_433/lstm_cell_433/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_433/lstm_cell_433/bias/m/Read/ReadVariableOp8Adam/lstm_434/lstm_cell_434/kernel/m/Read/ReadVariableOpBAdam/lstm_434/lstm_cell_434/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_434/lstm_cell_434/bias/m/Read/ReadVariableOp+Adam/dense_144/kernel/v/Read/ReadVariableOp)Adam/dense_144/bias/v/Read/ReadVariableOp8Adam/lstm_432/lstm_cell_432/kernel/v/Read/ReadVariableOpBAdam/lstm_432/lstm_cell_432/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_432/lstm_cell_432/bias/v/Read/ReadVariableOp8Adam/lstm_433/lstm_cell_433/kernel/v/Read/ReadVariableOpBAdam/lstm_433/lstm_cell_433/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_433/lstm_cell_433/bias/v/Read/ReadVariableOp8Adam/lstm_434/lstm_cell_434/kernel/v/Read/ReadVariableOpBAdam/lstm_434/lstm_cell_434/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_434/lstm_cell_434/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2448893
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_144/kerneldense_144/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_432/lstm_cell_432/kernel'lstm_432/lstm_cell_432/recurrent_kernellstm_432/lstm_cell_432/biaslstm_433/lstm_cell_433/kernel'lstm_433/lstm_cell_433/recurrent_kernellstm_433/lstm_cell_433/biaslstm_434/lstm_cell_434/kernel'lstm_434/lstm_cell_434/recurrent_kernellstm_434/lstm_cell_434/biastotalcountAdam/dense_144/kernel/mAdam/dense_144/bias/m$Adam/lstm_432/lstm_cell_432/kernel/m.Adam/lstm_432/lstm_cell_432/recurrent_kernel/m"Adam/lstm_432/lstm_cell_432/bias/m$Adam/lstm_433/lstm_cell_433/kernel/m.Adam/lstm_433/lstm_cell_433/recurrent_kernel/m"Adam/lstm_433/lstm_cell_433/bias/m$Adam/lstm_434/lstm_cell_434/kernel/m.Adam/lstm_434/lstm_cell_434/recurrent_kernel/m"Adam/lstm_434/lstm_cell_434/bias/mAdam/dense_144/kernel/vAdam/dense_144/bias/v$Adam/lstm_432/lstm_cell_432/kernel/v.Adam/lstm_432/lstm_cell_432/recurrent_kernel/v"Adam/lstm_432/lstm_cell_432/bias/v$Adam/lstm_433/lstm_cell_433/kernel/v.Adam/lstm_433/lstm_cell_433/recurrent_kernel/v"Adam/lstm_433/lstm_cell_433/bias/v$Adam/lstm_434/lstm_cell_434/kernel/v.Adam/lstm_434/lstm_cell_434/recurrent_kernel/v"Adam/lstm_434/lstm_cell_434/bias/v*4
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
#__inference__traced_restore_2449023??+
??
?
#__inference__traced_restore_2449023
file_prefix3
!assignvariableop_dense_144_kernel:
/
!assignvariableop_1_dense_144_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_432_lstm_cell_432_kernel:	?M
:assignvariableop_8_lstm_432_lstm_cell_432_recurrent_kernel:	d?=
.assignvariableop_9_lstm_432_lstm_cell_432_bias:	?D
1assignvariableop_10_lstm_433_lstm_cell_433_kernel:	d?N
;assignvariableop_11_lstm_433_lstm_cell_433_recurrent_kernel:	2?>
/assignvariableop_12_lstm_433_lstm_cell_433_bias:	?C
1assignvariableop_13_lstm_434_lstm_cell_434_kernel:2(M
;assignvariableop_14_lstm_434_lstm_cell_434_recurrent_kernel:
(=
/assignvariableop_15_lstm_434_lstm_cell_434_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_144_kernel_m:
7
)assignvariableop_19_adam_dense_144_bias_m:K
8assignvariableop_20_adam_lstm_432_lstm_cell_432_kernel_m:	?U
Bassignvariableop_21_adam_lstm_432_lstm_cell_432_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_432_lstm_cell_432_bias_m:	?K
8assignvariableop_23_adam_lstm_433_lstm_cell_433_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_433_lstm_cell_433_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_433_lstm_cell_433_bias_m:	?J
8assignvariableop_26_adam_lstm_434_lstm_cell_434_kernel_m:2(T
Bassignvariableop_27_adam_lstm_434_lstm_cell_434_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_434_lstm_cell_434_bias_m:(=
+assignvariableop_29_adam_dense_144_kernel_v:
7
)assignvariableop_30_adam_dense_144_bias_v:K
8assignvariableop_31_adam_lstm_432_lstm_cell_432_kernel_v:	?U
Bassignvariableop_32_adam_lstm_432_lstm_cell_432_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_432_lstm_cell_432_bias_v:	?K
8assignvariableop_34_adam_lstm_433_lstm_cell_433_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_433_lstm_cell_433_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_433_lstm_cell_433_bias_v:	?J
8assignvariableop_37_adam_lstm_434_lstm_cell_434_kernel_v:2(T
Bassignvariableop_38_adam_lstm_434_lstm_cell_434_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_434_lstm_cell_434_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_144_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_144_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_432_lstm_cell_432_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_432_lstm_cell_432_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_432_lstm_cell_432_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_433_lstm_cell_433_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_433_lstm_cell_433_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_433_lstm_cell_433_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_434_lstm_cell_434_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_434_lstm_cell_434_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_434_lstm_cell_434_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_144_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_144_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_432_lstm_cell_432_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_432_lstm_cell_432_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_432_lstm_cell_432_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_433_lstm_cell_433_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_433_lstm_cell_433_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_433_lstm_cell_433_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_434_lstm_cell_434_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_434_lstm_cell_434_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_434_lstm_cell_434_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_144_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_144_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_432_lstm_cell_432_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_432_lstm_cell_432_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_432_lstm_cell_432_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_433_lstm_cell_433_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_433_lstm_cell_433_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_433_lstm_cell_433_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_434_lstm_cell_434_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_434_lstm_cell_434_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_434_lstm_cell_434_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2448352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2448352___redundant_placeholder05
1while_while_cond_2448352___redundant_placeholder15
1while_while_cond_2448352___redundant_placeholder25
1while_while_cond_2448352___redundant_placeholder3
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
while_body_2445052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_433_layer_call_fn_2447249

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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2445301s
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
??
?
"__inference__wrapped_model_2443421
lstm_432_inputW
Dsequential_144_lstm_432_lstm_cell_402_matmul_readvariableop_resource:	?Y
Fsequential_144_lstm_432_lstm_cell_402_matmul_1_readvariableop_resource:	d?T
Esequential_144_lstm_432_lstm_cell_402_biasadd_readvariableop_resource:	?W
Dsequential_144_lstm_433_lstm_cell_403_matmul_readvariableop_resource:	d?Y
Fsequential_144_lstm_433_lstm_cell_403_matmul_1_readvariableop_resource:	2?T
Esequential_144_lstm_433_lstm_cell_403_biasadd_readvariableop_resource:	?V
Dsequential_144_lstm_434_lstm_cell_404_matmul_readvariableop_resource:2(X
Fsequential_144_lstm_434_lstm_cell_404_matmul_1_readvariableop_resource:
(S
Esequential_144_lstm_434_lstm_cell_404_biasadd_readvariableop_resource:(I
7sequential_144_dense_144_matmul_readvariableop_resource:
F
8sequential_144_dense_144_biasadd_readvariableop_resource:
identity??/sequential_144/dense_144/BiasAdd/ReadVariableOp?.sequential_144/dense_144/MatMul/ReadVariableOp?<sequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp?;sequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOp?=sequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp?sequential_144/lstm_432/while?<sequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp?;sequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOp?=sequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp?sequential_144/lstm_433/while?<sequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp?;sequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOp?=sequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp?sequential_144/lstm_434/while[
sequential_144/lstm_432/ShapeShapelstm_432_input*
T0*
_output_shapes
:u
+sequential_144/lstm_432/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_144/lstm_432/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_144/lstm_432/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_144/lstm_432/strided_sliceStridedSlice&sequential_144/lstm_432/Shape:output:04sequential_144/lstm_432/strided_slice/stack:output:06sequential_144/lstm_432/strided_slice/stack_1:output:06sequential_144/lstm_432/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_144/lstm_432/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_144/lstm_432/zeros/packedPack.sequential_144/lstm_432/strided_slice:output:0/sequential_144/lstm_432/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_144/lstm_432/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_432/zerosFill-sequential_144/lstm_432/zeros/packed:output:0,sequential_144/lstm_432/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_144/lstm_432/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_144/lstm_432/zeros_1/packedPack.sequential_144/lstm_432/strided_slice:output:01sequential_144/lstm_432/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_144/lstm_432/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_432/zeros_1Fill/sequential_144/lstm_432/zeros_1/packed:output:0.sequential_144/lstm_432/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_144/lstm_432/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_144/lstm_432/transpose	Transposelstm_432_input/sequential_144/lstm_432/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_144/lstm_432/Shape_1Shape%sequential_144/lstm_432/transpose:y:0*
T0*
_output_shapes
:w
-sequential_144/lstm_432/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_432/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_432/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_432/strided_slice_1StridedSlice(sequential_144/lstm_432/Shape_1:output:06sequential_144/lstm_432/strided_slice_1/stack:output:08sequential_144/lstm_432/strided_slice_1/stack_1:output:08sequential_144/lstm_432/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_144/lstm_432/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_144/lstm_432/TensorArrayV2TensorListReserve<sequential_144/lstm_432/TensorArrayV2/element_shape:output:00sequential_144/lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_144/lstm_432/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_144/lstm_432/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_144/lstm_432/transpose:y:0Vsequential_144/lstm_432/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_144/lstm_432/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_432/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_432/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_432/strided_slice_2StridedSlice%sequential_144/lstm_432/transpose:y:06sequential_144/lstm_432/strided_slice_2/stack:output:08sequential_144/lstm_432/strided_slice_2/stack_1:output:08sequential_144/lstm_432/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOpReadVariableOpDsequential_144_lstm_432_lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_144/lstm_432/lstm_cell_402/MatMulMatMul0sequential_144/lstm_432/strided_slice_2:output:0Csequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOpFsequential_144_lstm_432_lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_144/lstm_432/lstm_cell_402/MatMul_1MatMul&sequential_144/lstm_432/zeros:output:0Esequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_144/lstm_432/lstm_cell_402/addAddV26sequential_144/lstm_432/lstm_cell_402/MatMul:product:08sequential_144/lstm_432/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOpEsequential_144_lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_144/lstm_432/lstm_cell_402/BiasAddBiasAdd-sequential_144/lstm_432/lstm_cell_402/add:z:0Dsequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_144/lstm_432/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_144/lstm_432/lstm_cell_402/splitSplit>sequential_144/lstm_432/lstm_cell_402/split/split_dim:output:06sequential_144/lstm_432/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_144/lstm_432/lstm_cell_402/SigmoidSigmoid4sequential_144/lstm_432/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_144/lstm_432/lstm_cell_402/Sigmoid_1Sigmoid4sequential_144/lstm_432/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_144/lstm_432/lstm_cell_402/mulMul3sequential_144/lstm_432/lstm_cell_402/Sigmoid_1:y:0(sequential_144/lstm_432/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_144/lstm_432/lstm_cell_402/ReluRelu4sequential_144/lstm_432/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_144/lstm_432/lstm_cell_402/mul_1Mul1sequential_144/lstm_432/lstm_cell_402/Sigmoid:y:08sequential_144/lstm_432/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_144/lstm_432/lstm_cell_402/add_1AddV2-sequential_144/lstm_432/lstm_cell_402/mul:z:0/sequential_144/lstm_432/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_144/lstm_432/lstm_cell_402/Sigmoid_2Sigmoid4sequential_144/lstm_432/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_144/lstm_432/lstm_cell_402/Relu_1Relu/sequential_144/lstm_432/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_144/lstm_432/lstm_cell_402/mul_2Mul3sequential_144/lstm_432/lstm_cell_402/Sigmoid_2:y:0:sequential_144/lstm_432/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_144/lstm_432/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_144/lstm_432/TensorArrayV2_1TensorListReserve>sequential_144/lstm_432/TensorArrayV2_1/element_shape:output:00sequential_144/lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_144/lstm_432/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_144/lstm_432/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_144/lstm_432/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_144/lstm_432/whileWhile3sequential_144/lstm_432/while/loop_counter:output:09sequential_144/lstm_432/while/maximum_iterations:output:0%sequential_144/lstm_432/time:output:00sequential_144/lstm_432/TensorArrayV2_1:handle:0&sequential_144/lstm_432/zeros:output:0(sequential_144/lstm_432/zeros_1:output:00sequential_144/lstm_432/strided_slice_1:output:0Osequential_144/lstm_432/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_144_lstm_432_lstm_cell_402_matmul_readvariableop_resourceFsequential_144_lstm_432_lstm_cell_402_matmul_1_readvariableop_resourceEsequential_144_lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
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
*sequential_144_lstm_432_while_body_2443053*6
cond.R,
*sequential_144_lstm_432_while_cond_2443052*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_144/lstm_432/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_144/lstm_432/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_144/lstm_432/while:output:3Qsequential_144/lstm_432/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_144/lstm_432/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_144/lstm_432/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_432/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_432/strided_slice_3StridedSliceCsequential_144/lstm_432/TensorArrayV2Stack/TensorListStack:tensor:06sequential_144/lstm_432/strided_slice_3/stack:output:08sequential_144/lstm_432/strided_slice_3/stack_1:output:08sequential_144/lstm_432/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_144/lstm_432/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_144/lstm_432/transpose_1	TransposeCsequential_144/lstm_432/TensorArrayV2Stack/TensorListStack:tensor:01sequential_144/lstm_432/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_144/lstm_432/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_144/lstm_433/ShapeShape'sequential_144/lstm_432/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_144/lstm_433/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_144/lstm_433/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_144/lstm_433/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_144/lstm_433/strided_sliceStridedSlice&sequential_144/lstm_433/Shape:output:04sequential_144/lstm_433/strided_slice/stack:output:06sequential_144/lstm_433/strided_slice/stack_1:output:06sequential_144/lstm_433/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_144/lstm_433/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_144/lstm_433/zeros/packedPack.sequential_144/lstm_433/strided_slice:output:0/sequential_144/lstm_433/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_144/lstm_433/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_433/zerosFill-sequential_144/lstm_433/zeros/packed:output:0,sequential_144/lstm_433/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_144/lstm_433/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_144/lstm_433/zeros_1/packedPack.sequential_144/lstm_433/strided_slice:output:01sequential_144/lstm_433/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_144/lstm_433/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_433/zeros_1Fill/sequential_144/lstm_433/zeros_1/packed:output:0.sequential_144/lstm_433/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_144/lstm_433/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_144/lstm_433/transpose	Transpose'sequential_144/lstm_432/transpose_1:y:0/sequential_144/lstm_433/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_144/lstm_433/Shape_1Shape%sequential_144/lstm_433/transpose:y:0*
T0*
_output_shapes
:w
-sequential_144/lstm_433/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_433/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_433/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_433/strided_slice_1StridedSlice(sequential_144/lstm_433/Shape_1:output:06sequential_144/lstm_433/strided_slice_1/stack:output:08sequential_144/lstm_433/strided_slice_1/stack_1:output:08sequential_144/lstm_433/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_144/lstm_433/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_144/lstm_433/TensorArrayV2TensorListReserve<sequential_144/lstm_433/TensorArrayV2/element_shape:output:00sequential_144/lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_144/lstm_433/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_144/lstm_433/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_144/lstm_433/transpose:y:0Vsequential_144/lstm_433/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_144/lstm_433/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_433/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_433/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_433/strided_slice_2StridedSlice%sequential_144/lstm_433/transpose:y:06sequential_144/lstm_433/strided_slice_2/stack:output:08sequential_144/lstm_433/strided_slice_2/stack_1:output:08sequential_144/lstm_433/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOpReadVariableOpDsequential_144_lstm_433_lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_144/lstm_433/lstm_cell_403/MatMulMatMul0sequential_144/lstm_433/strided_slice_2:output:0Csequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOpFsequential_144_lstm_433_lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_144/lstm_433/lstm_cell_403/MatMul_1MatMul&sequential_144/lstm_433/zeros:output:0Esequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_144/lstm_433/lstm_cell_403/addAddV26sequential_144/lstm_433/lstm_cell_403/MatMul:product:08sequential_144/lstm_433/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOpEsequential_144_lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_144/lstm_433/lstm_cell_403/BiasAddBiasAdd-sequential_144/lstm_433/lstm_cell_403/add:z:0Dsequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_144/lstm_433/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_144/lstm_433/lstm_cell_403/splitSplit>sequential_144/lstm_433/lstm_cell_403/split/split_dim:output:06sequential_144/lstm_433/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_144/lstm_433/lstm_cell_403/SigmoidSigmoid4sequential_144/lstm_433/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_144/lstm_433/lstm_cell_403/Sigmoid_1Sigmoid4sequential_144/lstm_433/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_144/lstm_433/lstm_cell_403/mulMul3sequential_144/lstm_433/lstm_cell_403/Sigmoid_1:y:0(sequential_144/lstm_433/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_144/lstm_433/lstm_cell_403/ReluRelu4sequential_144/lstm_433/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_144/lstm_433/lstm_cell_403/mul_1Mul1sequential_144/lstm_433/lstm_cell_403/Sigmoid:y:08sequential_144/lstm_433/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_144/lstm_433/lstm_cell_403/add_1AddV2-sequential_144/lstm_433/lstm_cell_403/mul:z:0/sequential_144/lstm_433/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_144/lstm_433/lstm_cell_403/Sigmoid_2Sigmoid4sequential_144/lstm_433/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_144/lstm_433/lstm_cell_403/Relu_1Relu/sequential_144/lstm_433/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_144/lstm_433/lstm_cell_403/mul_2Mul3sequential_144/lstm_433/lstm_cell_403/Sigmoid_2:y:0:sequential_144/lstm_433/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_144/lstm_433/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_144/lstm_433/TensorArrayV2_1TensorListReserve>sequential_144/lstm_433/TensorArrayV2_1/element_shape:output:00sequential_144/lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_144/lstm_433/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_144/lstm_433/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_144/lstm_433/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_144/lstm_433/whileWhile3sequential_144/lstm_433/while/loop_counter:output:09sequential_144/lstm_433/while/maximum_iterations:output:0%sequential_144/lstm_433/time:output:00sequential_144/lstm_433/TensorArrayV2_1:handle:0&sequential_144/lstm_433/zeros:output:0(sequential_144/lstm_433/zeros_1:output:00sequential_144/lstm_433/strided_slice_1:output:0Osequential_144/lstm_433/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_144_lstm_433_lstm_cell_403_matmul_readvariableop_resourceFsequential_144_lstm_433_lstm_cell_403_matmul_1_readvariableop_resourceEsequential_144_lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
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
*sequential_144_lstm_433_while_body_2443192*6
cond.R,
*sequential_144_lstm_433_while_cond_2443191*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_144/lstm_433/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_144/lstm_433/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_144/lstm_433/while:output:3Qsequential_144/lstm_433/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_144/lstm_433/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_144/lstm_433/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_433/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_433/strided_slice_3StridedSliceCsequential_144/lstm_433/TensorArrayV2Stack/TensorListStack:tensor:06sequential_144/lstm_433/strided_slice_3/stack:output:08sequential_144/lstm_433/strided_slice_3/stack_1:output:08sequential_144/lstm_433/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_144/lstm_433/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_144/lstm_433/transpose_1	TransposeCsequential_144/lstm_433/TensorArrayV2Stack/TensorListStack:tensor:01sequential_144/lstm_433/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_144/lstm_433/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_144/lstm_434/ShapeShape'sequential_144/lstm_433/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_144/lstm_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_144/lstm_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_144/lstm_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_144/lstm_434/strided_sliceStridedSlice&sequential_144/lstm_434/Shape:output:04sequential_144/lstm_434/strided_slice/stack:output:06sequential_144/lstm_434/strided_slice/stack_1:output:06sequential_144/lstm_434/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_144/lstm_434/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_144/lstm_434/zeros/packedPack.sequential_144/lstm_434/strided_slice:output:0/sequential_144/lstm_434/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_144/lstm_434/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_434/zerosFill-sequential_144/lstm_434/zeros/packed:output:0,sequential_144/lstm_434/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_144/lstm_434/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_144/lstm_434/zeros_1/packedPack.sequential_144/lstm_434/strided_slice:output:01sequential_144/lstm_434/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_144/lstm_434/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_144/lstm_434/zeros_1Fill/sequential_144/lstm_434/zeros_1/packed:output:0.sequential_144/lstm_434/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_144/lstm_434/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_144/lstm_434/transpose	Transpose'sequential_144/lstm_433/transpose_1:y:0/sequential_144/lstm_434/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_144/lstm_434/Shape_1Shape%sequential_144/lstm_434/transpose:y:0*
T0*
_output_shapes
:w
-sequential_144/lstm_434/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_434/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_434/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_434/strided_slice_1StridedSlice(sequential_144/lstm_434/Shape_1:output:06sequential_144/lstm_434/strided_slice_1/stack:output:08sequential_144/lstm_434/strided_slice_1/stack_1:output:08sequential_144/lstm_434/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_144/lstm_434/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_144/lstm_434/TensorArrayV2TensorListReserve<sequential_144/lstm_434/TensorArrayV2/element_shape:output:00sequential_144/lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_144/lstm_434/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_144/lstm_434/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_144/lstm_434/transpose:y:0Vsequential_144/lstm_434/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_144/lstm_434/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_434/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_144/lstm_434/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_434/strided_slice_2StridedSlice%sequential_144/lstm_434/transpose:y:06sequential_144/lstm_434/strided_slice_2/stack:output:08sequential_144/lstm_434/strided_slice_2/stack_1:output:08sequential_144/lstm_434/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOpReadVariableOpDsequential_144_lstm_434_lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_144/lstm_434/lstm_cell_404/MatMulMatMul0sequential_144/lstm_434/strided_slice_2:output:0Csequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOpFsequential_144_lstm_434_lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_144/lstm_434/lstm_cell_404/MatMul_1MatMul&sequential_144/lstm_434/zeros:output:0Esequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_144/lstm_434/lstm_cell_404/addAddV26sequential_144/lstm_434/lstm_cell_404/MatMul:product:08sequential_144/lstm_434/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOpEsequential_144_lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_144/lstm_434/lstm_cell_404/BiasAddBiasAdd-sequential_144/lstm_434/lstm_cell_404/add:z:0Dsequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_144/lstm_434/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_144/lstm_434/lstm_cell_404/splitSplit>sequential_144/lstm_434/lstm_cell_404/split/split_dim:output:06sequential_144/lstm_434/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_144/lstm_434/lstm_cell_404/SigmoidSigmoid4sequential_144/lstm_434/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_144/lstm_434/lstm_cell_404/Sigmoid_1Sigmoid4sequential_144/lstm_434/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_144/lstm_434/lstm_cell_404/mulMul3sequential_144/lstm_434/lstm_cell_404/Sigmoid_1:y:0(sequential_144/lstm_434/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_144/lstm_434/lstm_cell_404/ReluRelu4sequential_144/lstm_434/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_144/lstm_434/lstm_cell_404/mul_1Mul1sequential_144/lstm_434/lstm_cell_404/Sigmoid:y:08sequential_144/lstm_434/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_144/lstm_434/lstm_cell_404/add_1AddV2-sequential_144/lstm_434/lstm_cell_404/mul:z:0/sequential_144/lstm_434/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_144/lstm_434/lstm_cell_404/Sigmoid_2Sigmoid4sequential_144/lstm_434/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_144/lstm_434/lstm_cell_404/Relu_1Relu/sequential_144/lstm_434/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_144/lstm_434/lstm_cell_404/mul_2Mul3sequential_144/lstm_434/lstm_cell_404/Sigmoid_2:y:0:sequential_144/lstm_434/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_144/lstm_434/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_144/lstm_434/TensorArrayV2_1TensorListReserve>sequential_144/lstm_434/TensorArrayV2_1/element_shape:output:00sequential_144/lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_144/lstm_434/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_144/lstm_434/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_144/lstm_434/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_144/lstm_434/whileWhile3sequential_144/lstm_434/while/loop_counter:output:09sequential_144/lstm_434/while/maximum_iterations:output:0%sequential_144/lstm_434/time:output:00sequential_144/lstm_434/TensorArrayV2_1:handle:0&sequential_144/lstm_434/zeros:output:0(sequential_144/lstm_434/zeros_1:output:00sequential_144/lstm_434/strided_slice_1:output:0Osequential_144/lstm_434/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_144_lstm_434_lstm_cell_404_matmul_readvariableop_resourceFsequential_144_lstm_434_lstm_cell_404_matmul_1_readvariableop_resourceEsequential_144_lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
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
*sequential_144_lstm_434_while_body_2443331*6
cond.R,
*sequential_144_lstm_434_while_cond_2443330*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_144/lstm_434/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_144/lstm_434/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_144/lstm_434/while:output:3Qsequential_144/lstm_434/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_144/lstm_434/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_144/lstm_434/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_144/lstm_434/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_144/lstm_434/strided_slice_3StridedSliceCsequential_144/lstm_434/TensorArrayV2Stack/TensorListStack:tensor:06sequential_144/lstm_434/strided_slice_3/stack:output:08sequential_144/lstm_434/strided_slice_3/stack_1:output:08sequential_144/lstm_434/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_144/lstm_434/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_144/lstm_434/transpose_1	TransposeCsequential_144/lstm_434/TensorArrayV2Stack/TensorListStack:tensor:01sequential_144/lstm_434/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_144/lstm_434/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_144/dense_144/MatMul/ReadVariableOpReadVariableOp7sequential_144_dense_144_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_144/dense_144/MatMulMatMul0sequential_144/lstm_434/strided_slice_3:output:06sequential_144/dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_144/dense_144/BiasAdd/ReadVariableOpReadVariableOp8sequential_144_dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_144/dense_144/BiasAddBiasAdd)sequential_144/dense_144/MatMul:product:07sequential_144/dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_144/dense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_144/dense_144/BiasAdd/ReadVariableOp/^sequential_144/dense_144/MatMul/ReadVariableOp=^sequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp<^sequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOp>^sequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp^sequential_144/lstm_432/while=^sequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp<^sequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOp>^sequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp^sequential_144/lstm_433/while=^sequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp<^sequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOp>^sequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp^sequential_144/lstm_434/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_144/dense_144/BiasAdd/ReadVariableOp/sequential_144/dense_144/BiasAdd/ReadVariableOp2`
.sequential_144/dense_144/MatMul/ReadVariableOp.sequential_144/dense_144/MatMul/ReadVariableOp2|
<sequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp<sequential_144/lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp2z
;sequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOp;sequential_144/lstm_432/lstm_cell_402/MatMul/ReadVariableOp2~
=sequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp=sequential_144/lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp2>
sequential_144/lstm_432/whilesequential_144/lstm_432/while2|
<sequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp<sequential_144/lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp2z
;sequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOp;sequential_144/lstm_433/lstm_cell_403/MatMul/ReadVariableOp2~
=sequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp=sequential_144/lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp2>
sequential_144/lstm_433/whilesequential_144/lstm_433/while2|
<sequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp<sequential_144/lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp2z
;sequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOp;sequential_144/lstm_434/lstm_cell_404/MatMul/ReadVariableOp2~
=sequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp=sequential_144/lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp2>
sequential_144/lstm_434/whilesequential_144/lstm_434/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_432_input
?
?
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448750

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
/__inference_lstm_cell_402_layer_call_fn_2448490

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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443634o
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
*__inference_lstm_433_layer_call_fn_2447227
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444112|
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443984

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
while_cond_2448209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2448209___redundant_placeholder05
1while_while_cond_2448209___redundant_placeholder15
1while_while_cond_2448209___redundant_placeholder25
1while_while_cond_2448209___redundant_placeholder3
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

lstm_434_while_body_2446072.
*lstm_434_while_lstm_434_while_loop_counter4
0lstm_434_while_lstm_434_while_maximum_iterations
lstm_434_while_placeholder 
lstm_434_while_placeholder_1 
lstm_434_while_placeholder_2 
lstm_434_while_placeholder_3-
)lstm_434_while_lstm_434_strided_slice_1_0i
elstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0:2(Q
?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(L
>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0:(
lstm_434_while_identity
lstm_434_while_identity_1
lstm_434_while_identity_2
lstm_434_while_identity_3
lstm_434_while_identity_4
lstm_434_while_identity_5+
'lstm_434_while_lstm_434_strided_slice_1g
clstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensorM
;lstm_434_while_lstm_cell_404_matmul_readvariableop_resource:2(O
=lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource:
(J
<lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource:(??3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp?2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp?4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp?
@lstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_434/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0lstm_434_while_placeholderIlstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_434/while/lstm_cell_404/MatMulMatMul9lstm_434/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_434/while/lstm_cell_404/MatMul_1MatMullstm_434_while_placeholder_2<lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_434/while/lstm_cell_404/addAddV2-lstm_434/while/lstm_cell_404/MatMul:product:0/lstm_434/while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_434/while/lstm_cell_404/BiasAddBiasAdd$lstm_434/while/lstm_cell_404/add:z:0;lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_434/while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_434/while/lstm_cell_404/splitSplit5lstm_434/while/lstm_cell_404/split/split_dim:output:0-lstm_434/while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_434/while/lstm_cell_404/SigmoidSigmoid+lstm_434/while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_434/while/lstm_cell_404/Sigmoid_1Sigmoid+lstm_434/while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_434/while/lstm_cell_404/mulMul*lstm_434/while/lstm_cell_404/Sigmoid_1:y:0lstm_434_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_434/while/lstm_cell_404/ReluRelu+lstm_434/while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/mul_1Mul(lstm_434/while/lstm_cell_404/Sigmoid:y:0/lstm_434/while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/add_1AddV2$lstm_434/while/lstm_cell_404/mul:z:0&lstm_434/while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_434/while/lstm_cell_404/Sigmoid_2Sigmoid+lstm_434/while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_434/while/lstm_cell_404/Relu_1Relu&lstm_434/while/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/mul_2Mul*lstm_434/while/lstm_cell_404/Sigmoid_2:y:01lstm_434/while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_434/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_434_while_placeholder_1lstm_434_while_placeholder&lstm_434/while/lstm_cell_404/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_434/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_434/while/addAddV2lstm_434_while_placeholderlstm_434/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_434/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_434/while/add_1AddV2*lstm_434_while_lstm_434_while_loop_counterlstm_434/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_434/while/IdentityIdentitylstm_434/while/add_1:z:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_1Identity0lstm_434_while_lstm_434_while_maximum_iterations^lstm_434/while/NoOp*
T0*
_output_shapes
: t
lstm_434/while/Identity_2Identitylstm_434/while/add:z:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_3IdentityClstm_434/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_4Identity&lstm_434/while/lstm_cell_404/mul_2:z:0^lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_434/while/Identity_5Identity&lstm_434/while/lstm_cell_404/add_1:z:0^lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_434/while/NoOpNoOp4^lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp3^lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp5^lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_434_while_identity lstm_434/while/Identity:output:0"?
lstm_434_while_identity_1"lstm_434/while/Identity_1:output:0"?
lstm_434_while_identity_2"lstm_434/while/Identity_2:output:0"?
lstm_434_while_identity_3"lstm_434/while/Identity_3:output:0"?
lstm_434_while_identity_4"lstm_434/while/Identity_4:output:0"?
lstm_434_while_identity_5"lstm_434/while/Identity_5:output:0"T
'lstm_434_while_lstm_434_strided_slice_1)lstm_434_while_lstm_434_strided_slice_1_0"~
<lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0"?
=lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0"|
;lstm_434_while_lstm_cell_404_matmul_readvariableop_resource=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0"?
clstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensorelstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp2h
2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp2l
4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2443571

inputs(
lstm_cell_402_2443489:	?(
lstm_cell_402_2443491:	d?$
lstm_cell_402_2443493:	?
identity??%lstm_cell_402/StatefulPartitionedCall?while;
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
%lstm_cell_402/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_402_2443489lstm_cell_402_2443491lstm_cell_402_2443493*
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443488n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_402_2443489lstm_cell_402_2443491lstm_cell_402_2443493*
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
while_body_2443502*
condR
while_cond_2443501*K
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
NoOpNoOp&^lstm_cell_402/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_402/StatefulPartitionedCall%lstm_cell_402/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_432_layer_call_and_return_conditional_losses_2443762

inputs(
lstm_cell_402_2443680:	?(
lstm_cell_402_2443682:	d?$
lstm_cell_402_2443684:	?
identity??%lstm_cell_402/StatefulPartitionedCall?while;
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
%lstm_cell_402/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_402_2443680lstm_cell_402_2443682lstm_cell_402_2443684*
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443634n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_402_2443680lstm_cell_402_2443682lstm_cell_402_2443684*
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
while_body_2443693*
condR
while_cond_2443692*K
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
NoOpNoOp&^lstm_cell_402/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_402/StatefulPartitionedCall%lstm_cell_402/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444920

inputs>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2444836*
condR
while_cond_2444835*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_144_layer_call_and_return_conditional_losses_2448456

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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2445466

inputs?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2445382*
condR
while_cond_2445381*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_432_while_cond_2446220.
*lstm_432_while_lstm_432_while_loop_counter4
0lstm_432_while_lstm_432_while_maximum_iterations
lstm_432_while_placeholder 
lstm_432_while_placeholder_1 
lstm_432_while_placeholder_2 
lstm_432_while_placeholder_30
,lstm_432_while_less_lstm_432_strided_slice_1G
Clstm_432_while_lstm_432_while_cond_2446220___redundant_placeholder0G
Clstm_432_while_lstm_432_while_cond_2446220___redundant_placeholder1G
Clstm_432_while_lstm_432_while_cond_2446220___redundant_placeholder2G
Clstm_432_while_lstm_432_while_cond_2446220___redundant_placeholder3
lstm_432_while_identity
?
lstm_432/while/LessLesslstm_432_while_placeholder,lstm_432_while_less_lstm_432_strided_slice_1*
T0*
_output_shapes
: ]
lstm_432/while/IdentityIdentitylstm_432/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_432_while_identity lstm_432/while/Identity:output:0*(
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
while_body_2446692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_432_while_body_2446221.
*lstm_432_while_lstm_432_while_loop_counter4
0lstm_432_while_lstm_432_while_maximum_iterations
lstm_432_while_placeholder 
lstm_432_while_placeholder_1 
lstm_432_while_placeholder_2 
lstm_432_while_placeholder_3-
)lstm_432_while_lstm_432_strided_slice_1_0i
elstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0:	?R
?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?M
>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
lstm_432_while_identity
lstm_432_while_identity_1
lstm_432_while_identity_2
lstm_432_while_identity_3
lstm_432_while_identity_4
lstm_432_while_identity_5+
'lstm_432_while_lstm_432_strided_slice_1g
clstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensorN
;lstm_432_while_lstm_cell_402_matmul_readvariableop_resource:	?P
=lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource:	d?K
<lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource:	???3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp?2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp?4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp?
@lstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_432/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0lstm_432_while_placeholderIlstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_432/while/lstm_cell_402/MatMulMatMul9lstm_432/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_432/while/lstm_cell_402/MatMul_1MatMullstm_432_while_placeholder_2<lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_432/while/lstm_cell_402/addAddV2-lstm_432/while/lstm_cell_402/MatMul:product:0/lstm_432/while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_432/while/lstm_cell_402/BiasAddBiasAdd$lstm_432/while/lstm_cell_402/add:z:0;lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_432/while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_432/while/lstm_cell_402/splitSplit5lstm_432/while/lstm_cell_402/split/split_dim:output:0-lstm_432/while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_432/while/lstm_cell_402/SigmoidSigmoid+lstm_432/while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_432/while/lstm_cell_402/Sigmoid_1Sigmoid+lstm_432/while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_432/while/lstm_cell_402/mulMul*lstm_432/while/lstm_cell_402/Sigmoid_1:y:0lstm_432_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_432/while/lstm_cell_402/ReluRelu+lstm_432/while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/mul_1Mul(lstm_432/while/lstm_cell_402/Sigmoid:y:0/lstm_432/while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/add_1AddV2$lstm_432/while/lstm_cell_402/mul:z:0&lstm_432/while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_432/while/lstm_cell_402/Sigmoid_2Sigmoid+lstm_432/while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_432/while/lstm_cell_402/Relu_1Relu&lstm_432/while/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/mul_2Mul*lstm_432/while/lstm_cell_402/Sigmoid_2:y:01lstm_432/while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_432/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_432_while_placeholder_1lstm_432_while_placeholder&lstm_432/while/lstm_cell_402/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_432/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_432/while/addAddV2lstm_432_while_placeholderlstm_432/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_432/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_432/while/add_1AddV2*lstm_432_while_lstm_432_while_loop_counterlstm_432/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_432/while/IdentityIdentitylstm_432/while/add_1:z:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_1Identity0lstm_432_while_lstm_432_while_maximum_iterations^lstm_432/while/NoOp*
T0*
_output_shapes
: t
lstm_432/while/Identity_2Identitylstm_432/while/add:z:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_3IdentityClstm_432/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_4Identity&lstm_432/while/lstm_cell_402/mul_2:z:0^lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_432/while/Identity_5Identity&lstm_432/while/lstm_cell_402/add_1:z:0^lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_432/while/NoOpNoOp4^lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp3^lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp5^lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_432_while_identity lstm_432/while/Identity:output:0"?
lstm_432_while_identity_1"lstm_432/while/Identity_1:output:0"?
lstm_432_while_identity_2"lstm_432/while/Identity_2:output:0"?
lstm_432_while_identity_3"lstm_432/while/Identity_3:output:0"?
lstm_432_while_identity_4"lstm_432/while/Identity_4:output:0"?
lstm_432_while_identity_5"lstm_432/while/Identity_5:output:0"T
'lstm_432_while_lstm_432_strided_slice_1)lstm_432_while_lstm_432_strided_slice_1_0"~
<lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0"?
=lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0"|
;lstm_432_while_lstm_cell_402_matmul_readvariableop_resource=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0"?
clstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensorelstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp2h
2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp2l
4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_432_layer_call_fn_2446622

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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2444620s
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
while_cond_2446977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2446977___redundant_placeholder05
1while_while_cond_2446977___redundant_placeholder15
1while_while_cond_2446977___redundant_placeholder25
1while_while_cond_2446977___redundant_placeholder3
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448620

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
?J
?
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447062

inputs?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2446978*
condR
while_cond_2446977*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446919
inputs_0?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2446835*
condR
while_cond_2446834*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_144_layer_call_fn_2445735

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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445534o
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
?
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938

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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448718

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
?J
?
E__inference_lstm_434_layer_call_and_return_conditional_losses_2445136

inputs>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2445052*
condR
while_cond_2445051*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444334

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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2445301

inputs?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2445217*
condR
while_cond_2445216*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448522

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
?
?
K__inference_sequential_144_layer_call_and_return_conditional_losses_2444945

inputs#
lstm_432_2444621:	?#
lstm_432_2444623:	d?
lstm_432_2444625:	?#
lstm_433_2444771:	d?#
lstm_433_2444773:	2?
lstm_433_2444775:	?"
lstm_434_2444921:2("
lstm_434_2444923:
(
lstm_434_2444925:(#
dense_144_2444939:

dense_144_2444941:
identity??!dense_144/StatefulPartitionedCall? lstm_432/StatefulPartitionedCall? lstm_433/StatefulPartitionedCall? lstm_434/StatefulPartitionedCall?
 lstm_432/StatefulPartitionedCallStatefulPartitionedCallinputslstm_432_2444621lstm_432_2444623lstm_432_2444625*
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2444620?
 lstm_433/StatefulPartitionedCallStatefulPartitionedCall)lstm_432/StatefulPartitionedCall:output:0lstm_433_2444771lstm_433_2444773lstm_433_2444775*
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444770?
 lstm_434/StatefulPartitionedCallStatefulPartitionedCall)lstm_433/StatefulPartitionedCall:output:0lstm_434_2444921lstm_434_2444923lstm_434_2444925*
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444920?
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_434/StatefulPartitionedCall:output:0dense_144_2444939dense_144_2444941*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_144/StatefulPartitionedCall!^lstm_432/StatefulPartitionedCall!^lstm_433/StatefulPartitionedCall!^lstm_434/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2D
 lstm_432/StatefulPartitionedCall lstm_432/StatefulPartitionedCall2D
 lstm_433/StatefulPartitionedCall lstm_433/StatefulPartitionedCall2D
 lstm_434/StatefulPartitionedCall lstm_434/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_432_layer_call_fn_2446600
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2443571|
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447678

inputs?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2447594*
condR
while_cond_2447593*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_403_layer_call_fn_2448588

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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443984o
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

lstm_433_while_body_2446360.
*lstm_433_while_lstm_433_while_loop_counter4
0lstm_433_while_lstm_433_while_maximum_iterations
lstm_433_while_placeholder 
lstm_433_while_placeholder_1 
lstm_433_while_placeholder_2 
lstm_433_while_placeholder_3-
)lstm_433_while_lstm_433_strided_slice_1_0i
elstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0:	d?R
?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?M
>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
lstm_433_while_identity
lstm_433_while_identity_1
lstm_433_while_identity_2
lstm_433_while_identity_3
lstm_433_while_identity_4
lstm_433_while_identity_5+
'lstm_433_while_lstm_433_strided_slice_1g
clstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensorN
;lstm_433_while_lstm_cell_403_matmul_readvariableop_resource:	d?P
=lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource:	2?K
<lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource:	???3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp?2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp?4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp?
@lstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_433/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0lstm_433_while_placeholderIlstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_433/while/lstm_cell_403/MatMulMatMul9lstm_433/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_433/while/lstm_cell_403/MatMul_1MatMullstm_433_while_placeholder_2<lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_433/while/lstm_cell_403/addAddV2-lstm_433/while/lstm_cell_403/MatMul:product:0/lstm_433/while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_433/while/lstm_cell_403/BiasAddBiasAdd$lstm_433/while/lstm_cell_403/add:z:0;lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_433/while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_433/while/lstm_cell_403/splitSplit5lstm_433/while/lstm_cell_403/split/split_dim:output:0-lstm_433/while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_433/while/lstm_cell_403/SigmoidSigmoid+lstm_433/while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_433/while/lstm_cell_403/Sigmoid_1Sigmoid+lstm_433/while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_433/while/lstm_cell_403/mulMul*lstm_433/while/lstm_cell_403/Sigmoid_1:y:0lstm_433_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_433/while/lstm_cell_403/ReluRelu+lstm_433/while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/mul_1Mul(lstm_433/while/lstm_cell_403/Sigmoid:y:0/lstm_433/while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/add_1AddV2$lstm_433/while/lstm_cell_403/mul:z:0&lstm_433/while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_433/while/lstm_cell_403/Sigmoid_2Sigmoid+lstm_433/while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_433/while/lstm_cell_403/Relu_1Relu&lstm_433/while/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/mul_2Mul*lstm_433/while/lstm_cell_403/Sigmoid_2:y:01lstm_433/while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_433/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_433_while_placeholder_1lstm_433_while_placeholder&lstm_433/while/lstm_cell_403/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_433/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_433/while/addAddV2lstm_433_while_placeholderlstm_433/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_433/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_433/while/add_1AddV2*lstm_433_while_lstm_433_while_loop_counterlstm_433/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_433/while/IdentityIdentitylstm_433/while/add_1:z:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_1Identity0lstm_433_while_lstm_433_while_maximum_iterations^lstm_433/while/NoOp*
T0*
_output_shapes
: t
lstm_433/while/Identity_2Identitylstm_433/while/add:z:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_3IdentityClstm_433/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_4Identity&lstm_433/while/lstm_cell_403/mul_2:z:0^lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_433/while/Identity_5Identity&lstm_433/while/lstm_cell_403/add_1:z:0^lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_433/while/NoOpNoOp4^lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp3^lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp5^lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_433_while_identity lstm_433/while/Identity:output:0"?
lstm_433_while_identity_1"lstm_433/while/Identity_1:output:0"?
lstm_433_while_identity_2"lstm_433/while/Identity_2:output:0"?
lstm_433_while_identity_3"lstm_433/while/Identity_3:output:0"?
lstm_433_while_identity_4"lstm_433/while/Identity_4:output:0"?
lstm_433_while_identity_5"lstm_433/while/Identity_5:output:0"T
'lstm_433_while_lstm_433_strided_slice_1)lstm_433_while_lstm_433_strided_slice_1_0"~
<lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0"?
=lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0"|
;lstm_433_while_lstm_cell_403_matmul_readvariableop_resource=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0"?
clstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensorelstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp2h
2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp2l
4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2446834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2446834___redundant_placeholder05
1while_while_cond_2446834___redundant_placeholder15
1while_while_cond_2446834___redundant_placeholder25
1while_while_cond_2446834___redundant_placeholder3
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446589

inputsH
5lstm_432_lstm_cell_402_matmul_readvariableop_resource:	?J
7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource:	d?E
6lstm_432_lstm_cell_402_biasadd_readvariableop_resource:	?H
5lstm_433_lstm_cell_403_matmul_readvariableop_resource:	d?J
7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource:	2?E
6lstm_433_lstm_cell_403_biasadd_readvariableop_resource:	?G
5lstm_434_lstm_cell_404_matmul_readvariableop_resource:2(I
7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource:
(D
6lstm_434_lstm_cell_404_biasadd_readvariableop_resource:(:
(dense_144_matmul_readvariableop_resource:
7
)dense_144_biasadd_readvariableop_resource:
identity?? dense_144/BiasAdd/ReadVariableOp?dense_144/MatMul/ReadVariableOp?-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp?,lstm_432/lstm_cell_402/MatMul/ReadVariableOp?.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp?lstm_432/while?-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp?,lstm_433/lstm_cell_403/MatMul/ReadVariableOp?.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp?lstm_433/while?-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp?,lstm_434/lstm_cell_404/MatMul/ReadVariableOp?.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp?lstm_434/whileD
lstm_432/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_432/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_432/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_432/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_sliceStridedSlicelstm_432/Shape:output:0%lstm_432/strided_slice/stack:output:0'lstm_432/strided_slice/stack_1:output:0'lstm_432/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_432/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_432/zeros/packedPacklstm_432/strided_slice:output:0 lstm_432/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_432/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_432/zerosFilllstm_432/zeros/packed:output:0lstm_432/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_432/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_432/zeros_1/packedPacklstm_432/strided_slice:output:0"lstm_432/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_432/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_432/zeros_1Fill lstm_432/zeros_1/packed:output:0lstm_432/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_432/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_432/transpose	Transposeinputs lstm_432/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_432/Shape_1Shapelstm_432/transpose:y:0*
T0*
_output_shapes
:h
lstm_432/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_432/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_1StridedSlicelstm_432/Shape_1:output:0'lstm_432/strided_slice_1/stack:output:0)lstm_432/strided_slice_1/stack_1:output:0)lstm_432/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_432/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_432/TensorArrayV2TensorListReserve-lstm_432/TensorArrayV2/element_shape:output:0!lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_432/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_432/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_432/transpose:y:0Glstm_432/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_432/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_432/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_2StridedSlicelstm_432/transpose:y:0'lstm_432/strided_slice_2/stack:output:0)lstm_432/strided_slice_2/stack_1:output:0)lstm_432/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_432/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp5lstm_432_lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_432/lstm_cell_402/MatMulMatMul!lstm_432/strided_slice_2:output:04lstm_432/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_432/lstm_cell_402/MatMul_1MatMullstm_432/zeros:output:06lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_432/lstm_cell_402/addAddV2'lstm_432/lstm_cell_402/MatMul:product:0)lstm_432/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp6lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_432/lstm_cell_402/BiasAddBiasAddlstm_432/lstm_cell_402/add:z:05lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_432/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_432/lstm_cell_402/splitSplit/lstm_432/lstm_cell_402/split/split_dim:output:0'lstm_432/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_432/lstm_cell_402/SigmoidSigmoid%lstm_432/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_432/lstm_cell_402/Sigmoid_1Sigmoid%lstm_432/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mulMul$lstm_432/lstm_cell_402/Sigmoid_1:y:0lstm_432/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_432/lstm_cell_402/ReluRelu%lstm_432/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mul_1Mul"lstm_432/lstm_cell_402/Sigmoid:y:0)lstm_432/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/add_1AddV2lstm_432/lstm_cell_402/mul:z:0 lstm_432/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_432/lstm_cell_402/Sigmoid_2Sigmoid%lstm_432/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_432/lstm_cell_402/Relu_1Relu lstm_432/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mul_2Mul$lstm_432/lstm_cell_402/Sigmoid_2:y:0+lstm_432/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_432/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_432/TensorArrayV2_1TensorListReserve/lstm_432/TensorArrayV2_1/element_shape:output:0!lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_432/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_432/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_432/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_432/whileWhile$lstm_432/while/loop_counter:output:0*lstm_432/while/maximum_iterations:output:0lstm_432/time:output:0!lstm_432/TensorArrayV2_1:handle:0lstm_432/zeros:output:0lstm_432/zeros_1:output:0!lstm_432/strided_slice_1:output:0@lstm_432/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_432_lstm_cell_402_matmul_readvariableop_resource7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource6lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
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
lstm_432_while_body_2446221*'
condR
lstm_432_while_cond_2446220*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_432/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_432/TensorArrayV2Stack/TensorListStackTensorListStacklstm_432/while:output:3Blstm_432/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_432/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_432/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_3StridedSlice4lstm_432/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_432/strided_slice_3/stack:output:0)lstm_432/strided_slice_3/stack_1:output:0)lstm_432/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_432/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_432/transpose_1	Transpose4lstm_432/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_432/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_432/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_433/ShapeShapelstm_432/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_433/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_433/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_433/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_sliceStridedSlicelstm_433/Shape:output:0%lstm_433/strided_slice/stack:output:0'lstm_433/strided_slice/stack_1:output:0'lstm_433/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_433/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_433/zeros/packedPacklstm_433/strided_slice:output:0 lstm_433/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_433/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_433/zerosFilllstm_433/zeros/packed:output:0lstm_433/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_433/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_433/zeros_1/packedPacklstm_433/strided_slice:output:0"lstm_433/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_433/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_433/zeros_1Fill lstm_433/zeros_1/packed:output:0lstm_433/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_433/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_433/transpose	Transposelstm_432/transpose_1:y:0 lstm_433/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_433/Shape_1Shapelstm_433/transpose:y:0*
T0*
_output_shapes
:h
lstm_433/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_433/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_1StridedSlicelstm_433/Shape_1:output:0'lstm_433/strided_slice_1/stack:output:0)lstm_433/strided_slice_1/stack_1:output:0)lstm_433/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_433/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_433/TensorArrayV2TensorListReserve-lstm_433/TensorArrayV2/element_shape:output:0!lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_433/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_433/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_433/transpose:y:0Glstm_433/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_433/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_433/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_2StridedSlicelstm_433/transpose:y:0'lstm_433/strided_slice_2/stack:output:0)lstm_433/strided_slice_2/stack_1:output:0)lstm_433/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_433/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp5lstm_433_lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_433/lstm_cell_403/MatMulMatMul!lstm_433/strided_slice_2:output:04lstm_433/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_433/lstm_cell_403/MatMul_1MatMullstm_433/zeros:output:06lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_433/lstm_cell_403/addAddV2'lstm_433/lstm_cell_403/MatMul:product:0)lstm_433/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp6lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_433/lstm_cell_403/BiasAddBiasAddlstm_433/lstm_cell_403/add:z:05lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_433/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_433/lstm_cell_403/splitSplit/lstm_433/lstm_cell_403/split/split_dim:output:0'lstm_433/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_433/lstm_cell_403/SigmoidSigmoid%lstm_433/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_433/lstm_cell_403/Sigmoid_1Sigmoid%lstm_433/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mulMul$lstm_433/lstm_cell_403/Sigmoid_1:y:0lstm_433/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_433/lstm_cell_403/ReluRelu%lstm_433/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mul_1Mul"lstm_433/lstm_cell_403/Sigmoid:y:0)lstm_433/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/add_1AddV2lstm_433/lstm_cell_403/mul:z:0 lstm_433/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_433/lstm_cell_403/Sigmoid_2Sigmoid%lstm_433/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_433/lstm_cell_403/Relu_1Relu lstm_433/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mul_2Mul$lstm_433/lstm_cell_403/Sigmoid_2:y:0+lstm_433/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_433/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_433/TensorArrayV2_1TensorListReserve/lstm_433/TensorArrayV2_1/element_shape:output:0!lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_433/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_433/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_433/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_433/whileWhile$lstm_433/while/loop_counter:output:0*lstm_433/while/maximum_iterations:output:0lstm_433/time:output:0!lstm_433/TensorArrayV2_1:handle:0lstm_433/zeros:output:0lstm_433/zeros_1:output:0!lstm_433/strided_slice_1:output:0@lstm_433/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_433_lstm_cell_403_matmul_readvariableop_resource7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource6lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
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
lstm_433_while_body_2446360*'
condR
lstm_433_while_cond_2446359*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_433/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_433/TensorArrayV2Stack/TensorListStackTensorListStacklstm_433/while:output:3Blstm_433/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_433/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_433/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_3StridedSlice4lstm_433/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_433/strided_slice_3/stack:output:0)lstm_433/strided_slice_3/stack_1:output:0)lstm_433/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_433/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_433/transpose_1	Transpose4lstm_433/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_433/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_433/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_434/ShapeShapelstm_433/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_sliceStridedSlicelstm_434/Shape:output:0%lstm_434/strided_slice/stack:output:0'lstm_434/strided_slice/stack_1:output:0'lstm_434/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_434/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_434/zeros/packedPacklstm_434/strided_slice:output:0 lstm_434/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_434/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_434/zerosFilllstm_434/zeros/packed:output:0lstm_434/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_434/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_434/zeros_1/packedPacklstm_434/strided_slice:output:0"lstm_434/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_434/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_434/zeros_1Fill lstm_434/zeros_1/packed:output:0lstm_434/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_434/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_434/transpose	Transposelstm_433/transpose_1:y:0 lstm_434/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_434/Shape_1Shapelstm_434/transpose:y:0*
T0*
_output_shapes
:h
lstm_434/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_434/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_1StridedSlicelstm_434/Shape_1:output:0'lstm_434/strided_slice_1/stack:output:0)lstm_434/strided_slice_1/stack_1:output:0)lstm_434/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_434/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_434/TensorArrayV2TensorListReserve-lstm_434/TensorArrayV2/element_shape:output:0!lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_434/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_434/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_434/transpose:y:0Glstm_434/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_434/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_434/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_2StridedSlicelstm_434/transpose:y:0'lstm_434/strided_slice_2/stack:output:0)lstm_434/strided_slice_2/stack_1:output:0)lstm_434/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_434/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp5lstm_434_lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_434/lstm_cell_404/MatMulMatMul!lstm_434/strided_slice_2:output:04lstm_434/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_434/lstm_cell_404/MatMul_1MatMullstm_434/zeros:output:06lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_434/lstm_cell_404/addAddV2'lstm_434/lstm_cell_404/MatMul:product:0)lstm_434/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp6lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_434/lstm_cell_404/BiasAddBiasAddlstm_434/lstm_cell_404/add:z:05lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_434/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_434/lstm_cell_404/splitSplit/lstm_434/lstm_cell_404/split/split_dim:output:0'lstm_434/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_434/lstm_cell_404/SigmoidSigmoid%lstm_434/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_434/lstm_cell_404/Sigmoid_1Sigmoid%lstm_434/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mulMul$lstm_434/lstm_cell_404/Sigmoid_1:y:0lstm_434/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_434/lstm_cell_404/ReluRelu%lstm_434/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mul_1Mul"lstm_434/lstm_cell_404/Sigmoid:y:0)lstm_434/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/add_1AddV2lstm_434/lstm_cell_404/mul:z:0 lstm_434/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_434/lstm_cell_404/Sigmoid_2Sigmoid%lstm_434/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_434/lstm_cell_404/Relu_1Relu lstm_434/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mul_2Mul$lstm_434/lstm_cell_404/Sigmoid_2:y:0+lstm_434/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_434/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_434/TensorArrayV2_1TensorListReserve/lstm_434/TensorArrayV2_1/element_shape:output:0!lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_434/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_434/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_434/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_434/whileWhile$lstm_434/while/loop_counter:output:0*lstm_434/while/maximum_iterations:output:0lstm_434/time:output:0!lstm_434/TensorArrayV2_1:handle:0lstm_434/zeros:output:0lstm_434/zeros_1:output:0!lstm_434/strided_slice_1:output:0@lstm_434/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_434_lstm_cell_404_matmul_readvariableop_resource7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource6lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
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
lstm_434_while_body_2446499*'
condR
lstm_434_while_cond_2446498*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_434/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_434/TensorArrayV2Stack/TensorListStackTensorListStacklstm_434/while:output:3Blstm_434/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_434/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_434/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_3StridedSlice4lstm_434/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_434/strided_slice_3/stack:output:0)lstm_434/strided_slice_3/stack_1:output:0)lstm_434/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_434/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_434/transpose_1	Transpose4lstm_434/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_434/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_434/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_144/MatMulMatMul!lstm_434/strided_slice_3:output:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp.^lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp-^lstm_432/lstm_cell_402/MatMul/ReadVariableOp/^lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp^lstm_432/while.^lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp-^lstm_433/lstm_cell_403/MatMul/ReadVariableOp/^lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp^lstm_433/while.^lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp-^lstm_434/lstm_cell_404/MatMul/ReadVariableOp/^lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp^lstm_434/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2^
-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp2\
,lstm_432/lstm_cell_402/MatMul/ReadVariableOp,lstm_432/lstm_cell_402/MatMul/ReadVariableOp2`
.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp2 
lstm_432/whilelstm_432/while2^
-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp2\
,lstm_433/lstm_cell_403/MatMul/ReadVariableOp,lstm_433/lstm_cell_403/MatMul/ReadVariableOp2`
.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp2 
lstm_433/whilelstm_433/while2^
-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp2\
,lstm_434/lstm_cell_404/MatMul/ReadVariableOp,lstm_434/lstm_cell_404/MatMul/ReadVariableOp2`
.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp2 
lstm_434/whilelstm_434/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2447450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447450___redundant_placeholder05
1while_while_cond_2447450___redundant_placeholder15
1while_while_cond_2447450___redundant_placeholder25
1while_while_cond_2447450___redundant_placeholder3
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448294

inputs>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2448210*
condR
while_cond_2448209*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2445217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2445381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2445381___redundant_placeholder05
1while_while_cond_2445381___redundant_placeholder15
1while_while_cond_2445381___redundant_placeholder25
1while_while_cond_2445381___redundant_placeholder3
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
/__inference_lstm_cell_404_layer_call_fn_2448669

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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444188o
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
+__inference_dense_144_layer_call_fn_2448446

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
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938o
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

?
lstm_434_while_cond_2446071.
*lstm_434_while_lstm_434_while_loop_counter4
0lstm_434_while_lstm_434_while_maximum_iterations
lstm_434_while_placeholder 
lstm_434_while_placeholder_1 
lstm_434_while_placeholder_2 
lstm_434_while_placeholder_30
,lstm_434_while_less_lstm_434_strided_slice_1G
Clstm_434_while_lstm_434_while_cond_2446071___redundant_placeholder0G
Clstm_434_while_lstm_434_while_cond_2446071___redundant_placeholder1G
Clstm_434_while_lstm_434_while_cond_2446071___redundant_placeholder2G
Clstm_434_while_lstm_434_while_cond_2446071___redundant_placeholder3
lstm_434_while_identity
?
lstm_434/while/LessLesslstm_434_while_placeholder,lstm_434_while_less_lstm_434_strided_slice_1*
T0*
_output_shapes
: ]
lstm_434/while/IdentityIdentitylstm_434/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_434_while_identity lstm_434/while/Identity:output:0*(
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
0__inference_sequential_144_layer_call_fn_2444970
lstm_432_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_432_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2444945o
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
_user_specified_namelstm_432_input
?
?
*__inference_lstm_432_layer_call_fn_2446611
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2443762|
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
?
while_body_2447737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_144_lstm_432_while_body_2443053L
Hsequential_144_lstm_432_while_sequential_144_lstm_432_while_loop_counterR
Nsequential_144_lstm_432_while_sequential_144_lstm_432_while_maximum_iterations-
)sequential_144_lstm_432_while_placeholder/
+sequential_144_lstm_432_while_placeholder_1/
+sequential_144_lstm_432_while_placeholder_2/
+sequential_144_lstm_432_while_placeholder_3K
Gsequential_144_lstm_432_while_sequential_144_lstm_432_strided_slice_1_0?
?sequential_144_lstm_432_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_432_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_144_lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0:	?a
Nsequential_144_lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?\
Msequential_144_lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0:	?*
&sequential_144_lstm_432_while_identity,
(sequential_144_lstm_432_while_identity_1,
(sequential_144_lstm_432_while_identity_2,
(sequential_144_lstm_432_while_identity_3,
(sequential_144_lstm_432_while_identity_4,
(sequential_144_lstm_432_while_identity_5I
Esequential_144_lstm_432_while_sequential_144_lstm_432_strided_slice_1?
?sequential_144_lstm_432_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_432_tensorarrayunstack_tensorlistfromtensor]
Jsequential_144_lstm_432_while_lstm_cell_402_matmul_readvariableop_resource:	?_
Lsequential_144_lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource:	d?Z
Ksequential_144_lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource:	???Bsequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp?Asequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp?Csequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp?
Osequential_144/lstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_144/lstm_432/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_144_lstm_432_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_432_tensorarrayunstack_tensorlistfromtensor_0)sequential_144_lstm_432_while_placeholderXsequential_144/lstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOpLsequential_144_lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_144/lstm_432/while/lstm_cell_402/MatMulMatMulHsequential_144/lstm_432/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOpNsequential_144_lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_144/lstm_432/while/lstm_cell_402/MatMul_1MatMul+sequential_144_lstm_432_while_placeholder_2Ksequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_144/lstm_432/while/lstm_cell_402/addAddV2<sequential_144/lstm_432/while/lstm_cell_402/MatMul:product:0>sequential_144/lstm_432/while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOpMsequential_144_lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_144/lstm_432/while/lstm_cell_402/BiasAddBiasAdd3sequential_144/lstm_432/while/lstm_cell_402/add:z:0Jsequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_144/lstm_432/while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_144/lstm_432/while/lstm_cell_402/splitSplitDsequential_144/lstm_432/while/lstm_cell_402/split/split_dim:output:0<sequential_144/lstm_432/while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_144/lstm_432/while/lstm_cell_402/SigmoidSigmoid:sequential_144/lstm_432/while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_144/lstm_432/while/lstm_cell_402/Sigmoid_1Sigmoid:sequential_144/lstm_432/while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_144/lstm_432/while/lstm_cell_402/mulMul9sequential_144/lstm_432/while/lstm_cell_402/Sigmoid_1:y:0+sequential_144_lstm_432_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_144/lstm_432/while/lstm_cell_402/ReluRelu:sequential_144/lstm_432/while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_144/lstm_432/while/lstm_cell_402/mul_1Mul7sequential_144/lstm_432/while/lstm_cell_402/Sigmoid:y:0>sequential_144/lstm_432/while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_144/lstm_432/while/lstm_cell_402/add_1AddV23sequential_144/lstm_432/while/lstm_cell_402/mul:z:05sequential_144/lstm_432/while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_144/lstm_432/while/lstm_cell_402/Sigmoid_2Sigmoid:sequential_144/lstm_432/while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_144/lstm_432/while/lstm_cell_402/Relu_1Relu5sequential_144/lstm_432/while/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_144/lstm_432/while/lstm_cell_402/mul_2Mul9sequential_144/lstm_432/while/lstm_cell_402/Sigmoid_2:y:0@sequential_144/lstm_432/while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_144/lstm_432/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_144_lstm_432_while_placeholder_1)sequential_144_lstm_432_while_placeholder5sequential_144/lstm_432/while/lstm_cell_402/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_144/lstm_432/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_144/lstm_432/while/addAddV2)sequential_144_lstm_432_while_placeholder,sequential_144/lstm_432/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_144/lstm_432/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_144/lstm_432/while/add_1AddV2Hsequential_144_lstm_432_while_sequential_144_lstm_432_while_loop_counter.sequential_144/lstm_432/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_144/lstm_432/while/IdentityIdentity'sequential_144/lstm_432/while/add_1:z:0#^sequential_144/lstm_432/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_432/while/Identity_1IdentityNsequential_144_lstm_432_while_sequential_144_lstm_432_while_maximum_iterations#^sequential_144/lstm_432/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_432/while/Identity_2Identity%sequential_144/lstm_432/while/add:z:0#^sequential_144/lstm_432/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_432/while/Identity_3IdentityRsequential_144/lstm_432/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_144/lstm_432/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_432/while/Identity_4Identity5sequential_144/lstm_432/while/lstm_cell_402/mul_2:z:0#^sequential_144/lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_144/lstm_432/while/Identity_5Identity5sequential_144/lstm_432/while/lstm_cell_402/add_1:z:0#^sequential_144/lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_144/lstm_432/while/NoOpNoOpC^sequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOpB^sequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOpD^sequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_144_lstm_432_while_identity/sequential_144/lstm_432/while/Identity:output:0"]
(sequential_144_lstm_432_while_identity_11sequential_144/lstm_432/while/Identity_1:output:0"]
(sequential_144_lstm_432_while_identity_21sequential_144/lstm_432/while/Identity_2:output:0"]
(sequential_144_lstm_432_while_identity_31sequential_144/lstm_432/while/Identity_3:output:0"]
(sequential_144_lstm_432_while_identity_41sequential_144/lstm_432/while/Identity_4:output:0"]
(sequential_144_lstm_432_while_identity_51sequential_144/lstm_432/while/Identity_5:output:0"?
Ksequential_144_lstm_432_while_lstm_cell_402_biasadd_readvariableop_resourceMsequential_144_lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0"?
Lsequential_144_lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resourceNsequential_144_lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0"?
Jsequential_144_lstm_432_while_lstm_cell_402_matmul_readvariableop_resourceLsequential_144_lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0"?
Esequential_144_lstm_432_while_sequential_144_lstm_432_strided_slice_1Gsequential_144_lstm_432_while_sequential_144_lstm_432_strided_slice_1_0"?
?sequential_144_lstm_432_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_432_tensorarrayunstack_tensorlistfromtensor?sequential_144_lstm_432_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_432_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOpBsequential_144/lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp2?
Asequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOpAsequential_144/lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp2?
Csequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOpCsequential_144/lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_433_while_body_2445933.
*lstm_433_while_lstm_433_while_loop_counter4
0lstm_433_while_lstm_433_while_maximum_iterations
lstm_433_while_placeholder 
lstm_433_while_placeholder_1 
lstm_433_while_placeholder_2 
lstm_433_while_placeholder_3-
)lstm_433_while_lstm_433_strided_slice_1_0i
elstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0:	d?R
?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?M
>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
lstm_433_while_identity
lstm_433_while_identity_1
lstm_433_while_identity_2
lstm_433_while_identity_3
lstm_433_while_identity_4
lstm_433_while_identity_5+
'lstm_433_while_lstm_433_strided_slice_1g
clstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensorN
;lstm_433_while_lstm_cell_403_matmul_readvariableop_resource:	d?P
=lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource:	2?K
<lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource:	???3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp?2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp?4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp?
@lstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_433/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0lstm_433_while_placeholderIlstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_433/while/lstm_cell_403/MatMulMatMul9lstm_433/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_433/while/lstm_cell_403/MatMul_1MatMullstm_433_while_placeholder_2<lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_433/while/lstm_cell_403/addAddV2-lstm_433/while/lstm_cell_403/MatMul:product:0/lstm_433/while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_433/while/lstm_cell_403/BiasAddBiasAdd$lstm_433/while/lstm_cell_403/add:z:0;lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_433/while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_433/while/lstm_cell_403/splitSplit5lstm_433/while/lstm_cell_403/split/split_dim:output:0-lstm_433/while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_433/while/lstm_cell_403/SigmoidSigmoid+lstm_433/while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_433/while/lstm_cell_403/Sigmoid_1Sigmoid+lstm_433/while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_433/while/lstm_cell_403/mulMul*lstm_433/while/lstm_cell_403/Sigmoid_1:y:0lstm_433_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_433/while/lstm_cell_403/ReluRelu+lstm_433/while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/mul_1Mul(lstm_433/while/lstm_cell_403/Sigmoid:y:0/lstm_433/while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/add_1AddV2$lstm_433/while/lstm_cell_403/mul:z:0&lstm_433/while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_433/while/lstm_cell_403/Sigmoid_2Sigmoid+lstm_433/while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_433/while/lstm_cell_403/Relu_1Relu&lstm_433/while/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_433/while/lstm_cell_403/mul_2Mul*lstm_433/while/lstm_cell_403/Sigmoid_2:y:01lstm_433/while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_433/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_433_while_placeholder_1lstm_433_while_placeholder&lstm_433/while/lstm_cell_403/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_433/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_433/while/addAddV2lstm_433_while_placeholderlstm_433/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_433/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_433/while/add_1AddV2*lstm_433_while_lstm_433_while_loop_counterlstm_433/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_433/while/IdentityIdentitylstm_433/while/add_1:z:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_1Identity0lstm_433_while_lstm_433_while_maximum_iterations^lstm_433/while/NoOp*
T0*
_output_shapes
: t
lstm_433/while/Identity_2Identitylstm_433/while/add:z:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_3IdentityClstm_433/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_433/while/NoOp*
T0*
_output_shapes
: ?
lstm_433/while/Identity_4Identity&lstm_433/while/lstm_cell_403/mul_2:z:0^lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_433/while/Identity_5Identity&lstm_433/while/lstm_cell_403/add_1:z:0^lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_433/while/NoOpNoOp4^lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp3^lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp5^lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_433_while_identity lstm_433/while/Identity:output:0"?
lstm_433_while_identity_1"lstm_433/while/Identity_1:output:0"?
lstm_433_while_identity_2"lstm_433/while/Identity_2:output:0"?
lstm_433_while_identity_3"lstm_433/while/Identity_3:output:0"?
lstm_433_while_identity_4"lstm_433/while/Identity_4:output:0"?
lstm_433_while_identity_5"lstm_433/while/Identity_5:output:0"T
'lstm_433_while_lstm_433_strided_slice_1)lstm_433_while_lstm_433_strided_slice_1_0"~
<lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource>lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0"?
=lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource?lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0"|
;lstm_433_while_lstm_cell_403_matmul_readvariableop_resource=lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0"?
clstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensorelstm_433_while_tensorarrayv2read_tensorlistgetitem_lstm_433_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp3lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp2h
2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp2lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp2l
4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp4lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2444535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444535___redundant_placeholder05
1while_while_cond_2444535___redundant_placeholder15
1while_while_cond_2444535___redundant_placeholder25
1while_while_cond_2444535___redundant_placeholder3
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
while_cond_2445051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2445051___redundant_placeholder05
1while_while_cond_2445051___redundant_placeholder15
1while_while_cond_2445051___redundant_placeholder25
1while_while_cond_2445051___redundant_placeholder3
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447821

inputs?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2447737*
condR
while_cond_2447736*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2443692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2443692___redundant_placeholder05
1while_while_cond_2443692___redundant_placeholder15
1while_while_cond_2443692___redundant_placeholder25
1while_while_cond_2443692___redundant_placeholder3
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448652

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
?
/__inference_lstm_cell_404_layer_call_fn_2448686

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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444334o
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
?J
?
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448437

inputs>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2448353*
condR
while_cond_2448352*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2444536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445616
lstm_432_input#
lstm_432_2445589:	?#
lstm_432_2445591:	d?
lstm_432_2445593:	?#
lstm_433_2445596:	d?#
lstm_433_2445598:	2?
lstm_433_2445600:	?"
lstm_434_2445603:2("
lstm_434_2445605:
(
lstm_434_2445607:(#
dense_144_2445610:

dense_144_2445612:
identity??!dense_144/StatefulPartitionedCall? lstm_432/StatefulPartitionedCall? lstm_433/StatefulPartitionedCall? lstm_434/StatefulPartitionedCall?
 lstm_432/StatefulPartitionedCallStatefulPartitionedCalllstm_432_inputlstm_432_2445589lstm_432_2445591lstm_432_2445593*
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2444620?
 lstm_433/StatefulPartitionedCallStatefulPartitionedCall)lstm_432/StatefulPartitionedCall:output:0lstm_433_2445596lstm_433_2445598lstm_433_2445600*
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444770?
 lstm_434/StatefulPartitionedCallStatefulPartitionedCall)lstm_433/StatefulPartitionedCall:output:0lstm_434_2445603lstm_434_2445605lstm_434_2445607*
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444920?
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_434/StatefulPartitionedCall:output:0dense_144_2445610dense_144_2445612*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_144/StatefulPartitionedCall!^lstm_432/StatefulPartitionedCall!^lstm_433/StatefulPartitionedCall!^lstm_434/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2D
 lstm_432/StatefulPartitionedCall lstm_432/StatefulPartitionedCall2D
 lstm_433/StatefulPartitionedCall lstm_433/StatefulPartitionedCall2D
 lstm_434/StatefulPartitionedCall lstm_434/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_432_input
?

?
0__inference_sequential_144_layer_call_fn_2445586
lstm_432_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_432_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445534o
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
_user_specified_namelstm_432_input
?8
?
while_body_2446978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2447121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444462

inputs'
lstm_cell_404_2444380:2('
lstm_cell_404_2444382:
(#
lstm_cell_404_2444384:(
identity??%lstm_cell_404/StatefulPartitionedCall?while;
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
%lstm_cell_404/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_404_2444380lstm_cell_404_2444382lstm_cell_404_2444384*
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444334n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_404_2444380lstm_cell_404_2444382lstm_cell_404_2444384*
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
while_body_2444393*
condR
while_cond_2444392*K
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
NoOpNoOp&^lstm_cell_404/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_404/StatefulPartitionedCall%lstm_cell_404/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_144_layer_call_fn_2445708

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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2444945o
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
?K
?
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447535
inputs_0?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2447451*
condR
while_cond_2447450*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2448353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2447308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2444685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444685___redundant_placeholder05
1while_while_cond_2444685___redundant_placeholder15
1while_while_cond_2444685___redundant_placeholder25
1while_while_cond_2444685___redundant_placeholder3
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
lstm_433_while_cond_2446359.
*lstm_433_while_lstm_433_while_loop_counter4
0lstm_433_while_lstm_433_while_maximum_iterations
lstm_433_while_placeholder 
lstm_433_while_placeholder_1 
lstm_433_while_placeholder_2 
lstm_433_while_placeholder_30
,lstm_433_while_less_lstm_433_strided_slice_1G
Clstm_433_while_lstm_433_while_cond_2446359___redundant_placeholder0G
Clstm_433_while_lstm_433_while_cond_2446359___redundant_placeholder1G
Clstm_433_while_lstm_433_while_cond_2446359___redundant_placeholder2G
Clstm_433_while_lstm_433_while_cond_2446359___redundant_placeholder3
lstm_433_while_identity
?
lstm_433/while/LessLesslstm_433_while_placeholder,lstm_433_while_less_lstm_433_strided_slice_1*
T0*
_output_shapes
: ]
lstm_433/while/IdentityIdentitylstm_433/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_433_while_identity lstm_433/while/Identity:output:0*(
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
while_cond_2447923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447923___redundant_placeholder05
1while_while_cond_2447923___redundant_placeholder15
1while_while_cond_2447923___redundant_placeholder25
1while_while_cond_2447923___redundant_placeholder3
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
*sequential_144_lstm_432_while_cond_2443052L
Hsequential_144_lstm_432_while_sequential_144_lstm_432_while_loop_counterR
Nsequential_144_lstm_432_while_sequential_144_lstm_432_while_maximum_iterations-
)sequential_144_lstm_432_while_placeholder/
+sequential_144_lstm_432_while_placeholder_1/
+sequential_144_lstm_432_while_placeholder_2/
+sequential_144_lstm_432_while_placeholder_3N
Jsequential_144_lstm_432_while_less_sequential_144_lstm_432_strided_slice_1e
asequential_144_lstm_432_while_sequential_144_lstm_432_while_cond_2443052___redundant_placeholder0e
asequential_144_lstm_432_while_sequential_144_lstm_432_while_cond_2443052___redundant_placeholder1e
asequential_144_lstm_432_while_sequential_144_lstm_432_while_cond_2443052___redundant_placeholder2e
asequential_144_lstm_432_while_sequential_144_lstm_432_while_cond_2443052___redundant_placeholder3*
&sequential_144_lstm_432_while_identity
?
"sequential_144/lstm_432/while/LessLess)sequential_144_lstm_432_while_placeholderJsequential_144_lstm_432_while_less_sequential_144_lstm_432_strided_slice_1*
T0*
_output_shapes
: {
&sequential_144/lstm_432/while/IdentityIdentity&sequential_144/lstm_432/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_144_lstm_432_while_identity/sequential_144/lstm_432/while/Identity:output:0*(
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
while_body_2443693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_402_2443717_0:	?0
while_lstm_cell_402_2443719_0:	d?,
while_lstm_cell_402_2443721_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_402_2443717:	?.
while_lstm_cell_402_2443719:	d?*
while_lstm_cell_402_2443721:	???+while/lstm_cell_402/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_402/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_402_2443717_0while_lstm_cell_402_2443719_0while_lstm_cell_402_2443721_0*
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443634?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_402/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_402/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_402/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_402/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_402_2443717while_lstm_cell_402_2443717_0"<
while_lstm_cell_402_2443719while_lstm_cell_402_2443719_0"<
while_lstm_cell_402_2443721while_lstm_cell_402_2443721_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_402/StatefulPartitionedCall+while/lstm_cell_402/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2445216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2445216___redundant_placeholder05
1while_while_cond_2445216___redundant_placeholder15
1while_while_cond_2445216___redundant_placeholder25
1while_while_cond_2445216___redundant_placeholder3
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
while_body_2443852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_403_2443876_0:	d?0
while_lstm_cell_403_2443878_0:	2?,
while_lstm_cell_403_2443880_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_403_2443876:	d?.
while_lstm_cell_403_2443878:	2?*
while_lstm_cell_403_2443880:	???+while/lstm_cell_403/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_403/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_403_2443876_0while_lstm_cell_403_2443878_0while_lstm_cell_403_2443880_0*
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443838?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_403/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_403/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_403/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_403/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_403_2443876while_lstm_cell_403_2443876_0"<
while_lstm_cell_403_2443878while_lstm_cell_403_2443878_0"<
while_lstm_cell_403_2443880while_lstm_cell_403_2443880_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_403/StatefulPartitionedCall+while/lstm_cell_403/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_434_while_cond_2446498.
*lstm_434_while_lstm_434_while_loop_counter4
0lstm_434_while_lstm_434_while_maximum_iterations
lstm_434_while_placeholder 
lstm_434_while_placeholder_1 
lstm_434_while_placeholder_2 
lstm_434_while_placeholder_30
,lstm_434_while_less_lstm_434_strided_slice_1G
Clstm_434_while_lstm_434_while_cond_2446498___redundant_placeholder0G
Clstm_434_while_lstm_434_while_cond_2446498___redundant_placeholder1G
Clstm_434_while_lstm_434_while_cond_2446498___redundant_placeholder2G
Clstm_434_while_lstm_434_while_cond_2446498___redundant_placeholder3
lstm_434_while_identity
?
lstm_434/while/LessLesslstm_434_while_placeholder,lstm_434_while_less_lstm_434_strided_slice_1*
T0*
_output_shapes
: ]
lstm_434/while/IdentityIdentitylstm_434/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_434_while_identity lstm_434/while/Identity:output:0*(
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
while_body_2444686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2447307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447307___redundant_placeholder05
1while_while_cond_2447307___redundant_placeholder15
1while_while_cond_2447307___redundant_placeholder25
1while_while_cond_2447307___redundant_placeholder3
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
*sequential_144_lstm_434_while_cond_2443330L
Hsequential_144_lstm_434_while_sequential_144_lstm_434_while_loop_counterR
Nsequential_144_lstm_434_while_sequential_144_lstm_434_while_maximum_iterations-
)sequential_144_lstm_434_while_placeholder/
+sequential_144_lstm_434_while_placeholder_1/
+sequential_144_lstm_434_while_placeholder_2/
+sequential_144_lstm_434_while_placeholder_3N
Jsequential_144_lstm_434_while_less_sequential_144_lstm_434_strided_slice_1e
asequential_144_lstm_434_while_sequential_144_lstm_434_while_cond_2443330___redundant_placeholder0e
asequential_144_lstm_434_while_sequential_144_lstm_434_while_cond_2443330___redundant_placeholder1e
asequential_144_lstm_434_while_sequential_144_lstm_434_while_cond_2443330___redundant_placeholder2e
asequential_144_lstm_434_while_sequential_144_lstm_434_while_cond_2443330___redundant_placeholder3*
&sequential_144_lstm_434_while_identity
?
"sequential_144/lstm_434/while/LessLess)sequential_144_lstm_434_while_placeholderJsequential_144_lstm_434_while_less_sequential_144_lstm_434_strided_slice_1*
T0*
_output_shapes
: {
&sequential_144/lstm_434/while/IdentityIdentity&sequential_144/lstm_434/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_144_lstm_434_while_identity/sequential_144/lstm_434/while/Identity:output:0*(
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2444620

inputs?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2444536*
condR
while_cond_2444535*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_144_lstm_433_while_body_2443192L
Hsequential_144_lstm_433_while_sequential_144_lstm_433_while_loop_counterR
Nsequential_144_lstm_433_while_sequential_144_lstm_433_while_maximum_iterations-
)sequential_144_lstm_433_while_placeholder/
+sequential_144_lstm_433_while_placeholder_1/
+sequential_144_lstm_433_while_placeholder_2/
+sequential_144_lstm_433_while_placeholder_3K
Gsequential_144_lstm_433_while_sequential_144_lstm_433_strided_slice_1_0?
?sequential_144_lstm_433_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_433_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_144_lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0:	d?a
Nsequential_144_lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?\
Msequential_144_lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0:	?*
&sequential_144_lstm_433_while_identity,
(sequential_144_lstm_433_while_identity_1,
(sequential_144_lstm_433_while_identity_2,
(sequential_144_lstm_433_while_identity_3,
(sequential_144_lstm_433_while_identity_4,
(sequential_144_lstm_433_while_identity_5I
Esequential_144_lstm_433_while_sequential_144_lstm_433_strided_slice_1?
?sequential_144_lstm_433_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_433_tensorarrayunstack_tensorlistfromtensor]
Jsequential_144_lstm_433_while_lstm_cell_403_matmul_readvariableop_resource:	d?_
Lsequential_144_lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource:	2?Z
Ksequential_144_lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource:	???Bsequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp?Asequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp?Csequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp?
Osequential_144/lstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_144/lstm_433/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_144_lstm_433_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_433_tensorarrayunstack_tensorlistfromtensor_0)sequential_144_lstm_433_while_placeholderXsequential_144/lstm_433/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOpLsequential_144_lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_144/lstm_433/while/lstm_cell_403/MatMulMatMulHsequential_144/lstm_433/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOpNsequential_144_lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_144/lstm_433/while/lstm_cell_403/MatMul_1MatMul+sequential_144_lstm_433_while_placeholder_2Ksequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_144/lstm_433/while/lstm_cell_403/addAddV2<sequential_144/lstm_433/while/lstm_cell_403/MatMul:product:0>sequential_144/lstm_433/while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOpMsequential_144_lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_144/lstm_433/while/lstm_cell_403/BiasAddBiasAdd3sequential_144/lstm_433/while/lstm_cell_403/add:z:0Jsequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_144/lstm_433/while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_144/lstm_433/while/lstm_cell_403/splitSplitDsequential_144/lstm_433/while/lstm_cell_403/split/split_dim:output:0<sequential_144/lstm_433/while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_144/lstm_433/while/lstm_cell_403/SigmoidSigmoid:sequential_144/lstm_433/while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_144/lstm_433/while/lstm_cell_403/Sigmoid_1Sigmoid:sequential_144/lstm_433/while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_144/lstm_433/while/lstm_cell_403/mulMul9sequential_144/lstm_433/while/lstm_cell_403/Sigmoid_1:y:0+sequential_144_lstm_433_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_144/lstm_433/while/lstm_cell_403/ReluRelu:sequential_144/lstm_433/while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_144/lstm_433/while/lstm_cell_403/mul_1Mul7sequential_144/lstm_433/while/lstm_cell_403/Sigmoid:y:0>sequential_144/lstm_433/while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_144/lstm_433/while/lstm_cell_403/add_1AddV23sequential_144/lstm_433/while/lstm_cell_403/mul:z:05sequential_144/lstm_433/while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_144/lstm_433/while/lstm_cell_403/Sigmoid_2Sigmoid:sequential_144/lstm_433/while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_144/lstm_433/while/lstm_cell_403/Relu_1Relu5sequential_144/lstm_433/while/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_144/lstm_433/while/lstm_cell_403/mul_2Mul9sequential_144/lstm_433/while/lstm_cell_403/Sigmoid_2:y:0@sequential_144/lstm_433/while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_144/lstm_433/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_144_lstm_433_while_placeholder_1)sequential_144_lstm_433_while_placeholder5sequential_144/lstm_433/while/lstm_cell_403/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_144/lstm_433/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_144/lstm_433/while/addAddV2)sequential_144_lstm_433_while_placeholder,sequential_144/lstm_433/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_144/lstm_433/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_144/lstm_433/while/add_1AddV2Hsequential_144_lstm_433_while_sequential_144_lstm_433_while_loop_counter.sequential_144/lstm_433/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_144/lstm_433/while/IdentityIdentity'sequential_144/lstm_433/while/add_1:z:0#^sequential_144/lstm_433/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_433/while/Identity_1IdentityNsequential_144_lstm_433_while_sequential_144_lstm_433_while_maximum_iterations#^sequential_144/lstm_433/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_433/while/Identity_2Identity%sequential_144/lstm_433/while/add:z:0#^sequential_144/lstm_433/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_433/while/Identity_3IdentityRsequential_144/lstm_433/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_144/lstm_433/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_433/while/Identity_4Identity5sequential_144/lstm_433/while/lstm_cell_403/mul_2:z:0#^sequential_144/lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_144/lstm_433/while/Identity_5Identity5sequential_144/lstm_433/while/lstm_cell_403/add_1:z:0#^sequential_144/lstm_433/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_144/lstm_433/while/NoOpNoOpC^sequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOpB^sequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOpD^sequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_144_lstm_433_while_identity/sequential_144/lstm_433/while/Identity:output:0"]
(sequential_144_lstm_433_while_identity_11sequential_144/lstm_433/while/Identity_1:output:0"]
(sequential_144_lstm_433_while_identity_21sequential_144/lstm_433/while/Identity_2:output:0"]
(sequential_144_lstm_433_while_identity_31sequential_144/lstm_433/while/Identity_3:output:0"]
(sequential_144_lstm_433_while_identity_41sequential_144/lstm_433/while/Identity_4:output:0"]
(sequential_144_lstm_433_while_identity_51sequential_144/lstm_433/while/Identity_5:output:0"?
Ksequential_144_lstm_433_while_lstm_cell_403_biasadd_readvariableop_resourceMsequential_144_lstm_433_while_lstm_cell_403_biasadd_readvariableop_resource_0"?
Lsequential_144_lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resourceNsequential_144_lstm_433_while_lstm_cell_403_matmul_1_readvariableop_resource_0"?
Jsequential_144_lstm_433_while_lstm_cell_403_matmul_readvariableop_resourceLsequential_144_lstm_433_while_lstm_cell_403_matmul_readvariableop_resource_0"?
Esequential_144_lstm_433_while_sequential_144_lstm_433_strided_slice_1Gsequential_144_lstm_433_while_sequential_144_lstm_433_strided_slice_1_0"?
?sequential_144_lstm_433_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_433_tensorarrayunstack_tensorlistfromtensor?sequential_144_lstm_433_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_433_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOpBsequential_144/lstm_433/while/lstm_cell_403/BiasAdd/ReadVariableOp2?
Asequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOpAsequential_144/lstm_433/while/lstm_cell_403/MatMul/ReadVariableOp2?
Csequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOpCsequential_144/lstm_433/while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_434_layer_call_fn_2447865

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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2445136o
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
?
?
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445646
lstm_432_input#
lstm_432_2445619:	?#
lstm_432_2445621:	d?
lstm_432_2445623:	?#
lstm_433_2445626:	d?#
lstm_433_2445628:	2?
lstm_433_2445630:	?"
lstm_434_2445633:2("
lstm_434_2445635:
(
lstm_434_2445637:(#
dense_144_2445640:

dense_144_2445642:
identity??!dense_144/StatefulPartitionedCall? lstm_432/StatefulPartitionedCall? lstm_433/StatefulPartitionedCall? lstm_434/StatefulPartitionedCall?
 lstm_432/StatefulPartitionedCallStatefulPartitionedCalllstm_432_inputlstm_432_2445619lstm_432_2445621lstm_432_2445623*
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2445466?
 lstm_433/StatefulPartitionedCallStatefulPartitionedCall)lstm_432/StatefulPartitionedCall:output:0lstm_433_2445626lstm_433_2445628lstm_433_2445630*
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2445301?
 lstm_434/StatefulPartitionedCallStatefulPartitionedCall)lstm_433/StatefulPartitionedCall:output:0lstm_434_2445633lstm_434_2445635lstm_434_2445637*
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2445136?
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_434/StatefulPartitionedCall:output:0dense_144_2445640dense_144_2445642*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_144/StatefulPartitionedCall!^lstm_432/StatefulPartitionedCall!^lstm_433/StatefulPartitionedCall!^lstm_434/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2D
 lstm_432/StatefulPartitionedCall lstm_432/StatefulPartitionedCall2D
 lstm_433/StatefulPartitionedCall lstm_433/StatefulPartitionedCall2D
 lstm_434/StatefulPartitionedCall lstm_434/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_432_input
?
?
*__inference_lstm_434_layer_call_fn_2447843
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444462o
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
while_cond_2447593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447593___redundant_placeholder05
1while_while_cond_2447593___redundant_placeholder15
1while_while_cond_2447593___redundant_placeholder25
1while_while_cond_2447593___redundant_placeholder3
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444770

inputs?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2444686*
condR
while_cond_2444685*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2448066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2448066___redundant_placeholder05
1while_while_cond_2448066___redundant_placeholder15
1while_while_cond_2448066___redundant_placeholder25
1while_while_cond_2448066___redundant_placeholder3
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
while_body_2448067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448554

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
??
?
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446162

inputsH
5lstm_432_lstm_cell_402_matmul_readvariableop_resource:	?J
7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource:	d?E
6lstm_432_lstm_cell_402_biasadd_readvariableop_resource:	?H
5lstm_433_lstm_cell_403_matmul_readvariableop_resource:	d?J
7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource:	2?E
6lstm_433_lstm_cell_403_biasadd_readvariableop_resource:	?G
5lstm_434_lstm_cell_404_matmul_readvariableop_resource:2(I
7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource:
(D
6lstm_434_lstm_cell_404_biasadd_readvariableop_resource:(:
(dense_144_matmul_readvariableop_resource:
7
)dense_144_biasadd_readvariableop_resource:
identity?? dense_144/BiasAdd/ReadVariableOp?dense_144/MatMul/ReadVariableOp?-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp?,lstm_432/lstm_cell_402/MatMul/ReadVariableOp?.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp?lstm_432/while?-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp?,lstm_433/lstm_cell_403/MatMul/ReadVariableOp?.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp?lstm_433/while?-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp?,lstm_434/lstm_cell_404/MatMul/ReadVariableOp?.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp?lstm_434/whileD
lstm_432/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_432/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_432/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_432/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_sliceStridedSlicelstm_432/Shape:output:0%lstm_432/strided_slice/stack:output:0'lstm_432/strided_slice/stack_1:output:0'lstm_432/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_432/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_432/zeros/packedPacklstm_432/strided_slice:output:0 lstm_432/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_432/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_432/zerosFilllstm_432/zeros/packed:output:0lstm_432/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_432/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_432/zeros_1/packedPacklstm_432/strided_slice:output:0"lstm_432/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_432/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_432/zeros_1Fill lstm_432/zeros_1/packed:output:0lstm_432/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_432/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_432/transpose	Transposeinputs lstm_432/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_432/Shape_1Shapelstm_432/transpose:y:0*
T0*
_output_shapes
:h
lstm_432/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_432/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_1StridedSlicelstm_432/Shape_1:output:0'lstm_432/strided_slice_1/stack:output:0)lstm_432/strided_slice_1/stack_1:output:0)lstm_432/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_432/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_432/TensorArrayV2TensorListReserve-lstm_432/TensorArrayV2/element_shape:output:0!lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_432/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_432/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_432/transpose:y:0Glstm_432/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_432/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_432/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_2StridedSlicelstm_432/transpose:y:0'lstm_432/strided_slice_2/stack:output:0)lstm_432/strided_slice_2/stack_1:output:0)lstm_432/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_432/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp5lstm_432_lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_432/lstm_cell_402/MatMulMatMul!lstm_432/strided_slice_2:output:04lstm_432/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_432/lstm_cell_402/MatMul_1MatMullstm_432/zeros:output:06lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_432/lstm_cell_402/addAddV2'lstm_432/lstm_cell_402/MatMul:product:0)lstm_432/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp6lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_432/lstm_cell_402/BiasAddBiasAddlstm_432/lstm_cell_402/add:z:05lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_432/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_432/lstm_cell_402/splitSplit/lstm_432/lstm_cell_402/split/split_dim:output:0'lstm_432/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_432/lstm_cell_402/SigmoidSigmoid%lstm_432/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_432/lstm_cell_402/Sigmoid_1Sigmoid%lstm_432/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mulMul$lstm_432/lstm_cell_402/Sigmoid_1:y:0lstm_432/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_432/lstm_cell_402/ReluRelu%lstm_432/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mul_1Mul"lstm_432/lstm_cell_402/Sigmoid:y:0)lstm_432/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/add_1AddV2lstm_432/lstm_cell_402/mul:z:0 lstm_432/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_432/lstm_cell_402/Sigmoid_2Sigmoid%lstm_432/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_432/lstm_cell_402/Relu_1Relu lstm_432/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_432/lstm_cell_402/mul_2Mul$lstm_432/lstm_cell_402/Sigmoid_2:y:0+lstm_432/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_432/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_432/TensorArrayV2_1TensorListReserve/lstm_432/TensorArrayV2_1/element_shape:output:0!lstm_432/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_432/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_432/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_432/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_432/whileWhile$lstm_432/while/loop_counter:output:0*lstm_432/while/maximum_iterations:output:0lstm_432/time:output:0!lstm_432/TensorArrayV2_1:handle:0lstm_432/zeros:output:0lstm_432/zeros_1:output:0!lstm_432/strided_slice_1:output:0@lstm_432/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_432_lstm_cell_402_matmul_readvariableop_resource7lstm_432_lstm_cell_402_matmul_1_readvariableop_resource6lstm_432_lstm_cell_402_biasadd_readvariableop_resource*
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
lstm_432_while_body_2445794*'
condR
lstm_432_while_cond_2445793*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_432/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_432/TensorArrayV2Stack/TensorListStackTensorListStacklstm_432/while:output:3Blstm_432/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_432/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_432/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_432/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_432/strided_slice_3StridedSlice4lstm_432/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_432/strided_slice_3/stack:output:0)lstm_432/strided_slice_3/stack_1:output:0)lstm_432/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_432/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_432/transpose_1	Transpose4lstm_432/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_432/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_432/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_433/ShapeShapelstm_432/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_433/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_433/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_433/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_sliceStridedSlicelstm_433/Shape:output:0%lstm_433/strided_slice/stack:output:0'lstm_433/strided_slice/stack_1:output:0'lstm_433/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_433/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_433/zeros/packedPacklstm_433/strided_slice:output:0 lstm_433/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_433/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_433/zerosFilllstm_433/zeros/packed:output:0lstm_433/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_433/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_433/zeros_1/packedPacklstm_433/strided_slice:output:0"lstm_433/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_433/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_433/zeros_1Fill lstm_433/zeros_1/packed:output:0lstm_433/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_433/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_433/transpose	Transposelstm_432/transpose_1:y:0 lstm_433/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_433/Shape_1Shapelstm_433/transpose:y:0*
T0*
_output_shapes
:h
lstm_433/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_433/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_1StridedSlicelstm_433/Shape_1:output:0'lstm_433/strided_slice_1/stack:output:0)lstm_433/strided_slice_1/stack_1:output:0)lstm_433/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_433/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_433/TensorArrayV2TensorListReserve-lstm_433/TensorArrayV2/element_shape:output:0!lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_433/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_433/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_433/transpose:y:0Glstm_433/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_433/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_433/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_2StridedSlicelstm_433/transpose:y:0'lstm_433/strided_slice_2/stack:output:0)lstm_433/strided_slice_2/stack_1:output:0)lstm_433/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_433/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp5lstm_433_lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_433/lstm_cell_403/MatMulMatMul!lstm_433/strided_slice_2:output:04lstm_433/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_433/lstm_cell_403/MatMul_1MatMullstm_433/zeros:output:06lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_433/lstm_cell_403/addAddV2'lstm_433/lstm_cell_403/MatMul:product:0)lstm_433/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp6lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_433/lstm_cell_403/BiasAddBiasAddlstm_433/lstm_cell_403/add:z:05lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_433/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_433/lstm_cell_403/splitSplit/lstm_433/lstm_cell_403/split/split_dim:output:0'lstm_433/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_433/lstm_cell_403/SigmoidSigmoid%lstm_433/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_433/lstm_cell_403/Sigmoid_1Sigmoid%lstm_433/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mulMul$lstm_433/lstm_cell_403/Sigmoid_1:y:0lstm_433/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_433/lstm_cell_403/ReluRelu%lstm_433/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mul_1Mul"lstm_433/lstm_cell_403/Sigmoid:y:0)lstm_433/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/add_1AddV2lstm_433/lstm_cell_403/mul:z:0 lstm_433/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_433/lstm_cell_403/Sigmoid_2Sigmoid%lstm_433/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_433/lstm_cell_403/Relu_1Relu lstm_433/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_433/lstm_cell_403/mul_2Mul$lstm_433/lstm_cell_403/Sigmoid_2:y:0+lstm_433/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_433/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_433/TensorArrayV2_1TensorListReserve/lstm_433/TensorArrayV2_1/element_shape:output:0!lstm_433/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_433/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_433/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_433/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_433/whileWhile$lstm_433/while/loop_counter:output:0*lstm_433/while/maximum_iterations:output:0lstm_433/time:output:0!lstm_433/TensorArrayV2_1:handle:0lstm_433/zeros:output:0lstm_433/zeros_1:output:0!lstm_433/strided_slice_1:output:0@lstm_433/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_433_lstm_cell_403_matmul_readvariableop_resource7lstm_433_lstm_cell_403_matmul_1_readvariableop_resource6lstm_433_lstm_cell_403_biasadd_readvariableop_resource*
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
lstm_433_while_body_2445933*'
condR
lstm_433_while_cond_2445932*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_433/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_433/TensorArrayV2Stack/TensorListStackTensorListStacklstm_433/while:output:3Blstm_433/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_433/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_433/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_433/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_433/strided_slice_3StridedSlice4lstm_433/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_433/strided_slice_3/stack:output:0)lstm_433/strided_slice_3/stack_1:output:0)lstm_433/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_433/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_433/transpose_1	Transpose4lstm_433/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_433/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_433/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_434/ShapeShapelstm_433/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_sliceStridedSlicelstm_434/Shape:output:0%lstm_434/strided_slice/stack:output:0'lstm_434/strided_slice/stack_1:output:0'lstm_434/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_434/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_434/zeros/packedPacklstm_434/strided_slice:output:0 lstm_434/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_434/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_434/zerosFilllstm_434/zeros/packed:output:0lstm_434/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_434/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_434/zeros_1/packedPacklstm_434/strided_slice:output:0"lstm_434/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_434/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_434/zeros_1Fill lstm_434/zeros_1/packed:output:0lstm_434/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_434/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_434/transpose	Transposelstm_433/transpose_1:y:0 lstm_434/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_434/Shape_1Shapelstm_434/transpose:y:0*
T0*
_output_shapes
:h
lstm_434/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_434/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_1StridedSlicelstm_434/Shape_1:output:0'lstm_434/strided_slice_1/stack:output:0)lstm_434/strided_slice_1/stack_1:output:0)lstm_434/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_434/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_434/TensorArrayV2TensorListReserve-lstm_434/TensorArrayV2/element_shape:output:0!lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_434/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_434/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_434/transpose:y:0Glstm_434/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_434/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_434/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_2StridedSlicelstm_434/transpose:y:0'lstm_434/strided_slice_2/stack:output:0)lstm_434/strided_slice_2/stack_1:output:0)lstm_434/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_434/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp5lstm_434_lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_434/lstm_cell_404/MatMulMatMul!lstm_434/strided_slice_2:output:04lstm_434/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_434/lstm_cell_404/MatMul_1MatMullstm_434/zeros:output:06lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_434/lstm_cell_404/addAddV2'lstm_434/lstm_cell_404/MatMul:product:0)lstm_434/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp6lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_434/lstm_cell_404/BiasAddBiasAddlstm_434/lstm_cell_404/add:z:05lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_434/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_434/lstm_cell_404/splitSplit/lstm_434/lstm_cell_404/split/split_dim:output:0'lstm_434/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_434/lstm_cell_404/SigmoidSigmoid%lstm_434/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_434/lstm_cell_404/Sigmoid_1Sigmoid%lstm_434/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mulMul$lstm_434/lstm_cell_404/Sigmoid_1:y:0lstm_434/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_434/lstm_cell_404/ReluRelu%lstm_434/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mul_1Mul"lstm_434/lstm_cell_404/Sigmoid:y:0)lstm_434/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/add_1AddV2lstm_434/lstm_cell_404/mul:z:0 lstm_434/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_434/lstm_cell_404/Sigmoid_2Sigmoid%lstm_434/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_434/lstm_cell_404/Relu_1Relu lstm_434/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_434/lstm_cell_404/mul_2Mul$lstm_434/lstm_cell_404/Sigmoid_2:y:0+lstm_434/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_434/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_434/TensorArrayV2_1TensorListReserve/lstm_434/TensorArrayV2_1/element_shape:output:0!lstm_434/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_434/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_434/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_434/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_434/whileWhile$lstm_434/while/loop_counter:output:0*lstm_434/while/maximum_iterations:output:0lstm_434/time:output:0!lstm_434/TensorArrayV2_1:handle:0lstm_434/zeros:output:0lstm_434/zeros_1:output:0!lstm_434/strided_slice_1:output:0@lstm_434/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_434_lstm_cell_404_matmul_readvariableop_resource7lstm_434_lstm_cell_404_matmul_1_readvariableop_resource6lstm_434_lstm_cell_404_biasadd_readvariableop_resource*
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
lstm_434_while_body_2446072*'
condR
lstm_434_while_cond_2446071*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_434/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_434/TensorArrayV2Stack/TensorListStackTensorListStacklstm_434/while:output:3Blstm_434/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_434/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_434/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_434/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_434/strided_slice_3StridedSlice4lstm_434/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_434/strided_slice_3/stack:output:0)lstm_434/strided_slice_3/stack_1:output:0)lstm_434/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_434/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_434/transpose_1	Transpose4lstm_434/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_434/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_434/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_144/MatMulMatMul!lstm_434/strided_slice_3:output:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp.^lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp-^lstm_432/lstm_cell_402/MatMul/ReadVariableOp/^lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp^lstm_432/while.^lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp-^lstm_433/lstm_cell_403/MatMul/ReadVariableOp/^lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp^lstm_433/while.^lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp-^lstm_434/lstm_cell_404/MatMul/ReadVariableOp/^lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp^lstm_434/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2^
-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp-lstm_432/lstm_cell_402/BiasAdd/ReadVariableOp2\
,lstm_432/lstm_cell_402/MatMul/ReadVariableOp,lstm_432/lstm_cell_402/MatMul/ReadVariableOp2`
.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp.lstm_432/lstm_cell_402/MatMul_1/ReadVariableOp2 
lstm_432/whilelstm_432/while2^
-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp-lstm_433/lstm_cell_403/BiasAdd/ReadVariableOp2\
,lstm_433/lstm_cell_403/MatMul/ReadVariableOp,lstm_433/lstm_cell_403/MatMul/ReadVariableOp2`
.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp.lstm_433/lstm_cell_403/MatMul_1/ReadVariableOp2 
lstm_433/whilelstm_433/while2^
-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp-lstm_434/lstm_cell_404/BiasAdd/ReadVariableOp2\
,lstm_434/lstm_cell_404/MatMul/ReadVariableOp,lstm_434/lstm_cell_404/MatMul/ReadVariableOp2`
.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp.lstm_434/lstm_cell_404/MatMul_1/ReadVariableOp2 
lstm_434/whilelstm_434/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2444201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444201___redundant_placeholder05
1while_while_cond_2444201___redundant_placeholder15
1while_while_cond_2444201___redundant_placeholder25
1while_while_cond_2444201___redundant_placeholder3
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
while_body_2446835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2447451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444188

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
while_cond_2444835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444835___redundant_placeholder05
1while_while_cond_2444835___redundant_placeholder15
1while_while_cond_2444835___redundant_placeholder25
1while_while_cond_2444835___redundant_placeholder3
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
while_body_2444836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448151
inputs_0>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2448067*
condR
while_cond_2448066*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2446691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2446691___redundant_placeholder05
1while_while_cond_2446691___redundant_placeholder15
1while_while_cond_2446691___redundant_placeholder25
1while_while_cond_2446691___redundant_placeholder3
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
while_body_2444393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_404_2444417_0:2(/
while_lstm_cell_404_2444419_0:
(+
while_lstm_cell_404_2444421_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_404_2444417:2(-
while_lstm_cell_404_2444419:
()
while_lstm_cell_404_2444421:(??+while/lstm_cell_404/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_404/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_404_2444417_0while_lstm_cell_404_2444419_0while_lstm_cell_404_2444421_0*
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444334?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_404/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_404/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_404/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_404/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_404_2444417while_lstm_cell_404_2444417_0"<
while_lstm_cell_404_2444419while_lstm_cell_404_2444419_0"<
while_lstm_cell_404_2444421while_lstm_cell_404_2444421_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_404/StatefulPartitionedCall+while/lstm_cell_404/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_432_layer_call_fn_2446633

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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2445466s
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
while_body_2447924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446776
inputs_0?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2446692*
condR
while_cond_2446691*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2444042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444042___redundant_placeholder05
1while_while_cond_2444042___redundant_placeholder15
1while_while_cond_2444042___redundant_placeholder25
1while_while_cond_2444042___redundant_placeholder3
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
*sequential_144_lstm_434_while_body_2443331L
Hsequential_144_lstm_434_while_sequential_144_lstm_434_while_loop_counterR
Nsequential_144_lstm_434_while_sequential_144_lstm_434_while_maximum_iterations-
)sequential_144_lstm_434_while_placeholder/
+sequential_144_lstm_434_while_placeholder_1/
+sequential_144_lstm_434_while_placeholder_2/
+sequential_144_lstm_434_while_placeholder_3K
Gsequential_144_lstm_434_while_sequential_144_lstm_434_strided_slice_1_0?
?sequential_144_lstm_434_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_434_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_144_lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0:2(`
Nsequential_144_lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0:
([
Msequential_144_lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0:(*
&sequential_144_lstm_434_while_identity,
(sequential_144_lstm_434_while_identity_1,
(sequential_144_lstm_434_while_identity_2,
(sequential_144_lstm_434_while_identity_3,
(sequential_144_lstm_434_while_identity_4,
(sequential_144_lstm_434_while_identity_5I
Esequential_144_lstm_434_while_sequential_144_lstm_434_strided_slice_1?
?sequential_144_lstm_434_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_434_tensorarrayunstack_tensorlistfromtensor\
Jsequential_144_lstm_434_while_lstm_cell_404_matmul_readvariableop_resource:2(^
Lsequential_144_lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource:
(Y
Ksequential_144_lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource:(??Bsequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp?Asequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp?Csequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp?
Osequential_144/lstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_144/lstm_434/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_144_lstm_434_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_434_tensorarrayunstack_tensorlistfromtensor_0)sequential_144_lstm_434_while_placeholderXsequential_144/lstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOpLsequential_144_lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_144/lstm_434/while/lstm_cell_404/MatMulMatMulHsequential_144/lstm_434/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOpNsequential_144_lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_144/lstm_434/while/lstm_cell_404/MatMul_1MatMul+sequential_144_lstm_434_while_placeholder_2Ksequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_144/lstm_434/while/lstm_cell_404/addAddV2<sequential_144/lstm_434/while/lstm_cell_404/MatMul:product:0>sequential_144/lstm_434/while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOpMsequential_144_lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_144/lstm_434/while/lstm_cell_404/BiasAddBiasAdd3sequential_144/lstm_434/while/lstm_cell_404/add:z:0Jsequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_144/lstm_434/while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_144/lstm_434/while/lstm_cell_404/splitSplitDsequential_144/lstm_434/while/lstm_cell_404/split/split_dim:output:0<sequential_144/lstm_434/while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_144/lstm_434/while/lstm_cell_404/SigmoidSigmoid:sequential_144/lstm_434/while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_144/lstm_434/while/lstm_cell_404/Sigmoid_1Sigmoid:sequential_144/lstm_434/while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_144/lstm_434/while/lstm_cell_404/mulMul9sequential_144/lstm_434/while/lstm_cell_404/Sigmoid_1:y:0+sequential_144_lstm_434_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_144/lstm_434/while/lstm_cell_404/ReluRelu:sequential_144/lstm_434/while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_144/lstm_434/while/lstm_cell_404/mul_1Mul7sequential_144/lstm_434/while/lstm_cell_404/Sigmoid:y:0>sequential_144/lstm_434/while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_144/lstm_434/while/lstm_cell_404/add_1AddV23sequential_144/lstm_434/while/lstm_cell_404/mul:z:05sequential_144/lstm_434/while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_144/lstm_434/while/lstm_cell_404/Sigmoid_2Sigmoid:sequential_144/lstm_434/while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_144/lstm_434/while/lstm_cell_404/Relu_1Relu5sequential_144/lstm_434/while/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_144/lstm_434/while/lstm_cell_404/mul_2Mul9sequential_144/lstm_434/while/lstm_cell_404/Sigmoid_2:y:0@sequential_144/lstm_434/while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_144/lstm_434/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_144_lstm_434_while_placeholder_1)sequential_144_lstm_434_while_placeholder5sequential_144/lstm_434/while/lstm_cell_404/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_144/lstm_434/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_144/lstm_434/while/addAddV2)sequential_144_lstm_434_while_placeholder,sequential_144/lstm_434/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_144/lstm_434/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_144/lstm_434/while/add_1AddV2Hsequential_144_lstm_434_while_sequential_144_lstm_434_while_loop_counter.sequential_144/lstm_434/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_144/lstm_434/while/IdentityIdentity'sequential_144/lstm_434/while/add_1:z:0#^sequential_144/lstm_434/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_434/while/Identity_1IdentityNsequential_144_lstm_434_while_sequential_144_lstm_434_while_maximum_iterations#^sequential_144/lstm_434/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_434/while/Identity_2Identity%sequential_144/lstm_434/while/add:z:0#^sequential_144/lstm_434/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_434/while/Identity_3IdentityRsequential_144/lstm_434/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_144/lstm_434/while/NoOp*
T0*
_output_shapes
: ?
(sequential_144/lstm_434/while/Identity_4Identity5sequential_144/lstm_434/while/lstm_cell_404/mul_2:z:0#^sequential_144/lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_144/lstm_434/while/Identity_5Identity5sequential_144/lstm_434/while/lstm_cell_404/add_1:z:0#^sequential_144/lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_144/lstm_434/while/NoOpNoOpC^sequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOpB^sequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOpD^sequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_144_lstm_434_while_identity/sequential_144/lstm_434/while/Identity:output:0"]
(sequential_144_lstm_434_while_identity_11sequential_144/lstm_434/while/Identity_1:output:0"]
(sequential_144_lstm_434_while_identity_21sequential_144/lstm_434/while/Identity_2:output:0"]
(sequential_144_lstm_434_while_identity_31sequential_144/lstm_434/while/Identity_3:output:0"]
(sequential_144_lstm_434_while_identity_41sequential_144/lstm_434/while/Identity_4:output:0"]
(sequential_144_lstm_434_while_identity_51sequential_144/lstm_434/while/Identity_5:output:0"?
Ksequential_144_lstm_434_while_lstm_cell_404_biasadd_readvariableop_resourceMsequential_144_lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0"?
Lsequential_144_lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resourceNsequential_144_lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0"?
Jsequential_144_lstm_434_while_lstm_cell_404_matmul_readvariableop_resourceLsequential_144_lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0"?
Esequential_144_lstm_434_while_sequential_144_lstm_434_strided_slice_1Gsequential_144_lstm_434_while_sequential_144_lstm_434_strided_slice_1_0"?
?sequential_144_lstm_434_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_434_tensorarrayunstack_tensorlistfromtensor?sequential_144_lstm_434_while_tensorarrayv2read_tensorlistgetitem_sequential_144_lstm_434_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOpBsequential_144/lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp2?
Asequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOpAsequential_144/lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp2?
Csequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOpCsequential_144/lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2443501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2443501___redundant_placeholder05
1while_while_cond_2443501___redundant_placeholder15
1while_while_cond_2443501___redundant_placeholder25
1while_while_cond_2443501___redundant_placeholder3
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
while_cond_2447736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447736___redundant_placeholder05
1while_while_cond_2447736___redundant_placeholder15
1while_while_cond_2447736___redundant_placeholder25
1while_while_cond_2447736___redundant_placeholder3
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
while_body_2443502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_402_2443526_0:	?0
while_lstm_cell_402_2443528_0:	d?,
while_lstm_cell_402_2443530_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_402_2443526:	?.
while_lstm_cell_402_2443528:	d?*
while_lstm_cell_402_2443530:	???+while/lstm_cell_402/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_402/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_402_2443526_0while_lstm_cell_402_2443528_0while_lstm_cell_402_2443530_0*
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443488?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_402/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_402/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_402/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_402/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_402_2443526while_lstm_cell_402_2443526_0"<
while_lstm_cell_402_2443528while_lstm_cell_402_2443528_0"<
while_lstm_cell_402_2443530while_lstm_cell_402_2443530_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_402/StatefulPartitionedCall+while/lstm_cell_402/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2444202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_404_2444226_0:2(/
while_lstm_cell_404_2444228_0:
(+
while_lstm_cell_404_2444230_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_404_2444226:2(-
while_lstm_cell_404_2444228:
()
while_lstm_cell_404_2444230:(??+while/lstm_cell_404/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_404/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_404_2444226_0while_lstm_cell_404_2444228_0while_lstm_cell_404_2444230_0*
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444188?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_404/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_404/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_404/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_404/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_404_2444226while_lstm_cell_404_2444226_0"<
while_lstm_cell_404_2444228while_lstm_cell_404_2444228_0"<
while_lstm_cell_404_2444230while_lstm_cell_404_2444230_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_404/StatefulPartitionedCall+while/lstm_cell_404/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443488

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
lstm_433_while_cond_2445932.
*lstm_433_while_lstm_433_while_loop_counter4
0lstm_433_while_lstm_433_while_maximum_iterations
lstm_433_while_placeholder 
lstm_433_while_placeholder_1 
lstm_433_while_placeholder_2 
lstm_433_while_placeholder_30
,lstm_433_while_less_lstm_433_strided_slice_1G
Clstm_433_while_lstm_433_while_cond_2445932___redundant_placeholder0G
Clstm_433_while_lstm_433_while_cond_2445932___redundant_placeholder1G
Clstm_433_while_lstm_433_while_cond_2445932___redundant_placeholder2G
Clstm_433_while_lstm_433_while_cond_2445932___redundant_placeholder3
lstm_433_while_identity
?
lstm_433/while/LessLesslstm_433_while_placeholder,lstm_433_while_less_lstm_433_strided_slice_1*
T0*
_output_shapes
: ]
lstm_433/while/IdentityIdentitylstm_433/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_433_while_identity lstm_433/while/Identity:output:0*(
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445534

inputs#
lstm_432_2445507:	?#
lstm_432_2445509:	d?
lstm_432_2445511:	?#
lstm_433_2445514:	d?#
lstm_433_2445516:	2?
lstm_433_2445518:	?"
lstm_434_2445521:2("
lstm_434_2445523:
(
lstm_434_2445525:(#
dense_144_2445528:

dense_144_2445530:
identity??!dense_144/StatefulPartitionedCall? lstm_432/StatefulPartitionedCall? lstm_433/StatefulPartitionedCall? lstm_434/StatefulPartitionedCall?
 lstm_432/StatefulPartitionedCallStatefulPartitionedCallinputslstm_432_2445507lstm_432_2445509lstm_432_2445511*
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2445466?
 lstm_433/StatefulPartitionedCallStatefulPartitionedCall)lstm_432/StatefulPartitionedCall:output:0lstm_433_2445514lstm_433_2445516lstm_433_2445518*
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2445301?
 lstm_434/StatefulPartitionedCallStatefulPartitionedCall)lstm_433/StatefulPartitionedCall:output:0lstm_434_2445521lstm_434_2445523lstm_434_2445525*
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2445136?
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_434/StatefulPartitionedCall:output:0dense_144_2445528dense_144_2445530*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_2444938y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_144/StatefulPartitionedCall!^lstm_432/StatefulPartitionedCall!^lstm_433/StatefulPartitionedCall!^lstm_434/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2D
 lstm_432/StatefulPartitionedCall lstm_432/StatefulPartitionedCall2D
 lstm_433/StatefulPartitionedCall lstm_433/StatefulPartitionedCall2D
 lstm_434/StatefulPartitionedCall lstm_434/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_432_while_body_2445794.
*lstm_432_while_lstm_432_while_loop_counter4
0lstm_432_while_lstm_432_while_maximum_iterations
lstm_432_while_placeholder 
lstm_432_while_placeholder_1 
lstm_432_while_placeholder_2 
lstm_432_while_placeholder_3-
)lstm_432_while_lstm_432_strided_slice_1_0i
elstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0:	?R
?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?M
>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
lstm_432_while_identity
lstm_432_while_identity_1
lstm_432_while_identity_2
lstm_432_while_identity_3
lstm_432_while_identity_4
lstm_432_while_identity_5+
'lstm_432_while_lstm_432_strided_slice_1g
clstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensorN
;lstm_432_while_lstm_cell_402_matmul_readvariableop_resource:	?P
=lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource:	d?K
<lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource:	???3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp?2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp?4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp?
@lstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_432/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0lstm_432_while_placeholderIlstm_432/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_432/while/lstm_cell_402/MatMulMatMul9lstm_432/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_432/while/lstm_cell_402/MatMul_1MatMullstm_432_while_placeholder_2<lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_432/while/lstm_cell_402/addAddV2-lstm_432/while/lstm_cell_402/MatMul:product:0/lstm_432/while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_432/while/lstm_cell_402/BiasAddBiasAdd$lstm_432/while/lstm_cell_402/add:z:0;lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_432/while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_432/while/lstm_cell_402/splitSplit5lstm_432/while/lstm_cell_402/split/split_dim:output:0-lstm_432/while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_432/while/lstm_cell_402/SigmoidSigmoid+lstm_432/while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_432/while/lstm_cell_402/Sigmoid_1Sigmoid+lstm_432/while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_432/while/lstm_cell_402/mulMul*lstm_432/while/lstm_cell_402/Sigmoid_1:y:0lstm_432_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_432/while/lstm_cell_402/ReluRelu+lstm_432/while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/mul_1Mul(lstm_432/while/lstm_cell_402/Sigmoid:y:0/lstm_432/while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/add_1AddV2$lstm_432/while/lstm_cell_402/mul:z:0&lstm_432/while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_432/while/lstm_cell_402/Sigmoid_2Sigmoid+lstm_432/while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_432/while/lstm_cell_402/Relu_1Relu&lstm_432/while/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_432/while/lstm_cell_402/mul_2Mul*lstm_432/while/lstm_cell_402/Sigmoid_2:y:01lstm_432/while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_432/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_432_while_placeholder_1lstm_432_while_placeholder&lstm_432/while/lstm_cell_402/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_432/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_432/while/addAddV2lstm_432_while_placeholderlstm_432/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_432/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_432/while/add_1AddV2*lstm_432_while_lstm_432_while_loop_counterlstm_432/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_432/while/IdentityIdentitylstm_432/while/add_1:z:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_1Identity0lstm_432_while_lstm_432_while_maximum_iterations^lstm_432/while/NoOp*
T0*
_output_shapes
: t
lstm_432/while/Identity_2Identitylstm_432/while/add:z:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_3IdentityClstm_432/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_432/while/NoOp*
T0*
_output_shapes
: ?
lstm_432/while/Identity_4Identity&lstm_432/while/lstm_cell_402/mul_2:z:0^lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_432/while/Identity_5Identity&lstm_432/while/lstm_cell_402/add_1:z:0^lstm_432/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_432/while/NoOpNoOp4^lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp3^lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp5^lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_432_while_identity lstm_432/while/Identity:output:0"?
lstm_432_while_identity_1"lstm_432/while/Identity_1:output:0"?
lstm_432_while_identity_2"lstm_432/while/Identity_2:output:0"?
lstm_432_while_identity_3"lstm_432/while/Identity_3:output:0"?
lstm_432_while_identity_4"lstm_432/while/Identity_4:output:0"?
lstm_432_while_identity_5"lstm_432/while/Identity_5:output:0"T
'lstm_432_while_lstm_432_strided_slice_1)lstm_432_while_lstm_432_strided_slice_1_0"~
<lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource>lstm_432_while_lstm_cell_402_biasadd_readvariableop_resource_0"?
=lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource?lstm_432_while_lstm_cell_402_matmul_1_readvariableop_resource_0"|
;lstm_432_while_lstm_cell_402_matmul_readvariableop_resource=lstm_432_while_lstm_cell_402_matmul_readvariableop_resource_0"?
clstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensorelstm_432_while_tensorarrayv2read_tensorlistgetitem_lstm_432_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp3lstm_432/while/lstm_cell_402/BiasAdd/ReadVariableOp2h
2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp2lstm_432/while/lstm_cell_402/MatMul/ReadVariableOp2l
4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp4lstm_432/while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_434_while_body_2446499.
*lstm_434_while_lstm_434_while_loop_counter4
0lstm_434_while_lstm_434_while_maximum_iterations
lstm_434_while_placeholder 
lstm_434_while_placeholder_1 
lstm_434_while_placeholder_2 
lstm_434_while_placeholder_3-
)lstm_434_while_lstm_434_strided_slice_1_0i
elstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0:2(Q
?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(L
>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0:(
lstm_434_while_identity
lstm_434_while_identity_1
lstm_434_while_identity_2
lstm_434_while_identity_3
lstm_434_while_identity_4
lstm_434_while_identity_5+
'lstm_434_while_lstm_434_strided_slice_1g
clstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensorM
;lstm_434_while_lstm_cell_404_matmul_readvariableop_resource:2(O
=lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource:
(J
<lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource:(??3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp?2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp?4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp?
@lstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_434/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0lstm_434_while_placeholderIlstm_434/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_434/while/lstm_cell_404/MatMulMatMul9lstm_434/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_434/while/lstm_cell_404/MatMul_1MatMullstm_434_while_placeholder_2<lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_434/while/lstm_cell_404/addAddV2-lstm_434/while/lstm_cell_404/MatMul:product:0/lstm_434/while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_434/while/lstm_cell_404/BiasAddBiasAdd$lstm_434/while/lstm_cell_404/add:z:0;lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_434/while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_434/while/lstm_cell_404/splitSplit5lstm_434/while/lstm_cell_404/split/split_dim:output:0-lstm_434/while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_434/while/lstm_cell_404/SigmoidSigmoid+lstm_434/while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_434/while/lstm_cell_404/Sigmoid_1Sigmoid+lstm_434/while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_434/while/lstm_cell_404/mulMul*lstm_434/while/lstm_cell_404/Sigmoid_1:y:0lstm_434_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_434/while/lstm_cell_404/ReluRelu+lstm_434/while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/mul_1Mul(lstm_434/while/lstm_cell_404/Sigmoid:y:0/lstm_434/while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/add_1AddV2$lstm_434/while/lstm_cell_404/mul:z:0&lstm_434/while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_434/while/lstm_cell_404/Sigmoid_2Sigmoid+lstm_434/while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_434/while/lstm_cell_404/Relu_1Relu&lstm_434/while/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_434/while/lstm_cell_404/mul_2Mul*lstm_434/while/lstm_cell_404/Sigmoid_2:y:01lstm_434/while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_434/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_434_while_placeholder_1lstm_434_while_placeholder&lstm_434/while/lstm_cell_404/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_434/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_434/while/addAddV2lstm_434_while_placeholderlstm_434/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_434/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_434/while/add_1AddV2*lstm_434_while_lstm_434_while_loop_counterlstm_434/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_434/while/IdentityIdentitylstm_434/while/add_1:z:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_1Identity0lstm_434_while_lstm_434_while_maximum_iterations^lstm_434/while/NoOp*
T0*
_output_shapes
: t
lstm_434/while/Identity_2Identitylstm_434/while/add:z:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_3IdentityClstm_434/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_434/while/NoOp*
T0*
_output_shapes
: ?
lstm_434/while/Identity_4Identity&lstm_434/while/lstm_cell_404/mul_2:z:0^lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_434/while/Identity_5Identity&lstm_434/while/lstm_cell_404/add_1:z:0^lstm_434/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_434/while/NoOpNoOp4^lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp3^lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp5^lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_434_while_identity lstm_434/while/Identity:output:0"?
lstm_434_while_identity_1"lstm_434/while/Identity_1:output:0"?
lstm_434_while_identity_2"lstm_434/while/Identity_2:output:0"?
lstm_434_while_identity_3"lstm_434/while/Identity_3:output:0"?
lstm_434_while_identity_4"lstm_434/while/Identity_4:output:0"?
lstm_434_while_identity_5"lstm_434/while/Identity_5:output:0"T
'lstm_434_while_lstm_434_strided_slice_1)lstm_434_while_lstm_434_strided_slice_1_0"~
<lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource>lstm_434_while_lstm_cell_404_biasadd_readvariableop_resource_0"?
=lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource?lstm_434_while_lstm_cell_404_matmul_1_readvariableop_resource_0"|
;lstm_434_while_lstm_cell_404_matmul_readvariableop_resource=lstm_434_while_lstm_cell_404_matmul_readvariableop_resource_0"?
clstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensorelstm_434_while_tensorarrayv2read_tensorlistgetitem_lstm_434_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp3lstm_434/while/lstm_cell_404/BiasAdd/ReadVariableOp2h
2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp2lstm_434/while/lstm_cell_404/MatMul/ReadVariableOp2l
4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp4lstm_434/while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2443851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2443851___redundant_placeholder05
1while_while_cond_2443851___redundant_placeholder15
1while_while_cond_2443851___redundant_placeholder25
1while_while_cond_2443851___redundant_placeholder3
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
/__inference_lstm_cell_403_layer_call_fn_2448571

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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443838o
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
while_cond_2444392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2444392___redundant_placeholder05
1while_while_cond_2444392___redundant_placeholder15
1while_while_cond_2444392___redundant_placeholder25
1while_while_cond_2444392___redundant_placeholder3
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448008
inputs_0>
,lstm_cell_404_matmul_readvariableop_resource:2(@
.lstm_cell_404_matmul_1_readvariableop_resource:
(;
-lstm_cell_404_biasadd_readvariableop_resource:(
identity??$lstm_cell_404/BiasAdd/ReadVariableOp?#lstm_cell_404/MatMul/ReadVariableOp?%lstm_cell_404/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_404/MatMul/ReadVariableOpReadVariableOp,lstm_cell_404_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_404/MatMulMatMulstrided_slice_2:output:0+lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_404_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_404/MatMul_1MatMulzeros:output:0-lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_404/addAddV2lstm_cell_404/MatMul:product:0 lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_404_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_404/BiasAddBiasAddlstm_cell_404/add:z:0,lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_404/splitSplit&lstm_cell_404/split/split_dim:output:0lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_404/SigmoidSigmoidlstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_1Sigmoidlstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_404/mulMullstm_cell_404/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_404/ReluRelulstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_1Mullstm_cell_404/Sigmoid:y:0 lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_404/add_1AddV2lstm_cell_404/mul:z:0lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_404/Sigmoid_2Sigmoidlstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_404/Relu_1Relulstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_404/mul_2Mullstm_cell_404/Sigmoid_2:y:0"lstm_cell_404/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_404_matmul_readvariableop_resource.lstm_cell_404_matmul_1_readvariableop_resource-lstm_cell_404_biasadd_readvariableop_resource*
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
while_body_2447924*
condR
while_cond_2447923*K
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
NoOpNoOp%^lstm_cell_404/BiasAdd/ReadVariableOp$^lstm_cell_404/MatMul/ReadVariableOp&^lstm_cell_404/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_404/BiasAdd/ReadVariableOp$lstm_cell_404/BiasAdd/ReadVariableOp2J
#lstm_cell_404/MatMul/ReadVariableOp#lstm_cell_404/MatMul/ReadVariableOp2N
%lstm_cell_404/MatMul_1/ReadVariableOp%lstm_cell_404/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2447120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2447120___redundant_placeholder05
1while_while_cond_2447120___redundant_placeholder15
1while_while_cond_2447120___redundant_placeholder25
1while_while_cond_2447120___redundant_placeholder3
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
%__inference_signature_wrapper_2445681
lstm_432_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_432_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2443421o
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
_user_specified_namelstm_432_input
?8
?
E__inference_lstm_433_layer_call_and_return_conditional_losses_2443921

inputs(
lstm_cell_403_2443839:	d?(
lstm_cell_403_2443841:	2?$
lstm_cell_403_2443843:	?
identity??%lstm_cell_403/StatefulPartitionedCall?while;
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
%lstm_cell_403/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_403_2443839lstm_cell_403_2443841lstm_cell_403_2443843*
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443838n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_403_2443839lstm_cell_403_2443841lstm_cell_403_2443843*
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
while_body_2443852*
condR
while_cond_2443851*K
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
NoOpNoOp&^lstm_cell_403/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_403/StatefulPartitionedCall%lstm_cell_403/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_2448893
file_prefix/
+savev2_dense_144_kernel_read_readvariableop-
)savev2_dense_144_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_432_lstm_cell_432_kernel_read_readvariableopF
Bsavev2_lstm_432_lstm_cell_432_recurrent_kernel_read_readvariableop:
6savev2_lstm_432_lstm_cell_432_bias_read_readvariableop<
8savev2_lstm_433_lstm_cell_433_kernel_read_readvariableopF
Bsavev2_lstm_433_lstm_cell_433_recurrent_kernel_read_readvariableop:
6savev2_lstm_433_lstm_cell_433_bias_read_readvariableop<
8savev2_lstm_434_lstm_cell_434_kernel_read_readvariableopF
Bsavev2_lstm_434_lstm_cell_434_recurrent_kernel_read_readvariableop:
6savev2_lstm_434_lstm_cell_434_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_144_kernel_m_read_readvariableop4
0savev2_adam_dense_144_bias_m_read_readvariableopC
?savev2_adam_lstm_432_lstm_cell_432_kernel_m_read_readvariableopM
Isavev2_adam_lstm_432_lstm_cell_432_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_432_lstm_cell_432_bias_m_read_readvariableopC
?savev2_adam_lstm_433_lstm_cell_433_kernel_m_read_readvariableopM
Isavev2_adam_lstm_433_lstm_cell_433_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_433_lstm_cell_433_bias_m_read_readvariableopC
?savev2_adam_lstm_434_lstm_cell_434_kernel_m_read_readvariableopM
Isavev2_adam_lstm_434_lstm_cell_434_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_434_lstm_cell_434_bias_m_read_readvariableop6
2savev2_adam_dense_144_kernel_v_read_readvariableop4
0savev2_adam_dense_144_bias_v_read_readvariableopC
?savev2_adam_lstm_432_lstm_cell_432_kernel_v_read_readvariableopM
Isavev2_adam_lstm_432_lstm_cell_432_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_432_lstm_cell_432_bias_v_read_readvariableopC
?savev2_adam_lstm_433_lstm_cell_433_kernel_v_read_readvariableopM
Isavev2_adam_lstm_433_lstm_cell_433_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_433_lstm_cell_433_bias_v_read_readvariableopC
?savev2_adam_lstm_434_lstm_cell_434_kernel_v_read_readvariableopM
Isavev2_adam_lstm_434_lstm_cell_434_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_434_lstm_cell_434_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_144_kernel_read_readvariableop)savev2_dense_144_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_432_lstm_cell_432_kernel_read_readvariableopBsavev2_lstm_432_lstm_cell_432_recurrent_kernel_read_readvariableop6savev2_lstm_432_lstm_cell_432_bias_read_readvariableop8savev2_lstm_433_lstm_cell_433_kernel_read_readvariableopBsavev2_lstm_433_lstm_cell_433_recurrent_kernel_read_readvariableop6savev2_lstm_433_lstm_cell_433_bias_read_readvariableop8savev2_lstm_434_lstm_cell_434_kernel_read_readvariableopBsavev2_lstm_434_lstm_cell_434_recurrent_kernel_read_readvariableop6savev2_lstm_434_lstm_cell_434_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_144_kernel_m_read_readvariableop0savev2_adam_dense_144_bias_m_read_readvariableop?savev2_adam_lstm_432_lstm_cell_432_kernel_m_read_readvariableopIsavev2_adam_lstm_432_lstm_cell_432_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_432_lstm_cell_432_bias_m_read_readvariableop?savev2_adam_lstm_433_lstm_cell_433_kernel_m_read_readvariableopIsavev2_adam_lstm_433_lstm_cell_433_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_433_lstm_cell_433_bias_m_read_readvariableop?savev2_adam_lstm_434_lstm_cell_434_kernel_m_read_readvariableopIsavev2_adam_lstm_434_lstm_cell_434_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_434_lstm_cell_434_bias_m_read_readvariableop2savev2_adam_dense_144_kernel_v_read_readvariableop0savev2_adam_dense_144_bias_v_read_readvariableop?savev2_adam_lstm_432_lstm_cell_432_kernel_v_read_readvariableopIsavev2_adam_lstm_432_lstm_cell_432_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_432_lstm_cell_432_bias_v_read_readvariableop?savev2_adam_lstm_433_lstm_cell_433_kernel_v_read_readvariableopIsavev2_adam_lstm_433_lstm_cell_433_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_433_lstm_cell_433_bias_v_read_readvariableop?savev2_adam_lstm_434_lstm_cell_434_kernel_v_read_readvariableopIsavev2_adam_lstm_434_lstm_cell_434_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_434_lstm_cell_434_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
*__inference_lstm_433_layer_call_fn_2447216
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2443921|
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
while_body_2447594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_403_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_403_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_403_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_403_matmul_readvariableop_resource:	d?G
4while_lstm_cell_403_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_403_biasadd_readvariableop_resource:	???*while/lstm_cell_403/BiasAdd/ReadVariableOp?)while/lstm_cell_403/MatMul/ReadVariableOp?+while/lstm_cell_403/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_403/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_403_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_403_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_403/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_403/addAddV2$while/lstm_cell_403/MatMul:product:0&while/lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_403_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_403/BiasAddBiasAddwhile/lstm_cell_403/add:z:02while/lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_403/splitSplit,while/lstm_cell_403/split/split_dim:output:0$while/lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_403/SigmoidSigmoid"while/lstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_1Sigmoid"while/lstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mulMul!while/lstm_cell_403/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_403/ReluRelu"while/lstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_1Mulwhile/lstm_cell_403/Sigmoid:y:0&while/lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/add_1AddV2while/lstm_cell_403/mul:z:0while/lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_403/Sigmoid_2Sigmoid"while/lstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_403/Relu_1Reluwhile/lstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_403/mul_2Mul!while/lstm_cell_403/Sigmoid_2:y:0(while/lstm_cell_403/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_403/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_403/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_403/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_403/BiasAdd/ReadVariableOp*^while/lstm_cell_403/MatMul/ReadVariableOp,^while/lstm_cell_403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_403_biasadd_readvariableop_resource5while_lstm_cell_403_biasadd_readvariableop_resource_0"n
4while_lstm_cell_403_matmul_1_readvariableop_resource6while_lstm_cell_403_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_403_matmul_readvariableop_resource4while_lstm_cell_403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_403/BiasAdd/ReadVariableOp*while/lstm_cell_403/BiasAdd/ReadVariableOp2V
)while/lstm_cell_403/MatMul/ReadVariableOp)while/lstm_cell_403/MatMul/ReadVariableOp2Z
+while/lstm_cell_403/MatMul_1/ReadVariableOp+while/lstm_cell_403/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_433_layer_call_fn_2447238

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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444770s
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447205

inputs?
,lstm_cell_402_matmul_readvariableop_resource:	?A
.lstm_cell_402_matmul_1_readvariableop_resource:	d?<
-lstm_cell_402_biasadd_readvariableop_resource:	?
identity??$lstm_cell_402/BiasAdd/ReadVariableOp?#lstm_cell_402/MatMul/ReadVariableOp?%lstm_cell_402/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_402/MatMul/ReadVariableOpReadVariableOp,lstm_cell_402_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_402/MatMulMatMulstrided_slice_2:output:0+lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_402_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_402/MatMul_1MatMulzeros:output:0-lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_402/addAddV2lstm_cell_402/MatMul:product:0 lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_402_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_402/BiasAddBiasAddlstm_cell_402/add:z:0,lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_402/splitSplit&lstm_cell_402/split/split_dim:output:0lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_402/SigmoidSigmoidlstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_1Sigmoidlstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_402/mulMullstm_cell_402/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_402/ReluRelulstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_1Mullstm_cell_402/Sigmoid:y:0 lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_402/add_1AddV2lstm_cell_402/mul:z:0lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_402/Sigmoid_2Sigmoidlstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_402/Relu_1Relulstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_402/mul_2Mullstm_cell_402/Sigmoid_2:y:0"lstm_cell_402/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_402_matmul_readvariableop_resource.lstm_cell_402_matmul_1_readvariableop_resource-lstm_cell_402_biasadd_readvariableop_resource*
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
while_body_2447121*
condR
while_cond_2447120*K
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
NoOpNoOp%^lstm_cell_402/BiasAdd/ReadVariableOp$^lstm_cell_402/MatMul/ReadVariableOp&^lstm_cell_402/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_402/BiasAdd/ReadVariableOp$lstm_cell_402/BiasAdd/ReadVariableOp2J
#lstm_cell_402/MatMul/ReadVariableOp#lstm_cell_402/MatMul/ReadVariableOp2N
%lstm_cell_402/MatMul_1/ReadVariableOp%lstm_cell_402/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447392
inputs_0?
,lstm_cell_403_matmul_readvariableop_resource:	d?A
.lstm_cell_403_matmul_1_readvariableop_resource:	2?<
-lstm_cell_403_biasadd_readvariableop_resource:	?
identity??$lstm_cell_403/BiasAdd/ReadVariableOp?#lstm_cell_403/MatMul/ReadVariableOp?%lstm_cell_403/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_403/MatMul/ReadVariableOpReadVariableOp,lstm_cell_403_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_403/MatMulMatMulstrided_slice_2:output:0+lstm_cell_403/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_403/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_403_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_403/MatMul_1MatMulzeros:output:0-lstm_cell_403/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_403/addAddV2lstm_cell_403/MatMul:product:0 lstm_cell_403/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_403/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_403_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_403/BiasAddBiasAddlstm_cell_403/add:z:0,lstm_cell_403/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_403/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_403/splitSplit&lstm_cell_403/split/split_dim:output:0lstm_cell_403/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_403/SigmoidSigmoidlstm_cell_403/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_1Sigmoidlstm_cell_403/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_403/mulMullstm_cell_403/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_403/ReluRelulstm_cell_403/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_1Mullstm_cell_403/Sigmoid:y:0 lstm_cell_403/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_403/add_1AddV2lstm_cell_403/mul:z:0lstm_cell_403/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_403/Sigmoid_2Sigmoidlstm_cell_403/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_403/Relu_1Relulstm_cell_403/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_403/mul_2Mullstm_cell_403/Sigmoid_2:y:0"lstm_cell_403/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_403_matmul_readvariableop_resource.lstm_cell_403_matmul_1_readvariableop_resource-lstm_cell_403_biasadd_readvariableop_resource*
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
while_body_2447308*
condR
while_cond_2447307*K
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
NoOpNoOp%^lstm_cell_403/BiasAdd/ReadVariableOp$^lstm_cell_403/MatMul/ReadVariableOp&^lstm_cell_403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_403/BiasAdd/ReadVariableOp$lstm_cell_403/BiasAdd/ReadVariableOp2J
#lstm_cell_403/MatMul/ReadVariableOp#lstm_cell_403/MatMul/ReadVariableOp2N
%lstm_cell_403/MatMul_1/ReadVariableOp%lstm_cell_403/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_433_layer_call_and_return_conditional_losses_2444112

inputs(
lstm_cell_403_2444030:	d?(
lstm_cell_403_2444032:	2?$
lstm_cell_403_2444034:	?
identity??%lstm_cell_403/StatefulPartitionedCall?while;
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
%lstm_cell_403/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_403_2444030lstm_cell_403_2444032lstm_cell_403_2444034*
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443984n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_403_2444030lstm_cell_403_2444032lstm_cell_403_2444034*
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
while_body_2444043*
condR
while_cond_2444042*K
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
NoOpNoOp&^lstm_cell_403/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_403/StatefulPartitionedCall%lstm_cell_403/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_2444043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_403_2444067_0:	d?0
while_lstm_cell_403_2444069_0:	2?,
while_lstm_cell_403_2444071_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_403_2444067:	d?.
while_lstm_cell_403_2444069:	2?*
while_lstm_cell_403_2444071:	???+while/lstm_cell_403/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_403/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_403_2444067_0while_lstm_cell_403_2444069_0while_lstm_cell_403_2444071_0*
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443984?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_403/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_403/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_403/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_403/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_403_2444067while_lstm_cell_403_2444067_0"<
while_lstm_cell_403_2444069while_lstm_cell_403_2444069_0"<
while_lstm_cell_403_2444071while_lstm_cell_403_2444071_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_403/StatefulPartitionedCall+while/lstm_cell_403/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_402_layer_call_fn_2448473

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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443488o
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
*__inference_lstm_434_layer_call_fn_2447832
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444271o
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

?
lstm_432_while_cond_2445793.
*lstm_432_while_lstm_432_while_loop_counter4
0lstm_432_while_lstm_432_while_maximum_iterations
lstm_432_while_placeholder 
lstm_432_while_placeholder_1 
lstm_432_while_placeholder_2 
lstm_432_while_placeholder_30
,lstm_432_while_less_lstm_432_strided_slice_1G
Clstm_432_while_lstm_432_while_cond_2445793___redundant_placeholder0G
Clstm_432_while_lstm_432_while_cond_2445793___redundant_placeholder1G
Clstm_432_while_lstm_432_while_cond_2445793___redundant_placeholder2G
Clstm_432_while_lstm_432_while_cond_2445793___redundant_placeholder3
lstm_432_while_identity
?
lstm_432/while/LessLesslstm_432_while_placeholder,lstm_432_while_less_lstm_432_strided_slice_1*
T0*
_output_shapes
: ]
lstm_432/while/IdentityIdentitylstm_432/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_432_while_identity lstm_432/while/Identity:output:0*(
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
while_body_2445382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_402_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_402_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_402_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_402_matmul_readvariableop_resource:	?G
4while_lstm_cell_402_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_402_biasadd_readvariableop_resource:	???*while/lstm_cell_402/BiasAdd/ReadVariableOp?)while/lstm_cell_402/MatMul/ReadVariableOp?+while/lstm_cell_402/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_402/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_402_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_402/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_402/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_402/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_402_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_402/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_402/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_402/addAddV2$while/lstm_cell_402/MatMul:product:0&while/lstm_cell_402/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_402/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_402_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_402/BiasAddBiasAddwhile/lstm_cell_402/add:z:02while/lstm_cell_402/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_402/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_402/splitSplit,while/lstm_cell_402/split/split_dim:output:0$while/lstm_cell_402/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_402/SigmoidSigmoid"while/lstm_cell_402/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_1Sigmoid"while/lstm_cell_402/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mulMul!while/lstm_cell_402/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_402/ReluRelu"while/lstm_cell_402/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_1Mulwhile/lstm_cell_402/Sigmoid:y:0&while/lstm_cell_402/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/add_1AddV2while/lstm_cell_402/mul:z:0while/lstm_cell_402/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_402/Sigmoid_2Sigmoid"while/lstm_cell_402/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_402/Relu_1Reluwhile/lstm_cell_402/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_402/mul_2Mul!while/lstm_cell_402/Sigmoid_2:y:0(while/lstm_cell_402/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_402/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_402/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_402/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_402/BiasAdd/ReadVariableOp*^while/lstm_cell_402/MatMul/ReadVariableOp,^while/lstm_cell_402/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_402_biasadd_readvariableop_resource5while_lstm_cell_402_biasadd_readvariableop_resource_0"n
4while_lstm_cell_402_matmul_1_readvariableop_resource6while_lstm_cell_402_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_402_matmul_readvariableop_resource4while_lstm_cell_402_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_402/BiasAdd/ReadVariableOp*while/lstm_cell_402/BiasAdd/ReadVariableOp2V
)while/lstm_cell_402/MatMul/ReadVariableOp)while/lstm_cell_402/MatMul/ReadVariableOp2Z
+while/lstm_cell_402/MatMul_1/ReadVariableOp+while/lstm_cell_402/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_434_layer_call_fn_2447854

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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444920o
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2443838

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
?
*sequential_144_lstm_433_while_cond_2443191L
Hsequential_144_lstm_433_while_sequential_144_lstm_433_while_loop_counterR
Nsequential_144_lstm_433_while_sequential_144_lstm_433_while_maximum_iterations-
)sequential_144_lstm_433_while_placeholder/
+sequential_144_lstm_433_while_placeholder_1/
+sequential_144_lstm_433_while_placeholder_2/
+sequential_144_lstm_433_while_placeholder_3N
Jsequential_144_lstm_433_while_less_sequential_144_lstm_433_strided_slice_1e
asequential_144_lstm_433_while_sequential_144_lstm_433_while_cond_2443191___redundant_placeholder0e
asequential_144_lstm_433_while_sequential_144_lstm_433_while_cond_2443191___redundant_placeholder1e
asequential_144_lstm_433_while_sequential_144_lstm_433_while_cond_2443191___redundant_placeholder2e
asequential_144_lstm_433_while_sequential_144_lstm_433_while_cond_2443191___redundant_placeholder3*
&sequential_144_lstm_433_while_identity
?
"sequential_144/lstm_433/while/LessLess)sequential_144_lstm_433_while_placeholderJsequential_144_lstm_433_while_less_sequential_144_lstm_433_strided_slice_1*
T0*
_output_shapes
: {
&sequential_144/lstm_433/while/IdentityIdentity&sequential_144/lstm_433/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_144_lstm_433_while_identity/sequential_144/lstm_433/while/Identity:output:0*(
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2444271

inputs'
lstm_cell_404_2444189:2('
lstm_cell_404_2444191:
(#
lstm_cell_404_2444193:(
identity??%lstm_cell_404/StatefulPartitionedCall?while;
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
%lstm_cell_404/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_404_2444189lstm_cell_404_2444191lstm_cell_404_2444193*
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2444188n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_404_2444189lstm_cell_404_2444191lstm_cell_404_2444193*
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
while_body_2444202*
condR
while_cond_2444201*K
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
NoOpNoOp&^lstm_cell_404/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_404/StatefulPartitionedCall%lstm_cell_404/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2443634

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
while_body_2448210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_404_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_404_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_404_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_404_matmul_readvariableop_resource:2(F
4while_lstm_cell_404_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_404_biasadd_readvariableop_resource:(??*while/lstm_cell_404/BiasAdd/ReadVariableOp?)while/lstm_cell_404/MatMul/ReadVariableOp?+while/lstm_cell_404/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_404/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_404_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_404/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_404/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_404/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_404_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_404/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_404/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_404/addAddV2$while/lstm_cell_404/MatMul:product:0&while/lstm_cell_404/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_404/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_404_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_404/BiasAddBiasAddwhile/lstm_cell_404/add:z:02while/lstm_cell_404/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_404/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_404/splitSplit,while/lstm_cell_404/split/split_dim:output:0$while/lstm_cell_404/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_404/SigmoidSigmoid"while/lstm_cell_404/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_1Sigmoid"while/lstm_cell_404/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mulMul!while/lstm_cell_404/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_404/ReluRelu"while/lstm_cell_404/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_1Mulwhile/lstm_cell_404/Sigmoid:y:0&while/lstm_cell_404/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/add_1AddV2while/lstm_cell_404/mul:z:0while/lstm_cell_404/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_404/Sigmoid_2Sigmoid"while/lstm_cell_404/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_404/Relu_1Reluwhile/lstm_cell_404/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_404/mul_2Mul!while/lstm_cell_404/Sigmoid_2:y:0(while/lstm_cell_404/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_404/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_404/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_404/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_404/BiasAdd/ReadVariableOp*^while/lstm_cell_404/MatMul/ReadVariableOp,^while/lstm_cell_404/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_404_biasadd_readvariableop_resource5while_lstm_cell_404_biasadd_readvariableop_resource_0"n
4while_lstm_cell_404_matmul_1_readvariableop_resource6while_lstm_cell_404_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_404_matmul_readvariableop_resource4while_lstm_cell_404_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_404/BiasAdd/ReadVariableOp*while/lstm_cell_404/BiasAdd/ReadVariableOp2V
)while/lstm_cell_404/MatMul/ReadVariableOp)while/lstm_cell_404/MatMul/ReadVariableOp2Z
+while/lstm_cell_404/MatMul_1/ReadVariableOp+while/lstm_cell_404/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_432_input;
 serving_default_lstm_432_input:0?????????=
	dense_1440
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
2dense_144/kernel
:2dense_144/bias
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
0:.	?2lstm_432/lstm_cell_432/kernel
::8	d?2'lstm_432/lstm_cell_432/recurrent_kernel
*:(?2lstm_432/lstm_cell_432/bias
0:.	d?2lstm_433/lstm_cell_433/kernel
::8	2?2'lstm_433/lstm_cell_433/recurrent_kernel
*:(?2lstm_433/lstm_cell_433/bias
/:-2(2lstm_434/lstm_cell_434/kernel
9:7
(2'lstm_434/lstm_cell_434/recurrent_kernel
):'(2lstm_434/lstm_cell_434/bias
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
2Adam/dense_144/kernel/m
!:2Adam/dense_144/bias/m
5:3	?2$Adam/lstm_432/lstm_cell_432/kernel/m
?:=	d?2.Adam/lstm_432/lstm_cell_432/recurrent_kernel/m
/:-?2"Adam/lstm_432/lstm_cell_432/bias/m
5:3	d?2$Adam/lstm_433/lstm_cell_433/kernel/m
?:=	2?2.Adam/lstm_433/lstm_cell_433/recurrent_kernel/m
/:-?2"Adam/lstm_433/lstm_cell_433/bias/m
4:22(2$Adam/lstm_434/lstm_cell_434/kernel/m
>:<
(2.Adam/lstm_434/lstm_cell_434/recurrent_kernel/m
.:,(2"Adam/lstm_434/lstm_cell_434/bias/m
':%
2Adam/dense_144/kernel/v
!:2Adam/dense_144/bias/v
5:3	?2$Adam/lstm_432/lstm_cell_432/kernel/v
?:=	d?2.Adam/lstm_432/lstm_cell_432/recurrent_kernel/v
/:-?2"Adam/lstm_432/lstm_cell_432/bias/v
5:3	d?2$Adam/lstm_433/lstm_cell_433/kernel/v
?:=	2?2.Adam/lstm_433/lstm_cell_433/recurrent_kernel/v
/:-?2"Adam/lstm_433/lstm_cell_433/bias/v
4:22(2$Adam/lstm_434/lstm_cell_434/kernel/v
>:<
(2.Adam/lstm_434/lstm_cell_434/recurrent_kernel/v
.:,(2"Adam/lstm_434/lstm_cell_434/bias/v
?2?
0__inference_sequential_144_layer_call_fn_2444970
0__inference_sequential_144_layer_call_fn_2445708
0__inference_sequential_144_layer_call_fn_2445735
0__inference_sequential_144_layer_call_fn_2445586?
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446162
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446589
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445616
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445646?
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
"__inference__wrapped_model_2443421lstm_432_input"?
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
*__inference_lstm_432_layer_call_fn_2446600
*__inference_lstm_432_layer_call_fn_2446611
*__inference_lstm_432_layer_call_fn_2446622
*__inference_lstm_432_layer_call_fn_2446633?
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446776
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446919
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447062
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447205?
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
*__inference_lstm_433_layer_call_fn_2447216
*__inference_lstm_433_layer_call_fn_2447227
*__inference_lstm_433_layer_call_fn_2447238
*__inference_lstm_433_layer_call_fn_2447249?
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447392
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447535
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447678
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447821?
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
*__inference_lstm_434_layer_call_fn_2447832
*__inference_lstm_434_layer_call_fn_2447843
*__inference_lstm_434_layer_call_fn_2447854
*__inference_lstm_434_layer_call_fn_2447865?
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448008
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448151
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448294
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448437?
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
+__inference_dense_144_layer_call_fn_2448446?
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
F__inference_dense_144_layer_call_and_return_conditional_losses_2448456?
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
%__inference_signature_wrapper_2445681lstm_432_input"?
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
/__inference_lstm_cell_402_layer_call_fn_2448473
/__inference_lstm_cell_402_layer_call_fn_2448490?
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448522
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448554?
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
/__inference_lstm_cell_403_layer_call_fn_2448571
/__inference_lstm_cell_403_layer_call_fn_2448588?
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448620
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448652?
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
/__inference_lstm_cell_404_layer_call_fn_2448669
/__inference_lstm_cell_404_layer_call_fn_2448686?
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448718
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448750?
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
"__inference__wrapped_model_2443421?-./012345!";?8
1?.
,?)
lstm_432_input?????????
? "5?2
0
	dense_144#? 
	dense_144??????????
F__inference_dense_144_layer_call_and_return_conditional_losses_2448456\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_144_layer_call_fn_2448446O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446776?-./O?L
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2446919?-./O?L
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447062q-./??<
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
E__inference_lstm_432_layer_call_and_return_conditional_losses_2447205q-./??<
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
*__inference_lstm_432_layer_call_fn_2446600}-./O?L
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
*__inference_lstm_432_layer_call_fn_2446611}-./O?L
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
*__inference_lstm_432_layer_call_fn_2446622d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_432_layer_call_fn_2446633d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447392?012O?L
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447535?012O?L
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447678q012??<
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
E__inference_lstm_433_layer_call_and_return_conditional_losses_2447821q012??<
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
*__inference_lstm_433_layer_call_fn_2447216}012O?L
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
*__inference_lstm_433_layer_call_fn_2447227}012O?L
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
*__inference_lstm_433_layer_call_fn_2447238d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_433_layer_call_fn_2447249d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448008}345O?L
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448151}345O?L
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448294m345??<
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
E__inference_lstm_434_layer_call_and_return_conditional_losses_2448437m345??<
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
*__inference_lstm_434_layer_call_fn_2447832p345O?L
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
*__inference_lstm_434_layer_call_fn_2447843p345O?L
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
*__inference_lstm_434_layer_call_fn_2447854`345??<
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
*__inference_lstm_434_layer_call_fn_2447865`345??<
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448522?-./??}
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
J__inference_lstm_cell_402_layer_call_and_return_conditional_losses_2448554?-./??}
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
/__inference_lstm_cell_402_layer_call_fn_2448473?-./??}
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
/__inference_lstm_cell_402_layer_call_fn_2448490?-./??}
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448620?012??}
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
J__inference_lstm_cell_403_layer_call_and_return_conditional_losses_2448652?012??}
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
/__inference_lstm_cell_403_layer_call_fn_2448571?012??}
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
/__inference_lstm_cell_403_layer_call_fn_2448588?012??}
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448718?345??}
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
J__inference_lstm_cell_404_layer_call_and_return_conditional_losses_2448750?345??}
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
/__inference_lstm_cell_404_layer_call_fn_2448669?345??}
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
/__inference_lstm_cell_404_layer_call_fn_2448686?345??}
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445616y-./012345!"C?@
9?6
,?)
lstm_432_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_144_layer_call_and_return_conditional_losses_2445646y-./012345!"C?@
9?6
,?)
lstm_432_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446162q-./012345!";?8
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
K__inference_sequential_144_layer_call_and_return_conditional_losses_2446589q-./012345!";?8
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
0__inference_sequential_144_layer_call_fn_2444970l-./012345!"C?@
9?6
,?)
lstm_432_input?????????
p 

 
? "???????????
0__inference_sequential_144_layer_call_fn_2445586l-./012345!"C?@
9?6
,?)
lstm_432_input?????????
p

 
? "???????????
0__inference_sequential_144_layer_call_fn_2445708d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_144_layer_call_fn_2445735d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2445681?-./012345!"M?J
? 
C?@
>
lstm_432_input,?)
lstm_432_input?????????"5?2
0
	dense_144#? 
	dense_144?????????