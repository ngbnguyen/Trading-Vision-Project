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
dense_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_170/kernel
u
$dense_170/kernel/Read/ReadVariableOpReadVariableOpdense_170/kernel*
_output_shapes

:
*
dtype0
t
dense_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_170/bias
m
"dense_170/bias/Read/ReadVariableOpReadVariableOpdense_170/bias*
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
lstm_510/lstm_cell_510/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_510/lstm_cell_510/kernel
?
1lstm_510/lstm_cell_510/kernel/Read/ReadVariableOpReadVariableOplstm_510/lstm_cell_510/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_510/lstm_cell_510/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_510/lstm_cell_510/recurrent_kernel
?
;lstm_510/lstm_cell_510/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_510/lstm_cell_510/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_510/lstm_cell_510/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_510/lstm_cell_510/bias
?
/lstm_510/lstm_cell_510/bias/Read/ReadVariableOpReadVariableOplstm_510/lstm_cell_510/bias*
_output_shapes	
:?*
dtype0
?
lstm_511/lstm_cell_511/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_511/lstm_cell_511/kernel
?
1lstm_511/lstm_cell_511/kernel/Read/ReadVariableOpReadVariableOplstm_511/lstm_cell_511/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_511/lstm_cell_511/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_511/lstm_cell_511/recurrent_kernel
?
;lstm_511/lstm_cell_511/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_511/lstm_cell_511/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_511/lstm_cell_511/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_511/lstm_cell_511/bias
?
/lstm_511/lstm_cell_511/bias/Read/ReadVariableOpReadVariableOplstm_511/lstm_cell_511/bias*
_output_shapes	
:?*
dtype0
?
lstm_512/lstm_cell_512/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_512/lstm_cell_512/kernel
?
1lstm_512/lstm_cell_512/kernel/Read/ReadVariableOpReadVariableOplstm_512/lstm_cell_512/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_512/lstm_cell_512/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_512/lstm_cell_512/recurrent_kernel
?
;lstm_512/lstm_cell_512/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_512/lstm_cell_512/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_512/lstm_cell_512/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_512/lstm_cell_512/bias
?
/lstm_512/lstm_cell_512/bias/Read/ReadVariableOpReadVariableOplstm_512/lstm_cell_512/bias*
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
Adam/dense_170/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_170/kernel/m
?
+Adam/dense_170/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_170/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_170/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_170/bias/m
{
)Adam/dense_170/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_170/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_510/lstm_cell_510/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_510/lstm_cell_510/kernel/m
?
8Adam/lstm_510/lstm_cell_510/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_510/lstm_cell_510/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_510/lstm_cell_510/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_510/lstm_cell_510/recurrent_kernel/m
?
BAdam/lstm_510/lstm_cell_510/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_510/lstm_cell_510/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_510/lstm_cell_510/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_510/lstm_cell_510/bias/m
?
6Adam/lstm_510/lstm_cell_510/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_510/lstm_cell_510/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_511/lstm_cell_511/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_511/lstm_cell_511/kernel/m
?
8Adam/lstm_511/lstm_cell_511/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_511/lstm_cell_511/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_511/lstm_cell_511/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_511/lstm_cell_511/recurrent_kernel/m
?
BAdam/lstm_511/lstm_cell_511/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_511/lstm_cell_511/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_511/lstm_cell_511/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_511/lstm_cell_511/bias/m
?
6Adam/lstm_511/lstm_cell_511/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_511/lstm_cell_511/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_512/lstm_cell_512/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_512/lstm_cell_512/kernel/m
?
8Adam/lstm_512/lstm_cell_512/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_512/lstm_cell_512/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_512/lstm_cell_512/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_512/lstm_cell_512/recurrent_kernel/m
?
BAdam/lstm_512/lstm_cell_512/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_512/lstm_cell_512/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_512/lstm_cell_512/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_512/lstm_cell_512/bias/m
?
6Adam/lstm_512/lstm_cell_512/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_512/lstm_cell_512/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_170/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_170/kernel/v
?
+Adam/dense_170/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_170/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_170/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_170/bias/v
{
)Adam/dense_170/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_170/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_510/lstm_cell_510/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_510/lstm_cell_510/kernel/v
?
8Adam/lstm_510/lstm_cell_510/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_510/lstm_cell_510/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_510/lstm_cell_510/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_510/lstm_cell_510/recurrent_kernel/v
?
BAdam/lstm_510/lstm_cell_510/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_510/lstm_cell_510/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_510/lstm_cell_510/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_510/lstm_cell_510/bias/v
?
6Adam/lstm_510/lstm_cell_510/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_510/lstm_cell_510/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_511/lstm_cell_511/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_511/lstm_cell_511/kernel/v
?
8Adam/lstm_511/lstm_cell_511/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_511/lstm_cell_511/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_511/lstm_cell_511/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_511/lstm_cell_511/recurrent_kernel/v
?
BAdam/lstm_511/lstm_cell_511/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_511/lstm_cell_511/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_511/lstm_cell_511/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_511/lstm_cell_511/bias/v
?
6Adam/lstm_511/lstm_cell_511/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_511/lstm_cell_511/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_512/lstm_cell_512/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_512/lstm_cell_512/kernel/v
?
8Adam/lstm_512/lstm_cell_512/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_512/lstm_cell_512/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_512/lstm_cell_512/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_512/lstm_cell_512/recurrent_kernel/v
?
BAdam/lstm_512/lstm_cell_512/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_512/lstm_cell_512/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_512/lstm_cell_512/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_512/lstm_cell_512/bias/v
?
6Adam/lstm_512/lstm_cell_512/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_512/lstm_cell_512/bias/v*
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
VARIABLE_VALUEdense_170/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_170/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_510/lstm_cell_510/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_510/lstm_cell_510/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_510/lstm_cell_510/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_511/lstm_cell_511/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_511/lstm_cell_511/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_511/lstm_cell_511/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_512/lstm_cell_512/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_512/lstm_cell_512/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_512/lstm_cell_512/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_170/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_170/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_510/lstm_cell_510/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_510/lstm_cell_510/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_510/lstm_cell_510/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_511/lstm_cell_511/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_511/lstm_cell_511/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_511/lstm_cell_511/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_512/lstm_cell_512/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_512/lstm_cell_512/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_512/lstm_cell_512/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_170/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_170/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_510/lstm_cell_510/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_510/lstm_cell_510/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_510/lstm_cell_510/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_511/lstm_cell_511/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_511/lstm_cell_511/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_511/lstm_cell_511/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_512/lstm_cell_512/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_512/lstm_cell_512/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_512/lstm_cell_512/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_510_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_510_inputlstm_510/lstm_cell_510/kernel'lstm_510/lstm_cell_510/recurrent_kernellstm_510/lstm_cell_510/biaslstm_511/lstm_cell_511/kernel'lstm_511/lstm_cell_511/recurrent_kernellstm_511/lstm_cell_511/biaslstm_512/lstm_cell_512/kernel'lstm_512/lstm_cell_512/recurrent_kernellstm_512/lstm_cell_512/biasdense_170/kerneldense_170/bias*
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
%__inference_signature_wrapper_1865650
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_170/kernel/Read/ReadVariableOp"dense_170/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_510/lstm_cell_510/kernel/Read/ReadVariableOp;lstm_510/lstm_cell_510/recurrent_kernel/Read/ReadVariableOp/lstm_510/lstm_cell_510/bias/Read/ReadVariableOp1lstm_511/lstm_cell_511/kernel/Read/ReadVariableOp;lstm_511/lstm_cell_511/recurrent_kernel/Read/ReadVariableOp/lstm_511/lstm_cell_511/bias/Read/ReadVariableOp1lstm_512/lstm_cell_512/kernel/Read/ReadVariableOp;lstm_512/lstm_cell_512/recurrent_kernel/Read/ReadVariableOp/lstm_512/lstm_cell_512/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_170/kernel/m/Read/ReadVariableOp)Adam/dense_170/bias/m/Read/ReadVariableOp8Adam/lstm_510/lstm_cell_510/kernel/m/Read/ReadVariableOpBAdam/lstm_510/lstm_cell_510/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_510/lstm_cell_510/bias/m/Read/ReadVariableOp8Adam/lstm_511/lstm_cell_511/kernel/m/Read/ReadVariableOpBAdam/lstm_511/lstm_cell_511/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_511/lstm_cell_511/bias/m/Read/ReadVariableOp8Adam/lstm_512/lstm_cell_512/kernel/m/Read/ReadVariableOpBAdam/lstm_512/lstm_cell_512/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_512/lstm_cell_512/bias/m/Read/ReadVariableOp+Adam/dense_170/kernel/v/Read/ReadVariableOp)Adam/dense_170/bias/v/Read/ReadVariableOp8Adam/lstm_510/lstm_cell_510/kernel/v/Read/ReadVariableOpBAdam/lstm_510/lstm_cell_510/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_510/lstm_cell_510/bias/v/Read/ReadVariableOp8Adam/lstm_511/lstm_cell_511/kernel/v/Read/ReadVariableOpBAdam/lstm_511/lstm_cell_511/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_511/lstm_cell_511/bias/v/Read/ReadVariableOp8Adam/lstm_512/lstm_cell_512/kernel/v/Read/ReadVariableOpBAdam/lstm_512/lstm_cell_512/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_512/lstm_cell_512/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1868862
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_170/kerneldense_170/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_510/lstm_cell_510/kernel'lstm_510/lstm_cell_510/recurrent_kernellstm_510/lstm_cell_510/biaslstm_511/lstm_cell_511/kernel'lstm_511/lstm_cell_511/recurrent_kernellstm_511/lstm_cell_511/biaslstm_512/lstm_cell_512/kernel'lstm_512/lstm_cell_512/recurrent_kernellstm_512/lstm_cell_512/biastotalcountAdam/dense_170/kernel/mAdam/dense_170/bias/m$Adam/lstm_510/lstm_cell_510/kernel/m.Adam/lstm_510/lstm_cell_510/recurrent_kernel/m"Adam/lstm_510/lstm_cell_510/bias/m$Adam/lstm_511/lstm_cell_511/kernel/m.Adam/lstm_511/lstm_cell_511/recurrent_kernel/m"Adam/lstm_511/lstm_cell_511/bias/m$Adam/lstm_512/lstm_cell_512/kernel/m.Adam/lstm_512/lstm_cell_512/recurrent_kernel/m"Adam/lstm_512/lstm_cell_512/bias/mAdam/dense_170/kernel/vAdam/dense_170/bias/v$Adam/lstm_510/lstm_cell_510/kernel/v.Adam/lstm_510/lstm_cell_510/recurrent_kernel/v"Adam/lstm_510/lstm_cell_510/bias/v$Adam/lstm_511/lstm_cell_511/kernel/v.Adam/lstm_511/lstm_cell_511/recurrent_kernel/v"Adam/lstm_511/lstm_cell_511/bias/v$Adam/lstm_512/lstm_cell_512/kernel/v.Adam/lstm_512/lstm_cell_512/recurrent_kernel/v"Adam/lstm_512/lstm_cell_512/bias/v*4
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
#__inference__traced_restore_1868992??+
?
?
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863953

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
%__inference_signature_wrapper_1865650
lstm_510_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_510_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1863390o
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
_user_specified_namelstm_510_input
?
?
*__inference_lstm_511_layer_call_fn_1867218

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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1865270s
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1863731

inputs(
lstm_cell_306_1863649:	?(
lstm_cell_306_1863651:	d?$
lstm_cell_306_1863653:	?
identity??%lstm_cell_306/StatefulPartitionedCall?while;
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
%lstm_cell_306/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_306_1863649lstm_cell_306_1863651lstm_cell_306_1863653*
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863603n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_306_1863649lstm_cell_306_1863651lstm_cell_306_1863653*
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
while_body_1863662*
condR
while_cond_1863661*K
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
NoOpNoOp&^lstm_cell_306/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_306/StatefulPartitionedCall%lstm_cell_306/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864431

inputs'
lstm_cell_308_1864349:2('
lstm_cell_308_1864351:
(#
lstm_cell_308_1864353:(
identity??%lstm_cell_308/StatefulPartitionedCall?while;
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
%lstm_cell_308/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_308_1864349lstm_cell_308_1864351lstm_cell_308_1864353*
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864303n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_308_1864349lstm_cell_308_1864351lstm_cell_308_1864353*
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
while_body_1864362*
condR
while_cond_1864361*K
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
NoOpNoOp&^lstm_cell_308/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_308/StatefulPartitionedCall%lstm_cell_308/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_511_layer_call_fn_1867207

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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864739s
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866131

inputsH
5lstm_510_lstm_cell_306_matmul_readvariableop_resource:	?J
7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource:	d?E
6lstm_510_lstm_cell_306_biasadd_readvariableop_resource:	?H
5lstm_511_lstm_cell_307_matmul_readvariableop_resource:	d?J
7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource:	2?E
6lstm_511_lstm_cell_307_biasadd_readvariableop_resource:	?G
5lstm_512_lstm_cell_308_matmul_readvariableop_resource:2(I
7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource:
(D
6lstm_512_lstm_cell_308_biasadd_readvariableop_resource:(:
(dense_170_matmul_readvariableop_resource:
7
)dense_170_biasadd_readvariableop_resource:
identity?? dense_170/BiasAdd/ReadVariableOp?dense_170/MatMul/ReadVariableOp?-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp?,lstm_510/lstm_cell_306/MatMul/ReadVariableOp?.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp?lstm_510/while?-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp?,lstm_511/lstm_cell_307/MatMul/ReadVariableOp?.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp?lstm_511/while?-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp?,lstm_512/lstm_cell_308/MatMul/ReadVariableOp?.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp?lstm_512/whileD
lstm_510/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_510/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_510/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_510/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_sliceStridedSlicelstm_510/Shape:output:0%lstm_510/strided_slice/stack:output:0'lstm_510/strided_slice/stack_1:output:0'lstm_510/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_510/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_510/zeros/packedPacklstm_510/strided_slice:output:0 lstm_510/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_510/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_510/zerosFilllstm_510/zeros/packed:output:0lstm_510/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_510/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_510/zeros_1/packedPacklstm_510/strided_slice:output:0"lstm_510/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_510/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_510/zeros_1Fill lstm_510/zeros_1/packed:output:0lstm_510/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_510/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_510/transpose	Transposeinputs lstm_510/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_510/Shape_1Shapelstm_510/transpose:y:0*
T0*
_output_shapes
:h
lstm_510/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_510/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_1StridedSlicelstm_510/Shape_1:output:0'lstm_510/strided_slice_1/stack:output:0)lstm_510/strided_slice_1/stack_1:output:0)lstm_510/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_510/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_510/TensorArrayV2TensorListReserve-lstm_510/TensorArrayV2/element_shape:output:0!lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_510/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_510/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_510/transpose:y:0Glstm_510/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_510/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_510/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_2StridedSlicelstm_510/transpose:y:0'lstm_510/strided_slice_2/stack:output:0)lstm_510/strided_slice_2/stack_1:output:0)lstm_510/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_510/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp5lstm_510_lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_510/lstm_cell_306/MatMulMatMul!lstm_510/strided_slice_2:output:04lstm_510/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_510/lstm_cell_306/MatMul_1MatMullstm_510/zeros:output:06lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_510/lstm_cell_306/addAddV2'lstm_510/lstm_cell_306/MatMul:product:0)lstm_510/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp6lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_510/lstm_cell_306/BiasAddBiasAddlstm_510/lstm_cell_306/add:z:05lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_510/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_510/lstm_cell_306/splitSplit/lstm_510/lstm_cell_306/split/split_dim:output:0'lstm_510/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_510/lstm_cell_306/SigmoidSigmoid%lstm_510/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_510/lstm_cell_306/Sigmoid_1Sigmoid%lstm_510/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mulMul$lstm_510/lstm_cell_306/Sigmoid_1:y:0lstm_510/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_510/lstm_cell_306/ReluRelu%lstm_510/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mul_1Mul"lstm_510/lstm_cell_306/Sigmoid:y:0)lstm_510/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/add_1AddV2lstm_510/lstm_cell_306/mul:z:0 lstm_510/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_510/lstm_cell_306/Sigmoid_2Sigmoid%lstm_510/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_510/lstm_cell_306/Relu_1Relu lstm_510/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mul_2Mul$lstm_510/lstm_cell_306/Sigmoid_2:y:0+lstm_510/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_510/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_510/TensorArrayV2_1TensorListReserve/lstm_510/TensorArrayV2_1/element_shape:output:0!lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_510/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_510/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_510/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_510/whileWhile$lstm_510/while/loop_counter:output:0*lstm_510/while/maximum_iterations:output:0lstm_510/time:output:0!lstm_510/TensorArrayV2_1:handle:0lstm_510/zeros:output:0lstm_510/zeros_1:output:0!lstm_510/strided_slice_1:output:0@lstm_510/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_510_lstm_cell_306_matmul_readvariableop_resource7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource6lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
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
lstm_510_while_body_1865763*'
condR
lstm_510_while_cond_1865762*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_510/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_510/TensorArrayV2Stack/TensorListStackTensorListStacklstm_510/while:output:3Blstm_510/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_510/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_510/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_3StridedSlice4lstm_510/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_510/strided_slice_3/stack:output:0)lstm_510/strided_slice_3/stack_1:output:0)lstm_510/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_510/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_510/transpose_1	Transpose4lstm_510/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_510/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_510/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_511/ShapeShapelstm_510/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_511/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_511/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_511/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_sliceStridedSlicelstm_511/Shape:output:0%lstm_511/strided_slice/stack:output:0'lstm_511/strided_slice/stack_1:output:0'lstm_511/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_511/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_511/zeros/packedPacklstm_511/strided_slice:output:0 lstm_511/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_511/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_511/zerosFilllstm_511/zeros/packed:output:0lstm_511/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_511/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_511/zeros_1/packedPacklstm_511/strided_slice:output:0"lstm_511/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_511/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_511/zeros_1Fill lstm_511/zeros_1/packed:output:0lstm_511/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_511/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_511/transpose	Transposelstm_510/transpose_1:y:0 lstm_511/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_511/Shape_1Shapelstm_511/transpose:y:0*
T0*
_output_shapes
:h
lstm_511/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_511/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_1StridedSlicelstm_511/Shape_1:output:0'lstm_511/strided_slice_1/stack:output:0)lstm_511/strided_slice_1/stack_1:output:0)lstm_511/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_511/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_511/TensorArrayV2TensorListReserve-lstm_511/TensorArrayV2/element_shape:output:0!lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_511/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_511/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_511/transpose:y:0Glstm_511/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_511/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_511/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_2StridedSlicelstm_511/transpose:y:0'lstm_511/strided_slice_2/stack:output:0)lstm_511/strided_slice_2/stack_1:output:0)lstm_511/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_511/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp5lstm_511_lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_511/lstm_cell_307/MatMulMatMul!lstm_511/strided_slice_2:output:04lstm_511/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_511/lstm_cell_307/MatMul_1MatMullstm_511/zeros:output:06lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_511/lstm_cell_307/addAddV2'lstm_511/lstm_cell_307/MatMul:product:0)lstm_511/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp6lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_511/lstm_cell_307/BiasAddBiasAddlstm_511/lstm_cell_307/add:z:05lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_511/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_511/lstm_cell_307/splitSplit/lstm_511/lstm_cell_307/split/split_dim:output:0'lstm_511/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_511/lstm_cell_307/SigmoidSigmoid%lstm_511/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_511/lstm_cell_307/Sigmoid_1Sigmoid%lstm_511/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mulMul$lstm_511/lstm_cell_307/Sigmoid_1:y:0lstm_511/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_511/lstm_cell_307/ReluRelu%lstm_511/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mul_1Mul"lstm_511/lstm_cell_307/Sigmoid:y:0)lstm_511/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/add_1AddV2lstm_511/lstm_cell_307/mul:z:0 lstm_511/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_511/lstm_cell_307/Sigmoid_2Sigmoid%lstm_511/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_511/lstm_cell_307/Relu_1Relu lstm_511/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mul_2Mul$lstm_511/lstm_cell_307/Sigmoid_2:y:0+lstm_511/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_511/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_511/TensorArrayV2_1TensorListReserve/lstm_511/TensorArrayV2_1/element_shape:output:0!lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_511/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_511/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_511/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_511/whileWhile$lstm_511/while/loop_counter:output:0*lstm_511/while/maximum_iterations:output:0lstm_511/time:output:0!lstm_511/TensorArrayV2_1:handle:0lstm_511/zeros:output:0lstm_511/zeros_1:output:0!lstm_511/strided_slice_1:output:0@lstm_511/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_511_lstm_cell_307_matmul_readvariableop_resource7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource6lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
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
lstm_511_while_body_1865902*'
condR
lstm_511_while_cond_1865901*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_511/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_511/TensorArrayV2Stack/TensorListStackTensorListStacklstm_511/while:output:3Blstm_511/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_511/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_511/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_3StridedSlice4lstm_511/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_511/strided_slice_3/stack:output:0)lstm_511/strided_slice_3/stack_1:output:0)lstm_511/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_511/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_511/transpose_1	Transpose4lstm_511/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_511/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_511/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_512/ShapeShapelstm_511/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_512/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_512/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_512/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_sliceStridedSlicelstm_512/Shape:output:0%lstm_512/strided_slice/stack:output:0'lstm_512/strided_slice/stack_1:output:0'lstm_512/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_512/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_512/zeros/packedPacklstm_512/strided_slice:output:0 lstm_512/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_512/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_512/zerosFilllstm_512/zeros/packed:output:0lstm_512/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_512/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_512/zeros_1/packedPacklstm_512/strided_slice:output:0"lstm_512/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_512/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_512/zeros_1Fill lstm_512/zeros_1/packed:output:0lstm_512/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_512/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_512/transpose	Transposelstm_511/transpose_1:y:0 lstm_512/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_512/Shape_1Shapelstm_512/transpose:y:0*
T0*
_output_shapes
:h
lstm_512/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_512/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_1StridedSlicelstm_512/Shape_1:output:0'lstm_512/strided_slice_1/stack:output:0)lstm_512/strided_slice_1/stack_1:output:0)lstm_512/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_512/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_512/TensorArrayV2TensorListReserve-lstm_512/TensorArrayV2/element_shape:output:0!lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_512/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_512/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_512/transpose:y:0Glstm_512/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_512/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_512/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_2StridedSlicelstm_512/transpose:y:0'lstm_512/strided_slice_2/stack:output:0)lstm_512/strided_slice_2/stack_1:output:0)lstm_512/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_512/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp5lstm_512_lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_512/lstm_cell_308/MatMulMatMul!lstm_512/strided_slice_2:output:04lstm_512/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_512/lstm_cell_308/MatMul_1MatMullstm_512/zeros:output:06lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_512/lstm_cell_308/addAddV2'lstm_512/lstm_cell_308/MatMul:product:0)lstm_512/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp6lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_512/lstm_cell_308/BiasAddBiasAddlstm_512/lstm_cell_308/add:z:05lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_512/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_512/lstm_cell_308/splitSplit/lstm_512/lstm_cell_308/split/split_dim:output:0'lstm_512/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_512/lstm_cell_308/SigmoidSigmoid%lstm_512/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_512/lstm_cell_308/Sigmoid_1Sigmoid%lstm_512/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mulMul$lstm_512/lstm_cell_308/Sigmoid_1:y:0lstm_512/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_512/lstm_cell_308/ReluRelu%lstm_512/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mul_1Mul"lstm_512/lstm_cell_308/Sigmoid:y:0)lstm_512/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/add_1AddV2lstm_512/lstm_cell_308/mul:z:0 lstm_512/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_512/lstm_cell_308/Sigmoid_2Sigmoid%lstm_512/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_512/lstm_cell_308/Relu_1Relu lstm_512/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mul_2Mul$lstm_512/lstm_cell_308/Sigmoid_2:y:0+lstm_512/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_512/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_512/TensorArrayV2_1TensorListReserve/lstm_512/TensorArrayV2_1/element_shape:output:0!lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_512/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_512/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_512/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_512/whileWhile$lstm_512/while/loop_counter:output:0*lstm_512/while/maximum_iterations:output:0lstm_512/time:output:0!lstm_512/TensorArrayV2_1:handle:0lstm_512/zeros:output:0lstm_512/zeros_1:output:0!lstm_512/strided_slice_1:output:0@lstm_512/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_512_lstm_cell_308_matmul_readvariableop_resource7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource6lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
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
lstm_512_while_body_1866041*'
condR
lstm_512_while_cond_1866040*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_512/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_512/TensorArrayV2Stack/TensorListStackTensorListStacklstm_512/while:output:3Blstm_512/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_512/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_512/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_3StridedSlice4lstm_512/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_512/strided_slice_3/stack:output:0)lstm_512/strided_slice_3/stack_1:output:0)lstm_512/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_512/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_512/transpose_1	Transpose4lstm_512/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_512/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_512/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_170/MatMulMatMul!lstm_512/strided_slice_3:output:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_170/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp.^lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp-^lstm_510/lstm_cell_306/MatMul/ReadVariableOp/^lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp^lstm_510/while.^lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp-^lstm_511/lstm_cell_307/MatMul/ReadVariableOp/^lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp^lstm_511/while.^lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp-^lstm_512/lstm_cell_308/MatMul/ReadVariableOp/^lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp^lstm_512/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp2^
-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp2\
,lstm_510/lstm_cell_306/MatMul/ReadVariableOp,lstm_510/lstm_cell_306/MatMul/ReadVariableOp2`
.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp2 
lstm_510/whilelstm_510/while2^
-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp2\
,lstm_511/lstm_cell_307/MatMul/ReadVariableOp,lstm_511/lstm_cell_307/MatMul/ReadVariableOp2`
.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp2 
lstm_511/whilelstm_511/while2^
-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp2\
,lstm_512/lstm_cell_308/MatMul/ReadVariableOp,lstm_512/lstm_cell_308/MatMul/ReadVariableOp2`
.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp2 
lstm_512/whilelstm_512/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868120
inputs_0>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1868036*
condR
while_cond_1868035*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1867706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1866947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868523

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
*sequential_170_lstm_510_while_cond_1863021L
Hsequential_170_lstm_510_while_sequential_170_lstm_510_while_loop_counterR
Nsequential_170_lstm_510_while_sequential_170_lstm_510_while_maximum_iterations-
)sequential_170_lstm_510_while_placeholder/
+sequential_170_lstm_510_while_placeholder_1/
+sequential_170_lstm_510_while_placeholder_2/
+sequential_170_lstm_510_while_placeholder_3N
Jsequential_170_lstm_510_while_less_sequential_170_lstm_510_strided_slice_1e
asequential_170_lstm_510_while_sequential_170_lstm_510_while_cond_1863021___redundant_placeholder0e
asequential_170_lstm_510_while_sequential_170_lstm_510_while_cond_1863021___redundant_placeholder1e
asequential_170_lstm_510_while_sequential_170_lstm_510_while_cond_1863021___redundant_placeholder2e
asequential_170_lstm_510_while_sequential_170_lstm_510_while_cond_1863021___redundant_placeholder3*
&sequential_170_lstm_510_while_identity
?
"sequential_170/lstm_510/while/LessLess)sequential_170_lstm_510_while_placeholderJsequential_170_lstm_510_while_less_sequential_170_lstm_510_strided_slice_1*
T0*
_output_shapes
: {
&sequential_170/lstm_510/while/IdentityIdentity&sequential_170/lstm_510/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_170_lstm_510_while_identity/sequential_170/lstm_510/while/Identity:output:0*(
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
*__inference_lstm_510_layer_call_fn_1866591

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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1864589s
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866745
inputs_0?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1866661*
condR
while_cond_1866660*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864889

inputs>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1864805*
condR
while_cond_1864804*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1868035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1868035___redundant_placeholder05
1while_while_cond_1868035___redundant_placeholder15
1while_while_cond_1868035___redundant_placeholder25
1while_while_cond_1868035___redundant_placeholder3
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
?
?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865503

inputs#
lstm_510_1865476:	?#
lstm_510_1865478:	d?
lstm_510_1865480:	?#
lstm_511_1865483:	d?#
lstm_511_1865485:	2?
lstm_511_1865487:	?"
lstm_512_1865490:2("
lstm_512_1865492:
(
lstm_512_1865494:(#
dense_170_1865497:

dense_170_1865499:
identity??!dense_170/StatefulPartitionedCall? lstm_510/StatefulPartitionedCall? lstm_511/StatefulPartitionedCall? lstm_512/StatefulPartitionedCall?
 lstm_510/StatefulPartitionedCallStatefulPartitionedCallinputslstm_510_1865476lstm_510_1865478lstm_510_1865480*
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1865435?
 lstm_511/StatefulPartitionedCallStatefulPartitionedCall)lstm_510/StatefulPartitionedCall:output:0lstm_511_1865483lstm_511_1865485lstm_511_1865487*
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1865270?
 lstm_512/StatefulPartitionedCallStatefulPartitionedCall)lstm_511/StatefulPartitionedCall:output:0lstm_512_1865490lstm_512_1865492lstm_512_1865494*
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1865105?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_512/StatefulPartitionedCall:output:0dense_170_1865497dense_170_1865499*
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_170/StatefulPartitionedCall!^lstm_510/StatefulPartitionedCall!^lstm_511/StatefulPartitionedCall!^lstm_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2D
 lstm_510/StatefulPartitionedCall lstm_510/StatefulPartitionedCall2D
 lstm_511/StatefulPartitionedCall lstm_511/StatefulPartitionedCall2D
 lstm_512/StatefulPartitionedCall lstm_512/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1866661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1868321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1868321___redundant_placeholder05
1while_while_cond_1868321___redundant_placeholder15
1while_while_cond_1868321___redundant_placeholder25
1while_while_cond_1868321___redundant_placeholder3
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
while_cond_1865185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1865185___redundant_placeholder05
1while_while_cond_1865185___redundant_placeholder15
1while_while_cond_1865185___redundant_placeholder25
1while_while_cond_1865185___redundant_placeholder3
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
while_body_1863471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_306_1863495_0:	?0
while_lstm_cell_306_1863497_0:	d?,
while_lstm_cell_306_1863499_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_306_1863495:	?.
while_lstm_cell_306_1863497:	d?*
while_lstm_cell_306_1863499:	???+while/lstm_cell_306/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_306/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_306_1863495_0while_lstm_cell_306_1863497_0while_lstm_cell_306_1863499_0*
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863457?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_306/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_306/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_306/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_306/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_306_1863495while_lstm_cell_306_1863495_0"<
while_lstm_cell_306_1863497while_lstm_cell_306_1863497_0"<
while_lstm_cell_306_1863499while_lstm_cell_306_1863499_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_306/StatefulPartitionedCall+while/lstm_cell_306/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866558

inputsH
5lstm_510_lstm_cell_306_matmul_readvariableop_resource:	?J
7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource:	d?E
6lstm_510_lstm_cell_306_biasadd_readvariableop_resource:	?H
5lstm_511_lstm_cell_307_matmul_readvariableop_resource:	d?J
7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource:	2?E
6lstm_511_lstm_cell_307_biasadd_readvariableop_resource:	?G
5lstm_512_lstm_cell_308_matmul_readvariableop_resource:2(I
7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource:
(D
6lstm_512_lstm_cell_308_biasadd_readvariableop_resource:(:
(dense_170_matmul_readvariableop_resource:
7
)dense_170_biasadd_readvariableop_resource:
identity?? dense_170/BiasAdd/ReadVariableOp?dense_170/MatMul/ReadVariableOp?-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp?,lstm_510/lstm_cell_306/MatMul/ReadVariableOp?.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp?lstm_510/while?-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp?,lstm_511/lstm_cell_307/MatMul/ReadVariableOp?.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp?lstm_511/while?-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp?,lstm_512/lstm_cell_308/MatMul/ReadVariableOp?.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp?lstm_512/whileD
lstm_510/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_510/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_510/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_510/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_sliceStridedSlicelstm_510/Shape:output:0%lstm_510/strided_slice/stack:output:0'lstm_510/strided_slice/stack_1:output:0'lstm_510/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_510/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_510/zeros/packedPacklstm_510/strided_slice:output:0 lstm_510/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_510/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_510/zerosFilllstm_510/zeros/packed:output:0lstm_510/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_510/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_510/zeros_1/packedPacklstm_510/strided_slice:output:0"lstm_510/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_510/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_510/zeros_1Fill lstm_510/zeros_1/packed:output:0lstm_510/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_510/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_510/transpose	Transposeinputs lstm_510/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_510/Shape_1Shapelstm_510/transpose:y:0*
T0*
_output_shapes
:h
lstm_510/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_510/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_1StridedSlicelstm_510/Shape_1:output:0'lstm_510/strided_slice_1/stack:output:0)lstm_510/strided_slice_1/stack_1:output:0)lstm_510/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_510/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_510/TensorArrayV2TensorListReserve-lstm_510/TensorArrayV2/element_shape:output:0!lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_510/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_510/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_510/transpose:y:0Glstm_510/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_510/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_510/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_2StridedSlicelstm_510/transpose:y:0'lstm_510/strided_slice_2/stack:output:0)lstm_510/strided_slice_2/stack_1:output:0)lstm_510/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_510/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp5lstm_510_lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_510/lstm_cell_306/MatMulMatMul!lstm_510/strided_slice_2:output:04lstm_510/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_510/lstm_cell_306/MatMul_1MatMullstm_510/zeros:output:06lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_510/lstm_cell_306/addAddV2'lstm_510/lstm_cell_306/MatMul:product:0)lstm_510/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp6lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_510/lstm_cell_306/BiasAddBiasAddlstm_510/lstm_cell_306/add:z:05lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_510/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_510/lstm_cell_306/splitSplit/lstm_510/lstm_cell_306/split/split_dim:output:0'lstm_510/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_510/lstm_cell_306/SigmoidSigmoid%lstm_510/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_510/lstm_cell_306/Sigmoid_1Sigmoid%lstm_510/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mulMul$lstm_510/lstm_cell_306/Sigmoid_1:y:0lstm_510/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_510/lstm_cell_306/ReluRelu%lstm_510/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mul_1Mul"lstm_510/lstm_cell_306/Sigmoid:y:0)lstm_510/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/add_1AddV2lstm_510/lstm_cell_306/mul:z:0 lstm_510/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_510/lstm_cell_306/Sigmoid_2Sigmoid%lstm_510/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_510/lstm_cell_306/Relu_1Relu lstm_510/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_510/lstm_cell_306/mul_2Mul$lstm_510/lstm_cell_306/Sigmoid_2:y:0+lstm_510/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_510/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_510/TensorArrayV2_1TensorListReserve/lstm_510/TensorArrayV2_1/element_shape:output:0!lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_510/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_510/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_510/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_510/whileWhile$lstm_510/while/loop_counter:output:0*lstm_510/while/maximum_iterations:output:0lstm_510/time:output:0!lstm_510/TensorArrayV2_1:handle:0lstm_510/zeros:output:0lstm_510/zeros_1:output:0!lstm_510/strided_slice_1:output:0@lstm_510/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_510_lstm_cell_306_matmul_readvariableop_resource7lstm_510_lstm_cell_306_matmul_1_readvariableop_resource6lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
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
lstm_510_while_body_1866190*'
condR
lstm_510_while_cond_1866189*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_510/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_510/TensorArrayV2Stack/TensorListStackTensorListStacklstm_510/while:output:3Blstm_510/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_510/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_510/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_510/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_510/strided_slice_3StridedSlice4lstm_510/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_510/strided_slice_3/stack:output:0)lstm_510/strided_slice_3/stack_1:output:0)lstm_510/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_510/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_510/transpose_1	Transpose4lstm_510/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_510/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_510/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_511/ShapeShapelstm_510/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_511/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_511/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_511/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_sliceStridedSlicelstm_511/Shape:output:0%lstm_511/strided_slice/stack:output:0'lstm_511/strided_slice/stack_1:output:0'lstm_511/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_511/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_511/zeros/packedPacklstm_511/strided_slice:output:0 lstm_511/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_511/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_511/zerosFilllstm_511/zeros/packed:output:0lstm_511/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_511/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_511/zeros_1/packedPacklstm_511/strided_slice:output:0"lstm_511/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_511/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_511/zeros_1Fill lstm_511/zeros_1/packed:output:0lstm_511/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_511/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_511/transpose	Transposelstm_510/transpose_1:y:0 lstm_511/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_511/Shape_1Shapelstm_511/transpose:y:0*
T0*
_output_shapes
:h
lstm_511/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_511/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_1StridedSlicelstm_511/Shape_1:output:0'lstm_511/strided_slice_1/stack:output:0)lstm_511/strided_slice_1/stack_1:output:0)lstm_511/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_511/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_511/TensorArrayV2TensorListReserve-lstm_511/TensorArrayV2/element_shape:output:0!lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_511/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_511/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_511/transpose:y:0Glstm_511/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_511/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_511/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_2StridedSlicelstm_511/transpose:y:0'lstm_511/strided_slice_2/stack:output:0)lstm_511/strided_slice_2/stack_1:output:0)lstm_511/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_511/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp5lstm_511_lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_511/lstm_cell_307/MatMulMatMul!lstm_511/strided_slice_2:output:04lstm_511/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_511/lstm_cell_307/MatMul_1MatMullstm_511/zeros:output:06lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_511/lstm_cell_307/addAddV2'lstm_511/lstm_cell_307/MatMul:product:0)lstm_511/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp6lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_511/lstm_cell_307/BiasAddBiasAddlstm_511/lstm_cell_307/add:z:05lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_511/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_511/lstm_cell_307/splitSplit/lstm_511/lstm_cell_307/split/split_dim:output:0'lstm_511/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_511/lstm_cell_307/SigmoidSigmoid%lstm_511/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_511/lstm_cell_307/Sigmoid_1Sigmoid%lstm_511/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mulMul$lstm_511/lstm_cell_307/Sigmoid_1:y:0lstm_511/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_511/lstm_cell_307/ReluRelu%lstm_511/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mul_1Mul"lstm_511/lstm_cell_307/Sigmoid:y:0)lstm_511/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/add_1AddV2lstm_511/lstm_cell_307/mul:z:0 lstm_511/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_511/lstm_cell_307/Sigmoid_2Sigmoid%lstm_511/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_511/lstm_cell_307/Relu_1Relu lstm_511/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_511/lstm_cell_307/mul_2Mul$lstm_511/lstm_cell_307/Sigmoid_2:y:0+lstm_511/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_511/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_511/TensorArrayV2_1TensorListReserve/lstm_511/TensorArrayV2_1/element_shape:output:0!lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_511/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_511/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_511/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_511/whileWhile$lstm_511/while/loop_counter:output:0*lstm_511/while/maximum_iterations:output:0lstm_511/time:output:0!lstm_511/TensorArrayV2_1:handle:0lstm_511/zeros:output:0lstm_511/zeros_1:output:0!lstm_511/strided_slice_1:output:0@lstm_511/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_511_lstm_cell_307_matmul_readvariableop_resource7lstm_511_lstm_cell_307_matmul_1_readvariableop_resource6lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
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
lstm_511_while_body_1866329*'
condR
lstm_511_while_cond_1866328*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_511/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_511/TensorArrayV2Stack/TensorListStackTensorListStacklstm_511/while:output:3Blstm_511/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_511/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_511/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_511/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_511/strided_slice_3StridedSlice4lstm_511/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_511/strided_slice_3/stack:output:0)lstm_511/strided_slice_3/stack_1:output:0)lstm_511/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_511/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_511/transpose_1	Transpose4lstm_511/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_511/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_511/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_512/ShapeShapelstm_511/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_512/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_512/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_512/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_sliceStridedSlicelstm_512/Shape:output:0%lstm_512/strided_slice/stack:output:0'lstm_512/strided_slice/stack_1:output:0'lstm_512/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_512/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_512/zeros/packedPacklstm_512/strided_slice:output:0 lstm_512/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_512/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_512/zerosFilllstm_512/zeros/packed:output:0lstm_512/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_512/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_512/zeros_1/packedPacklstm_512/strided_slice:output:0"lstm_512/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_512/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_512/zeros_1Fill lstm_512/zeros_1/packed:output:0lstm_512/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_512/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_512/transpose	Transposelstm_511/transpose_1:y:0 lstm_512/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_512/Shape_1Shapelstm_512/transpose:y:0*
T0*
_output_shapes
:h
lstm_512/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_512/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_1StridedSlicelstm_512/Shape_1:output:0'lstm_512/strided_slice_1/stack:output:0)lstm_512/strided_slice_1/stack_1:output:0)lstm_512/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_512/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_512/TensorArrayV2TensorListReserve-lstm_512/TensorArrayV2/element_shape:output:0!lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_512/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_512/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_512/transpose:y:0Glstm_512/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_512/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_512/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_2StridedSlicelstm_512/transpose:y:0'lstm_512/strided_slice_2/stack:output:0)lstm_512/strided_slice_2/stack_1:output:0)lstm_512/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_512/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp5lstm_512_lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_512/lstm_cell_308/MatMulMatMul!lstm_512/strided_slice_2:output:04lstm_512/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_512/lstm_cell_308/MatMul_1MatMullstm_512/zeros:output:06lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_512/lstm_cell_308/addAddV2'lstm_512/lstm_cell_308/MatMul:product:0)lstm_512/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp6lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_512/lstm_cell_308/BiasAddBiasAddlstm_512/lstm_cell_308/add:z:05lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_512/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_512/lstm_cell_308/splitSplit/lstm_512/lstm_cell_308/split/split_dim:output:0'lstm_512/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_512/lstm_cell_308/SigmoidSigmoid%lstm_512/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_512/lstm_cell_308/Sigmoid_1Sigmoid%lstm_512/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mulMul$lstm_512/lstm_cell_308/Sigmoid_1:y:0lstm_512/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_512/lstm_cell_308/ReluRelu%lstm_512/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mul_1Mul"lstm_512/lstm_cell_308/Sigmoid:y:0)lstm_512/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/add_1AddV2lstm_512/lstm_cell_308/mul:z:0 lstm_512/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_512/lstm_cell_308/Sigmoid_2Sigmoid%lstm_512/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_512/lstm_cell_308/Relu_1Relu lstm_512/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_512/lstm_cell_308/mul_2Mul$lstm_512/lstm_cell_308/Sigmoid_2:y:0+lstm_512/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_512/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_512/TensorArrayV2_1TensorListReserve/lstm_512/TensorArrayV2_1/element_shape:output:0!lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_512/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_512/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_512/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_512/whileWhile$lstm_512/while/loop_counter:output:0*lstm_512/while/maximum_iterations:output:0lstm_512/time:output:0!lstm_512/TensorArrayV2_1:handle:0lstm_512/zeros:output:0lstm_512/zeros_1:output:0!lstm_512/strided_slice_1:output:0@lstm_512/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_512_lstm_cell_308_matmul_readvariableop_resource7lstm_512_lstm_cell_308_matmul_1_readvariableop_resource6lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
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
lstm_512_while_body_1866468*'
condR
lstm_512_while_cond_1866467*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_512/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_512/TensorArrayV2Stack/TensorListStackTensorListStacklstm_512/while:output:3Blstm_512/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_512/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_512/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_512/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_512/strided_slice_3StridedSlice4lstm_512/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_512/strided_slice_3/stack:output:0)lstm_512/strided_slice_3/stack_1:output:0)lstm_512/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_512/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_512/transpose_1	Transpose4lstm_512/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_512/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_512/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_170/MatMulMatMul!lstm_512/strided_slice_3:output:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_170/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp.^lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp-^lstm_510/lstm_cell_306/MatMul/ReadVariableOp/^lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp^lstm_510/while.^lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp-^lstm_511/lstm_cell_307/MatMul/ReadVariableOp/^lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp^lstm_511/while.^lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp-^lstm_512/lstm_cell_308/MatMul/ReadVariableOp/^lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp^lstm_512/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp2^
-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp-lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp2\
,lstm_510/lstm_cell_306/MatMul/ReadVariableOp,lstm_510/lstm_cell_306/MatMul/ReadVariableOp2`
.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp.lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp2 
lstm_510/whilelstm_510/while2^
-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp-lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp2\
,lstm_511/lstm_cell_307/MatMul/ReadVariableOp,lstm_511/lstm_cell_307/MatMul/ReadVariableOp2`
.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp.lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp2 
lstm_511/whilelstm_511/while2^
-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp-lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp2\
,lstm_512/lstm_cell_308/MatMul/ReadVariableOp,lstm_512/lstm_cell_308/MatMul/ReadVariableOp2`
.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp.lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp2 
lstm_512/whilelstm_512/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_511_while_cond_1866328.
*lstm_511_while_lstm_511_while_loop_counter4
0lstm_511_while_lstm_511_while_maximum_iterations
lstm_511_while_placeholder 
lstm_511_while_placeholder_1 
lstm_511_while_placeholder_2 
lstm_511_while_placeholder_30
,lstm_511_while_less_lstm_511_strided_slice_1G
Clstm_511_while_lstm_511_while_cond_1866328___redundant_placeholder0G
Clstm_511_while_lstm_511_while_cond_1866328___redundant_placeholder1G
Clstm_511_while_lstm_511_while_cond_1866328___redundant_placeholder2G
Clstm_511_while_lstm_511_while_cond_1866328___redundant_placeholder3
lstm_511_while_identity
?
lstm_511/while/LessLesslstm_511_while_placeholder,lstm_511_while_less_lstm_511_strided_slice_1*
T0*
_output_shapes
: ]
lstm_511/while/IdentityIdentitylstm_511/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_511_while_identity lstm_511/while/Identity:output:0*(
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863603

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
?J
?
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867790

inputs?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1867706*
condR
while_cond_1867705*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_512_layer_call_fn_1867801
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864240o
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
?J
?
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867647

inputs?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1867563*
condR
while_cond_1867562*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_510_while_cond_1866189.
*lstm_510_while_lstm_510_while_loop_counter4
0lstm_510_while_lstm_510_while_maximum_iterations
lstm_510_while_placeholder 
lstm_510_while_placeholder_1 
lstm_510_while_placeholder_2 
lstm_510_while_placeholder_30
,lstm_510_while_less_lstm_510_strided_slice_1G
Clstm_510_while_lstm_510_while_cond_1866189___redundant_placeholder0G
Clstm_510_while_lstm_510_while_cond_1866189___redundant_placeholder1G
Clstm_510_while_lstm_510_while_cond_1866189___redundant_placeholder2G
Clstm_510_while_lstm_510_while_cond_1866189___redundant_placeholder3
lstm_510_while_identity
?
lstm_510/while/LessLesslstm_510_while_placeholder,lstm_510_while_less_lstm_510_strided_slice_1*
T0*
_output_shapes
: ]
lstm_510/while/IdentityIdentitylstm_510/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_510_while_identity lstm_510/while/Identity:output:0*(
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
while_cond_1864170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864170___redundant_placeholder05
1while_while_cond_1864170___redundant_placeholder15
1while_while_cond_1864170___redundant_placeholder25
1while_while_cond_1864170___redundant_placeholder3
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
while_cond_1864361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864361___redundant_placeholder05
1while_while_cond_1864361___redundant_placeholder15
1while_while_cond_1864361___redundant_placeholder25
1while_while_cond_1864361___redundant_placeholder3
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
while_cond_1863661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1863661___redundant_placeholder05
1while_while_cond_1863661___redundant_placeholder15
1while_while_cond_1863661___redundant_placeholder25
1while_while_cond_1863661___redundant_placeholder3
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
while_cond_1867562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867562___redundant_placeholder05
1while_while_cond_1867562___redundant_placeholder15
1while_while_cond_1867562___redundant_placeholder25
1while_while_cond_1867562___redundant_placeholder3
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
*sequential_170_lstm_512_while_cond_1863299L
Hsequential_170_lstm_512_while_sequential_170_lstm_512_while_loop_counterR
Nsequential_170_lstm_512_while_sequential_170_lstm_512_while_maximum_iterations-
)sequential_170_lstm_512_while_placeholder/
+sequential_170_lstm_512_while_placeholder_1/
+sequential_170_lstm_512_while_placeholder_2/
+sequential_170_lstm_512_while_placeholder_3N
Jsequential_170_lstm_512_while_less_sequential_170_lstm_512_strided_slice_1e
asequential_170_lstm_512_while_sequential_170_lstm_512_while_cond_1863299___redundant_placeholder0e
asequential_170_lstm_512_while_sequential_170_lstm_512_while_cond_1863299___redundant_placeholder1e
asequential_170_lstm_512_while_sequential_170_lstm_512_while_cond_1863299___redundant_placeholder2e
asequential_170_lstm_512_while_sequential_170_lstm_512_while_cond_1863299___redundant_placeholder3*
&sequential_170_lstm_512_while_identity
?
"sequential_170/lstm_512/while/LessLess)sequential_170_lstm_512_while_placeholderJsequential_170_lstm_512_while_less_sequential_170_lstm_512_strided_slice_1*
T0*
_output_shapes
: {
&sequential_170/lstm_512/while/IdentityIdentity&sequential_170/lstm_512/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_170_lstm_512_while_identity/sequential_170/lstm_512/while/Identity:output:0*(
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
while_body_1864362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_308_1864386_0:2(/
while_lstm_cell_308_1864388_0:
(+
while_lstm_cell_308_1864390_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_308_1864386:2(-
while_lstm_cell_308_1864388:
()
while_lstm_cell_308_1864390:(??+while/lstm_cell_308/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_308/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_308_1864386_0while_lstm_cell_308_1864388_0while_lstm_cell_308_1864390_0*
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864303?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_308/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_308/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_308/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_308_1864386while_lstm_cell_308_1864386_0"<
while_lstm_cell_308_1864388while_lstm_cell_308_1864388_0"<
while_lstm_cell_308_1864390while_lstm_cell_308_1864390_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_308/StatefulPartitionedCall+while/lstm_cell_308/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_306_layer_call_fn_1868459

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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863603o
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

?
lstm_512_while_cond_1866040.
*lstm_512_while_lstm_512_while_loop_counter4
0lstm_512_while_lstm_512_while_maximum_iterations
lstm_512_while_placeholder 
lstm_512_while_placeholder_1 
lstm_512_while_placeholder_2 
lstm_512_while_placeholder_30
,lstm_512_while_less_lstm_512_strided_slice_1G
Clstm_512_while_lstm_512_while_cond_1866040___redundant_placeholder0G
Clstm_512_while_lstm_512_while_cond_1866040___redundant_placeholder1G
Clstm_512_while_lstm_512_while_cond_1866040___redundant_placeholder2G
Clstm_512_while_lstm_512_while_cond_1866040___redundant_placeholder3
lstm_512_while_identity
?
lstm_512/while/LessLesslstm_512_while_placeholder,lstm_512_while_less_lstm_512_strided_slice_1*
T0*
_output_shapes
: ]
lstm_512/while/IdentityIdentitylstm_512/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_512_while_identity lstm_512/while/Identity:output:0*(
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
while_body_1867420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868491

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

?
lstm_511_while_cond_1865901.
*lstm_511_while_lstm_511_while_loop_counter4
0lstm_511_while_lstm_511_while_maximum_iterations
lstm_511_while_placeholder 
lstm_511_while_placeholder_1 
lstm_511_while_placeholder_2 
lstm_511_while_placeholder_30
,lstm_511_while_less_lstm_511_strided_slice_1G
Clstm_511_while_lstm_511_while_cond_1865901___redundant_placeholder0G
Clstm_511_while_lstm_511_while_cond_1865901___redundant_placeholder1G
Clstm_511_while_lstm_511_while_cond_1865901___redundant_placeholder2G
Clstm_511_while_lstm_511_while_cond_1865901___redundant_placeholder3
lstm_511_while_identity
?
lstm_511/while/LessLesslstm_511_while_placeholder,lstm_511_while_less_lstm_511_strided_slice_1*
T0*
_output_shapes
: ]
lstm_511/while/IdentityIdentitylstm_511/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_511_while_identity lstm_511/while/Identity:output:0*(
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
while_body_1867277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1866660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1866660___redundant_placeholder05
1while_while_cond_1866660___redundant_placeholder15
1while_while_cond_1866660___redundant_placeholder25
1while_while_cond_1866660___redundant_placeholder3
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
/__inference_lstm_cell_306_layer_call_fn_1868442

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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863457o
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
?
/__inference_lstm_cell_308_layer_call_fn_1868638

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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864157o
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1863890

inputs(
lstm_cell_307_1863808:	d?(
lstm_cell_307_1863810:	2?$
lstm_cell_307_1863812:	?
identity??%lstm_cell_307/StatefulPartitionedCall?while;
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
%lstm_cell_307/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_307_1863808lstm_cell_307_1863810lstm_cell_307_1863812*
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863807n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_307_1863808lstm_cell_307_1863810lstm_cell_307_1863812*
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
while_body_1863821*
condR
while_cond_1863820*K
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
NoOpNoOp&^lstm_cell_307/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_307/StatefulPartitionedCall%lstm_cell_307/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1863820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1863820___redundant_placeholder05
1while_while_cond_1863820___redundant_placeholder15
1while_while_cond_1863820___redundant_placeholder25
1while_while_cond_1863820___redundant_placeholder3
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866888
inputs_0?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1866804*
condR
while_cond_1866803*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_dense_170_layer_call_fn_1868415

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
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907o
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
/__inference_lstm_cell_307_layer_call_fn_1868540

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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863807o
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1865105

inputs>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1865021*
condR
while_cond_1865020*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_512_while_body_1866041.
*lstm_512_while_lstm_512_while_loop_counter4
0lstm_512_while_lstm_512_while_maximum_iterations
lstm_512_while_placeholder 
lstm_512_while_placeholder_1 
lstm_512_while_placeholder_2 
lstm_512_while_placeholder_3-
)lstm_512_while_lstm_512_strided_slice_1_0i
elstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0:2(Q
?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(L
>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0:(
lstm_512_while_identity
lstm_512_while_identity_1
lstm_512_while_identity_2
lstm_512_while_identity_3
lstm_512_while_identity_4
lstm_512_while_identity_5+
'lstm_512_while_lstm_512_strided_slice_1g
clstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensorM
;lstm_512_while_lstm_cell_308_matmul_readvariableop_resource:2(O
=lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource:
(J
<lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource:(??3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp?2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp?4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp?
@lstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_512/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0lstm_512_while_placeholderIlstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_512/while/lstm_cell_308/MatMulMatMul9lstm_512/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_512/while/lstm_cell_308/MatMul_1MatMullstm_512_while_placeholder_2<lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_512/while/lstm_cell_308/addAddV2-lstm_512/while/lstm_cell_308/MatMul:product:0/lstm_512/while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_512/while/lstm_cell_308/BiasAddBiasAdd$lstm_512/while/lstm_cell_308/add:z:0;lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_512/while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_512/while/lstm_cell_308/splitSplit5lstm_512/while/lstm_cell_308/split/split_dim:output:0-lstm_512/while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_512/while/lstm_cell_308/SigmoidSigmoid+lstm_512/while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_512/while/lstm_cell_308/Sigmoid_1Sigmoid+lstm_512/while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_512/while/lstm_cell_308/mulMul*lstm_512/while/lstm_cell_308/Sigmoid_1:y:0lstm_512_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_512/while/lstm_cell_308/ReluRelu+lstm_512/while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/mul_1Mul(lstm_512/while/lstm_cell_308/Sigmoid:y:0/lstm_512/while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/add_1AddV2$lstm_512/while/lstm_cell_308/mul:z:0&lstm_512/while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_512/while/lstm_cell_308/Sigmoid_2Sigmoid+lstm_512/while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_512/while/lstm_cell_308/Relu_1Relu&lstm_512/while/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/mul_2Mul*lstm_512/while/lstm_cell_308/Sigmoid_2:y:01lstm_512/while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_512/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_512_while_placeholder_1lstm_512_while_placeholder&lstm_512/while/lstm_cell_308/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_512/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_512/while/addAddV2lstm_512_while_placeholderlstm_512/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_512/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_512/while/add_1AddV2*lstm_512_while_lstm_512_while_loop_counterlstm_512/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_512/while/IdentityIdentitylstm_512/while/add_1:z:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_1Identity0lstm_512_while_lstm_512_while_maximum_iterations^lstm_512/while/NoOp*
T0*
_output_shapes
: t
lstm_512/while/Identity_2Identitylstm_512/while/add:z:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_3IdentityClstm_512/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_4Identity&lstm_512/while/lstm_cell_308/mul_2:z:0^lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_512/while/Identity_5Identity&lstm_512/while/lstm_cell_308/add_1:z:0^lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_512/while/NoOpNoOp4^lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp3^lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp5^lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_512_while_identity lstm_512/while/Identity:output:0"?
lstm_512_while_identity_1"lstm_512/while/Identity_1:output:0"?
lstm_512_while_identity_2"lstm_512/while/Identity_2:output:0"?
lstm_512_while_identity_3"lstm_512/while/Identity_3:output:0"?
lstm_512_while_identity_4"lstm_512/while/Identity_4:output:0"?
lstm_512_while_identity_5"lstm_512/while/Identity_5:output:0"T
'lstm_512_while_lstm_512_strided_slice_1)lstm_512_while_lstm_512_strided_slice_1_0"~
<lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0"?
=lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0"|
;lstm_512_while_lstm_cell_308_matmul_readvariableop_resource=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0"?
clstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensorelstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp2h
2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp2l
4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1864012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_307_1864036_0:	d?0
while_lstm_cell_307_1864038_0:	2?,
while_lstm_cell_307_1864040_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_307_1864036:	d?.
while_lstm_cell_307_1864038:	2?*
while_lstm_cell_307_1864040:	???+while/lstm_cell_307/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_307/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_307_1864036_0while_lstm_cell_307_1864038_0while_lstm_cell_307_1864040_0*
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863953?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_307/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_307/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_307/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_307_1864036while_lstm_cell_307_1864036_0"<
while_lstm_cell_307_1864038while_lstm_cell_307_1864038_0"<
while_lstm_cell_307_1864040while_lstm_cell_307_1864040_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_307/StatefulPartitionedCall+while/lstm_cell_307/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864303

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
?
?
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868621

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
while_body_1868036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1864589

inputs?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1864505*
condR
while_cond_1864504*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1865020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1865020___redundant_placeholder05
1while_while_cond_1865020___redundant_placeholder15
1while_while_cond_1865020___redundant_placeholder25
1while_while_cond_1865020___redundant_placeholder3
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
while_body_1863821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_307_1863845_0:	d?0
while_lstm_cell_307_1863847_0:	2?,
while_lstm_cell_307_1863849_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_307_1863845:	d?.
while_lstm_cell_307_1863847:	2?*
while_lstm_cell_307_1863849:	???+while/lstm_cell_307/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_307/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_307_1863845_0while_lstm_cell_307_1863847_0while_lstm_cell_307_1863849_0*
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863807?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_307/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_307/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_307/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_307_1863845while_lstm_cell_307_1863845_0"<
while_lstm_cell_307_1863847while_lstm_cell_307_1863847_0"<
while_lstm_cell_307_1863849while_lstm_cell_307_1863849_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_307/StatefulPartitionedCall+while/lstm_cell_307/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1864655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_511_while_body_1866329.
*lstm_511_while_lstm_511_while_loop_counter4
0lstm_511_while_lstm_511_while_maximum_iterations
lstm_511_while_placeholder 
lstm_511_while_placeholder_1 
lstm_511_while_placeholder_2 
lstm_511_while_placeholder_3-
)lstm_511_while_lstm_511_strided_slice_1_0i
elstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0:	d?R
?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?M
>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
lstm_511_while_identity
lstm_511_while_identity_1
lstm_511_while_identity_2
lstm_511_while_identity_3
lstm_511_while_identity_4
lstm_511_while_identity_5+
'lstm_511_while_lstm_511_strided_slice_1g
clstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensorN
;lstm_511_while_lstm_cell_307_matmul_readvariableop_resource:	d?P
=lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource:	2?K
<lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource:	???3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp?2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp?4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp?
@lstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_511/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0lstm_511_while_placeholderIlstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_511/while/lstm_cell_307/MatMulMatMul9lstm_511/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_511/while/lstm_cell_307/MatMul_1MatMullstm_511_while_placeholder_2<lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_511/while/lstm_cell_307/addAddV2-lstm_511/while/lstm_cell_307/MatMul:product:0/lstm_511/while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_511/while/lstm_cell_307/BiasAddBiasAdd$lstm_511/while/lstm_cell_307/add:z:0;lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_511/while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_511/while/lstm_cell_307/splitSplit5lstm_511/while/lstm_cell_307/split/split_dim:output:0-lstm_511/while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_511/while/lstm_cell_307/SigmoidSigmoid+lstm_511/while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_511/while/lstm_cell_307/Sigmoid_1Sigmoid+lstm_511/while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_511/while/lstm_cell_307/mulMul*lstm_511/while/lstm_cell_307/Sigmoid_1:y:0lstm_511_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_511/while/lstm_cell_307/ReluRelu+lstm_511/while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/mul_1Mul(lstm_511/while/lstm_cell_307/Sigmoid:y:0/lstm_511/while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/add_1AddV2$lstm_511/while/lstm_cell_307/mul:z:0&lstm_511/while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_511/while/lstm_cell_307/Sigmoid_2Sigmoid+lstm_511/while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_511/while/lstm_cell_307/Relu_1Relu&lstm_511/while/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/mul_2Mul*lstm_511/while/lstm_cell_307/Sigmoid_2:y:01lstm_511/while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_511/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_511_while_placeholder_1lstm_511_while_placeholder&lstm_511/while/lstm_cell_307/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_511/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_511/while/addAddV2lstm_511_while_placeholderlstm_511/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_511/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_511/while/add_1AddV2*lstm_511_while_lstm_511_while_loop_counterlstm_511/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_511/while/IdentityIdentitylstm_511/while/add_1:z:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_1Identity0lstm_511_while_lstm_511_while_maximum_iterations^lstm_511/while/NoOp*
T0*
_output_shapes
: t
lstm_511/while/Identity_2Identitylstm_511/while/add:z:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_3IdentityClstm_511/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_4Identity&lstm_511/while/lstm_cell_307/mul_2:z:0^lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_511/while/Identity_5Identity&lstm_511/while/lstm_cell_307/add_1:z:0^lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_511/while/NoOpNoOp4^lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp3^lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp5^lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_511_while_identity lstm_511/while/Identity:output:0"?
lstm_511_while_identity_1"lstm_511/while/Identity_1:output:0"?
lstm_511_while_identity_2"lstm_511/while/Identity_2:output:0"?
lstm_511_while_identity_3"lstm_511/while/Identity_3:output:0"?
lstm_511_while_identity_4"lstm_511/while/Identity_4:output:0"?
lstm_511_while_identity_5"lstm_511/while/Identity_5:output:0"T
'lstm_511_while_lstm_511_strided_slice_1)lstm_511_while_lstm_511_strided_slice_1_0"~
<lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0"?
=lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0"|
;lstm_511_while_lstm_cell_307_matmul_readvariableop_resource=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0"?
clstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensorelstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp2h
2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp2l
4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1867276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867276___redundant_placeholder05
1while_while_cond_1867276___redundant_placeholder15
1while_while_cond_1867276___redundant_placeholder25
1while_while_cond_1867276___redundant_placeholder3
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867361
inputs_0?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1867277*
condR
while_cond_1867276*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_510_layer_call_fn_1866569
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1863540|
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
while_cond_1863470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1863470___redundant_placeholder05
1while_while_cond_1863470___redundant_placeholder15
1while_while_cond_1863470___redundant_placeholder25
1while_while_cond_1863470___redundant_placeholder3
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1863540

inputs(
lstm_cell_306_1863458:	?(
lstm_cell_306_1863460:	d?$
lstm_cell_306_1863462:	?
identity??%lstm_cell_306/StatefulPartitionedCall?while;
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
%lstm_cell_306/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_306_1863458lstm_cell_306_1863460lstm_cell_306_1863462*
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863457n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_306_1863458lstm_cell_306_1863460lstm_cell_306_1863462*
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
while_body_1863471*
condR
while_cond_1863470*K
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
NoOpNoOp&^lstm_cell_306/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_306/StatefulPartitionedCall%lstm_cell_306/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863807

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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1865435

inputs?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1865351*
condR
while_cond_1865350*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1865350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1865350___redundant_placeholder05
1while_while_cond_1865350___redundant_placeholder15
1while_while_cond_1865350___redundant_placeholder25
1while_while_cond_1865350___redundant_placeholder3
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
while_body_1863662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_306_1863686_0:	?0
while_lstm_cell_306_1863688_0:	d?,
while_lstm_cell_306_1863690_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_306_1863686:	?.
while_lstm_cell_306_1863688:	d?*
while_lstm_cell_306_1863690:	???+while/lstm_cell_306/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_306/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_306_1863686_0while_lstm_cell_306_1863688_0while_lstm_cell_306_1863690_0*
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863603?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_306/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_306/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_306/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_306/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_306_1863686while_lstm_cell_306_1863686_0"<
while_lstm_cell_306_1863688while_lstm_cell_306_1863688_0"<
while_lstm_cell_306_1863690while_lstm_cell_306_1863690_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_306/StatefulPartitionedCall+while/lstm_cell_306/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867504
inputs_0?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1867420*
condR
while_cond_1867419*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_512_layer_call_fn_1867823

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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864889o
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
while_cond_1867892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867892___redundant_placeholder05
1while_while_cond_1867892___redundant_placeholder15
1while_while_cond_1867892___redundant_placeholder25
1while_while_cond_1867892___redundant_placeholder3
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
?
?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1864914

inputs#
lstm_510_1864590:	?#
lstm_510_1864592:	d?
lstm_510_1864594:	?#
lstm_511_1864740:	d?#
lstm_511_1864742:	2?
lstm_511_1864744:	?"
lstm_512_1864890:2("
lstm_512_1864892:
(
lstm_512_1864894:(#
dense_170_1864908:

dense_170_1864910:
identity??!dense_170/StatefulPartitionedCall? lstm_510/StatefulPartitionedCall? lstm_511/StatefulPartitionedCall? lstm_512/StatefulPartitionedCall?
 lstm_510/StatefulPartitionedCallStatefulPartitionedCallinputslstm_510_1864590lstm_510_1864592lstm_510_1864594*
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1864589?
 lstm_511/StatefulPartitionedCallStatefulPartitionedCall)lstm_510/StatefulPartitionedCall:output:0lstm_511_1864740lstm_511_1864742lstm_511_1864744*
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864739?
 lstm_512/StatefulPartitionedCallStatefulPartitionedCall)lstm_511/StatefulPartitionedCall:output:0lstm_512_1864890lstm_512_1864892lstm_512_1864894*
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864889?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_512/StatefulPartitionedCall:output:0dense_170_1864908dense_170_1864910*
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_170/StatefulPartitionedCall!^lstm_510/StatefulPartitionedCall!^lstm_511/StatefulPartitionedCall!^lstm_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2D
 lstm_510/StatefulPartitionedCall lstm_510/StatefulPartitionedCall2D
 lstm_511/StatefulPartitionedCall lstm_511/StatefulPartitionedCall2D
 lstm_512/StatefulPartitionedCall lstm_512/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1864654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864654___redundant_placeholder05
1while_while_cond_1864654___redundant_placeholder15
1while_while_cond_1864654___redundant_placeholder25
1while_while_cond_1864654___redundant_placeholder3
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
*__inference_lstm_510_layer_call_fn_1866602

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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1865435s
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
while_body_1864171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_308_1864195_0:2(/
while_lstm_cell_308_1864197_0:
(+
while_lstm_cell_308_1864199_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_308_1864195:2(-
while_lstm_cell_308_1864197:
()
while_lstm_cell_308_1864199:(??+while/lstm_cell_308/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_308/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_308_1864195_0while_lstm_cell_308_1864197_0while_lstm_cell_308_1864199_0*
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864157?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_308/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_308/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_308/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_308_1864195while_lstm_cell_308_1864195_0"<
while_lstm_cell_308_1864197while_lstm_cell_308_1864197_0"<
while_lstm_cell_308_1864199while_lstm_cell_308_1864199_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_308/StatefulPartitionedCall+while/lstm_cell_308/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_170_layer_call_fn_1865555
lstm_510_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_510_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865503o
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
_user_specified_namelstm_510_input
?C
?

lstm_510_while_body_1866190.
*lstm_510_while_lstm_510_while_loop_counter4
0lstm_510_while_lstm_510_while_maximum_iterations
lstm_510_while_placeholder 
lstm_510_while_placeholder_1 
lstm_510_while_placeholder_2 
lstm_510_while_placeholder_3-
)lstm_510_while_lstm_510_strided_slice_1_0i
elstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0:	?R
?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?M
>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
lstm_510_while_identity
lstm_510_while_identity_1
lstm_510_while_identity_2
lstm_510_while_identity_3
lstm_510_while_identity_4
lstm_510_while_identity_5+
'lstm_510_while_lstm_510_strided_slice_1g
clstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensorN
;lstm_510_while_lstm_cell_306_matmul_readvariableop_resource:	?P
=lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource:	d?K
<lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource:	???3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp?2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp?4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp?
@lstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_510/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0lstm_510_while_placeholderIlstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_510/while/lstm_cell_306/MatMulMatMul9lstm_510/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_510/while/lstm_cell_306/MatMul_1MatMullstm_510_while_placeholder_2<lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_510/while/lstm_cell_306/addAddV2-lstm_510/while/lstm_cell_306/MatMul:product:0/lstm_510/while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_510/while/lstm_cell_306/BiasAddBiasAdd$lstm_510/while/lstm_cell_306/add:z:0;lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_510/while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_510/while/lstm_cell_306/splitSplit5lstm_510/while/lstm_cell_306/split/split_dim:output:0-lstm_510/while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_510/while/lstm_cell_306/SigmoidSigmoid+lstm_510/while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_510/while/lstm_cell_306/Sigmoid_1Sigmoid+lstm_510/while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_510/while/lstm_cell_306/mulMul*lstm_510/while/lstm_cell_306/Sigmoid_1:y:0lstm_510_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_510/while/lstm_cell_306/ReluRelu+lstm_510/while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/mul_1Mul(lstm_510/while/lstm_cell_306/Sigmoid:y:0/lstm_510/while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/add_1AddV2$lstm_510/while/lstm_cell_306/mul:z:0&lstm_510/while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_510/while/lstm_cell_306/Sigmoid_2Sigmoid+lstm_510/while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_510/while/lstm_cell_306/Relu_1Relu&lstm_510/while/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/mul_2Mul*lstm_510/while/lstm_cell_306/Sigmoid_2:y:01lstm_510/while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_510/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_510_while_placeholder_1lstm_510_while_placeholder&lstm_510/while/lstm_cell_306/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_510/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_510/while/addAddV2lstm_510_while_placeholderlstm_510/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_510/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_510/while/add_1AddV2*lstm_510_while_lstm_510_while_loop_counterlstm_510/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_510/while/IdentityIdentitylstm_510/while/add_1:z:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_1Identity0lstm_510_while_lstm_510_while_maximum_iterations^lstm_510/while/NoOp*
T0*
_output_shapes
: t
lstm_510/while/Identity_2Identitylstm_510/while/add:z:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_3IdentityClstm_510/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_4Identity&lstm_510/while/lstm_cell_306/mul_2:z:0^lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_510/while/Identity_5Identity&lstm_510/while/lstm_cell_306/add_1:z:0^lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_510/while/NoOpNoOp4^lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp3^lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp5^lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_510_while_identity lstm_510/while/Identity:output:0"?
lstm_510_while_identity_1"lstm_510/while/Identity_1:output:0"?
lstm_510_while_identity_2"lstm_510/while/Identity_2:output:0"?
lstm_510_while_identity_3"lstm_510/while/Identity_3:output:0"?
lstm_510_while_identity_4"lstm_510/while/Identity_4:output:0"?
lstm_510_while_identity_5"lstm_510/while/Identity_5:output:0"T
'lstm_510_while_lstm_510_strided_slice_1)lstm_510_while_lstm_510_strided_slice_1_0"~
<lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0"?
=lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0"|
;lstm_510_while_lstm_cell_306_matmul_readvariableop_resource=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0"?
clstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensorelstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp2h
2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp2l
4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_511_layer_call_fn_1867185
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1863890|
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
while_body_1864805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_307_layer_call_fn_1868557

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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863953o
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
?
?
*__inference_lstm_512_layer_call_fn_1867834

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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1865105o
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
/__inference_lstm_cell_308_layer_call_fn_1868655

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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864303o
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
?
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907

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
?C
?

lstm_512_while_body_1866468.
*lstm_512_while_lstm_512_while_loop_counter4
0lstm_512_while_lstm_512_while_maximum_iterations
lstm_512_while_placeholder 
lstm_512_while_placeholder_1 
lstm_512_while_placeholder_2 
lstm_512_while_placeholder_3-
)lstm_512_while_lstm_512_strided_slice_1_0i
elstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0:2(Q
?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(L
>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0:(
lstm_512_while_identity
lstm_512_while_identity_1
lstm_512_while_identity_2
lstm_512_while_identity_3
lstm_512_while_identity_4
lstm_512_while_identity_5+
'lstm_512_while_lstm_512_strided_slice_1g
clstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensorM
;lstm_512_while_lstm_cell_308_matmul_readvariableop_resource:2(O
=lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource:
(J
<lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource:(??3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp?2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp?4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp?
@lstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_512/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0lstm_512_while_placeholderIlstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_512/while/lstm_cell_308/MatMulMatMul9lstm_512/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_512/while/lstm_cell_308/MatMul_1MatMullstm_512_while_placeholder_2<lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_512/while/lstm_cell_308/addAddV2-lstm_512/while/lstm_cell_308/MatMul:product:0/lstm_512/while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_512/while/lstm_cell_308/BiasAddBiasAdd$lstm_512/while/lstm_cell_308/add:z:0;lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_512/while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_512/while/lstm_cell_308/splitSplit5lstm_512/while/lstm_cell_308/split/split_dim:output:0-lstm_512/while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_512/while/lstm_cell_308/SigmoidSigmoid+lstm_512/while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_512/while/lstm_cell_308/Sigmoid_1Sigmoid+lstm_512/while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_512/while/lstm_cell_308/mulMul*lstm_512/while/lstm_cell_308/Sigmoid_1:y:0lstm_512_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_512/while/lstm_cell_308/ReluRelu+lstm_512/while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/mul_1Mul(lstm_512/while/lstm_cell_308/Sigmoid:y:0/lstm_512/while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/add_1AddV2$lstm_512/while/lstm_cell_308/mul:z:0&lstm_512/while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_512/while/lstm_cell_308/Sigmoid_2Sigmoid+lstm_512/while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_512/while/lstm_cell_308/Relu_1Relu&lstm_512/while/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_512/while/lstm_cell_308/mul_2Mul*lstm_512/while/lstm_cell_308/Sigmoid_2:y:01lstm_512/while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_512/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_512_while_placeholder_1lstm_512_while_placeholder&lstm_512/while/lstm_cell_308/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_512/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_512/while/addAddV2lstm_512_while_placeholderlstm_512/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_512/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_512/while/add_1AddV2*lstm_512_while_lstm_512_while_loop_counterlstm_512/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_512/while/IdentityIdentitylstm_512/while/add_1:z:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_1Identity0lstm_512_while_lstm_512_while_maximum_iterations^lstm_512/while/NoOp*
T0*
_output_shapes
: t
lstm_512/while/Identity_2Identitylstm_512/while/add:z:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_3IdentityClstm_512/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_512/while/NoOp*
T0*
_output_shapes
: ?
lstm_512/while/Identity_4Identity&lstm_512/while/lstm_cell_308/mul_2:z:0^lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_512/while/Identity_5Identity&lstm_512/while/lstm_cell_308/add_1:z:0^lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_512/while/NoOpNoOp4^lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp3^lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp5^lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_512_while_identity lstm_512/while/Identity:output:0"?
lstm_512_while_identity_1"lstm_512/while/Identity_1:output:0"?
lstm_512_while_identity_2"lstm_512/while/Identity_2:output:0"?
lstm_512_while_identity_3"lstm_512/while/Identity_3:output:0"?
lstm_512_while_identity_4"lstm_512/while/Identity_4:output:0"?
lstm_512_while_identity_5"lstm_512/while/Identity_5:output:0"T
'lstm_512_while_lstm_512_strided_slice_1)lstm_512_while_lstm_512_strided_slice_1_0"~
<lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource>lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0"?
=lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource?lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0"|
;lstm_512_while_lstm_cell_308_matmul_readvariableop_resource=lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0"?
clstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensorelstm_512_while_tensorarrayv2read_tensorlistgetitem_lstm_512_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp3lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp2h
2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp2lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp2l
4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp4lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868263

inputs>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1868179*
condR
while_cond_1868178*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_512_layer_call_fn_1867812
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864431o
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
while_cond_1866803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1866803___redundant_placeholder05
1while_while_cond_1866803___redundant_placeholder15
1while_while_cond_1866803___redundant_placeholder25
1while_while_cond_1866803___redundant_placeholder3
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
while_body_1866804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_170_layer_call_fn_1864939
lstm_510_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_510_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1864914o
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
_user_specified_namelstm_510_input
?8
?
while_body_1865021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1866946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1866946___redundant_placeholder05
1while_while_cond_1866946___redundant_placeholder15
1while_while_cond_1866946___redundant_placeholder25
1while_while_cond_1866946___redundant_placeholder3
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1868425

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
?C
?

lstm_511_while_body_1865902.
*lstm_511_while_lstm_511_while_loop_counter4
0lstm_511_while_lstm_511_while_maximum_iterations
lstm_511_while_placeholder 
lstm_511_while_placeholder_1 
lstm_511_while_placeholder_2 
lstm_511_while_placeholder_3-
)lstm_511_while_lstm_511_strided_slice_1_0i
elstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0:	d?R
?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?M
>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
lstm_511_while_identity
lstm_511_while_identity_1
lstm_511_while_identity_2
lstm_511_while_identity_3
lstm_511_while_identity_4
lstm_511_while_identity_5+
'lstm_511_while_lstm_511_strided_slice_1g
clstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensorN
;lstm_511_while_lstm_cell_307_matmul_readvariableop_resource:	d?P
=lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource:	2?K
<lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource:	???3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp?2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp?4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp?
@lstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_511/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0lstm_511_while_placeholderIlstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_511/while/lstm_cell_307/MatMulMatMul9lstm_511/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_511/while/lstm_cell_307/MatMul_1MatMullstm_511_while_placeholder_2<lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_511/while/lstm_cell_307/addAddV2-lstm_511/while/lstm_cell_307/MatMul:product:0/lstm_511/while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_511/while/lstm_cell_307/BiasAddBiasAdd$lstm_511/while/lstm_cell_307/add:z:0;lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_511/while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_511/while/lstm_cell_307/splitSplit5lstm_511/while/lstm_cell_307/split/split_dim:output:0-lstm_511/while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_511/while/lstm_cell_307/SigmoidSigmoid+lstm_511/while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_511/while/lstm_cell_307/Sigmoid_1Sigmoid+lstm_511/while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_511/while/lstm_cell_307/mulMul*lstm_511/while/lstm_cell_307/Sigmoid_1:y:0lstm_511_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_511/while/lstm_cell_307/ReluRelu+lstm_511/while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/mul_1Mul(lstm_511/while/lstm_cell_307/Sigmoid:y:0/lstm_511/while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/add_1AddV2$lstm_511/while/lstm_cell_307/mul:z:0&lstm_511/while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_511/while/lstm_cell_307/Sigmoid_2Sigmoid+lstm_511/while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_511/while/lstm_cell_307/Relu_1Relu&lstm_511/while/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_511/while/lstm_cell_307/mul_2Mul*lstm_511/while/lstm_cell_307/Sigmoid_2:y:01lstm_511/while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_511/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_511_while_placeholder_1lstm_511_while_placeholder&lstm_511/while/lstm_cell_307/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_511/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_511/while/addAddV2lstm_511_while_placeholderlstm_511/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_511/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_511/while/add_1AddV2*lstm_511_while_lstm_511_while_loop_counterlstm_511/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_511/while/IdentityIdentitylstm_511/while/add_1:z:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_1Identity0lstm_511_while_lstm_511_while_maximum_iterations^lstm_511/while/NoOp*
T0*
_output_shapes
: t
lstm_511/while/Identity_2Identitylstm_511/while/add:z:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_3IdentityClstm_511/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_511/while/NoOp*
T0*
_output_shapes
: ?
lstm_511/while/Identity_4Identity&lstm_511/while/lstm_cell_307/mul_2:z:0^lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_511/while/Identity_5Identity&lstm_511/while/lstm_cell_307/add_1:z:0^lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_511/while/NoOpNoOp4^lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp3^lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp5^lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_511_while_identity lstm_511/while/Identity:output:0"?
lstm_511_while_identity_1"lstm_511/while/Identity_1:output:0"?
lstm_511_while_identity_2"lstm_511/while/Identity_2:output:0"?
lstm_511_while_identity_3"lstm_511/while/Identity_3:output:0"?
lstm_511_while_identity_4"lstm_511/while/Identity_4:output:0"?
lstm_511_while_identity_5"lstm_511/while/Identity_5:output:0"T
'lstm_511_while_lstm_511_strided_slice_1)lstm_511_while_lstm_511_strided_slice_1_0"~
<lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource>lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0"?
=lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource?lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0"|
;lstm_511_while_lstm_cell_307_matmul_readvariableop_resource=lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0"?
clstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensorelstm_511_while_tensorarrayv2read_tensorlistgetitem_lstm_511_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp3lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp2h
2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp2lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp2l
4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp4lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1867893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867031

inputs?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1866947*
condR
while_cond_1866946*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865585
lstm_510_input#
lstm_510_1865558:	?#
lstm_510_1865560:	d?
lstm_510_1865562:	?#
lstm_511_1865565:	d?#
lstm_511_1865567:	2?
lstm_511_1865569:	?"
lstm_512_1865572:2("
lstm_512_1865574:
(
lstm_512_1865576:(#
dense_170_1865579:

dense_170_1865581:
identity??!dense_170/StatefulPartitionedCall? lstm_510/StatefulPartitionedCall? lstm_511/StatefulPartitionedCall? lstm_512/StatefulPartitionedCall?
 lstm_510/StatefulPartitionedCallStatefulPartitionedCalllstm_510_inputlstm_510_1865558lstm_510_1865560lstm_510_1865562*
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1864589?
 lstm_511/StatefulPartitionedCallStatefulPartitionedCall)lstm_510/StatefulPartitionedCall:output:0lstm_511_1865565lstm_511_1865567lstm_511_1865569*
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864739?
 lstm_512/StatefulPartitionedCallStatefulPartitionedCall)lstm_511/StatefulPartitionedCall:output:0lstm_512_1865572lstm_512_1865574lstm_512_1865576*
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864889?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_512/StatefulPartitionedCall:output:0dense_170_1865579dense_170_1865581*
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_170/StatefulPartitionedCall!^lstm_510/StatefulPartitionedCall!^lstm_511/StatefulPartitionedCall!^lstm_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2D
 lstm_510/StatefulPartitionedCall lstm_510/StatefulPartitionedCall2D
 lstm_511/StatefulPartitionedCall lstm_511/StatefulPartitionedCall2D
 lstm_512/StatefulPartitionedCall lstm_512/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_510_input
?
?
while_cond_1868178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1868178___redundant_placeholder05
1while_while_cond_1868178___redundant_placeholder15
1while_while_cond_1868178___redundant_placeholder25
1while_while_cond_1868178___redundant_placeholder3
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
while_cond_1864011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864011___redundant_placeholder05
1while_while_cond_1864011___redundant_placeholder15
1while_while_cond_1864011___redundant_placeholder25
1while_while_cond_1864011___redundant_placeholder3
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
*sequential_170_lstm_510_while_body_1863022L
Hsequential_170_lstm_510_while_sequential_170_lstm_510_while_loop_counterR
Nsequential_170_lstm_510_while_sequential_170_lstm_510_while_maximum_iterations-
)sequential_170_lstm_510_while_placeholder/
+sequential_170_lstm_510_while_placeholder_1/
+sequential_170_lstm_510_while_placeholder_2/
+sequential_170_lstm_510_while_placeholder_3K
Gsequential_170_lstm_510_while_sequential_170_lstm_510_strided_slice_1_0?
?sequential_170_lstm_510_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_510_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_170_lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0:	?a
Nsequential_170_lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?\
Msequential_170_lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0:	?*
&sequential_170_lstm_510_while_identity,
(sequential_170_lstm_510_while_identity_1,
(sequential_170_lstm_510_while_identity_2,
(sequential_170_lstm_510_while_identity_3,
(sequential_170_lstm_510_while_identity_4,
(sequential_170_lstm_510_while_identity_5I
Esequential_170_lstm_510_while_sequential_170_lstm_510_strided_slice_1?
?sequential_170_lstm_510_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_510_tensorarrayunstack_tensorlistfromtensor]
Jsequential_170_lstm_510_while_lstm_cell_306_matmul_readvariableop_resource:	?_
Lsequential_170_lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource:	d?Z
Ksequential_170_lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource:	???Bsequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp?Asequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp?Csequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp?
Osequential_170/lstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_170/lstm_510/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_170_lstm_510_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_510_tensorarrayunstack_tensorlistfromtensor_0)sequential_170_lstm_510_while_placeholderXsequential_170/lstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOpLsequential_170_lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_170/lstm_510/while/lstm_cell_306/MatMulMatMulHsequential_170/lstm_510/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOpNsequential_170_lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_170/lstm_510/while/lstm_cell_306/MatMul_1MatMul+sequential_170_lstm_510_while_placeholder_2Ksequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_170/lstm_510/while/lstm_cell_306/addAddV2<sequential_170/lstm_510/while/lstm_cell_306/MatMul:product:0>sequential_170/lstm_510/while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOpMsequential_170_lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_170/lstm_510/while/lstm_cell_306/BiasAddBiasAdd3sequential_170/lstm_510/while/lstm_cell_306/add:z:0Jsequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_170/lstm_510/while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_170/lstm_510/while/lstm_cell_306/splitSplitDsequential_170/lstm_510/while/lstm_cell_306/split/split_dim:output:0<sequential_170/lstm_510/while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_170/lstm_510/while/lstm_cell_306/SigmoidSigmoid:sequential_170/lstm_510/while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_170/lstm_510/while/lstm_cell_306/Sigmoid_1Sigmoid:sequential_170/lstm_510/while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_170/lstm_510/while/lstm_cell_306/mulMul9sequential_170/lstm_510/while/lstm_cell_306/Sigmoid_1:y:0+sequential_170_lstm_510_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_170/lstm_510/while/lstm_cell_306/ReluRelu:sequential_170/lstm_510/while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_170/lstm_510/while/lstm_cell_306/mul_1Mul7sequential_170/lstm_510/while/lstm_cell_306/Sigmoid:y:0>sequential_170/lstm_510/while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_170/lstm_510/while/lstm_cell_306/add_1AddV23sequential_170/lstm_510/while/lstm_cell_306/mul:z:05sequential_170/lstm_510/while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_170/lstm_510/while/lstm_cell_306/Sigmoid_2Sigmoid:sequential_170/lstm_510/while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_170/lstm_510/while/lstm_cell_306/Relu_1Relu5sequential_170/lstm_510/while/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_170/lstm_510/while/lstm_cell_306/mul_2Mul9sequential_170/lstm_510/while/lstm_cell_306/Sigmoid_2:y:0@sequential_170/lstm_510/while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_170/lstm_510/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_170_lstm_510_while_placeholder_1)sequential_170_lstm_510_while_placeholder5sequential_170/lstm_510/while/lstm_cell_306/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_170/lstm_510/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_170/lstm_510/while/addAddV2)sequential_170_lstm_510_while_placeholder,sequential_170/lstm_510/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_170/lstm_510/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_170/lstm_510/while/add_1AddV2Hsequential_170_lstm_510_while_sequential_170_lstm_510_while_loop_counter.sequential_170/lstm_510/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_170/lstm_510/while/IdentityIdentity'sequential_170/lstm_510/while/add_1:z:0#^sequential_170/lstm_510/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_510/while/Identity_1IdentityNsequential_170_lstm_510_while_sequential_170_lstm_510_while_maximum_iterations#^sequential_170/lstm_510/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_510/while/Identity_2Identity%sequential_170/lstm_510/while/add:z:0#^sequential_170/lstm_510/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_510/while/Identity_3IdentityRsequential_170/lstm_510/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_170/lstm_510/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_510/while/Identity_4Identity5sequential_170/lstm_510/while/lstm_cell_306/mul_2:z:0#^sequential_170/lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_170/lstm_510/while/Identity_5Identity5sequential_170/lstm_510/while/lstm_cell_306/add_1:z:0#^sequential_170/lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_170/lstm_510/while/NoOpNoOpC^sequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOpB^sequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOpD^sequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_170_lstm_510_while_identity/sequential_170/lstm_510/while/Identity:output:0"]
(sequential_170_lstm_510_while_identity_11sequential_170/lstm_510/while/Identity_1:output:0"]
(sequential_170_lstm_510_while_identity_21sequential_170/lstm_510/while/Identity_2:output:0"]
(sequential_170_lstm_510_while_identity_31sequential_170/lstm_510/while/Identity_3:output:0"]
(sequential_170_lstm_510_while_identity_41sequential_170/lstm_510/while/Identity_4:output:0"]
(sequential_170_lstm_510_while_identity_51sequential_170/lstm_510/while/Identity_5:output:0"?
Ksequential_170_lstm_510_while_lstm_cell_306_biasadd_readvariableop_resourceMsequential_170_lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0"?
Lsequential_170_lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resourceNsequential_170_lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0"?
Jsequential_170_lstm_510_while_lstm_cell_306_matmul_readvariableop_resourceLsequential_170_lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0"?
Esequential_170_lstm_510_while_sequential_170_lstm_510_strided_slice_1Gsequential_170_lstm_510_while_sequential_170_lstm_510_strided_slice_1_0"?
?sequential_170_lstm_510_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_510_tensorarrayunstack_tensorlistfromtensor?sequential_170_lstm_510_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_510_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOpBsequential_170/lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp2?
Asequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOpAsequential_170/lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp2?
Csequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOpCsequential_170/lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1868179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_511_layer_call_fn_1867196
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864081|
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
while_body_1865186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1865270

inputs?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1865186*
condR
while_cond_1865185*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_170_lstm_511_while_cond_1863160L
Hsequential_170_lstm_511_while_sequential_170_lstm_511_while_loop_counterR
Nsequential_170_lstm_511_while_sequential_170_lstm_511_while_maximum_iterations-
)sequential_170_lstm_511_while_placeholder/
+sequential_170_lstm_511_while_placeholder_1/
+sequential_170_lstm_511_while_placeholder_2/
+sequential_170_lstm_511_while_placeholder_3N
Jsequential_170_lstm_511_while_less_sequential_170_lstm_511_strided_slice_1e
asequential_170_lstm_511_while_sequential_170_lstm_511_while_cond_1863160___redundant_placeholder0e
asequential_170_lstm_511_while_sequential_170_lstm_511_while_cond_1863160___redundant_placeholder1e
asequential_170_lstm_511_while_sequential_170_lstm_511_while_cond_1863160___redundant_placeholder2e
asequential_170_lstm_511_while_sequential_170_lstm_511_while_cond_1863160___redundant_placeholder3*
&sequential_170_lstm_511_while_identity
?
"sequential_170/lstm_511/while/LessLess)sequential_170_lstm_511_while_placeholderJsequential_170_lstm_511_while_less_sequential_170_lstm_511_strided_slice_1*
T0*
_output_shapes
: {
&sequential_170/lstm_511/while/IdentityIdentity&sequential_170/lstm_511/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_170_lstm_511_while_identity/sequential_170/lstm_511/while/Identity:output:0*(
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
while_body_1867090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868406

inputs>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1868322*
condR
while_cond_1868321*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_510_while_cond_1865762.
*lstm_510_while_lstm_510_while_loop_counter4
0lstm_510_while_lstm_510_while_maximum_iterations
lstm_510_while_placeholder 
lstm_510_while_placeholder_1 
lstm_510_while_placeholder_2 
lstm_510_while_placeholder_30
,lstm_510_while_less_lstm_510_strided_slice_1G
Clstm_510_while_lstm_510_while_cond_1865762___redundant_placeholder0G
Clstm_510_while_lstm_510_while_cond_1865762___redundant_placeholder1G
Clstm_510_while_lstm_510_while_cond_1865762___redundant_placeholder2G
Clstm_510_while_lstm_510_while_cond_1865762___redundant_placeholder3
lstm_510_while_identity
?
lstm_510/while/LessLesslstm_510_while_placeholder,lstm_510_while_less_lstm_510_strided_slice_1*
T0*
_output_shapes
: ]
lstm_510/while/IdentityIdentitylstm_510/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_510_while_identity lstm_510/while/Identity:output:0*(
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868719

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

lstm_510_while_body_1865763.
*lstm_510_while_lstm_510_while_loop_counter4
0lstm_510_while_lstm_510_while_maximum_iterations
lstm_510_while_placeholder 
lstm_510_while_placeholder_1 
lstm_510_while_placeholder_2 
lstm_510_while_placeholder_3-
)lstm_510_while_lstm_510_strided_slice_1_0i
elstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0:	?R
?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?M
>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
lstm_510_while_identity
lstm_510_while_identity_1
lstm_510_while_identity_2
lstm_510_while_identity_3
lstm_510_while_identity_4
lstm_510_while_identity_5+
'lstm_510_while_lstm_510_strided_slice_1g
clstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensorN
;lstm_510_while_lstm_cell_306_matmul_readvariableop_resource:	?P
=lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource:	d?K
<lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource:	???3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp?2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp?4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp?
@lstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_510/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0lstm_510_while_placeholderIlstm_510/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_510/while/lstm_cell_306/MatMulMatMul9lstm_510/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_510/while/lstm_cell_306/MatMul_1MatMullstm_510_while_placeholder_2<lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_510/while/lstm_cell_306/addAddV2-lstm_510/while/lstm_cell_306/MatMul:product:0/lstm_510/while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_510/while/lstm_cell_306/BiasAddBiasAdd$lstm_510/while/lstm_cell_306/add:z:0;lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_510/while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_510/while/lstm_cell_306/splitSplit5lstm_510/while/lstm_cell_306/split/split_dim:output:0-lstm_510/while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_510/while/lstm_cell_306/SigmoidSigmoid+lstm_510/while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_510/while/lstm_cell_306/Sigmoid_1Sigmoid+lstm_510/while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_510/while/lstm_cell_306/mulMul*lstm_510/while/lstm_cell_306/Sigmoid_1:y:0lstm_510_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_510/while/lstm_cell_306/ReluRelu+lstm_510/while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/mul_1Mul(lstm_510/while/lstm_cell_306/Sigmoid:y:0/lstm_510/while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/add_1AddV2$lstm_510/while/lstm_cell_306/mul:z:0&lstm_510/while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_510/while/lstm_cell_306/Sigmoid_2Sigmoid+lstm_510/while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_510/while/lstm_cell_306/Relu_1Relu&lstm_510/while/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_510/while/lstm_cell_306/mul_2Mul*lstm_510/while/lstm_cell_306/Sigmoid_2:y:01lstm_510/while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_510/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_510_while_placeholder_1lstm_510_while_placeholder&lstm_510/while/lstm_cell_306/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_510/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_510/while/addAddV2lstm_510_while_placeholderlstm_510/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_510/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_510/while/add_1AddV2*lstm_510_while_lstm_510_while_loop_counterlstm_510/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_510/while/IdentityIdentitylstm_510/while/add_1:z:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_1Identity0lstm_510_while_lstm_510_while_maximum_iterations^lstm_510/while/NoOp*
T0*
_output_shapes
: t
lstm_510/while/Identity_2Identitylstm_510/while/add:z:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_3IdentityClstm_510/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_510/while/NoOp*
T0*
_output_shapes
: ?
lstm_510/while/Identity_4Identity&lstm_510/while/lstm_cell_306/mul_2:z:0^lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_510/while/Identity_5Identity&lstm_510/while/lstm_cell_306/add_1:z:0^lstm_510/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_510/while/NoOpNoOp4^lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp3^lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp5^lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_510_while_identity lstm_510/while/Identity:output:0"?
lstm_510_while_identity_1"lstm_510/while/Identity_1:output:0"?
lstm_510_while_identity_2"lstm_510/while/Identity_2:output:0"?
lstm_510_while_identity_3"lstm_510/while/Identity_3:output:0"?
lstm_510_while_identity_4"lstm_510/while/Identity_4:output:0"?
lstm_510_while_identity_5"lstm_510/while/Identity_5:output:0"T
'lstm_510_while_lstm_510_strided_slice_1)lstm_510_while_lstm_510_strided_slice_1_0"~
<lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource>lstm_510_while_lstm_cell_306_biasadd_readvariableop_resource_0"?
=lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource?lstm_510_while_lstm_cell_306_matmul_1_readvariableop_resource_0"|
;lstm_510_while_lstm_cell_306_matmul_readvariableop_resource=lstm_510_while_lstm_cell_306_matmul_readvariableop_resource_0"?
clstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensorelstm_510_while_tensorarrayv2read_tensorlistgetitem_lstm_510_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp3lstm_510/while/lstm_cell_306/BiasAdd/ReadVariableOp2h
2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp2lstm_510/while/lstm_cell_306/MatMul/ReadVariableOp2l
4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp4lstm_510/while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1867089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867089___redundant_placeholder05
1while_while_cond_1867089___redundant_placeholder15
1while_while_cond_1867089___redundant_placeholder25
1while_while_cond_1867089___redundant_placeholder3
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
while_cond_1864504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864504___redundant_placeholder05
1while_while_cond_1864504___redundant_placeholder15
1while_while_cond_1864504___redundant_placeholder25
1while_while_cond_1864504___redundant_placeholder3
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
?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865615
lstm_510_input#
lstm_510_1865588:	?#
lstm_510_1865590:	d?
lstm_510_1865592:	?#
lstm_511_1865595:	d?#
lstm_511_1865597:	2?
lstm_511_1865599:	?"
lstm_512_1865602:2("
lstm_512_1865604:
(
lstm_512_1865606:(#
dense_170_1865609:

dense_170_1865611:
identity??!dense_170/StatefulPartitionedCall? lstm_510/StatefulPartitionedCall? lstm_511/StatefulPartitionedCall? lstm_512/StatefulPartitionedCall?
 lstm_510/StatefulPartitionedCallStatefulPartitionedCalllstm_510_inputlstm_510_1865588lstm_510_1865590lstm_510_1865592*
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1865435?
 lstm_511/StatefulPartitionedCallStatefulPartitionedCall)lstm_510/StatefulPartitionedCall:output:0lstm_511_1865595lstm_511_1865597lstm_511_1865599*
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1865270?
 lstm_512/StatefulPartitionedCallStatefulPartitionedCall)lstm_511/StatefulPartitionedCall:output:0lstm_512_1865602lstm_512_1865604lstm_512_1865606*
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1865105?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_512/StatefulPartitionedCall:output:0dense_170_1865609dense_170_1865611*
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1864907y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_170/StatefulPartitionedCall!^lstm_510/StatefulPartitionedCall!^lstm_511/StatefulPartitionedCall!^lstm_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2D
 lstm_510/StatefulPartitionedCall lstm_510/StatefulPartitionedCall2D
 lstm_511/StatefulPartitionedCall lstm_511/StatefulPartitionedCall2D
 lstm_512/StatefulPartitionedCall lstm_512/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_510_input
?8
?
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864081

inputs(
lstm_cell_307_1863999:	d?(
lstm_cell_307_1864001:	2?$
lstm_cell_307_1864003:	?
identity??%lstm_cell_307/StatefulPartitionedCall?while;
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
%lstm_cell_307/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_307_1863999lstm_cell_307_1864001lstm_cell_307_1864003*
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1863953n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_307_1863999lstm_cell_307_1864001lstm_cell_307_1864003*
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
while_body_1864012*
condR
while_cond_1864011*K
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
NoOpNoOp&^lstm_cell_307/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_307/StatefulPartitionedCall%lstm_cell_307/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1863457

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
0__inference_sequential_170_layer_call_fn_1865677

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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1864914o
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
while_body_1864505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_512_while_cond_1866467.
*lstm_512_while_lstm_512_while_loop_counter4
0lstm_512_while_lstm_512_while_maximum_iterations
lstm_512_while_placeholder 
lstm_512_while_placeholder_1 
lstm_512_while_placeholder_2 
lstm_512_while_placeholder_30
,lstm_512_while_less_lstm_512_strided_slice_1G
Clstm_512_while_lstm_512_while_cond_1866467___redundant_placeholder0G
Clstm_512_while_lstm_512_while_cond_1866467___redundant_placeholder1G
Clstm_512_while_lstm_512_while_cond_1866467___redundant_placeholder2G
Clstm_512_while_lstm_512_while_cond_1866467___redundant_placeholder3
lstm_512_while_identity
?
lstm_512/while/LessLesslstm_512_while_placeholder,lstm_512_while_less_lstm_512_strided_slice_1*
T0*
_output_shapes
: ]
lstm_512/while/IdentityIdentitylstm_512/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_512_while_identity lstm_512/while/Identity:output:0*(
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
*sequential_170_lstm_511_while_body_1863161L
Hsequential_170_lstm_511_while_sequential_170_lstm_511_while_loop_counterR
Nsequential_170_lstm_511_while_sequential_170_lstm_511_while_maximum_iterations-
)sequential_170_lstm_511_while_placeholder/
+sequential_170_lstm_511_while_placeholder_1/
+sequential_170_lstm_511_while_placeholder_2/
+sequential_170_lstm_511_while_placeholder_3K
Gsequential_170_lstm_511_while_sequential_170_lstm_511_strided_slice_1_0?
?sequential_170_lstm_511_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_511_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_170_lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0:	d?a
Nsequential_170_lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?\
Msequential_170_lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0:	?*
&sequential_170_lstm_511_while_identity,
(sequential_170_lstm_511_while_identity_1,
(sequential_170_lstm_511_while_identity_2,
(sequential_170_lstm_511_while_identity_3,
(sequential_170_lstm_511_while_identity_4,
(sequential_170_lstm_511_while_identity_5I
Esequential_170_lstm_511_while_sequential_170_lstm_511_strided_slice_1?
?sequential_170_lstm_511_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_511_tensorarrayunstack_tensorlistfromtensor]
Jsequential_170_lstm_511_while_lstm_cell_307_matmul_readvariableop_resource:	d?_
Lsequential_170_lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource:	2?Z
Ksequential_170_lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource:	???Bsequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp?Asequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp?Csequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp?
Osequential_170/lstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_170/lstm_511/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_170_lstm_511_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_511_tensorarrayunstack_tensorlistfromtensor_0)sequential_170_lstm_511_while_placeholderXsequential_170/lstm_511/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOpLsequential_170_lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_170/lstm_511/while/lstm_cell_307/MatMulMatMulHsequential_170/lstm_511/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOpNsequential_170_lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_170/lstm_511/while/lstm_cell_307/MatMul_1MatMul+sequential_170_lstm_511_while_placeholder_2Ksequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_170/lstm_511/while/lstm_cell_307/addAddV2<sequential_170/lstm_511/while/lstm_cell_307/MatMul:product:0>sequential_170/lstm_511/while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOpMsequential_170_lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_170/lstm_511/while/lstm_cell_307/BiasAddBiasAdd3sequential_170/lstm_511/while/lstm_cell_307/add:z:0Jsequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_170/lstm_511/while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_170/lstm_511/while/lstm_cell_307/splitSplitDsequential_170/lstm_511/while/lstm_cell_307/split/split_dim:output:0<sequential_170/lstm_511/while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_170/lstm_511/while/lstm_cell_307/SigmoidSigmoid:sequential_170/lstm_511/while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_170/lstm_511/while/lstm_cell_307/Sigmoid_1Sigmoid:sequential_170/lstm_511/while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_170/lstm_511/while/lstm_cell_307/mulMul9sequential_170/lstm_511/while/lstm_cell_307/Sigmoid_1:y:0+sequential_170_lstm_511_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_170/lstm_511/while/lstm_cell_307/ReluRelu:sequential_170/lstm_511/while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_170/lstm_511/while/lstm_cell_307/mul_1Mul7sequential_170/lstm_511/while/lstm_cell_307/Sigmoid:y:0>sequential_170/lstm_511/while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_170/lstm_511/while/lstm_cell_307/add_1AddV23sequential_170/lstm_511/while/lstm_cell_307/mul:z:05sequential_170/lstm_511/while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_170/lstm_511/while/lstm_cell_307/Sigmoid_2Sigmoid:sequential_170/lstm_511/while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_170/lstm_511/while/lstm_cell_307/Relu_1Relu5sequential_170/lstm_511/while/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_170/lstm_511/while/lstm_cell_307/mul_2Mul9sequential_170/lstm_511/while/lstm_cell_307/Sigmoid_2:y:0@sequential_170/lstm_511/while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_170/lstm_511/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_170_lstm_511_while_placeholder_1)sequential_170_lstm_511_while_placeholder5sequential_170/lstm_511/while/lstm_cell_307/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_170/lstm_511/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_170/lstm_511/while/addAddV2)sequential_170_lstm_511_while_placeholder,sequential_170/lstm_511/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_170/lstm_511/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_170/lstm_511/while/add_1AddV2Hsequential_170_lstm_511_while_sequential_170_lstm_511_while_loop_counter.sequential_170/lstm_511/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_170/lstm_511/while/IdentityIdentity'sequential_170/lstm_511/while/add_1:z:0#^sequential_170/lstm_511/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_511/while/Identity_1IdentityNsequential_170_lstm_511_while_sequential_170_lstm_511_while_maximum_iterations#^sequential_170/lstm_511/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_511/while/Identity_2Identity%sequential_170/lstm_511/while/add:z:0#^sequential_170/lstm_511/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_511/while/Identity_3IdentityRsequential_170/lstm_511/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_170/lstm_511/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_511/while/Identity_4Identity5sequential_170/lstm_511/while/lstm_cell_307/mul_2:z:0#^sequential_170/lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_170/lstm_511/while/Identity_5Identity5sequential_170/lstm_511/while/lstm_cell_307/add_1:z:0#^sequential_170/lstm_511/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_170/lstm_511/while/NoOpNoOpC^sequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOpB^sequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOpD^sequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_170_lstm_511_while_identity/sequential_170/lstm_511/while/Identity:output:0"]
(sequential_170_lstm_511_while_identity_11sequential_170/lstm_511/while/Identity_1:output:0"]
(sequential_170_lstm_511_while_identity_21sequential_170/lstm_511/while/Identity_2:output:0"]
(sequential_170_lstm_511_while_identity_31sequential_170/lstm_511/while/Identity_3:output:0"]
(sequential_170_lstm_511_while_identity_41sequential_170/lstm_511/while/Identity_4:output:0"]
(sequential_170_lstm_511_while_identity_51sequential_170/lstm_511/while/Identity_5:output:0"?
Ksequential_170_lstm_511_while_lstm_cell_307_biasadd_readvariableop_resourceMsequential_170_lstm_511_while_lstm_cell_307_biasadd_readvariableop_resource_0"?
Lsequential_170_lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resourceNsequential_170_lstm_511_while_lstm_cell_307_matmul_1_readvariableop_resource_0"?
Jsequential_170_lstm_511_while_lstm_cell_307_matmul_readvariableop_resourceLsequential_170_lstm_511_while_lstm_cell_307_matmul_readvariableop_resource_0"?
Esequential_170_lstm_511_while_sequential_170_lstm_511_strided_slice_1Gsequential_170_lstm_511_while_sequential_170_lstm_511_strided_slice_1_0"?
?sequential_170_lstm_511_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_511_tensorarrayunstack_tensorlistfromtensor?sequential_170_lstm_511_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_511_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOpBsequential_170/lstm_511/while/lstm_cell_307/BiasAdd/ReadVariableOp2?
Asequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOpAsequential_170/lstm_511/while/lstm_cell_307/MatMul/ReadVariableOp2?
Csequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOpCsequential_170/lstm_511/while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_170_lstm_512_while_body_1863300L
Hsequential_170_lstm_512_while_sequential_170_lstm_512_while_loop_counterR
Nsequential_170_lstm_512_while_sequential_170_lstm_512_while_maximum_iterations-
)sequential_170_lstm_512_while_placeholder/
+sequential_170_lstm_512_while_placeholder_1/
+sequential_170_lstm_512_while_placeholder_2/
+sequential_170_lstm_512_while_placeholder_3K
Gsequential_170_lstm_512_while_sequential_170_lstm_512_strided_slice_1_0?
?sequential_170_lstm_512_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_512_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_170_lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0:2(`
Nsequential_170_lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0:
([
Msequential_170_lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0:(*
&sequential_170_lstm_512_while_identity,
(sequential_170_lstm_512_while_identity_1,
(sequential_170_lstm_512_while_identity_2,
(sequential_170_lstm_512_while_identity_3,
(sequential_170_lstm_512_while_identity_4,
(sequential_170_lstm_512_while_identity_5I
Esequential_170_lstm_512_while_sequential_170_lstm_512_strided_slice_1?
?sequential_170_lstm_512_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_512_tensorarrayunstack_tensorlistfromtensor\
Jsequential_170_lstm_512_while_lstm_cell_308_matmul_readvariableop_resource:2(^
Lsequential_170_lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource:
(Y
Ksequential_170_lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource:(??Bsequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp?Asequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp?Csequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp?
Osequential_170/lstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_170/lstm_512/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_170_lstm_512_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_512_tensorarrayunstack_tensorlistfromtensor_0)sequential_170_lstm_512_while_placeholderXsequential_170/lstm_512/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOpLsequential_170_lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_170/lstm_512/while/lstm_cell_308/MatMulMatMulHsequential_170/lstm_512/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOpNsequential_170_lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_170/lstm_512/while/lstm_cell_308/MatMul_1MatMul+sequential_170_lstm_512_while_placeholder_2Ksequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_170/lstm_512/while/lstm_cell_308/addAddV2<sequential_170/lstm_512/while/lstm_cell_308/MatMul:product:0>sequential_170/lstm_512/while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOpMsequential_170_lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_170/lstm_512/while/lstm_cell_308/BiasAddBiasAdd3sequential_170/lstm_512/while/lstm_cell_308/add:z:0Jsequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_170/lstm_512/while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_170/lstm_512/while/lstm_cell_308/splitSplitDsequential_170/lstm_512/while/lstm_cell_308/split/split_dim:output:0<sequential_170/lstm_512/while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_170/lstm_512/while/lstm_cell_308/SigmoidSigmoid:sequential_170/lstm_512/while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_170/lstm_512/while/lstm_cell_308/Sigmoid_1Sigmoid:sequential_170/lstm_512/while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_170/lstm_512/while/lstm_cell_308/mulMul9sequential_170/lstm_512/while/lstm_cell_308/Sigmoid_1:y:0+sequential_170_lstm_512_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_170/lstm_512/while/lstm_cell_308/ReluRelu:sequential_170/lstm_512/while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_170/lstm_512/while/lstm_cell_308/mul_1Mul7sequential_170/lstm_512/while/lstm_cell_308/Sigmoid:y:0>sequential_170/lstm_512/while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_170/lstm_512/while/lstm_cell_308/add_1AddV23sequential_170/lstm_512/while/lstm_cell_308/mul:z:05sequential_170/lstm_512/while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_170/lstm_512/while/lstm_cell_308/Sigmoid_2Sigmoid:sequential_170/lstm_512/while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_170/lstm_512/while/lstm_cell_308/Relu_1Relu5sequential_170/lstm_512/while/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_170/lstm_512/while/lstm_cell_308/mul_2Mul9sequential_170/lstm_512/while/lstm_cell_308/Sigmoid_2:y:0@sequential_170/lstm_512/while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_170/lstm_512/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_170_lstm_512_while_placeholder_1)sequential_170_lstm_512_while_placeholder5sequential_170/lstm_512/while/lstm_cell_308/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_170/lstm_512/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_170/lstm_512/while/addAddV2)sequential_170_lstm_512_while_placeholder,sequential_170/lstm_512/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_170/lstm_512/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_170/lstm_512/while/add_1AddV2Hsequential_170_lstm_512_while_sequential_170_lstm_512_while_loop_counter.sequential_170/lstm_512/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_170/lstm_512/while/IdentityIdentity'sequential_170/lstm_512/while/add_1:z:0#^sequential_170/lstm_512/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_512/while/Identity_1IdentityNsequential_170_lstm_512_while_sequential_170_lstm_512_while_maximum_iterations#^sequential_170/lstm_512/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_512/while/Identity_2Identity%sequential_170/lstm_512/while/add:z:0#^sequential_170/lstm_512/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_512/while/Identity_3IdentityRsequential_170/lstm_512/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_170/lstm_512/while/NoOp*
T0*
_output_shapes
: ?
(sequential_170/lstm_512/while/Identity_4Identity5sequential_170/lstm_512/while/lstm_cell_308/mul_2:z:0#^sequential_170/lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_170/lstm_512/while/Identity_5Identity5sequential_170/lstm_512/while/lstm_cell_308/add_1:z:0#^sequential_170/lstm_512/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_170/lstm_512/while/NoOpNoOpC^sequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOpB^sequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOpD^sequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_170_lstm_512_while_identity/sequential_170/lstm_512/while/Identity:output:0"]
(sequential_170_lstm_512_while_identity_11sequential_170/lstm_512/while/Identity_1:output:0"]
(sequential_170_lstm_512_while_identity_21sequential_170/lstm_512/while/Identity_2:output:0"]
(sequential_170_lstm_512_while_identity_31sequential_170/lstm_512/while/Identity_3:output:0"]
(sequential_170_lstm_512_while_identity_41sequential_170/lstm_512/while/Identity_4:output:0"]
(sequential_170_lstm_512_while_identity_51sequential_170/lstm_512/while/Identity_5:output:0"?
Ksequential_170_lstm_512_while_lstm_cell_308_biasadd_readvariableop_resourceMsequential_170_lstm_512_while_lstm_cell_308_biasadd_readvariableop_resource_0"?
Lsequential_170_lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resourceNsequential_170_lstm_512_while_lstm_cell_308_matmul_1_readvariableop_resource_0"?
Jsequential_170_lstm_512_while_lstm_cell_308_matmul_readvariableop_resourceLsequential_170_lstm_512_while_lstm_cell_308_matmul_readvariableop_resource_0"?
Esequential_170_lstm_512_while_sequential_170_lstm_512_strided_slice_1Gsequential_170_lstm_512_while_sequential_170_lstm_512_strided_slice_1_0"?
?sequential_170_lstm_512_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_512_tensorarrayunstack_tensorlistfromtensor?sequential_170_lstm_512_while_tensorarrayv2read_tensorlistgetitem_sequential_170_lstm_512_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOpBsequential_170/lstm_512/while/lstm_cell_308/BiasAdd/ReadVariableOp2?
Asequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOpAsequential_170/lstm_512/while/lstm_cell_308/MatMul/ReadVariableOp2?
Csequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOpCsequential_170/lstm_512/while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1864804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1864804___redundant_placeholder05
1while_while_cond_1864804___redundant_placeholder15
1while_while_cond_1864804___redundant_placeholder25
1while_while_cond_1864804___redundant_placeholder3
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
while_body_1867563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_307_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_307_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_307_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_307_matmul_readvariableop_resource:	d?G
4while_lstm_cell_307_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_307_biasadd_readvariableop_resource:	???*while/lstm_cell_307/BiasAdd/ReadVariableOp?)while/lstm_cell_307/MatMul/ReadVariableOp?+while/lstm_cell_307/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_307/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_307_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_307/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_307_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_307/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_307/addAddV2$while/lstm_cell_307/MatMul:product:0&while/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_307_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_307/BiasAddBiasAddwhile/lstm_cell_307/add:z:02while/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_307/splitSplit,while/lstm_cell_307/split/split_dim:output:0$while/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_307/SigmoidSigmoid"while/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_1Sigmoid"while/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mulMul!while/lstm_cell_307/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_307/ReluRelu"while/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_1Mulwhile/lstm_cell_307/Sigmoid:y:0&while/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/add_1AddV2while/lstm_cell_307/mul:z:0while/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_307/Sigmoid_2Sigmoid"while/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_307/Relu_1Reluwhile/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_307/mul_2Mul!while/lstm_cell_307/Sigmoid_2:y:0(while/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_307/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_307/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_307/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_307/BiasAdd/ReadVariableOp*^while/lstm_cell_307/MatMul/ReadVariableOp,^while/lstm_cell_307/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_307_biasadd_readvariableop_resource5while_lstm_cell_307_biasadd_readvariableop_resource_0"n
4while_lstm_cell_307_matmul_1_readvariableop_resource6while_lstm_cell_307_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_307_matmul_readvariableop_resource4while_lstm_cell_307_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_307/BiasAdd/ReadVariableOp*while/lstm_cell_307/BiasAdd/ReadVariableOp2V
)while/lstm_cell_307/MatMul/ReadVariableOp)while/lstm_cell_307/MatMul/ReadVariableOp2Z
+while/lstm_cell_307/MatMul_1/ReadVariableOp+while/lstm_cell_307/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864157

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
?
E__inference_lstm_512_layer_call_and_return_conditional_losses_1864240

inputs'
lstm_cell_308_1864158:2('
lstm_cell_308_1864160:
(#
lstm_cell_308_1864162:(
identity??%lstm_cell_308/StatefulPartitionedCall?while;
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
%lstm_cell_308/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_308_1864158lstm_cell_308_1864160lstm_cell_308_1864162*
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1864157n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_308_1864158lstm_cell_308_1864160lstm_cell_308_1864162*
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
while_body_1864171*
condR
while_cond_1864170*K
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
NoOpNoOp&^lstm_cell_308/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_308/StatefulPartitionedCall%lstm_cell_308/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868589

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
??
?
#__inference__traced_restore_1868992
file_prefix3
!assignvariableop_dense_170_kernel:
/
!assignvariableop_1_dense_170_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_510_lstm_cell_510_kernel:	?M
:assignvariableop_8_lstm_510_lstm_cell_510_recurrent_kernel:	d?=
.assignvariableop_9_lstm_510_lstm_cell_510_bias:	?D
1assignvariableop_10_lstm_511_lstm_cell_511_kernel:	d?N
;assignvariableop_11_lstm_511_lstm_cell_511_recurrent_kernel:	2?>
/assignvariableop_12_lstm_511_lstm_cell_511_bias:	?C
1assignvariableop_13_lstm_512_lstm_cell_512_kernel:2(M
;assignvariableop_14_lstm_512_lstm_cell_512_recurrent_kernel:
(=
/assignvariableop_15_lstm_512_lstm_cell_512_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_170_kernel_m:
7
)assignvariableop_19_adam_dense_170_bias_m:K
8assignvariableop_20_adam_lstm_510_lstm_cell_510_kernel_m:	?U
Bassignvariableop_21_adam_lstm_510_lstm_cell_510_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_510_lstm_cell_510_bias_m:	?K
8assignvariableop_23_adam_lstm_511_lstm_cell_511_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_511_lstm_cell_511_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_511_lstm_cell_511_bias_m:	?J
8assignvariableop_26_adam_lstm_512_lstm_cell_512_kernel_m:2(T
Bassignvariableop_27_adam_lstm_512_lstm_cell_512_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_512_lstm_cell_512_bias_m:(=
+assignvariableop_29_adam_dense_170_kernel_v:
7
)assignvariableop_30_adam_dense_170_bias_v:K
8assignvariableop_31_adam_lstm_510_lstm_cell_510_kernel_v:	?U
Bassignvariableop_32_adam_lstm_510_lstm_cell_510_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_510_lstm_cell_510_bias_v:	?K
8assignvariableop_34_adam_lstm_511_lstm_cell_511_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_511_lstm_cell_511_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_511_lstm_cell_511_bias_v:	?J
8assignvariableop_37_adam_lstm_512_lstm_cell_512_kernel_v:2(T
Bassignvariableop_38_adam_lstm_512_lstm_cell_512_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_512_lstm_cell_512_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_170_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_170_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_510_lstm_cell_510_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_510_lstm_cell_510_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_510_lstm_cell_510_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_511_lstm_cell_511_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_511_lstm_cell_511_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_511_lstm_cell_511_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_512_lstm_cell_512_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_512_lstm_cell_512_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_512_lstm_cell_512_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_170_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_170_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_510_lstm_cell_510_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_510_lstm_cell_510_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_510_lstm_cell_510_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_511_lstm_cell_511_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_511_lstm_cell_511_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_511_lstm_cell_511_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_512_lstm_cell_512_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_512_lstm_cell_512_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_512_lstm_cell_512_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_170_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_170_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_510_lstm_cell_510_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_510_lstm_cell_510_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_510_lstm_cell_510_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_511_lstm_cell_511_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_511_lstm_cell_511_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_511_lstm_cell_511_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_512_lstm_cell_512_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_512_lstm_cell_512_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_512_lstm_cell_512_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1867419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867419___redundant_placeholder05
1while_while_cond_1867419___redundant_placeholder15
1while_while_cond_1867419___redundant_placeholder25
1while_while_cond_1867419___redundant_placeholder3
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
 __inference__traced_save_1868862
file_prefix/
+savev2_dense_170_kernel_read_readvariableop-
)savev2_dense_170_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_510_lstm_cell_510_kernel_read_readvariableopF
Bsavev2_lstm_510_lstm_cell_510_recurrent_kernel_read_readvariableop:
6savev2_lstm_510_lstm_cell_510_bias_read_readvariableop<
8savev2_lstm_511_lstm_cell_511_kernel_read_readvariableopF
Bsavev2_lstm_511_lstm_cell_511_recurrent_kernel_read_readvariableop:
6savev2_lstm_511_lstm_cell_511_bias_read_readvariableop<
8savev2_lstm_512_lstm_cell_512_kernel_read_readvariableopF
Bsavev2_lstm_512_lstm_cell_512_recurrent_kernel_read_readvariableop:
6savev2_lstm_512_lstm_cell_512_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_170_kernel_m_read_readvariableop4
0savev2_adam_dense_170_bias_m_read_readvariableopC
?savev2_adam_lstm_510_lstm_cell_510_kernel_m_read_readvariableopM
Isavev2_adam_lstm_510_lstm_cell_510_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_510_lstm_cell_510_bias_m_read_readvariableopC
?savev2_adam_lstm_511_lstm_cell_511_kernel_m_read_readvariableopM
Isavev2_adam_lstm_511_lstm_cell_511_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_511_lstm_cell_511_bias_m_read_readvariableopC
?savev2_adam_lstm_512_lstm_cell_512_kernel_m_read_readvariableopM
Isavev2_adam_lstm_512_lstm_cell_512_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_512_lstm_cell_512_bias_m_read_readvariableop6
2savev2_adam_dense_170_kernel_v_read_readvariableop4
0savev2_adam_dense_170_bias_v_read_readvariableopC
?savev2_adam_lstm_510_lstm_cell_510_kernel_v_read_readvariableopM
Isavev2_adam_lstm_510_lstm_cell_510_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_510_lstm_cell_510_bias_v_read_readvariableopC
?savev2_adam_lstm_511_lstm_cell_511_kernel_v_read_readvariableopM
Isavev2_adam_lstm_511_lstm_cell_511_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_511_lstm_cell_511_bias_v_read_readvariableopC
?savev2_adam_lstm_512_lstm_cell_512_kernel_v_read_readvariableopM
Isavev2_adam_lstm_512_lstm_cell_512_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_512_lstm_cell_512_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_170_kernel_read_readvariableop)savev2_dense_170_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_510_lstm_cell_510_kernel_read_readvariableopBsavev2_lstm_510_lstm_cell_510_recurrent_kernel_read_readvariableop6savev2_lstm_510_lstm_cell_510_bias_read_readvariableop8savev2_lstm_511_lstm_cell_511_kernel_read_readvariableopBsavev2_lstm_511_lstm_cell_511_recurrent_kernel_read_readvariableop6savev2_lstm_511_lstm_cell_511_bias_read_readvariableop8savev2_lstm_512_lstm_cell_512_kernel_read_readvariableopBsavev2_lstm_512_lstm_cell_512_recurrent_kernel_read_readvariableop6savev2_lstm_512_lstm_cell_512_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_170_kernel_m_read_readvariableop0savev2_adam_dense_170_bias_m_read_readvariableop?savev2_adam_lstm_510_lstm_cell_510_kernel_m_read_readvariableopIsavev2_adam_lstm_510_lstm_cell_510_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_510_lstm_cell_510_bias_m_read_readvariableop?savev2_adam_lstm_511_lstm_cell_511_kernel_m_read_readvariableopIsavev2_adam_lstm_511_lstm_cell_511_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_511_lstm_cell_511_bias_m_read_readvariableop?savev2_adam_lstm_512_lstm_cell_512_kernel_m_read_readvariableopIsavev2_adam_lstm_512_lstm_cell_512_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_512_lstm_cell_512_bias_m_read_readvariableop2savev2_adam_dense_170_kernel_v_read_readvariableop0savev2_adam_dense_170_bias_v_read_readvariableop?savev2_adam_lstm_510_lstm_cell_510_kernel_v_read_readvariableopIsavev2_adam_lstm_510_lstm_cell_510_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_510_lstm_cell_510_bias_v_read_readvariableop?savev2_adam_lstm_511_lstm_cell_511_kernel_v_read_readvariableopIsavev2_adam_lstm_511_lstm_cell_511_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_511_lstm_cell_511_bias_v_read_readvariableop?savev2_adam_lstm_512_lstm_cell_512_kernel_v_read_readvariableopIsavev2_adam_lstm_512_lstm_cell_512_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_512_lstm_cell_512_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??
?
"__inference__wrapped_model_1863390
lstm_510_inputW
Dsequential_170_lstm_510_lstm_cell_306_matmul_readvariableop_resource:	?Y
Fsequential_170_lstm_510_lstm_cell_306_matmul_1_readvariableop_resource:	d?T
Esequential_170_lstm_510_lstm_cell_306_biasadd_readvariableop_resource:	?W
Dsequential_170_lstm_511_lstm_cell_307_matmul_readvariableop_resource:	d?Y
Fsequential_170_lstm_511_lstm_cell_307_matmul_1_readvariableop_resource:	2?T
Esequential_170_lstm_511_lstm_cell_307_biasadd_readvariableop_resource:	?V
Dsequential_170_lstm_512_lstm_cell_308_matmul_readvariableop_resource:2(X
Fsequential_170_lstm_512_lstm_cell_308_matmul_1_readvariableop_resource:
(S
Esequential_170_lstm_512_lstm_cell_308_biasadd_readvariableop_resource:(I
7sequential_170_dense_170_matmul_readvariableop_resource:
F
8sequential_170_dense_170_biasadd_readvariableop_resource:
identity??/sequential_170/dense_170/BiasAdd/ReadVariableOp?.sequential_170/dense_170/MatMul/ReadVariableOp?<sequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp?;sequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOp?=sequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp?sequential_170/lstm_510/while?<sequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp?;sequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOp?=sequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp?sequential_170/lstm_511/while?<sequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp?;sequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOp?=sequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp?sequential_170/lstm_512/while[
sequential_170/lstm_510/ShapeShapelstm_510_input*
T0*
_output_shapes
:u
+sequential_170/lstm_510/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_170/lstm_510/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_170/lstm_510/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_170/lstm_510/strided_sliceStridedSlice&sequential_170/lstm_510/Shape:output:04sequential_170/lstm_510/strided_slice/stack:output:06sequential_170/lstm_510/strided_slice/stack_1:output:06sequential_170/lstm_510/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_170/lstm_510/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_170/lstm_510/zeros/packedPack.sequential_170/lstm_510/strided_slice:output:0/sequential_170/lstm_510/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_170/lstm_510/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_510/zerosFill-sequential_170/lstm_510/zeros/packed:output:0,sequential_170/lstm_510/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_170/lstm_510/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_170/lstm_510/zeros_1/packedPack.sequential_170/lstm_510/strided_slice:output:01sequential_170/lstm_510/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_170/lstm_510/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_510/zeros_1Fill/sequential_170/lstm_510/zeros_1/packed:output:0.sequential_170/lstm_510/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_170/lstm_510/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_170/lstm_510/transpose	Transposelstm_510_input/sequential_170/lstm_510/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_170/lstm_510/Shape_1Shape%sequential_170/lstm_510/transpose:y:0*
T0*
_output_shapes
:w
-sequential_170/lstm_510/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_510/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_510/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_510/strided_slice_1StridedSlice(sequential_170/lstm_510/Shape_1:output:06sequential_170/lstm_510/strided_slice_1/stack:output:08sequential_170/lstm_510/strided_slice_1/stack_1:output:08sequential_170/lstm_510/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_170/lstm_510/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_170/lstm_510/TensorArrayV2TensorListReserve<sequential_170/lstm_510/TensorArrayV2/element_shape:output:00sequential_170/lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_170/lstm_510/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_170/lstm_510/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_170/lstm_510/transpose:y:0Vsequential_170/lstm_510/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_170/lstm_510/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_510/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_510/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_510/strided_slice_2StridedSlice%sequential_170/lstm_510/transpose:y:06sequential_170/lstm_510/strided_slice_2/stack:output:08sequential_170/lstm_510/strided_slice_2/stack_1:output:08sequential_170/lstm_510/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOpReadVariableOpDsequential_170_lstm_510_lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_170/lstm_510/lstm_cell_306/MatMulMatMul0sequential_170/lstm_510/strided_slice_2:output:0Csequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOpFsequential_170_lstm_510_lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_170/lstm_510/lstm_cell_306/MatMul_1MatMul&sequential_170/lstm_510/zeros:output:0Esequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_170/lstm_510/lstm_cell_306/addAddV26sequential_170/lstm_510/lstm_cell_306/MatMul:product:08sequential_170/lstm_510/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOpEsequential_170_lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_170/lstm_510/lstm_cell_306/BiasAddBiasAdd-sequential_170/lstm_510/lstm_cell_306/add:z:0Dsequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_170/lstm_510/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_170/lstm_510/lstm_cell_306/splitSplit>sequential_170/lstm_510/lstm_cell_306/split/split_dim:output:06sequential_170/lstm_510/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_170/lstm_510/lstm_cell_306/SigmoidSigmoid4sequential_170/lstm_510/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_170/lstm_510/lstm_cell_306/Sigmoid_1Sigmoid4sequential_170/lstm_510/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_170/lstm_510/lstm_cell_306/mulMul3sequential_170/lstm_510/lstm_cell_306/Sigmoid_1:y:0(sequential_170/lstm_510/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_170/lstm_510/lstm_cell_306/ReluRelu4sequential_170/lstm_510/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_170/lstm_510/lstm_cell_306/mul_1Mul1sequential_170/lstm_510/lstm_cell_306/Sigmoid:y:08sequential_170/lstm_510/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_170/lstm_510/lstm_cell_306/add_1AddV2-sequential_170/lstm_510/lstm_cell_306/mul:z:0/sequential_170/lstm_510/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_170/lstm_510/lstm_cell_306/Sigmoid_2Sigmoid4sequential_170/lstm_510/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_170/lstm_510/lstm_cell_306/Relu_1Relu/sequential_170/lstm_510/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_170/lstm_510/lstm_cell_306/mul_2Mul3sequential_170/lstm_510/lstm_cell_306/Sigmoid_2:y:0:sequential_170/lstm_510/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_170/lstm_510/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_170/lstm_510/TensorArrayV2_1TensorListReserve>sequential_170/lstm_510/TensorArrayV2_1/element_shape:output:00sequential_170/lstm_510/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_170/lstm_510/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_170/lstm_510/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_170/lstm_510/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_170/lstm_510/whileWhile3sequential_170/lstm_510/while/loop_counter:output:09sequential_170/lstm_510/while/maximum_iterations:output:0%sequential_170/lstm_510/time:output:00sequential_170/lstm_510/TensorArrayV2_1:handle:0&sequential_170/lstm_510/zeros:output:0(sequential_170/lstm_510/zeros_1:output:00sequential_170/lstm_510/strided_slice_1:output:0Osequential_170/lstm_510/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_170_lstm_510_lstm_cell_306_matmul_readvariableop_resourceFsequential_170_lstm_510_lstm_cell_306_matmul_1_readvariableop_resourceEsequential_170_lstm_510_lstm_cell_306_biasadd_readvariableop_resource*
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
*sequential_170_lstm_510_while_body_1863022*6
cond.R,
*sequential_170_lstm_510_while_cond_1863021*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_170/lstm_510/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_170/lstm_510/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_170/lstm_510/while:output:3Qsequential_170/lstm_510/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_170/lstm_510/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_170/lstm_510/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_510/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_510/strided_slice_3StridedSliceCsequential_170/lstm_510/TensorArrayV2Stack/TensorListStack:tensor:06sequential_170/lstm_510/strided_slice_3/stack:output:08sequential_170/lstm_510/strided_slice_3/stack_1:output:08sequential_170/lstm_510/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_170/lstm_510/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_170/lstm_510/transpose_1	TransposeCsequential_170/lstm_510/TensorArrayV2Stack/TensorListStack:tensor:01sequential_170/lstm_510/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_170/lstm_510/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_170/lstm_511/ShapeShape'sequential_170/lstm_510/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_170/lstm_511/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_170/lstm_511/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_170/lstm_511/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_170/lstm_511/strided_sliceStridedSlice&sequential_170/lstm_511/Shape:output:04sequential_170/lstm_511/strided_slice/stack:output:06sequential_170/lstm_511/strided_slice/stack_1:output:06sequential_170/lstm_511/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_170/lstm_511/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_170/lstm_511/zeros/packedPack.sequential_170/lstm_511/strided_slice:output:0/sequential_170/lstm_511/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_170/lstm_511/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_511/zerosFill-sequential_170/lstm_511/zeros/packed:output:0,sequential_170/lstm_511/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_170/lstm_511/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_170/lstm_511/zeros_1/packedPack.sequential_170/lstm_511/strided_slice:output:01sequential_170/lstm_511/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_170/lstm_511/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_511/zeros_1Fill/sequential_170/lstm_511/zeros_1/packed:output:0.sequential_170/lstm_511/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_170/lstm_511/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_170/lstm_511/transpose	Transpose'sequential_170/lstm_510/transpose_1:y:0/sequential_170/lstm_511/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_170/lstm_511/Shape_1Shape%sequential_170/lstm_511/transpose:y:0*
T0*
_output_shapes
:w
-sequential_170/lstm_511/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_511/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_511/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_511/strided_slice_1StridedSlice(sequential_170/lstm_511/Shape_1:output:06sequential_170/lstm_511/strided_slice_1/stack:output:08sequential_170/lstm_511/strided_slice_1/stack_1:output:08sequential_170/lstm_511/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_170/lstm_511/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_170/lstm_511/TensorArrayV2TensorListReserve<sequential_170/lstm_511/TensorArrayV2/element_shape:output:00sequential_170/lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_170/lstm_511/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_170/lstm_511/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_170/lstm_511/transpose:y:0Vsequential_170/lstm_511/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_170/lstm_511/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_511/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_511/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_511/strided_slice_2StridedSlice%sequential_170/lstm_511/transpose:y:06sequential_170/lstm_511/strided_slice_2/stack:output:08sequential_170/lstm_511/strided_slice_2/stack_1:output:08sequential_170/lstm_511/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOpReadVariableOpDsequential_170_lstm_511_lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_170/lstm_511/lstm_cell_307/MatMulMatMul0sequential_170/lstm_511/strided_slice_2:output:0Csequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOpFsequential_170_lstm_511_lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_170/lstm_511/lstm_cell_307/MatMul_1MatMul&sequential_170/lstm_511/zeros:output:0Esequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_170/lstm_511/lstm_cell_307/addAddV26sequential_170/lstm_511/lstm_cell_307/MatMul:product:08sequential_170/lstm_511/lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOpEsequential_170_lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_170/lstm_511/lstm_cell_307/BiasAddBiasAdd-sequential_170/lstm_511/lstm_cell_307/add:z:0Dsequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_170/lstm_511/lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_170/lstm_511/lstm_cell_307/splitSplit>sequential_170/lstm_511/lstm_cell_307/split/split_dim:output:06sequential_170/lstm_511/lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_170/lstm_511/lstm_cell_307/SigmoidSigmoid4sequential_170/lstm_511/lstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_170/lstm_511/lstm_cell_307/Sigmoid_1Sigmoid4sequential_170/lstm_511/lstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_170/lstm_511/lstm_cell_307/mulMul3sequential_170/lstm_511/lstm_cell_307/Sigmoid_1:y:0(sequential_170/lstm_511/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_170/lstm_511/lstm_cell_307/ReluRelu4sequential_170/lstm_511/lstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_170/lstm_511/lstm_cell_307/mul_1Mul1sequential_170/lstm_511/lstm_cell_307/Sigmoid:y:08sequential_170/lstm_511/lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_170/lstm_511/lstm_cell_307/add_1AddV2-sequential_170/lstm_511/lstm_cell_307/mul:z:0/sequential_170/lstm_511/lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_170/lstm_511/lstm_cell_307/Sigmoid_2Sigmoid4sequential_170/lstm_511/lstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_170/lstm_511/lstm_cell_307/Relu_1Relu/sequential_170/lstm_511/lstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_170/lstm_511/lstm_cell_307/mul_2Mul3sequential_170/lstm_511/lstm_cell_307/Sigmoid_2:y:0:sequential_170/lstm_511/lstm_cell_307/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_170/lstm_511/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_170/lstm_511/TensorArrayV2_1TensorListReserve>sequential_170/lstm_511/TensorArrayV2_1/element_shape:output:00sequential_170/lstm_511/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_170/lstm_511/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_170/lstm_511/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_170/lstm_511/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_170/lstm_511/whileWhile3sequential_170/lstm_511/while/loop_counter:output:09sequential_170/lstm_511/while/maximum_iterations:output:0%sequential_170/lstm_511/time:output:00sequential_170/lstm_511/TensorArrayV2_1:handle:0&sequential_170/lstm_511/zeros:output:0(sequential_170/lstm_511/zeros_1:output:00sequential_170/lstm_511/strided_slice_1:output:0Osequential_170/lstm_511/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_170_lstm_511_lstm_cell_307_matmul_readvariableop_resourceFsequential_170_lstm_511_lstm_cell_307_matmul_1_readvariableop_resourceEsequential_170_lstm_511_lstm_cell_307_biasadd_readvariableop_resource*
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
*sequential_170_lstm_511_while_body_1863161*6
cond.R,
*sequential_170_lstm_511_while_cond_1863160*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_170/lstm_511/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_170/lstm_511/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_170/lstm_511/while:output:3Qsequential_170/lstm_511/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_170/lstm_511/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_170/lstm_511/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_511/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_511/strided_slice_3StridedSliceCsequential_170/lstm_511/TensorArrayV2Stack/TensorListStack:tensor:06sequential_170/lstm_511/strided_slice_3/stack:output:08sequential_170/lstm_511/strided_slice_3/stack_1:output:08sequential_170/lstm_511/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_170/lstm_511/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_170/lstm_511/transpose_1	TransposeCsequential_170/lstm_511/TensorArrayV2Stack/TensorListStack:tensor:01sequential_170/lstm_511/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_170/lstm_511/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_170/lstm_512/ShapeShape'sequential_170/lstm_511/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_170/lstm_512/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_170/lstm_512/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_170/lstm_512/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_170/lstm_512/strided_sliceStridedSlice&sequential_170/lstm_512/Shape:output:04sequential_170/lstm_512/strided_slice/stack:output:06sequential_170/lstm_512/strided_slice/stack_1:output:06sequential_170/lstm_512/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_170/lstm_512/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_170/lstm_512/zeros/packedPack.sequential_170/lstm_512/strided_slice:output:0/sequential_170/lstm_512/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_170/lstm_512/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_512/zerosFill-sequential_170/lstm_512/zeros/packed:output:0,sequential_170/lstm_512/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_170/lstm_512/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_170/lstm_512/zeros_1/packedPack.sequential_170/lstm_512/strided_slice:output:01sequential_170/lstm_512/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_170/lstm_512/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_170/lstm_512/zeros_1Fill/sequential_170/lstm_512/zeros_1/packed:output:0.sequential_170/lstm_512/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_170/lstm_512/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_170/lstm_512/transpose	Transpose'sequential_170/lstm_511/transpose_1:y:0/sequential_170/lstm_512/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_170/lstm_512/Shape_1Shape%sequential_170/lstm_512/transpose:y:0*
T0*
_output_shapes
:w
-sequential_170/lstm_512/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_512/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_512/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_512/strided_slice_1StridedSlice(sequential_170/lstm_512/Shape_1:output:06sequential_170/lstm_512/strided_slice_1/stack:output:08sequential_170/lstm_512/strided_slice_1/stack_1:output:08sequential_170/lstm_512/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_170/lstm_512/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_170/lstm_512/TensorArrayV2TensorListReserve<sequential_170/lstm_512/TensorArrayV2/element_shape:output:00sequential_170/lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_170/lstm_512/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_170/lstm_512/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_170/lstm_512/transpose:y:0Vsequential_170/lstm_512/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_170/lstm_512/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_512/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_170/lstm_512/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_512/strided_slice_2StridedSlice%sequential_170/lstm_512/transpose:y:06sequential_170/lstm_512/strided_slice_2/stack:output:08sequential_170/lstm_512/strided_slice_2/stack_1:output:08sequential_170/lstm_512/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOpReadVariableOpDsequential_170_lstm_512_lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_170/lstm_512/lstm_cell_308/MatMulMatMul0sequential_170/lstm_512/strided_slice_2:output:0Csequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOpFsequential_170_lstm_512_lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_170/lstm_512/lstm_cell_308/MatMul_1MatMul&sequential_170/lstm_512/zeros:output:0Esequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_170/lstm_512/lstm_cell_308/addAddV26sequential_170/lstm_512/lstm_cell_308/MatMul:product:08sequential_170/lstm_512/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOpEsequential_170_lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_170/lstm_512/lstm_cell_308/BiasAddBiasAdd-sequential_170/lstm_512/lstm_cell_308/add:z:0Dsequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_170/lstm_512/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_170/lstm_512/lstm_cell_308/splitSplit>sequential_170/lstm_512/lstm_cell_308/split/split_dim:output:06sequential_170/lstm_512/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_170/lstm_512/lstm_cell_308/SigmoidSigmoid4sequential_170/lstm_512/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_170/lstm_512/lstm_cell_308/Sigmoid_1Sigmoid4sequential_170/lstm_512/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_170/lstm_512/lstm_cell_308/mulMul3sequential_170/lstm_512/lstm_cell_308/Sigmoid_1:y:0(sequential_170/lstm_512/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_170/lstm_512/lstm_cell_308/ReluRelu4sequential_170/lstm_512/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_170/lstm_512/lstm_cell_308/mul_1Mul1sequential_170/lstm_512/lstm_cell_308/Sigmoid:y:08sequential_170/lstm_512/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_170/lstm_512/lstm_cell_308/add_1AddV2-sequential_170/lstm_512/lstm_cell_308/mul:z:0/sequential_170/lstm_512/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_170/lstm_512/lstm_cell_308/Sigmoid_2Sigmoid4sequential_170/lstm_512/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_170/lstm_512/lstm_cell_308/Relu_1Relu/sequential_170/lstm_512/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_170/lstm_512/lstm_cell_308/mul_2Mul3sequential_170/lstm_512/lstm_cell_308/Sigmoid_2:y:0:sequential_170/lstm_512/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_170/lstm_512/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_170/lstm_512/TensorArrayV2_1TensorListReserve>sequential_170/lstm_512/TensorArrayV2_1/element_shape:output:00sequential_170/lstm_512/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_170/lstm_512/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_170/lstm_512/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_170/lstm_512/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_170/lstm_512/whileWhile3sequential_170/lstm_512/while/loop_counter:output:09sequential_170/lstm_512/while/maximum_iterations:output:0%sequential_170/lstm_512/time:output:00sequential_170/lstm_512/TensorArrayV2_1:handle:0&sequential_170/lstm_512/zeros:output:0(sequential_170/lstm_512/zeros_1:output:00sequential_170/lstm_512/strided_slice_1:output:0Osequential_170/lstm_512/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_170_lstm_512_lstm_cell_308_matmul_readvariableop_resourceFsequential_170_lstm_512_lstm_cell_308_matmul_1_readvariableop_resourceEsequential_170_lstm_512_lstm_cell_308_biasadd_readvariableop_resource*
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
*sequential_170_lstm_512_while_body_1863300*6
cond.R,
*sequential_170_lstm_512_while_cond_1863299*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_170/lstm_512/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_170/lstm_512/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_170/lstm_512/while:output:3Qsequential_170/lstm_512/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_170/lstm_512/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_170/lstm_512/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_170/lstm_512/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_170/lstm_512/strided_slice_3StridedSliceCsequential_170/lstm_512/TensorArrayV2Stack/TensorListStack:tensor:06sequential_170/lstm_512/strided_slice_3/stack:output:08sequential_170/lstm_512/strided_slice_3/stack_1:output:08sequential_170/lstm_512/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_170/lstm_512/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_170/lstm_512/transpose_1	TransposeCsequential_170/lstm_512/TensorArrayV2Stack/TensorListStack:tensor:01sequential_170/lstm_512/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_170/lstm_512/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_170/dense_170/MatMul/ReadVariableOpReadVariableOp7sequential_170_dense_170_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_170/dense_170/MatMulMatMul0sequential_170/lstm_512/strided_slice_3:output:06sequential_170/dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_170/dense_170/BiasAdd/ReadVariableOpReadVariableOp8sequential_170_dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_170/dense_170/BiasAddBiasAdd)sequential_170/dense_170/MatMul:product:07sequential_170/dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_170/dense_170/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_170/dense_170/BiasAdd/ReadVariableOp/^sequential_170/dense_170/MatMul/ReadVariableOp=^sequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp<^sequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOp>^sequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp^sequential_170/lstm_510/while=^sequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp<^sequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOp>^sequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp^sequential_170/lstm_511/while=^sequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp<^sequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOp>^sequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp^sequential_170/lstm_512/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_170/dense_170/BiasAdd/ReadVariableOp/sequential_170/dense_170/BiasAdd/ReadVariableOp2`
.sequential_170/dense_170/MatMul/ReadVariableOp.sequential_170/dense_170/MatMul/ReadVariableOp2|
<sequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp<sequential_170/lstm_510/lstm_cell_306/BiasAdd/ReadVariableOp2z
;sequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOp;sequential_170/lstm_510/lstm_cell_306/MatMul/ReadVariableOp2~
=sequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp=sequential_170/lstm_510/lstm_cell_306/MatMul_1/ReadVariableOp2>
sequential_170/lstm_510/whilesequential_170/lstm_510/while2|
<sequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp<sequential_170/lstm_511/lstm_cell_307/BiasAdd/ReadVariableOp2z
;sequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOp;sequential_170/lstm_511/lstm_cell_307/MatMul/ReadVariableOp2~
=sequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp=sequential_170/lstm_511/lstm_cell_307/MatMul_1/ReadVariableOp2>
sequential_170/lstm_511/whilesequential_170/lstm_511/while2|
<sequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp<sequential_170/lstm_512/lstm_cell_308/BiasAdd/ReadVariableOp2z
;sequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOp;sequential_170/lstm_512/lstm_cell_308/MatMul/ReadVariableOp2~
=sequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp=sequential_170/lstm_512/lstm_cell_308/MatMul_1/ReadVariableOp2>
sequential_170/lstm_512/whilesequential_170/lstm_512/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_510_input
?J
?
E__inference_lstm_511_layer_call_and_return_conditional_losses_1864739

inputs?
,lstm_cell_307_matmul_readvariableop_resource:	d?A
.lstm_cell_307_matmul_1_readvariableop_resource:	2?<
-lstm_cell_307_biasadd_readvariableop_resource:	?
identity??$lstm_cell_307/BiasAdd/ReadVariableOp?#lstm_cell_307/MatMul/ReadVariableOp?%lstm_cell_307/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_307/MatMul/ReadVariableOpReadVariableOp,lstm_cell_307_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_307/MatMulMatMulstrided_slice_2:output:0+lstm_cell_307/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_307/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_307_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_307/MatMul_1MatMulzeros:output:0-lstm_cell_307/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_307/addAddV2lstm_cell_307/MatMul:product:0 lstm_cell_307/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_307/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_307_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_307/BiasAddBiasAddlstm_cell_307/add:z:0,lstm_cell_307/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_307/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_307/splitSplit&lstm_cell_307/split/split_dim:output:0lstm_cell_307/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_307/SigmoidSigmoidlstm_cell_307/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_1Sigmoidlstm_cell_307/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_307/mulMullstm_cell_307/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_307/ReluRelulstm_cell_307/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_1Mullstm_cell_307/Sigmoid:y:0 lstm_cell_307/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_307/add_1AddV2lstm_cell_307/mul:z:0lstm_cell_307/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_307/Sigmoid_2Sigmoidlstm_cell_307/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_307/Relu_1Relulstm_cell_307/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_307/mul_2Mullstm_cell_307/Sigmoid_2:y:0"lstm_cell_307/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_307_matmul_readvariableop_resource.lstm_cell_307_matmul_1_readvariableop_resource-lstm_cell_307_biasadd_readvariableop_resource*
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
while_body_1864655*
condR
while_cond_1864654*K
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
NoOpNoOp%^lstm_cell_307/BiasAdd/ReadVariableOp$^lstm_cell_307/MatMul/ReadVariableOp&^lstm_cell_307/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_307/BiasAdd/ReadVariableOp$lstm_cell_307/BiasAdd/ReadVariableOp2J
#lstm_cell_307/MatMul/ReadVariableOp#lstm_cell_307/MatMul/ReadVariableOp2N
%lstm_cell_307/MatMul_1/ReadVariableOp%lstm_cell_307/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868687

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
while_body_1868322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_308_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_308_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_308_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_308_matmul_readvariableop_resource:2(F
4while_lstm_cell_308_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_308_biasadd_readvariableop_resource:(??*while/lstm_cell_308/BiasAdd/ReadVariableOp?)while/lstm_cell_308/MatMul/ReadVariableOp?+while/lstm_cell_308/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_308/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_308_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_308/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_308_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_308/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_308/addAddV2$while/lstm_cell_308/MatMul:product:0&while/lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_308_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_308/BiasAddBiasAddwhile/lstm_cell_308/add:z:02while/lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_308/splitSplit,while/lstm_cell_308/split/split_dim:output:0$while/lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_308/SigmoidSigmoid"while/lstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_1Sigmoid"while/lstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mulMul!while/lstm_cell_308/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_308/ReluRelu"while/lstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_1Mulwhile/lstm_cell_308/Sigmoid:y:0&while/lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/add_1AddV2while/lstm_cell_308/mul:z:0while/lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_308/Sigmoid_2Sigmoid"while/lstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_308/Relu_1Reluwhile/lstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_308/mul_2Mul!while/lstm_cell_308/Sigmoid_2:y:0(while/lstm_cell_308/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_308/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_308/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_308/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_308/BiasAdd/ReadVariableOp*^while/lstm_cell_308/MatMul/ReadVariableOp,^while/lstm_cell_308/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_308_biasadd_readvariableop_resource5while_lstm_cell_308_biasadd_readvariableop_resource_0"n
4while_lstm_cell_308_matmul_1_readvariableop_resource6while_lstm_cell_308_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_308_matmul_readvariableop_resource4while_lstm_cell_308_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_308/BiasAdd/ReadVariableOp*while/lstm_cell_308/BiasAdd/ReadVariableOp2V
)while/lstm_cell_308/MatMul/ReadVariableOp)while/lstm_cell_308/MatMul/ReadVariableOp2Z
+while/lstm_cell_308/MatMul_1/ReadVariableOp+while/lstm_cell_308/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1867705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1867705___redundant_placeholder05
1while_while_cond_1867705___redundant_placeholder15
1while_while_cond_1867705___redundant_placeholder25
1while_while_cond_1867705___redundant_placeholder3
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
while_body_1865351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_306_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_306_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_306_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_306_matmul_readvariableop_resource:	?G
4while_lstm_cell_306_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_306_biasadd_readvariableop_resource:	???*while/lstm_cell_306/BiasAdd/ReadVariableOp?)while/lstm_cell_306/MatMul/ReadVariableOp?+while/lstm_cell_306/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_306/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_306_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_306/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_306_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_306/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_306/addAddV2$while/lstm_cell_306/MatMul:product:0&while/lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_306_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_306/BiasAddBiasAddwhile/lstm_cell_306/add:z:02while/lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_306/splitSplit,while/lstm_cell_306/split/split_dim:output:0$while/lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_306/SigmoidSigmoid"while/lstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_1Sigmoid"while/lstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mulMul!while/lstm_cell_306/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_306/ReluRelu"while/lstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_1Mulwhile/lstm_cell_306/Sigmoid:y:0&while/lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/add_1AddV2while/lstm_cell_306/mul:z:0while/lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_306/Sigmoid_2Sigmoid"while/lstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_306/Relu_1Reluwhile/lstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_306/mul_2Mul!while/lstm_cell_306/Sigmoid_2:y:0(while/lstm_cell_306/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_306/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_306/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_306/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_306/BiasAdd/ReadVariableOp*^while/lstm_cell_306/MatMul/ReadVariableOp,^while/lstm_cell_306/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_306_biasadd_readvariableop_resource5while_lstm_cell_306_biasadd_readvariableop_resource_0"n
4while_lstm_cell_306_matmul_1_readvariableop_resource6while_lstm_cell_306_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_306_matmul_readvariableop_resource4while_lstm_cell_306_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_306/BiasAdd/ReadVariableOp*while/lstm_cell_306/BiasAdd/ReadVariableOp2V
)while/lstm_cell_306/MatMul/ReadVariableOp)while/lstm_cell_306/MatMul/ReadVariableOp2Z
+while/lstm_cell_306/MatMul_1/ReadVariableOp+while/lstm_cell_306/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1867977
inputs_0>
,lstm_cell_308_matmul_readvariableop_resource:2(@
.lstm_cell_308_matmul_1_readvariableop_resource:
(;
-lstm_cell_308_biasadd_readvariableop_resource:(
identity??$lstm_cell_308/BiasAdd/ReadVariableOp?#lstm_cell_308/MatMul/ReadVariableOp?%lstm_cell_308/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_308/MatMul/ReadVariableOpReadVariableOp,lstm_cell_308_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_308/MatMulMatMulstrided_slice_2:output:0+lstm_cell_308/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_308/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_308_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_308/MatMul_1MatMulzeros:output:0-lstm_cell_308/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_308/addAddV2lstm_cell_308/MatMul:product:0 lstm_cell_308/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_308/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_308_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_308/BiasAddBiasAddlstm_cell_308/add:z:0,lstm_cell_308/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_308/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_308/splitSplit&lstm_cell_308/split/split_dim:output:0lstm_cell_308/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_308/SigmoidSigmoidlstm_cell_308/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_1Sigmoidlstm_cell_308/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_308/mulMullstm_cell_308/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_308/ReluRelulstm_cell_308/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_1Mullstm_cell_308/Sigmoid:y:0 lstm_cell_308/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_308/add_1AddV2lstm_cell_308/mul:z:0lstm_cell_308/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_308/Sigmoid_2Sigmoidlstm_cell_308/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_308/Relu_1Relulstm_cell_308/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_308/mul_2Mullstm_cell_308/Sigmoid_2:y:0"lstm_cell_308/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_308_matmul_readvariableop_resource.lstm_cell_308_matmul_1_readvariableop_resource-lstm_cell_308_biasadd_readvariableop_resource*
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
while_body_1867893*
condR
while_cond_1867892*K
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
NoOpNoOp%^lstm_cell_308/BiasAdd/ReadVariableOp$^lstm_cell_308/MatMul/ReadVariableOp&^lstm_cell_308/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_308/BiasAdd/ReadVariableOp$lstm_cell_308/BiasAdd/ReadVariableOp2J
#lstm_cell_308/MatMul/ReadVariableOp#lstm_cell_308/MatMul/ReadVariableOp2N
%lstm_cell_308/MatMul_1/ReadVariableOp%lstm_cell_308/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_510_layer_call_fn_1866580
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1863731|
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

?
0__inference_sequential_170_layer_call_fn_1865704

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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865503o
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867174

inputs?
,lstm_cell_306_matmul_readvariableop_resource:	?A
.lstm_cell_306_matmul_1_readvariableop_resource:	d?<
-lstm_cell_306_biasadd_readvariableop_resource:	?
identity??$lstm_cell_306/BiasAdd/ReadVariableOp?#lstm_cell_306/MatMul/ReadVariableOp?%lstm_cell_306/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_306/MatMul/ReadVariableOpReadVariableOp,lstm_cell_306_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_306/MatMulMatMulstrided_slice_2:output:0+lstm_cell_306/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_306/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_306_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_306/MatMul_1MatMulzeros:output:0-lstm_cell_306/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_306/addAddV2lstm_cell_306/MatMul:product:0 lstm_cell_306/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_306/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_306_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_306/BiasAddBiasAddlstm_cell_306/add:z:0,lstm_cell_306/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_306/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_306/splitSplit&lstm_cell_306/split/split_dim:output:0lstm_cell_306/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_306/SigmoidSigmoidlstm_cell_306/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_1Sigmoidlstm_cell_306/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_306/mulMullstm_cell_306/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_306/ReluRelulstm_cell_306/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_1Mullstm_cell_306/Sigmoid:y:0 lstm_cell_306/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_306/add_1AddV2lstm_cell_306/mul:z:0lstm_cell_306/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_306/Sigmoid_2Sigmoidlstm_cell_306/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_306/Relu_1Relulstm_cell_306/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_306/mul_2Mullstm_cell_306/Sigmoid_2:y:0"lstm_cell_306/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_306_matmul_readvariableop_resource.lstm_cell_306_matmul_1_readvariableop_resource-lstm_cell_306_biasadd_readvariableop_resource*
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
while_body_1867090*
condR
while_cond_1867089*K
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
NoOpNoOp%^lstm_cell_306/BiasAdd/ReadVariableOp$^lstm_cell_306/MatMul/ReadVariableOp&^lstm_cell_306/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_306/BiasAdd/ReadVariableOp$lstm_cell_306/BiasAdd/ReadVariableOp2J
#lstm_cell_306/MatMul/ReadVariableOp#lstm_cell_306/MatMul/ReadVariableOp2N
%lstm_cell_306/MatMul_1/ReadVariableOp%lstm_cell_306/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
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
lstm_510_input;
 serving_default_lstm_510_input:0?????????=
	dense_1700
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
2dense_170/kernel
:2dense_170/bias
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
0:.	?2lstm_510/lstm_cell_510/kernel
::8	d?2'lstm_510/lstm_cell_510/recurrent_kernel
*:(?2lstm_510/lstm_cell_510/bias
0:.	d?2lstm_511/lstm_cell_511/kernel
::8	2?2'lstm_511/lstm_cell_511/recurrent_kernel
*:(?2lstm_511/lstm_cell_511/bias
/:-2(2lstm_512/lstm_cell_512/kernel
9:7
(2'lstm_512/lstm_cell_512/recurrent_kernel
):'(2lstm_512/lstm_cell_512/bias
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
2Adam/dense_170/kernel/m
!:2Adam/dense_170/bias/m
5:3	?2$Adam/lstm_510/lstm_cell_510/kernel/m
?:=	d?2.Adam/lstm_510/lstm_cell_510/recurrent_kernel/m
/:-?2"Adam/lstm_510/lstm_cell_510/bias/m
5:3	d?2$Adam/lstm_511/lstm_cell_511/kernel/m
?:=	2?2.Adam/lstm_511/lstm_cell_511/recurrent_kernel/m
/:-?2"Adam/lstm_511/lstm_cell_511/bias/m
4:22(2$Adam/lstm_512/lstm_cell_512/kernel/m
>:<
(2.Adam/lstm_512/lstm_cell_512/recurrent_kernel/m
.:,(2"Adam/lstm_512/lstm_cell_512/bias/m
':%
2Adam/dense_170/kernel/v
!:2Adam/dense_170/bias/v
5:3	?2$Adam/lstm_510/lstm_cell_510/kernel/v
?:=	d?2.Adam/lstm_510/lstm_cell_510/recurrent_kernel/v
/:-?2"Adam/lstm_510/lstm_cell_510/bias/v
5:3	d?2$Adam/lstm_511/lstm_cell_511/kernel/v
?:=	2?2.Adam/lstm_511/lstm_cell_511/recurrent_kernel/v
/:-?2"Adam/lstm_511/lstm_cell_511/bias/v
4:22(2$Adam/lstm_512/lstm_cell_512/kernel/v
>:<
(2.Adam/lstm_512/lstm_cell_512/recurrent_kernel/v
.:,(2"Adam/lstm_512/lstm_cell_512/bias/v
?2?
0__inference_sequential_170_layer_call_fn_1864939
0__inference_sequential_170_layer_call_fn_1865677
0__inference_sequential_170_layer_call_fn_1865704
0__inference_sequential_170_layer_call_fn_1865555?
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866131
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866558
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865585
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865615?
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
"__inference__wrapped_model_1863390lstm_510_input"?
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
*__inference_lstm_510_layer_call_fn_1866569
*__inference_lstm_510_layer_call_fn_1866580
*__inference_lstm_510_layer_call_fn_1866591
*__inference_lstm_510_layer_call_fn_1866602?
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866745
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866888
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867031
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867174?
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
*__inference_lstm_511_layer_call_fn_1867185
*__inference_lstm_511_layer_call_fn_1867196
*__inference_lstm_511_layer_call_fn_1867207
*__inference_lstm_511_layer_call_fn_1867218?
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867361
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867504
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867647
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867790?
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
*__inference_lstm_512_layer_call_fn_1867801
*__inference_lstm_512_layer_call_fn_1867812
*__inference_lstm_512_layer_call_fn_1867823
*__inference_lstm_512_layer_call_fn_1867834?
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1867977
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868120
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868263
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868406?
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
+__inference_dense_170_layer_call_fn_1868415?
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
F__inference_dense_170_layer_call_and_return_conditional_losses_1868425?
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
%__inference_signature_wrapper_1865650lstm_510_input"?
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
/__inference_lstm_cell_306_layer_call_fn_1868442
/__inference_lstm_cell_306_layer_call_fn_1868459?
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868491
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868523?
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
/__inference_lstm_cell_307_layer_call_fn_1868540
/__inference_lstm_cell_307_layer_call_fn_1868557?
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868589
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868621?
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
/__inference_lstm_cell_308_layer_call_fn_1868638
/__inference_lstm_cell_308_layer_call_fn_1868655?
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868687
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868719?
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
"__inference__wrapped_model_1863390?-./012345!";?8
1?.
,?)
lstm_510_input?????????
? "5?2
0
	dense_170#? 
	dense_170??????????
F__inference_dense_170_layer_call_and_return_conditional_losses_1868425\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_170_layer_call_fn_1868415O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866745?-./O?L
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1866888?-./O?L
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867031q-./??<
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
E__inference_lstm_510_layer_call_and_return_conditional_losses_1867174q-./??<
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
*__inference_lstm_510_layer_call_fn_1866569}-./O?L
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
*__inference_lstm_510_layer_call_fn_1866580}-./O?L
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
*__inference_lstm_510_layer_call_fn_1866591d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_510_layer_call_fn_1866602d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867361?012O?L
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867504?012O?L
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867647q012??<
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
E__inference_lstm_511_layer_call_and_return_conditional_losses_1867790q012??<
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
*__inference_lstm_511_layer_call_fn_1867185}012O?L
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
*__inference_lstm_511_layer_call_fn_1867196}012O?L
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
*__inference_lstm_511_layer_call_fn_1867207d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_511_layer_call_fn_1867218d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_512_layer_call_and_return_conditional_losses_1867977}345O?L
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868120}345O?L
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868263m345??<
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
E__inference_lstm_512_layer_call_and_return_conditional_losses_1868406m345??<
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
*__inference_lstm_512_layer_call_fn_1867801p345O?L
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
*__inference_lstm_512_layer_call_fn_1867812p345O?L
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
*__inference_lstm_512_layer_call_fn_1867823`345??<
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
*__inference_lstm_512_layer_call_fn_1867834`345??<
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868491?-./??}
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
J__inference_lstm_cell_306_layer_call_and_return_conditional_losses_1868523?-./??}
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
/__inference_lstm_cell_306_layer_call_fn_1868442?-./??}
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
/__inference_lstm_cell_306_layer_call_fn_1868459?-./??}
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868589?012??}
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
J__inference_lstm_cell_307_layer_call_and_return_conditional_losses_1868621?012??}
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
/__inference_lstm_cell_307_layer_call_fn_1868540?012??}
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
/__inference_lstm_cell_307_layer_call_fn_1868557?012??}
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868687?345??}
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
J__inference_lstm_cell_308_layer_call_and_return_conditional_losses_1868719?345??}
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
/__inference_lstm_cell_308_layer_call_fn_1868638?345??}
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
/__inference_lstm_cell_308_layer_call_fn_1868655?345??}
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865585y-./012345!"C?@
9?6
,?)
lstm_510_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1865615y-./012345!"C?@
9?6
,?)
lstm_510_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866131q-./012345!";?8
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
K__inference_sequential_170_layer_call_and_return_conditional_losses_1866558q-./012345!";?8
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
0__inference_sequential_170_layer_call_fn_1864939l-./012345!"C?@
9?6
,?)
lstm_510_input?????????
p 

 
? "???????????
0__inference_sequential_170_layer_call_fn_1865555l-./012345!"C?@
9?6
,?)
lstm_510_input?????????
p

 
? "???????????
0__inference_sequential_170_layer_call_fn_1865677d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_170_layer_call_fn_1865704d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1865650?-./012345!"M?J
? 
C?@
>
lstm_510_input,?)
lstm_510_input?????????"5?2
0
	dense_170#? 
	dense_170?????????