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
dense_245/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_245/kernel
u
$dense_245/kernel/Read/ReadVariableOpReadVariableOpdense_245/kernel*
_output_shapes

:
*
dtype0
t
dense_245/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_245/bias
m
"dense_245/bias/Read/ReadVariableOpReadVariableOpdense_245/bias*
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
lstm_735/lstm_cell_735/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_735/lstm_cell_735/kernel
?
1lstm_735/lstm_cell_735/kernel/Read/ReadVariableOpReadVariableOplstm_735/lstm_cell_735/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_735/lstm_cell_735/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_735/lstm_cell_735/recurrent_kernel
?
;lstm_735/lstm_cell_735/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_735/lstm_cell_735/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_735/lstm_cell_735/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_735/lstm_cell_735/bias
?
/lstm_735/lstm_cell_735/bias/Read/ReadVariableOpReadVariableOplstm_735/lstm_cell_735/bias*
_output_shapes	
:?*
dtype0
?
lstm_736/lstm_cell_736/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_736/lstm_cell_736/kernel
?
1lstm_736/lstm_cell_736/kernel/Read/ReadVariableOpReadVariableOplstm_736/lstm_cell_736/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_736/lstm_cell_736/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_736/lstm_cell_736/recurrent_kernel
?
;lstm_736/lstm_cell_736/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_736/lstm_cell_736/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_736/lstm_cell_736/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_736/lstm_cell_736/bias
?
/lstm_736/lstm_cell_736/bias/Read/ReadVariableOpReadVariableOplstm_736/lstm_cell_736/bias*
_output_shapes	
:?*
dtype0
?
lstm_737/lstm_cell_737/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_737/lstm_cell_737/kernel
?
1lstm_737/lstm_cell_737/kernel/Read/ReadVariableOpReadVariableOplstm_737/lstm_cell_737/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_737/lstm_cell_737/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_737/lstm_cell_737/recurrent_kernel
?
;lstm_737/lstm_cell_737/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_737/lstm_cell_737/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_737/lstm_cell_737/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_737/lstm_cell_737/bias
?
/lstm_737/lstm_cell_737/bias/Read/ReadVariableOpReadVariableOplstm_737/lstm_cell_737/bias*
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
Adam/dense_245/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_245/kernel/m
?
+Adam/dense_245/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_245/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_245/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_245/bias/m
{
)Adam/dense_245/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_245/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_735/lstm_cell_735/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_735/lstm_cell_735/kernel/m
?
8Adam/lstm_735/lstm_cell_735/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_735/lstm_cell_735/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_735/lstm_cell_735/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_735/lstm_cell_735/recurrent_kernel/m
?
BAdam/lstm_735/lstm_cell_735/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_735/lstm_cell_735/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_735/lstm_cell_735/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_735/lstm_cell_735/bias/m
?
6Adam/lstm_735/lstm_cell_735/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_735/lstm_cell_735/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_736/lstm_cell_736/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_736/lstm_cell_736/kernel/m
?
8Adam/lstm_736/lstm_cell_736/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_736/lstm_cell_736/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_736/lstm_cell_736/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_736/lstm_cell_736/recurrent_kernel/m
?
BAdam/lstm_736/lstm_cell_736/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_736/lstm_cell_736/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_736/lstm_cell_736/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_736/lstm_cell_736/bias/m
?
6Adam/lstm_736/lstm_cell_736/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_736/lstm_cell_736/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_737/lstm_cell_737/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_737/lstm_cell_737/kernel/m
?
8Adam/lstm_737/lstm_cell_737/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_737/lstm_cell_737/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_737/lstm_cell_737/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_737/lstm_cell_737/recurrent_kernel/m
?
BAdam/lstm_737/lstm_cell_737/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_737/lstm_cell_737/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_737/lstm_cell_737/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_737/lstm_cell_737/bias/m
?
6Adam/lstm_737/lstm_cell_737/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_737/lstm_cell_737/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_245/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_245/kernel/v
?
+Adam/dense_245/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_245/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_245/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_245/bias/v
{
)Adam/dense_245/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_245/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_735/lstm_cell_735/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_735/lstm_cell_735/kernel/v
?
8Adam/lstm_735/lstm_cell_735/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_735/lstm_cell_735/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_735/lstm_cell_735/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_735/lstm_cell_735/recurrent_kernel/v
?
BAdam/lstm_735/lstm_cell_735/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_735/lstm_cell_735/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_735/lstm_cell_735/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_735/lstm_cell_735/bias/v
?
6Adam/lstm_735/lstm_cell_735/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_735/lstm_cell_735/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_736/lstm_cell_736/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_736/lstm_cell_736/kernel/v
?
8Adam/lstm_736/lstm_cell_736/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_736/lstm_cell_736/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_736/lstm_cell_736/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_736/lstm_cell_736/recurrent_kernel/v
?
BAdam/lstm_736/lstm_cell_736/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_736/lstm_cell_736/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_736/lstm_cell_736/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_736/lstm_cell_736/bias/v
?
6Adam/lstm_736/lstm_cell_736/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_736/lstm_cell_736/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_737/lstm_cell_737/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_737/lstm_cell_737/kernel/v
?
8Adam/lstm_737/lstm_cell_737/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_737/lstm_cell_737/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_737/lstm_cell_737/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_737/lstm_cell_737/recurrent_kernel/v
?
BAdam/lstm_737/lstm_cell_737/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_737/lstm_cell_737/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_737/lstm_cell_737/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_737/lstm_cell_737/bias/v
?
6Adam/lstm_737/lstm_cell_737/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_737/lstm_cell_737/bias/v*
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
VARIABLE_VALUEdense_245/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_245/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_735/lstm_cell_735/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_735/lstm_cell_735/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_735/lstm_cell_735/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_736/lstm_cell_736/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_736/lstm_cell_736/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_736/lstm_cell_736/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_737/lstm_cell_737/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_737/lstm_cell_737/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_737/lstm_cell_737/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_245/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_245/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_735/lstm_cell_735/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_735/lstm_cell_735/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_735/lstm_cell_735/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_736/lstm_cell_736/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_736/lstm_cell_736/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_736/lstm_cell_736/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_737/lstm_cell_737/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_737/lstm_cell_737/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_737/lstm_cell_737/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_245/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_245/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_735/lstm_cell_735/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_735/lstm_cell_735/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_735/lstm_cell_735/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_736/lstm_cell_736/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_736/lstm_cell_736/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_736/lstm_cell_736/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_737/lstm_cell_737/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_737/lstm_cell_737/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_737/lstm_cell_737/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_735_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_735_inputlstm_735/lstm_cell_735/kernel'lstm_735/lstm_cell_735/recurrent_kernellstm_735/lstm_cell_735/biaslstm_736/lstm_cell_736/kernel'lstm_736/lstm_cell_736/recurrent_kernellstm_736/lstm_cell_736/biaslstm_737/lstm_cell_737/kernel'lstm_737/lstm_cell_737/recurrent_kernellstm_737/lstm_cell_737/biasdense_245/kerneldense_245/bias*
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
%__inference_signature_wrapper_3899189
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_245/kernel/Read/ReadVariableOp"dense_245/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_735/lstm_cell_735/kernel/Read/ReadVariableOp;lstm_735/lstm_cell_735/recurrent_kernel/Read/ReadVariableOp/lstm_735/lstm_cell_735/bias/Read/ReadVariableOp1lstm_736/lstm_cell_736/kernel/Read/ReadVariableOp;lstm_736/lstm_cell_736/recurrent_kernel/Read/ReadVariableOp/lstm_736/lstm_cell_736/bias/Read/ReadVariableOp1lstm_737/lstm_cell_737/kernel/Read/ReadVariableOp;lstm_737/lstm_cell_737/recurrent_kernel/Read/ReadVariableOp/lstm_737/lstm_cell_737/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_245/kernel/m/Read/ReadVariableOp)Adam/dense_245/bias/m/Read/ReadVariableOp8Adam/lstm_735/lstm_cell_735/kernel/m/Read/ReadVariableOpBAdam/lstm_735/lstm_cell_735/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_735/lstm_cell_735/bias/m/Read/ReadVariableOp8Adam/lstm_736/lstm_cell_736/kernel/m/Read/ReadVariableOpBAdam/lstm_736/lstm_cell_736/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_736/lstm_cell_736/bias/m/Read/ReadVariableOp8Adam/lstm_737/lstm_cell_737/kernel/m/Read/ReadVariableOpBAdam/lstm_737/lstm_cell_737/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_737/lstm_cell_737/bias/m/Read/ReadVariableOp+Adam/dense_245/kernel/v/Read/ReadVariableOp)Adam/dense_245/bias/v/Read/ReadVariableOp8Adam/lstm_735/lstm_cell_735/kernel/v/Read/ReadVariableOpBAdam/lstm_735/lstm_cell_735/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_735/lstm_cell_735/bias/v/Read/ReadVariableOp8Adam/lstm_736/lstm_cell_736/kernel/v/Read/ReadVariableOpBAdam/lstm_736/lstm_cell_736/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_736/lstm_cell_736/bias/v/Read/ReadVariableOp8Adam/lstm_737/lstm_cell_737/kernel/v/Read/ReadVariableOpBAdam/lstm_737/lstm_cell_737/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_737/lstm_cell_737/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3902401
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_245/kerneldense_245/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_735/lstm_cell_735/kernel'lstm_735/lstm_cell_735/recurrent_kernellstm_735/lstm_cell_735/biaslstm_736/lstm_cell_736/kernel'lstm_736/lstm_cell_736/recurrent_kernellstm_736/lstm_cell_736/biaslstm_737/lstm_cell_737/kernel'lstm_737/lstm_cell_737/recurrent_kernellstm_737/lstm_cell_737/biastotalcountAdam/dense_245/kernel/mAdam/dense_245/bias/m$Adam/lstm_735/lstm_cell_735/kernel/m.Adam/lstm_735/lstm_cell_735/recurrent_kernel/m"Adam/lstm_735/lstm_cell_735/bias/m$Adam/lstm_736/lstm_cell_736/kernel/m.Adam/lstm_736/lstm_cell_736/recurrent_kernel/m"Adam/lstm_736/lstm_cell_736/bias/m$Adam/lstm_737/lstm_cell_737/kernel/m.Adam/lstm_737/lstm_cell_737/recurrent_kernel/m"Adam/lstm_737/lstm_cell_737/bias/mAdam/dense_245/kernel/vAdam/dense_245/bias/v$Adam/lstm_735/lstm_cell_735/kernel/v.Adam/lstm_735/lstm_cell_735/recurrent_kernel/v"Adam/lstm_735/lstm_cell_735/bias/v$Adam/lstm_736/lstm_cell_736/kernel/v.Adam/lstm_736/lstm_cell_736/recurrent_kernel/v"Adam/lstm_736/lstm_cell_736/bias/v$Adam/lstm_737/lstm_cell_737/kernel/v.Adam/lstm_737/lstm_cell_737/recurrent_kernel/v"Adam/lstm_737/lstm_cell_737/bias/v*4
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
#__inference__traced_restore_3902531??+
?
?
*__inference_lstm_735_layer_call_fn_3900130

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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898128s
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
?
/__inference_lstm_cell_643_layer_call_fn_3902096

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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897492o
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897492

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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897842

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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902258

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
while_cond_3900485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900485___redundant_placeholder05
1while_while_cond_3900485___redundant_placeholder15
1while_while_cond_3900485___redundant_placeholder25
1while_while_cond_3900485___redundant_placeholder3
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
while_body_3897710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_644_3897734_0:2(/
while_lstm_cell_644_3897736_0:
(+
while_lstm_cell_644_3897738_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_644_3897734:2(-
while_lstm_cell_644_3897736:
()
while_lstm_cell_644_3897738:(??+while/lstm_cell_644/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_644/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_644_3897734_0while_lstm_cell_644_3897736_0while_lstm_cell_644_3897738_0*
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897696?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_644/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_644/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_644/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_644_3897734while_lstm_cell_644_3897734_0"<
while_lstm_cell_644_3897736while_lstm_cell_644_3897736_0"<
while_lstm_cell_644_3897738while_lstm_cell_644_3897738_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_644/StatefulPartitionedCall+while/lstm_cell_644/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3897010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_642_3897034_0:	?0
while_lstm_cell_642_3897036_0:	d?,
while_lstm_cell_642_3897038_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_642_3897034:	?.
while_lstm_cell_642_3897036:	d?*
while_lstm_cell_642_3897038:	???+while/lstm_cell_642/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_642/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_642_3897034_0while_lstm_cell_642_3897036_0while_lstm_cell_642_3897038_0*
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3896996?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_642/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_642/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_642/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_642/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_642_3897034while_lstm_cell_642_3897034_0"<
while_lstm_cell_642_3897036while_lstm_cell_642_3897036_0"<
while_lstm_cell_642_3897038while_lstm_cell_642_3897038_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_642/StatefulPartitionedCall+while/lstm_cell_642/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_3902531
file_prefix3
!assignvariableop_dense_245_kernel:
/
!assignvariableop_1_dense_245_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_735_lstm_cell_735_kernel:	?M
:assignvariableop_8_lstm_735_lstm_cell_735_recurrent_kernel:	d?=
.assignvariableop_9_lstm_735_lstm_cell_735_bias:	?D
1assignvariableop_10_lstm_736_lstm_cell_736_kernel:	d?N
;assignvariableop_11_lstm_736_lstm_cell_736_recurrent_kernel:	2?>
/assignvariableop_12_lstm_736_lstm_cell_736_bias:	?C
1assignvariableop_13_lstm_737_lstm_cell_737_kernel:2(M
;assignvariableop_14_lstm_737_lstm_cell_737_recurrent_kernel:
(=
/assignvariableop_15_lstm_737_lstm_cell_737_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_245_kernel_m:
7
)assignvariableop_19_adam_dense_245_bias_m:K
8assignvariableop_20_adam_lstm_735_lstm_cell_735_kernel_m:	?U
Bassignvariableop_21_adam_lstm_735_lstm_cell_735_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_735_lstm_cell_735_bias_m:	?K
8assignvariableop_23_adam_lstm_736_lstm_cell_736_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_736_lstm_cell_736_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_736_lstm_cell_736_bias_m:	?J
8assignvariableop_26_adam_lstm_737_lstm_cell_737_kernel_m:2(T
Bassignvariableop_27_adam_lstm_737_lstm_cell_737_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_737_lstm_cell_737_bias_m:(=
+assignvariableop_29_adam_dense_245_kernel_v:
7
)assignvariableop_30_adam_dense_245_bias_v:K
8assignvariableop_31_adam_lstm_735_lstm_cell_735_kernel_v:	?U
Bassignvariableop_32_adam_lstm_735_lstm_cell_735_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_735_lstm_cell_735_bias_v:	?K
8assignvariableop_34_adam_lstm_736_lstm_cell_736_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_736_lstm_cell_736_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_736_lstm_cell_736_bias_v:	?J
8assignvariableop_37_adam_lstm_737_lstm_cell_737_kernel_v:2(T
Bassignvariableop_38_adam_lstm_737_lstm_cell_737_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_737_lstm_cell_737_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_245_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_245_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_735_lstm_cell_735_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_735_lstm_cell_735_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_735_lstm_cell_735_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_736_lstm_cell_736_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_736_lstm_cell_736_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_736_lstm_cell_736_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_737_lstm_cell_737_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_737_lstm_cell_737_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_737_lstm_cell_737_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_245_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_245_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_735_lstm_cell_735_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_735_lstm_cell_735_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_735_lstm_cell_735_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_736_lstm_cell_736_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_736_lstm_cell_736_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_736_lstm_cell_736_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_737_lstm_cell_737_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_737_lstm_cell_737_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_737_lstm_cell_737_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_245_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_245_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_735_lstm_cell_735_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_735_lstm_cell_735_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_735_lstm_cell_735_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_736_lstm_cell_736_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_736_lstm_cell_736_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_736_lstm_cell_736_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_737_lstm_cell_737_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_737_lstm_cell_737_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_737_lstm_cell_737_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_3898560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902160

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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901329

inputs?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3901245*
condR
while_cond_3901244*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901659
inputs_0>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3901575*
condR
while_cond_3901574*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901802

inputs>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3901718*
condR
while_cond_3901717*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3900199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900199___redundant_placeholder05
1while_while_cond_3900199___redundant_placeholder15
1while_while_cond_3900199___redundant_placeholder25
1while_while_cond_3900199___redundant_placeholder3
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
while_body_3898725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_736_while_body_3899441.
*lstm_736_while_lstm_736_while_loop_counter4
0lstm_736_while_lstm_736_while_maximum_iterations
lstm_736_while_placeholder 
lstm_736_while_placeholder_1 
lstm_736_while_placeholder_2 
lstm_736_while_placeholder_3-
)lstm_736_while_lstm_736_strided_slice_1_0i
elstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0:	d?R
?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?M
>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
lstm_736_while_identity
lstm_736_while_identity_1
lstm_736_while_identity_2
lstm_736_while_identity_3
lstm_736_while_identity_4
lstm_736_while_identity_5+
'lstm_736_while_lstm_736_strided_slice_1g
clstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensorN
;lstm_736_while_lstm_cell_643_matmul_readvariableop_resource:	d?P
=lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource:	2?K
<lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource:	???3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp?2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp?4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp?
@lstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_736/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0lstm_736_while_placeholderIlstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_736/while/lstm_cell_643/MatMulMatMul9lstm_736/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_736/while/lstm_cell_643/MatMul_1MatMullstm_736_while_placeholder_2<lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_736/while/lstm_cell_643/addAddV2-lstm_736/while/lstm_cell_643/MatMul:product:0/lstm_736/while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_736/while/lstm_cell_643/BiasAddBiasAdd$lstm_736/while/lstm_cell_643/add:z:0;lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_736/while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_736/while/lstm_cell_643/splitSplit5lstm_736/while/lstm_cell_643/split/split_dim:output:0-lstm_736/while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_736/while/lstm_cell_643/SigmoidSigmoid+lstm_736/while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_736/while/lstm_cell_643/Sigmoid_1Sigmoid+lstm_736/while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_736/while/lstm_cell_643/mulMul*lstm_736/while/lstm_cell_643/Sigmoid_1:y:0lstm_736_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_736/while/lstm_cell_643/ReluRelu+lstm_736/while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/mul_1Mul(lstm_736/while/lstm_cell_643/Sigmoid:y:0/lstm_736/while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/add_1AddV2$lstm_736/while/lstm_cell_643/mul:z:0&lstm_736/while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_736/while/lstm_cell_643/Sigmoid_2Sigmoid+lstm_736/while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_736/while/lstm_cell_643/Relu_1Relu&lstm_736/while/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/mul_2Mul*lstm_736/while/lstm_cell_643/Sigmoid_2:y:01lstm_736/while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_736/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_736_while_placeholder_1lstm_736_while_placeholder&lstm_736/while/lstm_cell_643/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_736/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_736/while/addAddV2lstm_736_while_placeholderlstm_736/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_736/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_736/while/add_1AddV2*lstm_736_while_lstm_736_while_loop_counterlstm_736/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_736/while/IdentityIdentitylstm_736/while/add_1:z:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_1Identity0lstm_736_while_lstm_736_while_maximum_iterations^lstm_736/while/NoOp*
T0*
_output_shapes
: t
lstm_736/while/Identity_2Identitylstm_736/while/add:z:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_3IdentityClstm_736/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_4Identity&lstm_736/while/lstm_cell_643/mul_2:z:0^lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_736/while/Identity_5Identity&lstm_736/while/lstm_cell_643/add_1:z:0^lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_736/while/NoOpNoOp4^lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp3^lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp5^lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_736_while_identity lstm_736/while/Identity:output:0"?
lstm_736_while_identity_1"lstm_736/while/Identity_1:output:0"?
lstm_736_while_identity_2"lstm_736/while/Identity_2:output:0"?
lstm_736_while_identity_3"lstm_736/while/Identity_3:output:0"?
lstm_736_while_identity_4"lstm_736/while/Identity_4:output:0"?
lstm_736_while_identity_5"lstm_736/while/Identity_5:output:0"T
'lstm_736_while_lstm_736_strided_slice_1)lstm_736_while_lstm_736_strided_slice_1_0"~
<lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0"?
=lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0"|
;lstm_736_while_lstm_cell_643_matmul_readvariableop_resource=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0"?
clstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensorelstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp2h
2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp2l
4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_735_while_body_3899729.
*lstm_735_while_lstm_735_while_loop_counter4
0lstm_735_while_lstm_735_while_maximum_iterations
lstm_735_while_placeholder 
lstm_735_while_placeholder_1 
lstm_735_while_placeholder_2 
lstm_735_while_placeholder_3-
)lstm_735_while_lstm_735_strided_slice_1_0i
elstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0:	?R
?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?M
>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
lstm_735_while_identity
lstm_735_while_identity_1
lstm_735_while_identity_2
lstm_735_while_identity_3
lstm_735_while_identity_4
lstm_735_while_identity_5+
'lstm_735_while_lstm_735_strided_slice_1g
clstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensorN
;lstm_735_while_lstm_cell_642_matmul_readvariableop_resource:	?P
=lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource:	d?K
<lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource:	???3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp?2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp?4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp?
@lstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_735/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0lstm_735_while_placeholderIlstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_735/while/lstm_cell_642/MatMulMatMul9lstm_735/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_735/while/lstm_cell_642/MatMul_1MatMullstm_735_while_placeholder_2<lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_735/while/lstm_cell_642/addAddV2-lstm_735/while/lstm_cell_642/MatMul:product:0/lstm_735/while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_735/while/lstm_cell_642/BiasAddBiasAdd$lstm_735/while/lstm_cell_642/add:z:0;lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_735/while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_735/while/lstm_cell_642/splitSplit5lstm_735/while/lstm_cell_642/split/split_dim:output:0-lstm_735/while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_735/while/lstm_cell_642/SigmoidSigmoid+lstm_735/while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_735/while/lstm_cell_642/Sigmoid_1Sigmoid+lstm_735/while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_735/while/lstm_cell_642/mulMul*lstm_735/while/lstm_cell_642/Sigmoid_1:y:0lstm_735_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_735/while/lstm_cell_642/ReluRelu+lstm_735/while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/mul_1Mul(lstm_735/while/lstm_cell_642/Sigmoid:y:0/lstm_735/while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/add_1AddV2$lstm_735/while/lstm_cell_642/mul:z:0&lstm_735/while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_735/while/lstm_cell_642/Sigmoid_2Sigmoid+lstm_735/while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_735/while/lstm_cell_642/Relu_1Relu&lstm_735/while/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/mul_2Mul*lstm_735/while/lstm_cell_642/Sigmoid_2:y:01lstm_735/while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_735/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_735_while_placeholder_1lstm_735_while_placeholder&lstm_735/while/lstm_cell_642/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_735/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_735/while/addAddV2lstm_735_while_placeholderlstm_735/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_735/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_735/while/add_1AddV2*lstm_735_while_lstm_735_while_loop_counterlstm_735/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_735/while/IdentityIdentitylstm_735/while/add_1:z:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_1Identity0lstm_735_while_lstm_735_while_maximum_iterations^lstm_735/while/NoOp*
T0*
_output_shapes
: t
lstm_735/while/Identity_2Identitylstm_735/while/add:z:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_3IdentityClstm_735/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_4Identity&lstm_735/while/lstm_cell_642/mul_2:z:0^lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_735/while/Identity_5Identity&lstm_735/while/lstm_cell_642/add_1:z:0^lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_735/while/NoOpNoOp4^lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp3^lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp5^lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_735_while_identity lstm_735/while/Identity:output:0"?
lstm_735_while_identity_1"lstm_735/while/Identity_1:output:0"?
lstm_735_while_identity_2"lstm_735/while/Identity_2:output:0"?
lstm_735_while_identity_3"lstm_735/while/Identity_3:output:0"?
lstm_735_while_identity_4"lstm_735/while/Identity_4:output:0"?
lstm_735_while_identity_5"lstm_735/while/Identity_5:output:0"T
'lstm_735_while_lstm_735_strided_slice_1)lstm_735_while_lstm_735_strided_slice_1_0"~
<lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0"?
=lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0"|
;lstm_735_while_lstm_cell_642_matmul_readvariableop_resource=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0"?
clstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensorelstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp2h
2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp2l
4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_736_while_cond_3899867.
*lstm_736_while_lstm_736_while_loop_counter4
0lstm_736_while_lstm_736_while_maximum_iterations
lstm_736_while_placeholder 
lstm_736_while_placeholder_1 
lstm_736_while_placeholder_2 
lstm_736_while_placeholder_30
,lstm_736_while_less_lstm_736_strided_slice_1G
Clstm_736_while_lstm_736_while_cond_3899867___redundant_placeholder0G
Clstm_736_while_lstm_736_while_cond_3899867___redundant_placeholder1G
Clstm_736_while_lstm_736_while_cond_3899867___redundant_placeholder2G
Clstm_736_while_lstm_736_while_cond_3899867___redundant_placeholder3
lstm_736_while_identity
?
lstm_736/while/LessLesslstm_736_while_placeholder,lstm_736_while_less_lstm_736_strided_slice_1*
T0*
_output_shapes
: ]
lstm_736/while/IdentityIdentitylstm_736/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_736_while_identity lstm_736/while/Identity:output:0*(
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
lstm_736_while_cond_3899440.
*lstm_736_while_lstm_736_while_loop_counter4
0lstm_736_while_lstm_736_while_maximum_iterations
lstm_736_while_placeholder 
lstm_736_while_placeholder_1 
lstm_736_while_placeholder_2 
lstm_736_while_placeholder_30
,lstm_736_while_less_lstm_736_strided_slice_1G
Clstm_736_while_lstm_736_while_cond_3899440___redundant_placeholder0G
Clstm_736_while_lstm_736_while_cond_3899440___redundant_placeholder1G
Clstm_736_while_lstm_736_while_cond_3899440___redundant_placeholder2G
Clstm_736_while_lstm_736_while_cond_3899440___redundant_placeholder3
lstm_736_while_identity
?
lstm_736/while/LessLesslstm_736_while_placeholder,lstm_736_while_less_lstm_736_strided_slice_1*
T0*
_output_shapes
: ]
lstm_736/while/IdentityIdentitylstm_736/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_736_while_identity lstm_736/while/Identity:output:0*(
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898428

inputs>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3898344*
condR
while_cond_3898343*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3898559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898559___redundant_placeholder05
1while_while_cond_3898559___redundant_placeholder15
1while_while_cond_3898559___redundant_placeholder25
1while_while_cond_3898559___redundant_placeholder3
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
while_body_3897360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_643_3897384_0:	d?0
while_lstm_cell_643_3897386_0:	2?,
while_lstm_cell_643_3897388_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_643_3897384:	d?.
while_lstm_cell_643_3897386:	2?*
while_lstm_cell_643_3897388:	???+while/lstm_cell_643/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_643/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_643_3897384_0while_lstm_cell_643_3897386_0while_lstm_cell_643_3897388_0*
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897346?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_643/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_643/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_643/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_643_3897384while_lstm_cell_643_3897384_0"<
while_lstm_cell_643_3897386while_lstm_cell_643_3897386_0"<
while_lstm_cell_643_3897388while_lstm_cell_643_3897388_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_643/StatefulPartitionedCall+while/lstm_cell_643/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898128

inputs?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3898044*
condR
while_cond_3898043*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901516
inputs_0>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3901432*
condR
while_cond_3901431*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899042

inputs#
lstm_735_3899015:	?#
lstm_735_3899017:	d?
lstm_735_3899019:	?#
lstm_736_3899022:	d?#
lstm_736_3899024:	2?
lstm_736_3899026:	?"
lstm_737_3899029:2("
lstm_737_3899031:
(
lstm_737_3899033:(#
dense_245_3899036:

dense_245_3899038:
identity??!dense_245/StatefulPartitionedCall? lstm_735/StatefulPartitionedCall? lstm_736/StatefulPartitionedCall? lstm_737/StatefulPartitionedCall?
 lstm_735/StatefulPartitionedCallStatefulPartitionedCallinputslstm_735_3899015lstm_735_3899017lstm_735_3899019*
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898974?
 lstm_736/StatefulPartitionedCallStatefulPartitionedCall)lstm_735/StatefulPartitionedCall:output:0lstm_736_3899022lstm_736_3899024lstm_736_3899026*
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898809?
 lstm_737/StatefulPartitionedCallStatefulPartitionedCall)lstm_736/StatefulPartitionedCall:output:0lstm_737_3899029lstm_737_3899031lstm_737_3899033*
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898644?
!dense_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_737/StatefulPartitionedCall:output:0dense_245_3899036dense_245_3899038*
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446y
IdentityIdentity*dense_245/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_245/StatefulPartitionedCall!^lstm_735/StatefulPartitionedCall!^lstm_736/StatefulPartitionedCall!^lstm_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall2D
 lstm_735/StatefulPartitionedCall lstm_735/StatefulPartitionedCall2D
 lstm_736/StatefulPartitionedCall lstm_736/StatefulPartitionedCall2D
 lstm_737/StatefulPartitionedCall lstm_737/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3901431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901431___redundant_placeholder05
1while_while_cond_3901431___redundant_placeholder15
1while_while_cond_3901431___redundant_placeholder25
1while_while_cond_3901431___redundant_placeholder3
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
while_body_3901861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_735_while_body_3899302.
*lstm_735_while_lstm_735_while_loop_counter4
0lstm_735_while_lstm_735_while_maximum_iterations
lstm_735_while_placeholder 
lstm_735_while_placeholder_1 
lstm_735_while_placeholder_2 
lstm_735_while_placeholder_3-
)lstm_735_while_lstm_735_strided_slice_1_0i
elstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0:	?R
?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?M
>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
lstm_735_while_identity
lstm_735_while_identity_1
lstm_735_while_identity_2
lstm_735_while_identity_3
lstm_735_while_identity_4
lstm_735_while_identity_5+
'lstm_735_while_lstm_735_strided_slice_1g
clstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensorN
;lstm_735_while_lstm_cell_642_matmul_readvariableop_resource:	?P
=lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource:	d?K
<lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource:	???3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp?2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp?4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp?
@lstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_735/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0lstm_735_while_placeholderIlstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_735/while/lstm_cell_642/MatMulMatMul9lstm_735/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_735/while/lstm_cell_642/MatMul_1MatMullstm_735_while_placeholder_2<lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_735/while/lstm_cell_642/addAddV2-lstm_735/while/lstm_cell_642/MatMul:product:0/lstm_735/while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_735/while/lstm_cell_642/BiasAddBiasAdd$lstm_735/while/lstm_cell_642/add:z:0;lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_735/while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_735/while/lstm_cell_642/splitSplit5lstm_735/while/lstm_cell_642/split/split_dim:output:0-lstm_735/while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_735/while/lstm_cell_642/SigmoidSigmoid+lstm_735/while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_735/while/lstm_cell_642/Sigmoid_1Sigmoid+lstm_735/while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_735/while/lstm_cell_642/mulMul*lstm_735/while/lstm_cell_642/Sigmoid_1:y:0lstm_735_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_735/while/lstm_cell_642/ReluRelu+lstm_735/while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/mul_1Mul(lstm_735/while/lstm_cell_642/Sigmoid:y:0/lstm_735/while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/add_1AddV2$lstm_735/while/lstm_cell_642/mul:z:0&lstm_735/while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_735/while/lstm_cell_642/Sigmoid_2Sigmoid+lstm_735/while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_735/while/lstm_cell_642/Relu_1Relu&lstm_735/while/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_735/while/lstm_cell_642/mul_2Mul*lstm_735/while/lstm_cell_642/Sigmoid_2:y:01lstm_735/while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_735/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_735_while_placeholder_1lstm_735_while_placeholder&lstm_735/while/lstm_cell_642/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_735/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_735/while/addAddV2lstm_735_while_placeholderlstm_735/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_735/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_735/while/add_1AddV2*lstm_735_while_lstm_735_while_loop_counterlstm_735/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_735/while/IdentityIdentitylstm_735/while/add_1:z:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_1Identity0lstm_735_while_lstm_735_while_maximum_iterations^lstm_735/while/NoOp*
T0*
_output_shapes
: t
lstm_735/while/Identity_2Identitylstm_735/while/add:z:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_3IdentityClstm_735/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_735/while/NoOp*
T0*
_output_shapes
: ?
lstm_735/while/Identity_4Identity&lstm_735/while/lstm_cell_642/mul_2:z:0^lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_735/while/Identity_5Identity&lstm_735/while/lstm_cell_642/add_1:z:0^lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_735/while/NoOpNoOp4^lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp3^lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp5^lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_735_while_identity lstm_735/while/Identity:output:0"?
lstm_735_while_identity_1"lstm_735/while/Identity_1:output:0"?
lstm_735_while_identity_2"lstm_735/while/Identity_2:output:0"?
lstm_735_while_identity_3"lstm_735/while/Identity_3:output:0"?
lstm_735_while_identity_4"lstm_735/while/Identity_4:output:0"?
lstm_735_while_identity_5"lstm_735/while/Identity_5:output:0"T
'lstm_735_while_lstm_735_strided_slice_1)lstm_735_while_lstm_735_strided_slice_1_0"~
<lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource>lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0"?
=lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource?lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0"|
;lstm_735_while_lstm_cell_642_matmul_readvariableop_resource=lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0"?
clstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensorelstm_735_while_tensorarrayv2read_tensorlistgetitem_lstm_735_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp3lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp2h
2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp2lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp2l
4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp4lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3897359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897359___redundant_placeholder05
1while_while_cond_3897359___redundant_placeholder15
1while_while_cond_3897359___redundant_placeholder25
1while_while_cond_3897359___redundant_placeholder3
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3898453

inputs#
lstm_735_3898129:	?#
lstm_735_3898131:	d?
lstm_735_3898133:	?#
lstm_736_3898279:	d?#
lstm_736_3898281:	2?
lstm_736_3898283:	?"
lstm_737_3898429:2("
lstm_737_3898431:
(
lstm_737_3898433:(#
dense_245_3898447:

dense_245_3898449:
identity??!dense_245/StatefulPartitionedCall? lstm_735/StatefulPartitionedCall? lstm_736/StatefulPartitionedCall? lstm_737/StatefulPartitionedCall?
 lstm_735/StatefulPartitionedCallStatefulPartitionedCallinputslstm_735_3898129lstm_735_3898131lstm_735_3898133*
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898128?
 lstm_736/StatefulPartitionedCallStatefulPartitionedCall)lstm_735/StatefulPartitionedCall:output:0lstm_736_3898279lstm_736_3898281lstm_736_3898283*
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898278?
 lstm_737/StatefulPartitionedCallStatefulPartitionedCall)lstm_736/StatefulPartitionedCall:output:0lstm_737_3898429lstm_737_3898431lstm_737_3898433*
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898428?
!dense_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_737/StatefulPartitionedCall:output:0dense_245_3898447dense_245_3898449*
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446y
IdentityIdentity*dense_245/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_245/StatefulPartitionedCall!^lstm_735/StatefulPartitionedCall!^lstm_736/StatefulPartitionedCall!^lstm_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall2D
 lstm_735/StatefulPartitionedCall lstm_735/StatefulPartitionedCall2D
 lstm_736/StatefulPartitionedCall lstm_736/StatefulPartitionedCall2D
 lstm_737/StatefulPartitionedCall lstm_737/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901186

inputs?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3901102*
condR
while_cond_3901101*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902226

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
while_cond_3897900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897900___redundant_placeholder05
1while_while_cond_3897900___redundant_placeholder15
1while_while_cond_3897900___redundant_placeholder25
1while_while_cond_3897900___redundant_placeholder3
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
lstm_735_while_cond_3899301.
*lstm_735_while_lstm_735_while_loop_counter4
0lstm_735_while_lstm_735_while_maximum_iterations
lstm_735_while_placeholder 
lstm_735_while_placeholder_1 
lstm_735_while_placeholder_2 
lstm_735_while_placeholder_30
,lstm_735_while_less_lstm_735_strided_slice_1G
Clstm_735_while_lstm_735_while_cond_3899301___redundant_placeholder0G
Clstm_735_while_lstm_735_while_cond_3899301___redundant_placeholder1G
Clstm_735_while_lstm_735_while_cond_3899301___redundant_placeholder2G
Clstm_735_while_lstm_735_while_cond_3899301___redundant_placeholder3
lstm_735_while_identity
?
lstm_735/while/LessLesslstm_735_while_placeholder,lstm_735_while_less_lstm_735_strided_slice_1*
T0*
_output_shapes
: ]
lstm_735/while/IdentityIdentitylstm_735/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_735_while_identity lstm_735/while/Identity:output:0*(
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3897079

inputs(
lstm_cell_642_3896997:	?(
lstm_cell_642_3896999:	d?$
lstm_cell_642_3897001:	?
identity??%lstm_cell_642/StatefulPartitionedCall?while;
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
%lstm_cell_642/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_642_3896997lstm_cell_642_3896999lstm_cell_642_3897001*
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3896996n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_642_3896997lstm_cell_642_3896999lstm_cell_642_3897001*
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
while_body_3897010*
condR
while_cond_3897009*K
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
NoOpNoOp&^lstm_cell_642/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_642/StatefulPartitionedCall%lstm_cell_642/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901945

inputs>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3901861*
condR
while_cond_3901860*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_644_layer_call_fn_3902194

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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897842o
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446

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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3897970

inputs'
lstm_cell_644_3897888:2('
lstm_cell_644_3897890:
(#
lstm_cell_644_3897892:(
identity??%lstm_cell_644/StatefulPartitionedCall?while;
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
%lstm_cell_644/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_644_3897888lstm_cell_644_3897890lstm_cell_644_3897892*
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897842n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_644_3897888lstm_cell_644_3897890lstm_cell_644_3897892*
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
while_body_3897901*
condR
while_cond_3897900*K
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
NoOpNoOp&^lstm_cell_644/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_644/StatefulPartitionedCall%lstm_cell_644/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_643_layer_call_fn_3902079

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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897346o
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
while_body_3900816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_642_layer_call_fn_3901998

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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3897142o
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
?J
?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898644

inputs>
,lstm_cell_644_matmul_readvariableop_resource:2(@
.lstm_cell_644_matmul_1_readvariableop_resource:
(;
-lstm_cell_644_biasadd_readvariableop_resource:(
identity??$lstm_cell_644/BiasAdd/ReadVariableOp?#lstm_cell_644/MatMul/ReadVariableOp?%lstm_cell_644/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_644/MatMul/ReadVariableOpReadVariableOp,lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_644/MatMulMatMulstrided_slice_2:output:0+lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_644/MatMul_1MatMulzeros:output:0-lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_644/addAddV2lstm_cell_644/MatMul:product:0 lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_644/BiasAddBiasAddlstm_cell_644/add:z:0,lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_644/splitSplit&lstm_cell_644/split/split_dim:output:0lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_644/SigmoidSigmoidlstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_1Sigmoidlstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_644/mulMullstm_cell_644/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_644/ReluRelulstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_1Mullstm_cell_644/Sigmoid:y:0 lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_644/add_1AddV2lstm_cell_644/mul:z:0lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_644/Sigmoid_2Sigmoidlstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_644/Relu_1Relulstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_644/mul_2Mullstm_cell_644/Sigmoid_2:y:0"lstm_cell_644/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_644_matmul_readvariableop_resource.lstm_cell_644_matmul_1_readvariableop_resource-lstm_cell_644_biasadd_readvariableop_resource*
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
while_body_3898560*
condR
while_cond_3898559*K
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
NoOpNoOp%^lstm_cell_644/BiasAdd/ReadVariableOp$^lstm_cell_644/MatMul/ReadVariableOp&^lstm_cell_644/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_644/BiasAdd/ReadVariableOp$lstm_cell_644/BiasAdd/ReadVariableOp2J
#lstm_cell_644/MatMul/ReadVariableOp#lstm_cell_644/MatMul/ReadVariableOp2N
%lstm_cell_644/MatMul_1/ReadVariableOp%lstm_cell_644/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3898889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898889___redundant_placeholder05
1while_while_cond_3898889___redundant_placeholder15
1while_while_cond_3898889___redundant_placeholder25
1while_while_cond_3898889___redundant_placeholder3
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3897620

inputs(
lstm_cell_643_3897538:	d?(
lstm_cell_643_3897540:	2?$
lstm_cell_643_3897542:	?
identity??%lstm_cell_643/StatefulPartitionedCall?while;
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
%lstm_cell_643/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_643_3897538lstm_cell_643_3897540lstm_cell_643_3897542*
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897492n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_643_3897538lstm_cell_643_3897540lstm_cell_643_3897542*
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
while_body_3897551*
condR
while_cond_3897550*K
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
NoOpNoOp&^lstm_cell_643/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_643/StatefulPartitionedCall%lstm_cell_643/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3900629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3900343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_737_layer_call_fn_3901373

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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898644o
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
while_body_3897201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_642_3897225_0:	?0
while_lstm_cell_642_3897227_0:	d?,
while_lstm_cell_642_3897229_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_642_3897225:	?.
while_lstm_cell_642_3897227:	d?*
while_lstm_cell_642_3897229:	???+while/lstm_cell_642/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_642/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_642_3897225_0while_lstm_cell_642_3897227_0while_lstm_cell_642_3897229_0*
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3897142?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_642/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_642/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_642/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_642/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_642_3897225while_lstm_cell_642_3897225_0"<
while_lstm_cell_642_3897227while_lstm_cell_642_3897227_0"<
while_lstm_cell_642_3897229while_lstm_cell_642_3897229_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_642/StatefulPartitionedCall+while/lstm_cell_642/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898278

inputs?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3898194*
condR
while_cond_3898193*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3897550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897550___redundant_placeholder05
1while_while_cond_3897550___redundant_placeholder15
1while_while_cond_3897550___redundant_placeholder25
1while_while_cond_3897550___redundant_placeholder3
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900570

inputs?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3900486*
condR
while_cond_3900485*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902030

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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897696

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
?T
?
*sequential_245_lstm_736_while_body_3896700L
Hsequential_245_lstm_736_while_sequential_245_lstm_736_while_loop_counterR
Nsequential_245_lstm_736_while_sequential_245_lstm_736_while_maximum_iterations-
)sequential_245_lstm_736_while_placeholder/
+sequential_245_lstm_736_while_placeholder_1/
+sequential_245_lstm_736_while_placeholder_2/
+sequential_245_lstm_736_while_placeholder_3K
Gsequential_245_lstm_736_while_sequential_245_lstm_736_strided_slice_1_0?
?sequential_245_lstm_736_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_736_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_245_lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0:	d?a
Nsequential_245_lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?\
Msequential_245_lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0:	?*
&sequential_245_lstm_736_while_identity,
(sequential_245_lstm_736_while_identity_1,
(sequential_245_lstm_736_while_identity_2,
(sequential_245_lstm_736_while_identity_3,
(sequential_245_lstm_736_while_identity_4,
(sequential_245_lstm_736_while_identity_5I
Esequential_245_lstm_736_while_sequential_245_lstm_736_strided_slice_1?
?sequential_245_lstm_736_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_736_tensorarrayunstack_tensorlistfromtensor]
Jsequential_245_lstm_736_while_lstm_cell_643_matmul_readvariableop_resource:	d?_
Lsequential_245_lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource:	2?Z
Ksequential_245_lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource:	???Bsequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp?Asequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp?Csequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp?
Osequential_245/lstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_245/lstm_736/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_245_lstm_736_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_736_tensorarrayunstack_tensorlistfromtensor_0)sequential_245_lstm_736_while_placeholderXsequential_245/lstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOpLsequential_245_lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_245/lstm_736/while/lstm_cell_643/MatMulMatMulHsequential_245/lstm_736/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOpNsequential_245_lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_245/lstm_736/while/lstm_cell_643/MatMul_1MatMul+sequential_245_lstm_736_while_placeholder_2Ksequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_245/lstm_736/while/lstm_cell_643/addAddV2<sequential_245/lstm_736/while/lstm_cell_643/MatMul:product:0>sequential_245/lstm_736/while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOpMsequential_245_lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_245/lstm_736/while/lstm_cell_643/BiasAddBiasAdd3sequential_245/lstm_736/while/lstm_cell_643/add:z:0Jsequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_245/lstm_736/while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_245/lstm_736/while/lstm_cell_643/splitSplitDsequential_245/lstm_736/while/lstm_cell_643/split/split_dim:output:0<sequential_245/lstm_736/while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_245/lstm_736/while/lstm_cell_643/SigmoidSigmoid:sequential_245/lstm_736/while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_245/lstm_736/while/lstm_cell_643/Sigmoid_1Sigmoid:sequential_245/lstm_736/while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_245/lstm_736/while/lstm_cell_643/mulMul9sequential_245/lstm_736/while/lstm_cell_643/Sigmoid_1:y:0+sequential_245_lstm_736_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_245/lstm_736/while/lstm_cell_643/ReluRelu:sequential_245/lstm_736/while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_245/lstm_736/while/lstm_cell_643/mul_1Mul7sequential_245/lstm_736/while/lstm_cell_643/Sigmoid:y:0>sequential_245/lstm_736/while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_245/lstm_736/while/lstm_cell_643/add_1AddV23sequential_245/lstm_736/while/lstm_cell_643/mul:z:05sequential_245/lstm_736/while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_245/lstm_736/while/lstm_cell_643/Sigmoid_2Sigmoid:sequential_245/lstm_736/while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_245/lstm_736/while/lstm_cell_643/Relu_1Relu5sequential_245/lstm_736/while/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_245/lstm_736/while/lstm_cell_643/mul_2Mul9sequential_245/lstm_736/while/lstm_cell_643/Sigmoid_2:y:0@sequential_245/lstm_736/while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_245/lstm_736/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_245_lstm_736_while_placeholder_1)sequential_245_lstm_736_while_placeholder5sequential_245/lstm_736/while/lstm_cell_643/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_245/lstm_736/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_245/lstm_736/while/addAddV2)sequential_245_lstm_736_while_placeholder,sequential_245/lstm_736/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_245/lstm_736/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_245/lstm_736/while/add_1AddV2Hsequential_245_lstm_736_while_sequential_245_lstm_736_while_loop_counter.sequential_245/lstm_736/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_245/lstm_736/while/IdentityIdentity'sequential_245/lstm_736/while/add_1:z:0#^sequential_245/lstm_736/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_736/while/Identity_1IdentityNsequential_245_lstm_736_while_sequential_245_lstm_736_while_maximum_iterations#^sequential_245/lstm_736/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_736/while/Identity_2Identity%sequential_245/lstm_736/while/add:z:0#^sequential_245/lstm_736/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_736/while/Identity_3IdentityRsequential_245/lstm_736/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_245/lstm_736/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_736/while/Identity_4Identity5sequential_245/lstm_736/while/lstm_cell_643/mul_2:z:0#^sequential_245/lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_245/lstm_736/while/Identity_5Identity5sequential_245/lstm_736/while/lstm_cell_643/add_1:z:0#^sequential_245/lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_245/lstm_736/while/NoOpNoOpC^sequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOpB^sequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOpD^sequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_245_lstm_736_while_identity/sequential_245/lstm_736/while/Identity:output:0"]
(sequential_245_lstm_736_while_identity_11sequential_245/lstm_736/while/Identity_1:output:0"]
(sequential_245_lstm_736_while_identity_21sequential_245/lstm_736/while/Identity_2:output:0"]
(sequential_245_lstm_736_while_identity_31sequential_245/lstm_736/while/Identity_3:output:0"]
(sequential_245_lstm_736_while_identity_41sequential_245/lstm_736/while/Identity_4:output:0"]
(sequential_245_lstm_736_while_identity_51sequential_245/lstm_736/while/Identity_5:output:0"?
Ksequential_245_lstm_736_while_lstm_cell_643_biasadd_readvariableop_resourceMsequential_245_lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0"?
Lsequential_245_lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resourceNsequential_245_lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0"?
Jsequential_245_lstm_736_while_lstm_cell_643_matmul_readvariableop_resourceLsequential_245_lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0"?
Esequential_245_lstm_736_while_sequential_245_lstm_736_strided_slice_1Gsequential_245_lstm_736_while_sequential_245_lstm_736_strided_slice_1_0"?
?sequential_245_lstm_736_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_736_tensorarrayunstack_tensorlistfromtensor?sequential_245_lstm_736_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_736_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOpBsequential_245/lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp2?
Asequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOpAsequential_245/lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp2?
Csequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOpCsequential_245/lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3897200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897200___redundant_placeholder05
1while_while_cond_3897200___redundant_placeholder15
1while_while_cond_3897200___redundant_placeholder25
1while_while_cond_3897200___redundant_placeholder3
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899154
lstm_735_input#
lstm_735_3899127:	?#
lstm_735_3899129:	d?
lstm_735_3899131:	?#
lstm_736_3899134:	d?#
lstm_736_3899136:	2?
lstm_736_3899138:	?"
lstm_737_3899141:2("
lstm_737_3899143:
(
lstm_737_3899145:(#
dense_245_3899148:

dense_245_3899150:
identity??!dense_245/StatefulPartitionedCall? lstm_735/StatefulPartitionedCall? lstm_736/StatefulPartitionedCall? lstm_737/StatefulPartitionedCall?
 lstm_735/StatefulPartitionedCallStatefulPartitionedCalllstm_735_inputlstm_735_3899127lstm_735_3899129lstm_735_3899131*
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898974?
 lstm_736/StatefulPartitionedCallStatefulPartitionedCall)lstm_735/StatefulPartitionedCall:output:0lstm_736_3899134lstm_736_3899136lstm_736_3899138*
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898809?
 lstm_737/StatefulPartitionedCallStatefulPartitionedCall)lstm_736/StatefulPartitionedCall:output:0lstm_737_3899141lstm_737_3899143lstm_737_3899145*
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898644?
!dense_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_737/StatefulPartitionedCall:output:0dense_245_3899148dense_245_3899150*
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446y
IdentityIdentity*dense_245/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_245/StatefulPartitionedCall!^lstm_735/StatefulPartitionedCall!^lstm_736/StatefulPartitionedCall!^lstm_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall2D
 lstm_735/StatefulPartitionedCall lstm_735/StatefulPartitionedCall2D
 lstm_736/StatefulPartitionedCall lstm_736/StatefulPartitionedCall2D
 lstm_737/StatefulPartitionedCall lstm_737/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_735_input
?8
?
while_body_3900200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3900628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900628___redundant_placeholder05
1while_while_cond_3900628___redundant_placeholder15
1while_while_cond_3900628___redundant_placeholder25
1while_while_cond_3900628___redundant_placeholder3
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
while_body_3897551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_643_3897575_0:	d?0
while_lstm_cell_643_3897577_0:	2?,
while_lstm_cell_643_3897579_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_643_3897575:	d?.
while_lstm_cell_643_3897577:	2?*
while_lstm_cell_643_3897579:	???+while/lstm_cell_643/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_643/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_643_3897575_0while_lstm_cell_643_3897577_0while_lstm_cell_643_3897579_0*
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897492?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_643/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_643/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_643/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_643_3897575while_lstm_cell_643_3897575_0"<
while_lstm_cell_643_3897577while_lstm_cell_643_3897577_0"<
while_lstm_cell_643_3897579while_lstm_cell_643_3897579_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_643/StatefulPartitionedCall+while/lstm_cell_643/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_245_layer_call_fn_3899094
lstm_735_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_735_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899042o
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
_user_specified_namelstm_735_input
?
?
*sequential_245_lstm_735_while_cond_3896560L
Hsequential_245_lstm_735_while_sequential_245_lstm_735_while_loop_counterR
Nsequential_245_lstm_735_while_sequential_245_lstm_735_while_maximum_iterations-
)sequential_245_lstm_735_while_placeholder/
+sequential_245_lstm_735_while_placeholder_1/
+sequential_245_lstm_735_while_placeholder_2/
+sequential_245_lstm_735_while_placeholder_3N
Jsequential_245_lstm_735_while_less_sequential_245_lstm_735_strided_slice_1e
asequential_245_lstm_735_while_sequential_245_lstm_735_while_cond_3896560___redundant_placeholder0e
asequential_245_lstm_735_while_sequential_245_lstm_735_while_cond_3896560___redundant_placeholder1e
asequential_245_lstm_735_while_sequential_245_lstm_735_while_cond_3896560___redundant_placeholder2e
asequential_245_lstm_735_while_sequential_245_lstm_735_while_cond_3896560___redundant_placeholder3*
&sequential_245_lstm_735_while_identity
?
"sequential_245/lstm_735/while/LessLess)sequential_245_lstm_735_while_placeholderJsequential_245_lstm_735_while_less_sequential_245_lstm_735_strided_slice_1*
T0*
_output_shapes
: {
&sequential_245/lstm_735/while/IdentityIdentity&sequential_245/lstm_735/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_245_lstm_735_while_identity/sequential_245/lstm_735/while/Identity:output:0*(
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899670

inputsH
5lstm_735_lstm_cell_642_matmul_readvariableop_resource:	?J
7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource:	d?E
6lstm_735_lstm_cell_642_biasadd_readvariableop_resource:	?H
5lstm_736_lstm_cell_643_matmul_readvariableop_resource:	d?J
7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource:	2?E
6lstm_736_lstm_cell_643_biasadd_readvariableop_resource:	?G
5lstm_737_lstm_cell_644_matmul_readvariableop_resource:2(I
7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource:
(D
6lstm_737_lstm_cell_644_biasadd_readvariableop_resource:(:
(dense_245_matmul_readvariableop_resource:
7
)dense_245_biasadd_readvariableop_resource:
identity?? dense_245/BiasAdd/ReadVariableOp?dense_245/MatMul/ReadVariableOp?-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp?,lstm_735/lstm_cell_642/MatMul/ReadVariableOp?.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp?lstm_735/while?-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp?,lstm_736/lstm_cell_643/MatMul/ReadVariableOp?.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp?lstm_736/while?-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp?,lstm_737/lstm_cell_644/MatMul/ReadVariableOp?.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp?lstm_737/whileD
lstm_735/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_735/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_735/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_735/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_sliceStridedSlicelstm_735/Shape:output:0%lstm_735/strided_slice/stack:output:0'lstm_735/strided_slice/stack_1:output:0'lstm_735/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_735/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_735/zeros/packedPacklstm_735/strided_slice:output:0 lstm_735/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_735/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_735/zerosFilllstm_735/zeros/packed:output:0lstm_735/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_735/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_735/zeros_1/packedPacklstm_735/strided_slice:output:0"lstm_735/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_735/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_735/zeros_1Fill lstm_735/zeros_1/packed:output:0lstm_735/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_735/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_735/transpose	Transposeinputs lstm_735/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_735/Shape_1Shapelstm_735/transpose:y:0*
T0*
_output_shapes
:h
lstm_735/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_735/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_1StridedSlicelstm_735/Shape_1:output:0'lstm_735/strided_slice_1/stack:output:0)lstm_735/strided_slice_1/stack_1:output:0)lstm_735/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_735/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_735/TensorArrayV2TensorListReserve-lstm_735/TensorArrayV2/element_shape:output:0!lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_735/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_735/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_735/transpose:y:0Glstm_735/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_735/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_735/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_2StridedSlicelstm_735/transpose:y:0'lstm_735/strided_slice_2/stack:output:0)lstm_735/strided_slice_2/stack_1:output:0)lstm_735/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_735/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp5lstm_735_lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_735/lstm_cell_642/MatMulMatMul!lstm_735/strided_slice_2:output:04lstm_735/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_735/lstm_cell_642/MatMul_1MatMullstm_735/zeros:output:06lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_735/lstm_cell_642/addAddV2'lstm_735/lstm_cell_642/MatMul:product:0)lstm_735/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp6lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_735/lstm_cell_642/BiasAddBiasAddlstm_735/lstm_cell_642/add:z:05lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_735/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_735/lstm_cell_642/splitSplit/lstm_735/lstm_cell_642/split/split_dim:output:0'lstm_735/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_735/lstm_cell_642/SigmoidSigmoid%lstm_735/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_735/lstm_cell_642/Sigmoid_1Sigmoid%lstm_735/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mulMul$lstm_735/lstm_cell_642/Sigmoid_1:y:0lstm_735/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_735/lstm_cell_642/ReluRelu%lstm_735/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mul_1Mul"lstm_735/lstm_cell_642/Sigmoid:y:0)lstm_735/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/add_1AddV2lstm_735/lstm_cell_642/mul:z:0 lstm_735/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_735/lstm_cell_642/Sigmoid_2Sigmoid%lstm_735/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_735/lstm_cell_642/Relu_1Relu lstm_735/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mul_2Mul$lstm_735/lstm_cell_642/Sigmoid_2:y:0+lstm_735/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_735/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_735/TensorArrayV2_1TensorListReserve/lstm_735/TensorArrayV2_1/element_shape:output:0!lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_735/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_735/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_735/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_735/whileWhile$lstm_735/while/loop_counter:output:0*lstm_735/while/maximum_iterations:output:0lstm_735/time:output:0!lstm_735/TensorArrayV2_1:handle:0lstm_735/zeros:output:0lstm_735/zeros_1:output:0!lstm_735/strided_slice_1:output:0@lstm_735/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_735_lstm_cell_642_matmul_readvariableop_resource7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource6lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
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
lstm_735_while_body_3899302*'
condR
lstm_735_while_cond_3899301*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_735/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_735/TensorArrayV2Stack/TensorListStackTensorListStacklstm_735/while:output:3Blstm_735/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_735/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_735/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_3StridedSlice4lstm_735/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_735/strided_slice_3/stack:output:0)lstm_735/strided_slice_3/stack_1:output:0)lstm_735/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_735/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_735/transpose_1	Transpose4lstm_735/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_735/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_735/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_736/ShapeShapelstm_735/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_736/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_736/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_736/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_sliceStridedSlicelstm_736/Shape:output:0%lstm_736/strided_slice/stack:output:0'lstm_736/strided_slice/stack_1:output:0'lstm_736/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_736/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_736/zeros/packedPacklstm_736/strided_slice:output:0 lstm_736/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_736/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_736/zerosFilllstm_736/zeros/packed:output:0lstm_736/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_736/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_736/zeros_1/packedPacklstm_736/strided_slice:output:0"lstm_736/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_736/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_736/zeros_1Fill lstm_736/zeros_1/packed:output:0lstm_736/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_736/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_736/transpose	Transposelstm_735/transpose_1:y:0 lstm_736/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_736/Shape_1Shapelstm_736/transpose:y:0*
T0*
_output_shapes
:h
lstm_736/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_736/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_1StridedSlicelstm_736/Shape_1:output:0'lstm_736/strided_slice_1/stack:output:0)lstm_736/strided_slice_1/stack_1:output:0)lstm_736/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_736/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_736/TensorArrayV2TensorListReserve-lstm_736/TensorArrayV2/element_shape:output:0!lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_736/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_736/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_736/transpose:y:0Glstm_736/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_736/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_736/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_2StridedSlicelstm_736/transpose:y:0'lstm_736/strided_slice_2/stack:output:0)lstm_736/strided_slice_2/stack_1:output:0)lstm_736/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_736/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp5lstm_736_lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_736/lstm_cell_643/MatMulMatMul!lstm_736/strided_slice_2:output:04lstm_736/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_736/lstm_cell_643/MatMul_1MatMullstm_736/zeros:output:06lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_736/lstm_cell_643/addAddV2'lstm_736/lstm_cell_643/MatMul:product:0)lstm_736/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp6lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_736/lstm_cell_643/BiasAddBiasAddlstm_736/lstm_cell_643/add:z:05lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_736/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_736/lstm_cell_643/splitSplit/lstm_736/lstm_cell_643/split/split_dim:output:0'lstm_736/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_736/lstm_cell_643/SigmoidSigmoid%lstm_736/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_736/lstm_cell_643/Sigmoid_1Sigmoid%lstm_736/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mulMul$lstm_736/lstm_cell_643/Sigmoid_1:y:0lstm_736/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_736/lstm_cell_643/ReluRelu%lstm_736/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mul_1Mul"lstm_736/lstm_cell_643/Sigmoid:y:0)lstm_736/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/add_1AddV2lstm_736/lstm_cell_643/mul:z:0 lstm_736/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_736/lstm_cell_643/Sigmoid_2Sigmoid%lstm_736/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_736/lstm_cell_643/Relu_1Relu lstm_736/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mul_2Mul$lstm_736/lstm_cell_643/Sigmoid_2:y:0+lstm_736/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_736/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_736/TensorArrayV2_1TensorListReserve/lstm_736/TensorArrayV2_1/element_shape:output:0!lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_736/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_736/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_736/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_736/whileWhile$lstm_736/while/loop_counter:output:0*lstm_736/while/maximum_iterations:output:0lstm_736/time:output:0!lstm_736/TensorArrayV2_1:handle:0lstm_736/zeros:output:0lstm_736/zeros_1:output:0!lstm_736/strided_slice_1:output:0@lstm_736/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_736_lstm_cell_643_matmul_readvariableop_resource7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource6lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
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
lstm_736_while_body_3899441*'
condR
lstm_736_while_cond_3899440*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_736/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_736/TensorArrayV2Stack/TensorListStackTensorListStacklstm_736/while:output:3Blstm_736/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_736/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_736/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_3StridedSlice4lstm_736/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_736/strided_slice_3/stack:output:0)lstm_736/strided_slice_3/stack_1:output:0)lstm_736/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_736/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_736/transpose_1	Transpose4lstm_736/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_736/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_736/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_737/ShapeShapelstm_736/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_737/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_737/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_737/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_sliceStridedSlicelstm_737/Shape:output:0%lstm_737/strided_slice/stack:output:0'lstm_737/strided_slice/stack_1:output:0'lstm_737/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_737/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_737/zeros/packedPacklstm_737/strided_slice:output:0 lstm_737/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_737/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_737/zerosFilllstm_737/zeros/packed:output:0lstm_737/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_737/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_737/zeros_1/packedPacklstm_737/strided_slice:output:0"lstm_737/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_737/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_737/zeros_1Fill lstm_737/zeros_1/packed:output:0lstm_737/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_737/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_737/transpose	Transposelstm_736/transpose_1:y:0 lstm_737/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_737/Shape_1Shapelstm_737/transpose:y:0*
T0*
_output_shapes
:h
lstm_737/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_737/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_1StridedSlicelstm_737/Shape_1:output:0'lstm_737/strided_slice_1/stack:output:0)lstm_737/strided_slice_1/stack_1:output:0)lstm_737/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_737/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_737/TensorArrayV2TensorListReserve-lstm_737/TensorArrayV2/element_shape:output:0!lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_737/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_737/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_737/transpose:y:0Glstm_737/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_737/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_737/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_2StridedSlicelstm_737/transpose:y:0'lstm_737/strided_slice_2/stack:output:0)lstm_737/strided_slice_2/stack_1:output:0)lstm_737/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_737/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp5lstm_737_lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_737/lstm_cell_644/MatMulMatMul!lstm_737/strided_slice_2:output:04lstm_737/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_737/lstm_cell_644/MatMul_1MatMullstm_737/zeros:output:06lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_737/lstm_cell_644/addAddV2'lstm_737/lstm_cell_644/MatMul:product:0)lstm_737/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp6lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_737/lstm_cell_644/BiasAddBiasAddlstm_737/lstm_cell_644/add:z:05lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_737/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_737/lstm_cell_644/splitSplit/lstm_737/lstm_cell_644/split/split_dim:output:0'lstm_737/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_737/lstm_cell_644/SigmoidSigmoid%lstm_737/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_737/lstm_cell_644/Sigmoid_1Sigmoid%lstm_737/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mulMul$lstm_737/lstm_cell_644/Sigmoid_1:y:0lstm_737/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_737/lstm_cell_644/ReluRelu%lstm_737/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mul_1Mul"lstm_737/lstm_cell_644/Sigmoid:y:0)lstm_737/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/add_1AddV2lstm_737/lstm_cell_644/mul:z:0 lstm_737/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_737/lstm_cell_644/Sigmoid_2Sigmoid%lstm_737/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_737/lstm_cell_644/Relu_1Relu lstm_737/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mul_2Mul$lstm_737/lstm_cell_644/Sigmoid_2:y:0+lstm_737/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_737/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_737/TensorArrayV2_1TensorListReserve/lstm_737/TensorArrayV2_1/element_shape:output:0!lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_737/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_737/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_737/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_737/whileWhile$lstm_737/while/loop_counter:output:0*lstm_737/while/maximum_iterations:output:0lstm_737/time:output:0!lstm_737/TensorArrayV2_1:handle:0lstm_737/zeros:output:0lstm_737/zeros_1:output:0!lstm_737/strided_slice_1:output:0@lstm_737/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_737_lstm_cell_644_matmul_readvariableop_resource7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource6lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
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
lstm_737_while_body_3899580*'
condR
lstm_737_while_cond_3899579*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_737/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_737/TensorArrayV2Stack/TensorListStackTensorListStacklstm_737/while:output:3Blstm_737/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_737/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_737/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_3StridedSlice4lstm_737/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_737/strided_slice_3/stack:output:0)lstm_737/strided_slice_3/stack_1:output:0)lstm_737/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_737/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_737/transpose_1	Transpose4lstm_737/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_737/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_737/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_245/MatMul/ReadVariableOpReadVariableOp(dense_245_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_245/MatMulMatMul!lstm_737/strided_slice_3:output:0'dense_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_245/BiasAdd/ReadVariableOpReadVariableOp)dense_245_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_245/BiasAddBiasAdddense_245/MatMul:product:0(dense_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_245/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_245/BiasAdd/ReadVariableOp ^dense_245/MatMul/ReadVariableOp.^lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp-^lstm_735/lstm_cell_642/MatMul/ReadVariableOp/^lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp^lstm_735/while.^lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp-^lstm_736/lstm_cell_643/MatMul/ReadVariableOp/^lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp^lstm_736/while.^lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp-^lstm_737/lstm_cell_644/MatMul/ReadVariableOp/^lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp^lstm_737/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_245/BiasAdd/ReadVariableOp dense_245/BiasAdd/ReadVariableOp2B
dense_245/MatMul/ReadVariableOpdense_245/MatMul/ReadVariableOp2^
-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp2\
,lstm_735/lstm_cell_642/MatMul/ReadVariableOp,lstm_735/lstm_cell_642/MatMul/ReadVariableOp2`
.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp2 
lstm_735/whilelstm_735/while2^
-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp2\
,lstm_736/lstm_cell_643/MatMul/ReadVariableOp,lstm_736/lstm_cell_643/MatMul/ReadVariableOp2`
.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp2 
lstm_736/whilelstm_736/while2^
-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp2\
,lstm_737/lstm_cell_644/MatMul/ReadVariableOp,lstm_737/lstm_cell_644/MatMul/ReadVariableOp2`
.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp2 
lstm_737/whilelstm_737/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_736_layer_call_fn_3900735
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3897620|
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
?
*__inference_lstm_737_layer_call_fn_3901340
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3897779o
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
while_cond_3897009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897009___redundant_placeholder05
1while_while_cond_3897009___redundant_placeholder15
1while_while_cond_3897009___redundant_placeholder25
1while_while_cond_3897009___redundant_placeholder3
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
while_body_3898344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3900342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900342___redundant_placeholder05
1while_while_cond_3900342___redundant_placeholder15
1while_while_cond_3900342___redundant_placeholder25
1while_while_cond_3900342___redundant_placeholder3
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
*__inference_lstm_735_layer_call_fn_3900141

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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898974s
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901043
inputs_0?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3900959*
condR
while_cond_3900958*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_737_while_cond_3900006.
*lstm_737_while_lstm_737_while_loop_counter4
0lstm_737_while_lstm_737_while_maximum_iterations
lstm_737_while_placeholder 
lstm_737_while_placeholder_1 
lstm_737_while_placeholder_2 
lstm_737_while_placeholder_30
,lstm_737_while_less_lstm_737_strided_slice_1G
Clstm_737_while_lstm_737_while_cond_3900006___redundant_placeholder0G
Clstm_737_while_lstm_737_while_cond_3900006___redundant_placeholder1G
Clstm_737_while_lstm_737_while_cond_3900006___redundant_placeholder2G
Clstm_737_while_lstm_737_while_cond_3900006___redundant_placeholder3
lstm_737_while_identity
?
lstm_737/while/LessLesslstm_737_while_placeholder,lstm_737_while_less_lstm_737_strided_slice_1*
T0*
_output_shapes
: ]
lstm_737/while/IdentityIdentitylstm_737/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_737_while_identity lstm_737/while/Identity:output:0*(
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
while_body_3898194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3897709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3897709___redundant_placeholder05
1while_while_cond_3897709___redundant_placeholder15
1while_while_cond_3897709___redundant_placeholder25
1while_while_cond_3897709___redundant_placeholder3
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
?
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899124
lstm_735_input#
lstm_735_3899097:	?#
lstm_735_3899099:	d?
lstm_735_3899101:	?#
lstm_736_3899104:	d?#
lstm_736_3899106:	2?
lstm_736_3899108:	?"
lstm_737_3899111:2("
lstm_737_3899113:
(
lstm_737_3899115:(#
dense_245_3899118:

dense_245_3899120:
identity??!dense_245/StatefulPartitionedCall? lstm_735/StatefulPartitionedCall? lstm_736/StatefulPartitionedCall? lstm_737/StatefulPartitionedCall?
 lstm_735/StatefulPartitionedCallStatefulPartitionedCalllstm_735_inputlstm_735_3899097lstm_735_3899099lstm_735_3899101*
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898128?
 lstm_736/StatefulPartitionedCallStatefulPartitionedCall)lstm_735/StatefulPartitionedCall:output:0lstm_736_3899104lstm_736_3899106lstm_736_3899108*
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898278?
 lstm_737/StatefulPartitionedCallStatefulPartitionedCall)lstm_736/StatefulPartitionedCall:output:0lstm_737_3899111lstm_737_3899113lstm_737_3899115*
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898428?
!dense_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_737/StatefulPartitionedCall:output:0dense_245_3899118dense_245_3899120*
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446y
IdentityIdentity*dense_245/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_245/StatefulPartitionedCall!^lstm_735/StatefulPartitionedCall!^lstm_736/StatefulPartitionedCall!^lstm_737/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall2D
 lstm_735/StatefulPartitionedCall lstm_735/StatefulPartitionedCall2D
 lstm_736/StatefulPartitionedCall lstm_736/StatefulPartitionedCall2D
 lstm_737/StatefulPartitionedCall lstm_737/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_735_input
?K
?
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900427
inputs_0?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3900343*
condR
while_cond_3900342*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3900815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900815___redundant_placeholder05
1while_while_cond_3900815___redundant_placeholder15
1while_while_cond_3900815___redundant_placeholder25
1while_while_cond_3900815___redundant_placeholder3
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
*__inference_lstm_735_layer_call_fn_3900119
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3897270|
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
*sequential_245_lstm_737_while_body_3896839L
Hsequential_245_lstm_737_while_sequential_245_lstm_737_while_loop_counterR
Nsequential_245_lstm_737_while_sequential_245_lstm_737_while_maximum_iterations-
)sequential_245_lstm_737_while_placeholder/
+sequential_245_lstm_737_while_placeholder_1/
+sequential_245_lstm_737_while_placeholder_2/
+sequential_245_lstm_737_while_placeholder_3K
Gsequential_245_lstm_737_while_sequential_245_lstm_737_strided_slice_1_0?
?sequential_245_lstm_737_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_737_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_245_lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0:2(`
Nsequential_245_lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0:
([
Msequential_245_lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0:(*
&sequential_245_lstm_737_while_identity,
(sequential_245_lstm_737_while_identity_1,
(sequential_245_lstm_737_while_identity_2,
(sequential_245_lstm_737_while_identity_3,
(sequential_245_lstm_737_while_identity_4,
(sequential_245_lstm_737_while_identity_5I
Esequential_245_lstm_737_while_sequential_245_lstm_737_strided_slice_1?
?sequential_245_lstm_737_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_737_tensorarrayunstack_tensorlistfromtensor\
Jsequential_245_lstm_737_while_lstm_cell_644_matmul_readvariableop_resource:2(^
Lsequential_245_lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource:
(Y
Ksequential_245_lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource:(??Bsequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp?Asequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp?Csequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp?
Osequential_245/lstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_245/lstm_737/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_245_lstm_737_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_737_tensorarrayunstack_tensorlistfromtensor_0)sequential_245_lstm_737_while_placeholderXsequential_245/lstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOpLsequential_245_lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_245/lstm_737/while/lstm_cell_644/MatMulMatMulHsequential_245/lstm_737/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOpNsequential_245_lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_245/lstm_737/while/lstm_cell_644/MatMul_1MatMul+sequential_245_lstm_737_while_placeholder_2Ksequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_245/lstm_737/while/lstm_cell_644/addAddV2<sequential_245/lstm_737/while/lstm_cell_644/MatMul:product:0>sequential_245/lstm_737/while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOpMsequential_245_lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_245/lstm_737/while/lstm_cell_644/BiasAddBiasAdd3sequential_245/lstm_737/while/lstm_cell_644/add:z:0Jsequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_245/lstm_737/while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_245/lstm_737/while/lstm_cell_644/splitSplitDsequential_245/lstm_737/while/lstm_cell_644/split/split_dim:output:0<sequential_245/lstm_737/while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_245/lstm_737/while/lstm_cell_644/SigmoidSigmoid:sequential_245/lstm_737/while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_245/lstm_737/while/lstm_cell_644/Sigmoid_1Sigmoid:sequential_245/lstm_737/while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_245/lstm_737/while/lstm_cell_644/mulMul9sequential_245/lstm_737/while/lstm_cell_644/Sigmoid_1:y:0+sequential_245_lstm_737_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_245/lstm_737/while/lstm_cell_644/ReluRelu:sequential_245/lstm_737/while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_245/lstm_737/while/lstm_cell_644/mul_1Mul7sequential_245/lstm_737/while/lstm_cell_644/Sigmoid:y:0>sequential_245/lstm_737/while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_245/lstm_737/while/lstm_cell_644/add_1AddV23sequential_245/lstm_737/while/lstm_cell_644/mul:z:05sequential_245/lstm_737/while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_245/lstm_737/while/lstm_cell_644/Sigmoid_2Sigmoid:sequential_245/lstm_737/while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_245/lstm_737/while/lstm_cell_644/Relu_1Relu5sequential_245/lstm_737/while/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_245/lstm_737/while/lstm_cell_644/mul_2Mul9sequential_245/lstm_737/while/lstm_cell_644/Sigmoid_2:y:0@sequential_245/lstm_737/while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_245/lstm_737/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_245_lstm_737_while_placeholder_1)sequential_245_lstm_737_while_placeholder5sequential_245/lstm_737/while/lstm_cell_644/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_245/lstm_737/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_245/lstm_737/while/addAddV2)sequential_245_lstm_737_while_placeholder,sequential_245/lstm_737/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_245/lstm_737/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_245/lstm_737/while/add_1AddV2Hsequential_245_lstm_737_while_sequential_245_lstm_737_while_loop_counter.sequential_245/lstm_737/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_245/lstm_737/while/IdentityIdentity'sequential_245/lstm_737/while/add_1:z:0#^sequential_245/lstm_737/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_737/while/Identity_1IdentityNsequential_245_lstm_737_while_sequential_245_lstm_737_while_maximum_iterations#^sequential_245/lstm_737/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_737/while/Identity_2Identity%sequential_245/lstm_737/while/add:z:0#^sequential_245/lstm_737/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_737/while/Identity_3IdentityRsequential_245/lstm_737/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_245/lstm_737/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_737/while/Identity_4Identity5sequential_245/lstm_737/while/lstm_cell_644/mul_2:z:0#^sequential_245/lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_245/lstm_737/while/Identity_5Identity5sequential_245/lstm_737/while/lstm_cell_644/add_1:z:0#^sequential_245/lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_245/lstm_737/while/NoOpNoOpC^sequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOpB^sequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOpD^sequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_245_lstm_737_while_identity/sequential_245/lstm_737/while/Identity:output:0"]
(sequential_245_lstm_737_while_identity_11sequential_245/lstm_737/while/Identity_1:output:0"]
(sequential_245_lstm_737_while_identity_21sequential_245/lstm_737/while/Identity_2:output:0"]
(sequential_245_lstm_737_while_identity_31sequential_245/lstm_737/while/Identity_3:output:0"]
(sequential_245_lstm_737_while_identity_41sequential_245/lstm_737/while/Identity_4:output:0"]
(sequential_245_lstm_737_while_identity_51sequential_245/lstm_737/while/Identity_5:output:0"?
Ksequential_245_lstm_737_while_lstm_cell_644_biasadd_readvariableop_resourceMsequential_245_lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0"?
Lsequential_245_lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resourceNsequential_245_lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0"?
Jsequential_245_lstm_737_while_lstm_cell_644_matmul_readvariableop_resourceLsequential_245_lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0"?
Esequential_245_lstm_737_while_sequential_245_lstm_737_strided_slice_1Gsequential_245_lstm_737_while_sequential_245_lstm_737_strided_slice_1_0"?
?sequential_245_lstm_737_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_737_tensorarrayunstack_tensorlistfromtensor?sequential_245_lstm_737_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_737_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOpBsequential_245/lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp2?
Asequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOpAsequential_245/lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp2?
Csequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOpCsequential_245/lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3897779

inputs'
lstm_cell_644_3897697:2('
lstm_cell_644_3897699:
(#
lstm_cell_644_3897701:(
identity??%lstm_cell_644/StatefulPartitionedCall?while;
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
%lstm_cell_644/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_644_3897697lstm_cell_644_3897699lstm_cell_644_3897701*
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897696n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_644_3897697lstm_cell_644_3897699lstm_cell_644_3897701*
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
while_body_3897710*
condR
while_cond_3897709*K
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
NoOpNoOp&^lstm_cell_644/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_644/StatefulPartitionedCall%lstm_cell_644/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_245_layer_call_fn_3898478
lstm_735_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_735_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3898453o
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
_user_specified_namelstm_735_input
?C
?

lstm_737_while_body_3899580.
*lstm_737_while_lstm_737_while_loop_counter4
0lstm_737_while_lstm_737_while_maximum_iterations
lstm_737_while_placeholder 
lstm_737_while_placeholder_1 
lstm_737_while_placeholder_2 
lstm_737_while_placeholder_3-
)lstm_737_while_lstm_737_strided_slice_1_0i
elstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0:2(Q
?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(L
>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0:(
lstm_737_while_identity
lstm_737_while_identity_1
lstm_737_while_identity_2
lstm_737_while_identity_3
lstm_737_while_identity_4
lstm_737_while_identity_5+
'lstm_737_while_lstm_737_strided_slice_1g
clstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensorM
;lstm_737_while_lstm_cell_644_matmul_readvariableop_resource:2(O
=lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource:
(J
<lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource:(??3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp?2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp?4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp?
@lstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_737/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0lstm_737_while_placeholderIlstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_737/while/lstm_cell_644/MatMulMatMul9lstm_737/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_737/while/lstm_cell_644/MatMul_1MatMullstm_737_while_placeholder_2<lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_737/while/lstm_cell_644/addAddV2-lstm_737/while/lstm_cell_644/MatMul:product:0/lstm_737/while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_737/while/lstm_cell_644/BiasAddBiasAdd$lstm_737/while/lstm_cell_644/add:z:0;lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_737/while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_737/while/lstm_cell_644/splitSplit5lstm_737/while/lstm_cell_644/split/split_dim:output:0-lstm_737/while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_737/while/lstm_cell_644/SigmoidSigmoid+lstm_737/while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_737/while/lstm_cell_644/Sigmoid_1Sigmoid+lstm_737/while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_737/while/lstm_cell_644/mulMul*lstm_737/while/lstm_cell_644/Sigmoid_1:y:0lstm_737_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_737/while/lstm_cell_644/ReluRelu+lstm_737/while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/mul_1Mul(lstm_737/while/lstm_cell_644/Sigmoid:y:0/lstm_737/while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/add_1AddV2$lstm_737/while/lstm_cell_644/mul:z:0&lstm_737/while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_737/while/lstm_cell_644/Sigmoid_2Sigmoid+lstm_737/while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_737/while/lstm_cell_644/Relu_1Relu&lstm_737/while/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/mul_2Mul*lstm_737/while/lstm_cell_644/Sigmoid_2:y:01lstm_737/while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_737/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_737_while_placeholder_1lstm_737_while_placeholder&lstm_737/while/lstm_cell_644/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_737/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_737/while/addAddV2lstm_737_while_placeholderlstm_737/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_737/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_737/while/add_1AddV2*lstm_737_while_lstm_737_while_loop_counterlstm_737/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_737/while/IdentityIdentitylstm_737/while/add_1:z:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_1Identity0lstm_737_while_lstm_737_while_maximum_iterations^lstm_737/while/NoOp*
T0*
_output_shapes
: t
lstm_737/while/Identity_2Identitylstm_737/while/add:z:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_3IdentityClstm_737/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_4Identity&lstm_737/while/lstm_cell_644/mul_2:z:0^lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_737/while/Identity_5Identity&lstm_737/while/lstm_cell_644/add_1:z:0^lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_737/while/NoOpNoOp4^lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp3^lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp5^lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_737_while_identity lstm_737/while/Identity:output:0"?
lstm_737_while_identity_1"lstm_737/while/Identity_1:output:0"?
lstm_737_while_identity_2"lstm_737/while/Identity_2:output:0"?
lstm_737_while_identity_3"lstm_737/while/Identity_3:output:0"?
lstm_737_while_identity_4"lstm_737/while/Identity_4:output:0"?
lstm_737_while_identity_5"lstm_737/while/Identity_5:output:0"T
'lstm_737_while_lstm_737_strided_slice_1)lstm_737_while_lstm_737_strided_slice_1_0"~
<lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0"?
=lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0"|
;lstm_737_while_lstm_cell_644_matmul_readvariableop_resource=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0"?
clstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensorelstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp2h
2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp2l
4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3900486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3901964

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
while_cond_3901574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901574___redundant_placeholder05
1while_while_cond_3901574___redundant_placeholder15
1while_while_cond_3901574___redundant_placeholder25
1while_while_cond_3901574___redundant_placeholder3
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
*__inference_lstm_736_layer_call_fn_3900746

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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898278s
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902128

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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3900097

inputsH
5lstm_735_lstm_cell_642_matmul_readvariableop_resource:	?J
7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource:	d?E
6lstm_735_lstm_cell_642_biasadd_readvariableop_resource:	?H
5lstm_736_lstm_cell_643_matmul_readvariableop_resource:	d?J
7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource:	2?E
6lstm_736_lstm_cell_643_biasadd_readvariableop_resource:	?G
5lstm_737_lstm_cell_644_matmul_readvariableop_resource:2(I
7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource:
(D
6lstm_737_lstm_cell_644_biasadd_readvariableop_resource:(:
(dense_245_matmul_readvariableop_resource:
7
)dense_245_biasadd_readvariableop_resource:
identity?? dense_245/BiasAdd/ReadVariableOp?dense_245/MatMul/ReadVariableOp?-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp?,lstm_735/lstm_cell_642/MatMul/ReadVariableOp?.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp?lstm_735/while?-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp?,lstm_736/lstm_cell_643/MatMul/ReadVariableOp?.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp?lstm_736/while?-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp?,lstm_737/lstm_cell_644/MatMul/ReadVariableOp?.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp?lstm_737/whileD
lstm_735/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_735/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_735/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_735/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_sliceStridedSlicelstm_735/Shape:output:0%lstm_735/strided_slice/stack:output:0'lstm_735/strided_slice/stack_1:output:0'lstm_735/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_735/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_735/zeros/packedPacklstm_735/strided_slice:output:0 lstm_735/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_735/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_735/zerosFilllstm_735/zeros/packed:output:0lstm_735/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_735/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_735/zeros_1/packedPacklstm_735/strided_slice:output:0"lstm_735/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_735/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_735/zeros_1Fill lstm_735/zeros_1/packed:output:0lstm_735/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_735/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_735/transpose	Transposeinputs lstm_735/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_735/Shape_1Shapelstm_735/transpose:y:0*
T0*
_output_shapes
:h
lstm_735/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_735/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_1StridedSlicelstm_735/Shape_1:output:0'lstm_735/strided_slice_1/stack:output:0)lstm_735/strided_slice_1/stack_1:output:0)lstm_735/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_735/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_735/TensorArrayV2TensorListReserve-lstm_735/TensorArrayV2/element_shape:output:0!lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_735/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_735/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_735/transpose:y:0Glstm_735/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_735/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_735/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_2StridedSlicelstm_735/transpose:y:0'lstm_735/strided_slice_2/stack:output:0)lstm_735/strided_slice_2/stack_1:output:0)lstm_735/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_735/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp5lstm_735_lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_735/lstm_cell_642/MatMulMatMul!lstm_735/strided_slice_2:output:04lstm_735/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_735/lstm_cell_642/MatMul_1MatMullstm_735/zeros:output:06lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_735/lstm_cell_642/addAddV2'lstm_735/lstm_cell_642/MatMul:product:0)lstm_735/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp6lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_735/lstm_cell_642/BiasAddBiasAddlstm_735/lstm_cell_642/add:z:05lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_735/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_735/lstm_cell_642/splitSplit/lstm_735/lstm_cell_642/split/split_dim:output:0'lstm_735/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_735/lstm_cell_642/SigmoidSigmoid%lstm_735/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_735/lstm_cell_642/Sigmoid_1Sigmoid%lstm_735/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mulMul$lstm_735/lstm_cell_642/Sigmoid_1:y:0lstm_735/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_735/lstm_cell_642/ReluRelu%lstm_735/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mul_1Mul"lstm_735/lstm_cell_642/Sigmoid:y:0)lstm_735/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/add_1AddV2lstm_735/lstm_cell_642/mul:z:0 lstm_735/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_735/lstm_cell_642/Sigmoid_2Sigmoid%lstm_735/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_735/lstm_cell_642/Relu_1Relu lstm_735/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_735/lstm_cell_642/mul_2Mul$lstm_735/lstm_cell_642/Sigmoid_2:y:0+lstm_735/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_735/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_735/TensorArrayV2_1TensorListReserve/lstm_735/TensorArrayV2_1/element_shape:output:0!lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_735/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_735/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_735/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_735/whileWhile$lstm_735/while/loop_counter:output:0*lstm_735/while/maximum_iterations:output:0lstm_735/time:output:0!lstm_735/TensorArrayV2_1:handle:0lstm_735/zeros:output:0lstm_735/zeros_1:output:0!lstm_735/strided_slice_1:output:0@lstm_735/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_735_lstm_cell_642_matmul_readvariableop_resource7lstm_735_lstm_cell_642_matmul_1_readvariableop_resource6lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
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
lstm_735_while_body_3899729*'
condR
lstm_735_while_cond_3899728*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_735/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_735/TensorArrayV2Stack/TensorListStackTensorListStacklstm_735/while:output:3Blstm_735/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_735/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_735/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_735/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_735/strided_slice_3StridedSlice4lstm_735/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_735/strided_slice_3/stack:output:0)lstm_735/strided_slice_3/stack_1:output:0)lstm_735/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_735/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_735/transpose_1	Transpose4lstm_735/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_735/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_735/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_736/ShapeShapelstm_735/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_736/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_736/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_736/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_sliceStridedSlicelstm_736/Shape:output:0%lstm_736/strided_slice/stack:output:0'lstm_736/strided_slice/stack_1:output:0'lstm_736/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_736/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_736/zeros/packedPacklstm_736/strided_slice:output:0 lstm_736/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_736/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_736/zerosFilllstm_736/zeros/packed:output:0lstm_736/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_736/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_736/zeros_1/packedPacklstm_736/strided_slice:output:0"lstm_736/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_736/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_736/zeros_1Fill lstm_736/zeros_1/packed:output:0lstm_736/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_736/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_736/transpose	Transposelstm_735/transpose_1:y:0 lstm_736/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_736/Shape_1Shapelstm_736/transpose:y:0*
T0*
_output_shapes
:h
lstm_736/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_736/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_1StridedSlicelstm_736/Shape_1:output:0'lstm_736/strided_slice_1/stack:output:0)lstm_736/strided_slice_1/stack_1:output:0)lstm_736/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_736/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_736/TensorArrayV2TensorListReserve-lstm_736/TensorArrayV2/element_shape:output:0!lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_736/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_736/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_736/transpose:y:0Glstm_736/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_736/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_736/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_2StridedSlicelstm_736/transpose:y:0'lstm_736/strided_slice_2/stack:output:0)lstm_736/strided_slice_2/stack_1:output:0)lstm_736/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_736/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp5lstm_736_lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_736/lstm_cell_643/MatMulMatMul!lstm_736/strided_slice_2:output:04lstm_736/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_736/lstm_cell_643/MatMul_1MatMullstm_736/zeros:output:06lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_736/lstm_cell_643/addAddV2'lstm_736/lstm_cell_643/MatMul:product:0)lstm_736/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp6lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_736/lstm_cell_643/BiasAddBiasAddlstm_736/lstm_cell_643/add:z:05lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_736/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_736/lstm_cell_643/splitSplit/lstm_736/lstm_cell_643/split/split_dim:output:0'lstm_736/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_736/lstm_cell_643/SigmoidSigmoid%lstm_736/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_736/lstm_cell_643/Sigmoid_1Sigmoid%lstm_736/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mulMul$lstm_736/lstm_cell_643/Sigmoid_1:y:0lstm_736/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_736/lstm_cell_643/ReluRelu%lstm_736/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mul_1Mul"lstm_736/lstm_cell_643/Sigmoid:y:0)lstm_736/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/add_1AddV2lstm_736/lstm_cell_643/mul:z:0 lstm_736/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_736/lstm_cell_643/Sigmoid_2Sigmoid%lstm_736/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_736/lstm_cell_643/Relu_1Relu lstm_736/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_736/lstm_cell_643/mul_2Mul$lstm_736/lstm_cell_643/Sigmoid_2:y:0+lstm_736/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_736/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_736/TensorArrayV2_1TensorListReserve/lstm_736/TensorArrayV2_1/element_shape:output:0!lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_736/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_736/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_736/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_736/whileWhile$lstm_736/while/loop_counter:output:0*lstm_736/while/maximum_iterations:output:0lstm_736/time:output:0!lstm_736/TensorArrayV2_1:handle:0lstm_736/zeros:output:0lstm_736/zeros_1:output:0!lstm_736/strided_slice_1:output:0@lstm_736/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_736_lstm_cell_643_matmul_readvariableop_resource7lstm_736_lstm_cell_643_matmul_1_readvariableop_resource6lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
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
lstm_736_while_body_3899868*'
condR
lstm_736_while_cond_3899867*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_736/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_736/TensorArrayV2Stack/TensorListStackTensorListStacklstm_736/while:output:3Blstm_736/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_736/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_736/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_736/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_736/strided_slice_3StridedSlice4lstm_736/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_736/strided_slice_3/stack:output:0)lstm_736/strided_slice_3/stack_1:output:0)lstm_736/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_736/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_736/transpose_1	Transpose4lstm_736/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_736/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_736/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_737/ShapeShapelstm_736/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_737/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_737/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_737/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_sliceStridedSlicelstm_737/Shape:output:0%lstm_737/strided_slice/stack:output:0'lstm_737/strided_slice/stack_1:output:0'lstm_737/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_737/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_737/zeros/packedPacklstm_737/strided_slice:output:0 lstm_737/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_737/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_737/zerosFilllstm_737/zeros/packed:output:0lstm_737/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_737/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_737/zeros_1/packedPacklstm_737/strided_slice:output:0"lstm_737/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_737/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_737/zeros_1Fill lstm_737/zeros_1/packed:output:0lstm_737/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_737/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_737/transpose	Transposelstm_736/transpose_1:y:0 lstm_737/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_737/Shape_1Shapelstm_737/transpose:y:0*
T0*
_output_shapes
:h
lstm_737/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_737/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_1StridedSlicelstm_737/Shape_1:output:0'lstm_737/strided_slice_1/stack:output:0)lstm_737/strided_slice_1/stack_1:output:0)lstm_737/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_737/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_737/TensorArrayV2TensorListReserve-lstm_737/TensorArrayV2/element_shape:output:0!lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_737/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_737/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_737/transpose:y:0Glstm_737/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_737/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_737/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_2StridedSlicelstm_737/transpose:y:0'lstm_737/strided_slice_2/stack:output:0)lstm_737/strided_slice_2/stack_1:output:0)lstm_737/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_737/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp5lstm_737_lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_737/lstm_cell_644/MatMulMatMul!lstm_737/strided_slice_2:output:04lstm_737/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_737/lstm_cell_644/MatMul_1MatMullstm_737/zeros:output:06lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_737/lstm_cell_644/addAddV2'lstm_737/lstm_cell_644/MatMul:product:0)lstm_737/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp6lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_737/lstm_cell_644/BiasAddBiasAddlstm_737/lstm_cell_644/add:z:05lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_737/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_737/lstm_cell_644/splitSplit/lstm_737/lstm_cell_644/split/split_dim:output:0'lstm_737/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_737/lstm_cell_644/SigmoidSigmoid%lstm_737/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_737/lstm_cell_644/Sigmoid_1Sigmoid%lstm_737/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mulMul$lstm_737/lstm_cell_644/Sigmoid_1:y:0lstm_737/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_737/lstm_cell_644/ReluRelu%lstm_737/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mul_1Mul"lstm_737/lstm_cell_644/Sigmoid:y:0)lstm_737/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/add_1AddV2lstm_737/lstm_cell_644/mul:z:0 lstm_737/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_737/lstm_cell_644/Sigmoid_2Sigmoid%lstm_737/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_737/lstm_cell_644/Relu_1Relu lstm_737/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_737/lstm_cell_644/mul_2Mul$lstm_737/lstm_cell_644/Sigmoid_2:y:0+lstm_737/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_737/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_737/TensorArrayV2_1TensorListReserve/lstm_737/TensorArrayV2_1/element_shape:output:0!lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_737/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_737/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_737/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_737/whileWhile$lstm_737/while/loop_counter:output:0*lstm_737/while/maximum_iterations:output:0lstm_737/time:output:0!lstm_737/TensorArrayV2_1:handle:0lstm_737/zeros:output:0lstm_737/zeros_1:output:0!lstm_737/strided_slice_1:output:0@lstm_737/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_737_lstm_cell_644_matmul_readvariableop_resource7lstm_737_lstm_cell_644_matmul_1_readvariableop_resource6lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
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
lstm_737_while_body_3900007*'
condR
lstm_737_while_cond_3900006*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_737/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_737/TensorArrayV2Stack/TensorListStackTensorListStacklstm_737/while:output:3Blstm_737/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_737/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_737/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_737/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_737/strided_slice_3StridedSlice4lstm_737/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_737/strided_slice_3/stack:output:0)lstm_737/strided_slice_3/stack_1:output:0)lstm_737/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_737/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_737/transpose_1	Transpose4lstm_737/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_737/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_737/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_245/MatMul/ReadVariableOpReadVariableOp(dense_245_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_245/MatMulMatMul!lstm_737/strided_slice_3:output:0'dense_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_245/BiasAdd/ReadVariableOpReadVariableOp)dense_245_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_245/BiasAddBiasAdddense_245/MatMul:product:0(dense_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_245/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_245/BiasAdd/ReadVariableOp ^dense_245/MatMul/ReadVariableOp.^lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp-^lstm_735/lstm_cell_642/MatMul/ReadVariableOp/^lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp^lstm_735/while.^lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp-^lstm_736/lstm_cell_643/MatMul/ReadVariableOp/^lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp^lstm_736/while.^lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp-^lstm_737/lstm_cell_644/MatMul/ReadVariableOp/^lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp^lstm_737/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_245/BiasAdd/ReadVariableOp dense_245/BiasAdd/ReadVariableOp2B
dense_245/MatMul/ReadVariableOpdense_245/MatMul/ReadVariableOp2^
-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp-lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp2\
,lstm_735/lstm_cell_642/MatMul/ReadVariableOp,lstm_735/lstm_cell_642/MatMul/ReadVariableOp2`
.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp.lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp2 
lstm_735/whilelstm_735/while2^
-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp-lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp2\
,lstm_736/lstm_cell_643/MatMul/ReadVariableOp,lstm_736/lstm_cell_643/MatMul/ReadVariableOp2`
.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp.lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp2 
lstm_736/whilelstm_736/while2^
-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp-lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp2\
,lstm_737/lstm_cell_644/MatMul/ReadVariableOp,lstm_737/lstm_cell_644/MatMul/ReadVariableOp2`
.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp.lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp2 
lstm_737/whilelstm_737/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_736_layer_call_and_return_conditional_losses_3897429

inputs(
lstm_cell_643_3897347:	d?(
lstm_cell_643_3897349:	2?$
lstm_cell_643_3897351:	?
identity??%lstm_cell_643/StatefulPartitionedCall?while;
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
%lstm_cell_643/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_643_3897347lstm_cell_643_3897349lstm_cell_643_3897351*
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897346n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_643_3897347lstm_cell_643_3897349lstm_cell_643_3897351*
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
while_body_3897360*
condR
while_cond_3897359*K
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
NoOpNoOp&^lstm_cell_643/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_643/StatefulPartitionedCall%lstm_cell_643/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3898724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898724___redundant_placeholder05
1while_while_cond_3898724___redundant_placeholder15
1while_while_cond_3898724___redundant_placeholder25
1while_while_cond_3898724___redundant_placeholder3
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
*__inference_lstm_737_layer_call_fn_3901362

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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3898428o
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
while_cond_3901244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901244___redundant_placeholder05
1while_while_cond_3901244___redundant_placeholder15
1while_while_cond_3901244___redundant_placeholder25
1while_while_cond_3901244___redundant_placeholder3
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
*sequential_245_lstm_736_while_cond_3896699L
Hsequential_245_lstm_736_while_sequential_245_lstm_736_while_loop_counterR
Nsequential_245_lstm_736_while_sequential_245_lstm_736_while_maximum_iterations-
)sequential_245_lstm_736_while_placeholder/
+sequential_245_lstm_736_while_placeholder_1/
+sequential_245_lstm_736_while_placeholder_2/
+sequential_245_lstm_736_while_placeholder_3N
Jsequential_245_lstm_736_while_less_sequential_245_lstm_736_strided_slice_1e
asequential_245_lstm_736_while_sequential_245_lstm_736_while_cond_3896699___redundant_placeholder0e
asequential_245_lstm_736_while_sequential_245_lstm_736_while_cond_3896699___redundant_placeholder1e
asequential_245_lstm_736_while_sequential_245_lstm_736_while_cond_3896699___redundant_placeholder2e
asequential_245_lstm_736_while_sequential_245_lstm_736_while_cond_3896699___redundant_placeholder3*
&sequential_245_lstm_736_while_identity
?
"sequential_245/lstm_736/while/LessLess)sequential_245_lstm_736_while_placeholderJsequential_245_lstm_736_while_less_sequential_245_lstm_736_strided_slice_1*
T0*
_output_shapes
: {
&sequential_245/lstm_736/while/IdentityIdentity&sequential_245/lstm_736/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_245_lstm_736_while_identity/sequential_245/lstm_736/while/Identity:output:0*(
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3898974

inputs?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3898890*
condR
while_cond_3898889*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3901860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901860___redundant_placeholder05
1while_while_cond_3901860___redundant_placeholder15
1while_while_cond_3901860___redundant_placeholder25
1while_while_cond_3901860___redundant_placeholder3
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
?W
?
 __inference__traced_save_3902401
file_prefix/
+savev2_dense_245_kernel_read_readvariableop-
)savev2_dense_245_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_735_lstm_cell_735_kernel_read_readvariableopF
Bsavev2_lstm_735_lstm_cell_735_recurrent_kernel_read_readvariableop:
6savev2_lstm_735_lstm_cell_735_bias_read_readvariableop<
8savev2_lstm_736_lstm_cell_736_kernel_read_readvariableopF
Bsavev2_lstm_736_lstm_cell_736_recurrent_kernel_read_readvariableop:
6savev2_lstm_736_lstm_cell_736_bias_read_readvariableop<
8savev2_lstm_737_lstm_cell_737_kernel_read_readvariableopF
Bsavev2_lstm_737_lstm_cell_737_recurrent_kernel_read_readvariableop:
6savev2_lstm_737_lstm_cell_737_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_245_kernel_m_read_readvariableop4
0savev2_adam_dense_245_bias_m_read_readvariableopC
?savev2_adam_lstm_735_lstm_cell_735_kernel_m_read_readvariableopM
Isavev2_adam_lstm_735_lstm_cell_735_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_735_lstm_cell_735_bias_m_read_readvariableopC
?savev2_adam_lstm_736_lstm_cell_736_kernel_m_read_readvariableopM
Isavev2_adam_lstm_736_lstm_cell_736_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_736_lstm_cell_736_bias_m_read_readvariableopC
?savev2_adam_lstm_737_lstm_cell_737_kernel_m_read_readvariableopM
Isavev2_adam_lstm_737_lstm_cell_737_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_737_lstm_cell_737_bias_m_read_readvariableop6
2savev2_adam_dense_245_kernel_v_read_readvariableop4
0savev2_adam_dense_245_bias_v_read_readvariableopC
?savev2_adam_lstm_735_lstm_cell_735_kernel_v_read_readvariableopM
Isavev2_adam_lstm_735_lstm_cell_735_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_735_lstm_cell_735_bias_v_read_readvariableopC
?savev2_adam_lstm_736_lstm_cell_736_kernel_v_read_readvariableopM
Isavev2_adam_lstm_736_lstm_cell_736_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_736_lstm_cell_736_bias_v_read_readvariableopC
?savev2_adam_lstm_737_lstm_cell_737_kernel_v_read_readvariableopM
Isavev2_adam_lstm_737_lstm_cell_737_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_737_lstm_cell_737_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_245_kernel_read_readvariableop)savev2_dense_245_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_735_lstm_cell_735_kernel_read_readvariableopBsavev2_lstm_735_lstm_cell_735_recurrent_kernel_read_readvariableop6savev2_lstm_735_lstm_cell_735_bias_read_readvariableop8savev2_lstm_736_lstm_cell_736_kernel_read_readvariableopBsavev2_lstm_736_lstm_cell_736_recurrent_kernel_read_readvariableop6savev2_lstm_736_lstm_cell_736_bias_read_readvariableop8savev2_lstm_737_lstm_cell_737_kernel_read_readvariableopBsavev2_lstm_737_lstm_cell_737_recurrent_kernel_read_readvariableop6savev2_lstm_737_lstm_cell_737_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_245_kernel_m_read_readvariableop0savev2_adam_dense_245_bias_m_read_readvariableop?savev2_adam_lstm_735_lstm_cell_735_kernel_m_read_readvariableopIsavev2_adam_lstm_735_lstm_cell_735_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_735_lstm_cell_735_bias_m_read_readvariableop?savev2_adam_lstm_736_lstm_cell_736_kernel_m_read_readvariableopIsavev2_adam_lstm_736_lstm_cell_736_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_736_lstm_cell_736_bias_m_read_readvariableop?savev2_adam_lstm_737_lstm_cell_737_kernel_m_read_readvariableopIsavev2_adam_lstm_737_lstm_cell_737_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_737_lstm_cell_737_bias_m_read_readvariableop2savev2_adam_dense_245_kernel_v_read_readvariableop0savev2_adam_dense_245_bias_v_read_readvariableop?savev2_adam_lstm_735_lstm_cell_735_kernel_v_read_readvariableopIsavev2_adam_lstm_735_lstm_cell_735_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_735_lstm_cell_735_bias_v_read_readvariableop?savev2_adam_lstm_736_lstm_cell_736_kernel_v_read_readvariableopIsavev2_adam_lstm_736_lstm_cell_736_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_736_lstm_cell_736_bias_v_read_readvariableop?savev2_adam_lstm_737_lstm_cell_737_kernel_v_read_readvariableopIsavev2_adam_lstm_737_lstm_cell_737_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_737_lstm_cell_737_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
+__inference_dense_245_layer_call_fn_3901954

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
F__inference_dense_245_layer_call_and_return_conditional_losses_3898446o
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
?C
?

lstm_737_while_body_3900007.
*lstm_737_while_lstm_737_while_loop_counter4
0lstm_737_while_lstm_737_while_maximum_iterations
lstm_737_while_placeholder 
lstm_737_while_placeholder_1 
lstm_737_while_placeholder_2 
lstm_737_while_placeholder_3-
)lstm_737_while_lstm_737_strided_slice_1_0i
elstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0:2(Q
?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(L
>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0:(
lstm_737_while_identity
lstm_737_while_identity_1
lstm_737_while_identity_2
lstm_737_while_identity_3
lstm_737_while_identity_4
lstm_737_while_identity_5+
'lstm_737_while_lstm_737_strided_slice_1g
clstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensorM
;lstm_737_while_lstm_cell_644_matmul_readvariableop_resource:2(O
=lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource:
(J
<lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource:(??3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp?2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp?4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp?
@lstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_737/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0lstm_737_while_placeholderIlstm_737/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_737/while/lstm_cell_644/MatMulMatMul9lstm_737/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_737/while/lstm_cell_644/MatMul_1MatMullstm_737_while_placeholder_2<lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_737/while/lstm_cell_644/addAddV2-lstm_737/while/lstm_cell_644/MatMul:product:0/lstm_737/while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_737/while/lstm_cell_644/BiasAddBiasAdd$lstm_737/while/lstm_cell_644/add:z:0;lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_737/while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_737/while/lstm_cell_644/splitSplit5lstm_737/while/lstm_cell_644/split/split_dim:output:0-lstm_737/while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_737/while/lstm_cell_644/SigmoidSigmoid+lstm_737/while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_737/while/lstm_cell_644/Sigmoid_1Sigmoid+lstm_737/while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_737/while/lstm_cell_644/mulMul*lstm_737/while/lstm_cell_644/Sigmoid_1:y:0lstm_737_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_737/while/lstm_cell_644/ReluRelu+lstm_737/while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/mul_1Mul(lstm_737/while/lstm_cell_644/Sigmoid:y:0/lstm_737/while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/add_1AddV2$lstm_737/while/lstm_cell_644/mul:z:0&lstm_737/while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_737/while/lstm_cell_644/Sigmoid_2Sigmoid+lstm_737/while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_737/while/lstm_cell_644/Relu_1Relu&lstm_737/while/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_737/while/lstm_cell_644/mul_2Mul*lstm_737/while/lstm_cell_644/Sigmoid_2:y:01lstm_737/while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_737/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_737_while_placeholder_1lstm_737_while_placeholder&lstm_737/while/lstm_cell_644/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_737/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_737/while/addAddV2lstm_737_while_placeholderlstm_737/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_737/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_737/while/add_1AddV2*lstm_737_while_lstm_737_while_loop_counterlstm_737/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_737/while/IdentityIdentitylstm_737/while/add_1:z:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_1Identity0lstm_737_while_lstm_737_while_maximum_iterations^lstm_737/while/NoOp*
T0*
_output_shapes
: t
lstm_737/while/Identity_2Identitylstm_737/while/add:z:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_3IdentityClstm_737/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_737/while/NoOp*
T0*
_output_shapes
: ?
lstm_737/while/Identity_4Identity&lstm_737/while/lstm_cell_644/mul_2:z:0^lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_737/while/Identity_5Identity&lstm_737/while/lstm_cell_644/add_1:z:0^lstm_737/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_737/while/NoOpNoOp4^lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp3^lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp5^lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_737_while_identity lstm_737/while/Identity:output:0"?
lstm_737_while_identity_1"lstm_737/while/Identity_1:output:0"?
lstm_737_while_identity_2"lstm_737/while/Identity_2:output:0"?
lstm_737_while_identity_3"lstm_737/while/Identity_3:output:0"?
lstm_737_while_identity_4"lstm_737/while/Identity_4:output:0"?
lstm_737_while_identity_5"lstm_737/while/Identity_5:output:0"T
'lstm_737_while_lstm_737_strided_slice_1)lstm_737_while_lstm_737_strided_slice_1_0"~
<lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource>lstm_737_while_lstm_cell_644_biasadd_readvariableop_resource_0"?
=lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource?lstm_737_while_lstm_cell_644_matmul_1_readvariableop_resource_0"|
;lstm_737_while_lstm_cell_644_matmul_readvariableop_resource=lstm_737_while_lstm_cell_644_matmul_readvariableop_resource_0"?
clstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensorelstm_737_while_tensorarrayv2read_tensorlistgetitem_lstm_737_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp3lstm_737/while/lstm_cell_644/BiasAdd/ReadVariableOp2h
2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp2lstm_737/while/lstm_cell_644/MatMul/ReadVariableOp2l
4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp4lstm_737/while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_245_layer_call_fn_3899243

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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899042o
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
while_body_3901102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3897142

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
0__inference_sequential_245_layer_call_fn_3899216

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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3898453o
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902062

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
?
E__inference_lstm_735_layer_call_and_return_conditional_losses_3897270

inputs(
lstm_cell_642_3897188:	?(
lstm_cell_642_3897190:	d?$
lstm_cell_642_3897192:	?
identity??%lstm_cell_642/StatefulPartitionedCall?while;
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
%lstm_cell_642/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_642_3897188lstm_cell_642_3897190lstm_cell_642_3897192*
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3897142n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_642_3897188lstm_cell_642_3897190lstm_cell_642_3897192*
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
while_body_3897201*
condR
while_cond_3897200*K
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
NoOpNoOp&^lstm_cell_642/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_642/StatefulPartitionedCall%lstm_cell_642/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3901575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_735_layer_call_fn_3900108
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3897079|
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
?
*__inference_lstm_737_layer_call_fn_3901351
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3897970o
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
%__inference_signature_wrapper_3899189
lstm_735_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_735_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3896929o
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
_user_specified_namelstm_735_input
?8
?
while_body_3898890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3900958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3900958___redundant_placeholder05
1while_while_cond_3900958___redundant_placeholder15
1while_while_cond_3900958___redundant_placeholder25
1while_while_cond_3900958___redundant_placeholder3
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
*__inference_lstm_736_layer_call_fn_3900757

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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898809s
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
*__inference_lstm_736_layer_call_fn_3900724
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3897429|
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
?#
?
while_body_3897901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_644_3897925_0:2(/
while_lstm_cell_644_3897927_0:
(+
while_lstm_cell_644_3897929_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_644_3897925:2(-
while_lstm_cell_644_3897927:
()
while_lstm_cell_644_3897929:(??+while/lstm_cell_644/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_644/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_644_3897925_0while_lstm_cell_644_3897927_0while_lstm_cell_644_3897929_0*
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897842?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_644/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_644/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_644/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_644/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_644_3897925while_lstm_cell_644_3897925_0"<
while_lstm_cell_644_3897927while_lstm_cell_644_3897927_0"<
while_lstm_cell_644_3897929while_lstm_cell_644_3897929_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_644/StatefulPartitionedCall+while/lstm_cell_644/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3901245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3896929
lstm_735_inputW
Dsequential_245_lstm_735_lstm_cell_642_matmul_readvariableop_resource:	?Y
Fsequential_245_lstm_735_lstm_cell_642_matmul_1_readvariableop_resource:	d?T
Esequential_245_lstm_735_lstm_cell_642_biasadd_readvariableop_resource:	?W
Dsequential_245_lstm_736_lstm_cell_643_matmul_readvariableop_resource:	d?Y
Fsequential_245_lstm_736_lstm_cell_643_matmul_1_readvariableop_resource:	2?T
Esequential_245_lstm_736_lstm_cell_643_biasadd_readvariableop_resource:	?V
Dsequential_245_lstm_737_lstm_cell_644_matmul_readvariableop_resource:2(X
Fsequential_245_lstm_737_lstm_cell_644_matmul_1_readvariableop_resource:
(S
Esequential_245_lstm_737_lstm_cell_644_biasadd_readvariableop_resource:(I
7sequential_245_dense_245_matmul_readvariableop_resource:
F
8sequential_245_dense_245_biasadd_readvariableop_resource:
identity??/sequential_245/dense_245/BiasAdd/ReadVariableOp?.sequential_245/dense_245/MatMul/ReadVariableOp?<sequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp?;sequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOp?=sequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp?sequential_245/lstm_735/while?<sequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp?;sequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOp?=sequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp?sequential_245/lstm_736/while?<sequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp?;sequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOp?=sequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp?sequential_245/lstm_737/while[
sequential_245/lstm_735/ShapeShapelstm_735_input*
T0*
_output_shapes
:u
+sequential_245/lstm_735/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_245/lstm_735/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_245/lstm_735/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_245/lstm_735/strided_sliceStridedSlice&sequential_245/lstm_735/Shape:output:04sequential_245/lstm_735/strided_slice/stack:output:06sequential_245/lstm_735/strided_slice/stack_1:output:06sequential_245/lstm_735/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_245/lstm_735/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_245/lstm_735/zeros/packedPack.sequential_245/lstm_735/strided_slice:output:0/sequential_245/lstm_735/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_245/lstm_735/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_735/zerosFill-sequential_245/lstm_735/zeros/packed:output:0,sequential_245/lstm_735/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_245/lstm_735/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_245/lstm_735/zeros_1/packedPack.sequential_245/lstm_735/strided_slice:output:01sequential_245/lstm_735/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_245/lstm_735/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_735/zeros_1Fill/sequential_245/lstm_735/zeros_1/packed:output:0.sequential_245/lstm_735/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_245/lstm_735/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_245/lstm_735/transpose	Transposelstm_735_input/sequential_245/lstm_735/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_245/lstm_735/Shape_1Shape%sequential_245/lstm_735/transpose:y:0*
T0*
_output_shapes
:w
-sequential_245/lstm_735/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_735/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_735/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_735/strided_slice_1StridedSlice(sequential_245/lstm_735/Shape_1:output:06sequential_245/lstm_735/strided_slice_1/stack:output:08sequential_245/lstm_735/strided_slice_1/stack_1:output:08sequential_245/lstm_735/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_245/lstm_735/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_245/lstm_735/TensorArrayV2TensorListReserve<sequential_245/lstm_735/TensorArrayV2/element_shape:output:00sequential_245/lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_245/lstm_735/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_245/lstm_735/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_245/lstm_735/transpose:y:0Vsequential_245/lstm_735/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_245/lstm_735/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_735/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_735/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_735/strided_slice_2StridedSlice%sequential_245/lstm_735/transpose:y:06sequential_245/lstm_735/strided_slice_2/stack:output:08sequential_245/lstm_735/strided_slice_2/stack_1:output:08sequential_245/lstm_735/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOpReadVariableOpDsequential_245_lstm_735_lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_245/lstm_735/lstm_cell_642/MatMulMatMul0sequential_245/lstm_735/strided_slice_2:output:0Csequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOpFsequential_245_lstm_735_lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_245/lstm_735/lstm_cell_642/MatMul_1MatMul&sequential_245/lstm_735/zeros:output:0Esequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_245/lstm_735/lstm_cell_642/addAddV26sequential_245/lstm_735/lstm_cell_642/MatMul:product:08sequential_245/lstm_735/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOpEsequential_245_lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_245/lstm_735/lstm_cell_642/BiasAddBiasAdd-sequential_245/lstm_735/lstm_cell_642/add:z:0Dsequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_245/lstm_735/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_245/lstm_735/lstm_cell_642/splitSplit>sequential_245/lstm_735/lstm_cell_642/split/split_dim:output:06sequential_245/lstm_735/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_245/lstm_735/lstm_cell_642/SigmoidSigmoid4sequential_245/lstm_735/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_245/lstm_735/lstm_cell_642/Sigmoid_1Sigmoid4sequential_245/lstm_735/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_245/lstm_735/lstm_cell_642/mulMul3sequential_245/lstm_735/lstm_cell_642/Sigmoid_1:y:0(sequential_245/lstm_735/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_245/lstm_735/lstm_cell_642/ReluRelu4sequential_245/lstm_735/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_245/lstm_735/lstm_cell_642/mul_1Mul1sequential_245/lstm_735/lstm_cell_642/Sigmoid:y:08sequential_245/lstm_735/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_245/lstm_735/lstm_cell_642/add_1AddV2-sequential_245/lstm_735/lstm_cell_642/mul:z:0/sequential_245/lstm_735/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_245/lstm_735/lstm_cell_642/Sigmoid_2Sigmoid4sequential_245/lstm_735/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_245/lstm_735/lstm_cell_642/Relu_1Relu/sequential_245/lstm_735/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_245/lstm_735/lstm_cell_642/mul_2Mul3sequential_245/lstm_735/lstm_cell_642/Sigmoid_2:y:0:sequential_245/lstm_735/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_245/lstm_735/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_245/lstm_735/TensorArrayV2_1TensorListReserve>sequential_245/lstm_735/TensorArrayV2_1/element_shape:output:00sequential_245/lstm_735/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_245/lstm_735/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_245/lstm_735/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_245/lstm_735/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_245/lstm_735/whileWhile3sequential_245/lstm_735/while/loop_counter:output:09sequential_245/lstm_735/while/maximum_iterations:output:0%sequential_245/lstm_735/time:output:00sequential_245/lstm_735/TensorArrayV2_1:handle:0&sequential_245/lstm_735/zeros:output:0(sequential_245/lstm_735/zeros_1:output:00sequential_245/lstm_735/strided_slice_1:output:0Osequential_245/lstm_735/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_245_lstm_735_lstm_cell_642_matmul_readvariableop_resourceFsequential_245_lstm_735_lstm_cell_642_matmul_1_readvariableop_resourceEsequential_245_lstm_735_lstm_cell_642_biasadd_readvariableop_resource*
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
*sequential_245_lstm_735_while_body_3896561*6
cond.R,
*sequential_245_lstm_735_while_cond_3896560*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_245/lstm_735/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_245/lstm_735/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_245/lstm_735/while:output:3Qsequential_245/lstm_735/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_245/lstm_735/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_245/lstm_735/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_735/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_735/strided_slice_3StridedSliceCsequential_245/lstm_735/TensorArrayV2Stack/TensorListStack:tensor:06sequential_245/lstm_735/strided_slice_3/stack:output:08sequential_245/lstm_735/strided_slice_3/stack_1:output:08sequential_245/lstm_735/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_245/lstm_735/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_245/lstm_735/transpose_1	TransposeCsequential_245/lstm_735/TensorArrayV2Stack/TensorListStack:tensor:01sequential_245/lstm_735/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_245/lstm_735/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_245/lstm_736/ShapeShape'sequential_245/lstm_735/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_245/lstm_736/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_245/lstm_736/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_245/lstm_736/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_245/lstm_736/strided_sliceStridedSlice&sequential_245/lstm_736/Shape:output:04sequential_245/lstm_736/strided_slice/stack:output:06sequential_245/lstm_736/strided_slice/stack_1:output:06sequential_245/lstm_736/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_245/lstm_736/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_245/lstm_736/zeros/packedPack.sequential_245/lstm_736/strided_slice:output:0/sequential_245/lstm_736/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_245/lstm_736/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_736/zerosFill-sequential_245/lstm_736/zeros/packed:output:0,sequential_245/lstm_736/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_245/lstm_736/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_245/lstm_736/zeros_1/packedPack.sequential_245/lstm_736/strided_slice:output:01sequential_245/lstm_736/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_245/lstm_736/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_736/zeros_1Fill/sequential_245/lstm_736/zeros_1/packed:output:0.sequential_245/lstm_736/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_245/lstm_736/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_245/lstm_736/transpose	Transpose'sequential_245/lstm_735/transpose_1:y:0/sequential_245/lstm_736/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_245/lstm_736/Shape_1Shape%sequential_245/lstm_736/transpose:y:0*
T0*
_output_shapes
:w
-sequential_245/lstm_736/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_736/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_736/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_736/strided_slice_1StridedSlice(sequential_245/lstm_736/Shape_1:output:06sequential_245/lstm_736/strided_slice_1/stack:output:08sequential_245/lstm_736/strided_slice_1/stack_1:output:08sequential_245/lstm_736/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_245/lstm_736/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_245/lstm_736/TensorArrayV2TensorListReserve<sequential_245/lstm_736/TensorArrayV2/element_shape:output:00sequential_245/lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_245/lstm_736/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_245/lstm_736/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_245/lstm_736/transpose:y:0Vsequential_245/lstm_736/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_245/lstm_736/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_736/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_736/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_736/strided_slice_2StridedSlice%sequential_245/lstm_736/transpose:y:06sequential_245/lstm_736/strided_slice_2/stack:output:08sequential_245/lstm_736/strided_slice_2/stack_1:output:08sequential_245/lstm_736/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOpReadVariableOpDsequential_245_lstm_736_lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_245/lstm_736/lstm_cell_643/MatMulMatMul0sequential_245/lstm_736/strided_slice_2:output:0Csequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOpFsequential_245_lstm_736_lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_245/lstm_736/lstm_cell_643/MatMul_1MatMul&sequential_245/lstm_736/zeros:output:0Esequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_245/lstm_736/lstm_cell_643/addAddV26sequential_245/lstm_736/lstm_cell_643/MatMul:product:08sequential_245/lstm_736/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOpEsequential_245_lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_245/lstm_736/lstm_cell_643/BiasAddBiasAdd-sequential_245/lstm_736/lstm_cell_643/add:z:0Dsequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_245/lstm_736/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_245/lstm_736/lstm_cell_643/splitSplit>sequential_245/lstm_736/lstm_cell_643/split/split_dim:output:06sequential_245/lstm_736/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_245/lstm_736/lstm_cell_643/SigmoidSigmoid4sequential_245/lstm_736/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_245/lstm_736/lstm_cell_643/Sigmoid_1Sigmoid4sequential_245/lstm_736/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_245/lstm_736/lstm_cell_643/mulMul3sequential_245/lstm_736/lstm_cell_643/Sigmoid_1:y:0(sequential_245/lstm_736/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_245/lstm_736/lstm_cell_643/ReluRelu4sequential_245/lstm_736/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_245/lstm_736/lstm_cell_643/mul_1Mul1sequential_245/lstm_736/lstm_cell_643/Sigmoid:y:08sequential_245/lstm_736/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_245/lstm_736/lstm_cell_643/add_1AddV2-sequential_245/lstm_736/lstm_cell_643/mul:z:0/sequential_245/lstm_736/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_245/lstm_736/lstm_cell_643/Sigmoid_2Sigmoid4sequential_245/lstm_736/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_245/lstm_736/lstm_cell_643/Relu_1Relu/sequential_245/lstm_736/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_245/lstm_736/lstm_cell_643/mul_2Mul3sequential_245/lstm_736/lstm_cell_643/Sigmoid_2:y:0:sequential_245/lstm_736/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_245/lstm_736/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_245/lstm_736/TensorArrayV2_1TensorListReserve>sequential_245/lstm_736/TensorArrayV2_1/element_shape:output:00sequential_245/lstm_736/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_245/lstm_736/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_245/lstm_736/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_245/lstm_736/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_245/lstm_736/whileWhile3sequential_245/lstm_736/while/loop_counter:output:09sequential_245/lstm_736/while/maximum_iterations:output:0%sequential_245/lstm_736/time:output:00sequential_245/lstm_736/TensorArrayV2_1:handle:0&sequential_245/lstm_736/zeros:output:0(sequential_245/lstm_736/zeros_1:output:00sequential_245/lstm_736/strided_slice_1:output:0Osequential_245/lstm_736/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_245_lstm_736_lstm_cell_643_matmul_readvariableop_resourceFsequential_245_lstm_736_lstm_cell_643_matmul_1_readvariableop_resourceEsequential_245_lstm_736_lstm_cell_643_biasadd_readvariableop_resource*
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
*sequential_245_lstm_736_while_body_3896700*6
cond.R,
*sequential_245_lstm_736_while_cond_3896699*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_245/lstm_736/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_245/lstm_736/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_245/lstm_736/while:output:3Qsequential_245/lstm_736/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_245/lstm_736/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_245/lstm_736/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_736/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_736/strided_slice_3StridedSliceCsequential_245/lstm_736/TensorArrayV2Stack/TensorListStack:tensor:06sequential_245/lstm_736/strided_slice_3/stack:output:08sequential_245/lstm_736/strided_slice_3/stack_1:output:08sequential_245/lstm_736/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_245/lstm_736/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_245/lstm_736/transpose_1	TransposeCsequential_245/lstm_736/TensorArrayV2Stack/TensorListStack:tensor:01sequential_245/lstm_736/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_245/lstm_736/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_245/lstm_737/ShapeShape'sequential_245/lstm_736/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_245/lstm_737/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_245/lstm_737/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_245/lstm_737/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_245/lstm_737/strided_sliceStridedSlice&sequential_245/lstm_737/Shape:output:04sequential_245/lstm_737/strided_slice/stack:output:06sequential_245/lstm_737/strided_slice/stack_1:output:06sequential_245/lstm_737/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_245/lstm_737/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_245/lstm_737/zeros/packedPack.sequential_245/lstm_737/strided_slice:output:0/sequential_245/lstm_737/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_245/lstm_737/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_737/zerosFill-sequential_245/lstm_737/zeros/packed:output:0,sequential_245/lstm_737/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_245/lstm_737/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_245/lstm_737/zeros_1/packedPack.sequential_245/lstm_737/strided_slice:output:01sequential_245/lstm_737/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_245/lstm_737/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_245/lstm_737/zeros_1Fill/sequential_245/lstm_737/zeros_1/packed:output:0.sequential_245/lstm_737/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_245/lstm_737/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_245/lstm_737/transpose	Transpose'sequential_245/lstm_736/transpose_1:y:0/sequential_245/lstm_737/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_245/lstm_737/Shape_1Shape%sequential_245/lstm_737/transpose:y:0*
T0*
_output_shapes
:w
-sequential_245/lstm_737/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_737/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_737/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_737/strided_slice_1StridedSlice(sequential_245/lstm_737/Shape_1:output:06sequential_245/lstm_737/strided_slice_1/stack:output:08sequential_245/lstm_737/strided_slice_1/stack_1:output:08sequential_245/lstm_737/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_245/lstm_737/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_245/lstm_737/TensorArrayV2TensorListReserve<sequential_245/lstm_737/TensorArrayV2/element_shape:output:00sequential_245/lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_245/lstm_737/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_245/lstm_737/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_245/lstm_737/transpose:y:0Vsequential_245/lstm_737/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_245/lstm_737/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_737/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_245/lstm_737/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_737/strided_slice_2StridedSlice%sequential_245/lstm_737/transpose:y:06sequential_245/lstm_737/strided_slice_2/stack:output:08sequential_245/lstm_737/strided_slice_2/stack_1:output:08sequential_245/lstm_737/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOpReadVariableOpDsequential_245_lstm_737_lstm_cell_644_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_245/lstm_737/lstm_cell_644/MatMulMatMul0sequential_245/lstm_737/strided_slice_2:output:0Csequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOpFsequential_245_lstm_737_lstm_cell_644_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_245/lstm_737/lstm_cell_644/MatMul_1MatMul&sequential_245/lstm_737/zeros:output:0Esequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_245/lstm_737/lstm_cell_644/addAddV26sequential_245/lstm_737/lstm_cell_644/MatMul:product:08sequential_245/lstm_737/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOpEsequential_245_lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_245/lstm_737/lstm_cell_644/BiasAddBiasAdd-sequential_245/lstm_737/lstm_cell_644/add:z:0Dsequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_245/lstm_737/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_245/lstm_737/lstm_cell_644/splitSplit>sequential_245/lstm_737/lstm_cell_644/split/split_dim:output:06sequential_245/lstm_737/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_245/lstm_737/lstm_cell_644/SigmoidSigmoid4sequential_245/lstm_737/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_245/lstm_737/lstm_cell_644/Sigmoid_1Sigmoid4sequential_245/lstm_737/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_245/lstm_737/lstm_cell_644/mulMul3sequential_245/lstm_737/lstm_cell_644/Sigmoid_1:y:0(sequential_245/lstm_737/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_245/lstm_737/lstm_cell_644/ReluRelu4sequential_245/lstm_737/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_245/lstm_737/lstm_cell_644/mul_1Mul1sequential_245/lstm_737/lstm_cell_644/Sigmoid:y:08sequential_245/lstm_737/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_245/lstm_737/lstm_cell_644/add_1AddV2-sequential_245/lstm_737/lstm_cell_644/mul:z:0/sequential_245/lstm_737/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_245/lstm_737/lstm_cell_644/Sigmoid_2Sigmoid4sequential_245/lstm_737/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_245/lstm_737/lstm_cell_644/Relu_1Relu/sequential_245/lstm_737/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_245/lstm_737/lstm_cell_644/mul_2Mul3sequential_245/lstm_737/lstm_cell_644/Sigmoid_2:y:0:sequential_245/lstm_737/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_245/lstm_737/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_245/lstm_737/TensorArrayV2_1TensorListReserve>sequential_245/lstm_737/TensorArrayV2_1/element_shape:output:00sequential_245/lstm_737/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_245/lstm_737/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_245/lstm_737/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_245/lstm_737/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_245/lstm_737/whileWhile3sequential_245/lstm_737/while/loop_counter:output:09sequential_245/lstm_737/while/maximum_iterations:output:0%sequential_245/lstm_737/time:output:00sequential_245/lstm_737/TensorArrayV2_1:handle:0&sequential_245/lstm_737/zeros:output:0(sequential_245/lstm_737/zeros_1:output:00sequential_245/lstm_737/strided_slice_1:output:0Osequential_245/lstm_737/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_245_lstm_737_lstm_cell_644_matmul_readvariableop_resourceFsequential_245_lstm_737_lstm_cell_644_matmul_1_readvariableop_resourceEsequential_245_lstm_737_lstm_cell_644_biasadd_readvariableop_resource*
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
*sequential_245_lstm_737_while_body_3896839*6
cond.R,
*sequential_245_lstm_737_while_cond_3896838*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_245/lstm_737/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_245/lstm_737/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_245/lstm_737/while:output:3Qsequential_245/lstm_737/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_245/lstm_737/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_245/lstm_737/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_245/lstm_737/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_245/lstm_737/strided_slice_3StridedSliceCsequential_245/lstm_737/TensorArrayV2Stack/TensorListStack:tensor:06sequential_245/lstm_737/strided_slice_3/stack:output:08sequential_245/lstm_737/strided_slice_3/stack_1:output:08sequential_245/lstm_737/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_245/lstm_737/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_245/lstm_737/transpose_1	TransposeCsequential_245/lstm_737/TensorArrayV2Stack/TensorListStack:tensor:01sequential_245/lstm_737/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_245/lstm_737/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_245/dense_245/MatMul/ReadVariableOpReadVariableOp7sequential_245_dense_245_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_245/dense_245/MatMulMatMul0sequential_245/lstm_737/strided_slice_3:output:06sequential_245/dense_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_245/dense_245/BiasAdd/ReadVariableOpReadVariableOp8sequential_245_dense_245_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_245/dense_245/BiasAddBiasAdd)sequential_245/dense_245/MatMul:product:07sequential_245/dense_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_245/dense_245/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_245/dense_245/BiasAdd/ReadVariableOp/^sequential_245/dense_245/MatMul/ReadVariableOp=^sequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp<^sequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOp>^sequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp^sequential_245/lstm_735/while=^sequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp<^sequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOp>^sequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp^sequential_245/lstm_736/while=^sequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp<^sequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOp>^sequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp^sequential_245/lstm_737/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_245/dense_245/BiasAdd/ReadVariableOp/sequential_245/dense_245/BiasAdd/ReadVariableOp2`
.sequential_245/dense_245/MatMul/ReadVariableOp.sequential_245/dense_245/MatMul/ReadVariableOp2|
<sequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp<sequential_245/lstm_735/lstm_cell_642/BiasAdd/ReadVariableOp2z
;sequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOp;sequential_245/lstm_735/lstm_cell_642/MatMul/ReadVariableOp2~
=sequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp=sequential_245/lstm_735/lstm_cell_642/MatMul_1/ReadVariableOp2>
sequential_245/lstm_735/whilesequential_245/lstm_735/while2|
<sequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp<sequential_245/lstm_736/lstm_cell_643/BiasAdd/ReadVariableOp2z
;sequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOp;sequential_245/lstm_736/lstm_cell_643/MatMul/ReadVariableOp2~
=sequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp=sequential_245/lstm_736/lstm_cell_643/MatMul_1/ReadVariableOp2>
sequential_245/lstm_736/whilesequential_245/lstm_736/while2|
<sequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp<sequential_245/lstm_737/lstm_cell_644/BiasAdd/ReadVariableOp2z
;sequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOp;sequential_245/lstm_737/lstm_cell_644/MatMul/ReadVariableOp2~
=sequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp=sequential_245/lstm_737/lstm_cell_644/MatMul_1/ReadVariableOp2>
sequential_245/lstm_737/whilesequential_245/lstm_737/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_735_input
?
?
while_cond_3898193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898193___redundant_placeholder05
1while_while_cond_3898193___redundant_placeholder15
1while_while_cond_3898193___redundant_placeholder25
1while_while_cond_3898193___redundant_placeholder3
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
lstm_735_while_cond_3899728.
*lstm_735_while_lstm_735_while_loop_counter4
0lstm_735_while_lstm_735_while_maximum_iterations
lstm_735_while_placeholder 
lstm_735_while_placeholder_1 
lstm_735_while_placeholder_2 
lstm_735_while_placeholder_30
,lstm_735_while_less_lstm_735_strided_slice_1G
Clstm_735_while_lstm_735_while_cond_3899728___redundant_placeholder0G
Clstm_735_while_lstm_735_while_cond_3899728___redundant_placeholder1G
Clstm_735_while_lstm_735_while_cond_3899728___redundant_placeholder2G
Clstm_735_while_lstm_735_while_cond_3899728___redundant_placeholder3
lstm_735_while_identity
?
lstm_735/while/LessLesslstm_735_while_placeholder,lstm_735_while_less_lstm_735_strided_slice_1*
T0*
_output_shapes
: ]
lstm_735/while/IdentityIdentitylstm_735/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_735_while_identity lstm_735/while/Identity:output:0*(
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
while_body_3901432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_642_layer_call_fn_3901981

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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3896996o
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
while_body_3900959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_643_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_643_matmul_readvariableop_resource:	d?G
4while_lstm_cell_643_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_643_biasadd_readvariableop_resource:	???*while/lstm_cell_643/BiasAdd/ReadVariableOp?)while/lstm_cell_643/MatMul/ReadVariableOp?+while/lstm_cell_643/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_643/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_643/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_643/addAddV2$while/lstm_cell_643/MatMul:product:0&while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_643/BiasAddBiasAddwhile/lstm_cell_643/add:z:02while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_643/splitSplit,while/lstm_cell_643/split/split_dim:output:0$while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_643/SigmoidSigmoid"while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_1Sigmoid"while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mulMul!while/lstm_cell_643/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_643/ReluRelu"while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_1Mulwhile/lstm_cell_643/Sigmoid:y:0&while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/add_1AddV2while/lstm_cell_643/mul:z:0while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_643/Sigmoid_2Sigmoid"while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_643/Relu_1Reluwhile/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_643/mul_2Mul!while/lstm_cell_643/Sigmoid_2:y:0(while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_643/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_643/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_643/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_643/BiasAdd/ReadVariableOp*^while/lstm_cell_643/MatMul/ReadVariableOp,^while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_643_biasadd_readvariableop_resource5while_lstm_cell_643_biasadd_readvariableop_resource_0"n
4while_lstm_cell_643_matmul_1_readvariableop_resource6while_lstm_cell_643_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_643_matmul_readvariableop_resource4while_lstm_cell_643_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_643/BiasAdd/ReadVariableOp*while/lstm_cell_643/BiasAdd/ReadVariableOp2V
)while/lstm_cell_643/MatMul/ReadVariableOp)while/lstm_cell_643/MatMul/ReadVariableOp2Z
+while/lstm_cell_643/MatMul_1/ReadVariableOp+while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3897346

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
while_cond_3901101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901101___redundant_placeholder05
1while_while_cond_3901101___redundant_placeholder15
1while_while_cond_3901101___redundant_placeholder25
1while_while_cond_3901101___redundant_placeholder3
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900284
inputs_0?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3900200*
condR
while_cond_3900199*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3898343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898343___redundant_placeholder05
1while_while_cond_3898343___redundant_placeholder15
1while_while_cond_3898343___redundant_placeholder25
1while_while_cond_3898343___redundant_placeholder3
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

lstm_736_while_body_3899868.
*lstm_736_while_lstm_736_while_loop_counter4
0lstm_736_while_lstm_736_while_maximum_iterations
lstm_736_while_placeholder 
lstm_736_while_placeholder_1 
lstm_736_while_placeholder_2 
lstm_736_while_placeholder_3-
)lstm_736_while_lstm_736_strided_slice_1_0i
elstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0:	d?R
?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0:	2?M
>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0:	?
lstm_736_while_identity
lstm_736_while_identity_1
lstm_736_while_identity_2
lstm_736_while_identity_3
lstm_736_while_identity_4
lstm_736_while_identity_5+
'lstm_736_while_lstm_736_strided_slice_1g
clstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensorN
;lstm_736_while_lstm_cell_643_matmul_readvariableop_resource:	d?P
=lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource:	2?K
<lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource:	???3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp?2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp?4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp?
@lstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_736/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0lstm_736_while_placeholderIlstm_736/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOpReadVariableOp=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_736/while/lstm_cell_643/MatMulMatMul9lstm_736/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_736/while/lstm_cell_643/MatMul_1MatMullstm_736_while_placeholder_2<lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_736/while/lstm_cell_643/addAddV2-lstm_736/while/lstm_cell_643/MatMul:product:0/lstm_736/while/lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_736/while/lstm_cell_643/BiasAddBiasAdd$lstm_736/while/lstm_cell_643/add:z:0;lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_736/while/lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_736/while/lstm_cell_643/splitSplit5lstm_736/while/lstm_cell_643/split/split_dim:output:0-lstm_736/while/lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_736/while/lstm_cell_643/SigmoidSigmoid+lstm_736/while/lstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_736/while/lstm_cell_643/Sigmoid_1Sigmoid+lstm_736/while/lstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_736/while/lstm_cell_643/mulMul*lstm_736/while/lstm_cell_643/Sigmoid_1:y:0lstm_736_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_736/while/lstm_cell_643/ReluRelu+lstm_736/while/lstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/mul_1Mul(lstm_736/while/lstm_cell_643/Sigmoid:y:0/lstm_736/while/lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/add_1AddV2$lstm_736/while/lstm_cell_643/mul:z:0&lstm_736/while/lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_736/while/lstm_cell_643/Sigmoid_2Sigmoid+lstm_736/while/lstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_736/while/lstm_cell_643/Relu_1Relu&lstm_736/while/lstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_736/while/lstm_cell_643/mul_2Mul*lstm_736/while/lstm_cell_643/Sigmoid_2:y:01lstm_736/while/lstm_cell_643/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_736/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_736_while_placeholder_1lstm_736_while_placeholder&lstm_736/while/lstm_cell_643/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_736/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_736/while/addAddV2lstm_736_while_placeholderlstm_736/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_736/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_736/while/add_1AddV2*lstm_736_while_lstm_736_while_loop_counterlstm_736/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_736/while/IdentityIdentitylstm_736/while/add_1:z:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_1Identity0lstm_736_while_lstm_736_while_maximum_iterations^lstm_736/while/NoOp*
T0*
_output_shapes
: t
lstm_736/while/Identity_2Identitylstm_736/while/add:z:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_3IdentityClstm_736/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_736/while/NoOp*
T0*
_output_shapes
: ?
lstm_736/while/Identity_4Identity&lstm_736/while/lstm_cell_643/mul_2:z:0^lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_736/while/Identity_5Identity&lstm_736/while/lstm_cell_643/add_1:z:0^lstm_736/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_736/while/NoOpNoOp4^lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp3^lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp5^lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_736_while_identity lstm_736/while/Identity:output:0"?
lstm_736_while_identity_1"lstm_736/while/Identity_1:output:0"?
lstm_736_while_identity_2"lstm_736/while/Identity_2:output:0"?
lstm_736_while_identity_3"lstm_736/while/Identity_3:output:0"?
lstm_736_while_identity_4"lstm_736/while/Identity_4:output:0"?
lstm_736_while_identity_5"lstm_736/while/Identity_5:output:0"T
'lstm_736_while_lstm_736_strided_slice_1)lstm_736_while_lstm_736_strided_slice_1_0"~
<lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource>lstm_736_while_lstm_cell_643_biasadd_readvariableop_resource_0"?
=lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource?lstm_736_while_lstm_cell_643_matmul_1_readvariableop_resource_0"|
;lstm_736_while_lstm_cell_643_matmul_readvariableop_resource=lstm_736_while_lstm_cell_643_matmul_readvariableop_resource_0"?
clstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensorelstm_736_while_tensorarrayv2read_tensorlistgetitem_lstm_736_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp3lstm_736/while/lstm_cell_643/BiasAdd/ReadVariableOp2h
2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp2lstm_736/while/lstm_cell_643/MatMul/ReadVariableOp2l
4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp4lstm_736/while/lstm_cell_643/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_245_lstm_737_while_cond_3896838L
Hsequential_245_lstm_737_while_sequential_245_lstm_737_while_loop_counterR
Nsequential_245_lstm_737_while_sequential_245_lstm_737_while_maximum_iterations-
)sequential_245_lstm_737_while_placeholder/
+sequential_245_lstm_737_while_placeholder_1/
+sequential_245_lstm_737_while_placeholder_2/
+sequential_245_lstm_737_while_placeholder_3N
Jsequential_245_lstm_737_while_less_sequential_245_lstm_737_strided_slice_1e
asequential_245_lstm_737_while_sequential_245_lstm_737_while_cond_3896838___redundant_placeholder0e
asequential_245_lstm_737_while_sequential_245_lstm_737_while_cond_3896838___redundant_placeholder1e
asequential_245_lstm_737_while_sequential_245_lstm_737_while_cond_3896838___redundant_placeholder2e
asequential_245_lstm_737_while_sequential_245_lstm_737_while_cond_3896838___redundant_placeholder3*
&sequential_245_lstm_737_while_identity
?
"sequential_245/lstm_737/while/LessLess)sequential_245_lstm_737_while_placeholderJsequential_245_lstm_737_while_less_sequential_245_lstm_737_strided_slice_1*
T0*
_output_shapes
: {
&sequential_245/lstm_737/while/IdentityIdentity&sequential_245/lstm_737/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_245_lstm_737_while_identity/sequential_245/lstm_737/while/Identity:output:0*(
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900713

inputs?
,lstm_cell_642_matmul_readvariableop_resource:	?A
.lstm_cell_642_matmul_1_readvariableop_resource:	d?<
-lstm_cell_642_biasadd_readvariableop_resource:	?
identity??$lstm_cell_642/BiasAdd/ReadVariableOp?#lstm_cell_642/MatMul/ReadVariableOp?%lstm_cell_642/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_642/MatMul/ReadVariableOpReadVariableOp,lstm_cell_642_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_642/MatMulMatMulstrided_slice_2:output:0+lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_642_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_642/MatMul_1MatMulzeros:output:0-lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_642/addAddV2lstm_cell_642/MatMul:product:0 lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_642_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_642/BiasAddBiasAddlstm_cell_642/add:z:0,lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_642/splitSplit&lstm_cell_642/split/split_dim:output:0lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_642/SigmoidSigmoidlstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_1Sigmoidlstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_642/mulMullstm_cell_642/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_642/ReluRelulstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_1Mullstm_cell_642/Sigmoid:y:0 lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_642/add_1AddV2lstm_cell_642/mul:z:0lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_642/Sigmoid_2Sigmoidlstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_642/Relu_1Relulstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_642/mul_2Mullstm_cell_642/Sigmoid_2:y:0"lstm_cell_642/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_642_matmul_readvariableop_resource.lstm_cell_642_matmul_1_readvariableop_resource-lstm_cell_642_biasadd_readvariableop_resource*
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
while_body_3900629*
condR
while_cond_3900628*K
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
NoOpNoOp%^lstm_cell_642/BiasAdd/ReadVariableOp$^lstm_cell_642/MatMul/ReadVariableOp&^lstm_cell_642/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_642/BiasAdd/ReadVariableOp$lstm_cell_642/BiasAdd/ReadVariableOp2J
#lstm_cell_642/MatMul/ReadVariableOp#lstm_cell_642/MatMul/ReadVariableOp2N
%lstm_cell_642/MatMul_1/ReadVariableOp%lstm_cell_642/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_736_layer_call_and_return_conditional_losses_3898809

inputs?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3898725*
condR
while_cond_3898724*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_736_layer_call_and_return_conditional_losses_3900900
inputs_0?
,lstm_cell_643_matmul_readvariableop_resource:	d?A
.lstm_cell_643_matmul_1_readvariableop_resource:	2?<
-lstm_cell_643_biasadd_readvariableop_resource:	?
identity??$lstm_cell_643/BiasAdd/ReadVariableOp?#lstm_cell_643/MatMul/ReadVariableOp?%lstm_cell_643/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_643/MatMul/ReadVariableOpReadVariableOp,lstm_cell_643_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_643/MatMulMatMulstrided_slice_2:output:0+lstm_cell_643/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_643/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_643_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_643/MatMul_1MatMulzeros:output:0-lstm_cell_643/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_643/addAddV2lstm_cell_643/MatMul:product:0 lstm_cell_643/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_643/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_643_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_643/BiasAddBiasAddlstm_cell_643/add:z:0,lstm_cell_643/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_643/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_643/splitSplit&lstm_cell_643/split/split_dim:output:0lstm_cell_643/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_643/SigmoidSigmoidlstm_cell_643/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_1Sigmoidlstm_cell_643/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_643/mulMullstm_cell_643/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_643/ReluRelulstm_cell_643/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_1Mullstm_cell_643/Sigmoid:y:0 lstm_cell_643/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_643/add_1AddV2lstm_cell_643/mul:z:0lstm_cell_643/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_643/Sigmoid_2Sigmoidlstm_cell_643/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_643/Relu_1Relulstm_cell_643/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_643/mul_2Mullstm_cell_643/Sigmoid_2:y:0"lstm_cell_643/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_643_matmul_readvariableop_resource.lstm_cell_643_matmul_1_readvariableop_resource-lstm_cell_643_biasadd_readvariableop_resource*
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
while_body_3900816*
condR
while_cond_3900815*K
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
NoOpNoOp%^lstm_cell_643/BiasAdd/ReadVariableOp$^lstm_cell_643/MatMul/ReadVariableOp&^lstm_cell_643/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_643/BiasAdd/ReadVariableOp$lstm_cell_643/BiasAdd/ReadVariableOp2J
#lstm_cell_643/MatMul/ReadVariableOp#lstm_cell_643/MatMul/ReadVariableOp2N
%lstm_cell_643/MatMul_1/ReadVariableOp%lstm_cell_643/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3901718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_644_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_644_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_644_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_644_matmul_readvariableop_resource:2(F
4while_lstm_cell_644_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_644_biasadd_readvariableop_resource:(??*while/lstm_cell_644/BiasAdd/ReadVariableOp?)while/lstm_cell_644/MatMul/ReadVariableOp?+while/lstm_cell_644/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_644/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_644_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_644/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_644/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_644/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_644_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_644/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_644/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_644/addAddV2$while/lstm_cell_644/MatMul:product:0&while/lstm_cell_644/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_644/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_644_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_644/BiasAddBiasAddwhile/lstm_cell_644/add:z:02while/lstm_cell_644/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_644/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_644/splitSplit,while/lstm_cell_644/split/split_dim:output:0$while/lstm_cell_644/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_644/SigmoidSigmoid"while/lstm_cell_644/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_1Sigmoid"while/lstm_cell_644/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mulMul!while/lstm_cell_644/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_644/ReluRelu"while/lstm_cell_644/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_1Mulwhile/lstm_cell_644/Sigmoid:y:0&while/lstm_cell_644/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/add_1AddV2while/lstm_cell_644/mul:z:0while/lstm_cell_644/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_644/Sigmoid_2Sigmoid"while/lstm_cell_644/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_644/Relu_1Reluwhile/lstm_cell_644/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_644/mul_2Mul!while/lstm_cell_644/Sigmoid_2:y:0(while/lstm_cell_644/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_644/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_644/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_644/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_644/BiasAdd/ReadVariableOp*^while/lstm_cell_644/MatMul/ReadVariableOp,^while/lstm_cell_644/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_644_biasadd_readvariableop_resource5while_lstm_cell_644_biasadd_readvariableop_resource_0"n
4while_lstm_cell_644_matmul_1_readvariableop_resource6while_lstm_cell_644_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_644_matmul_readvariableop_resource4while_lstm_cell_644_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_644/BiasAdd/ReadVariableOp*while/lstm_cell_644/BiasAdd/ReadVariableOp2V
)while/lstm_cell_644/MatMul/ReadVariableOp)while/lstm_cell_644/MatMul/ReadVariableOp2Z
+while/lstm_cell_644/MatMul_1/ReadVariableOp+while/lstm_cell_644/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_644_layer_call_fn_3902177

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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3897696o
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
while_cond_3898043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3898043___redundant_placeholder05
1while_while_cond_3898043___redundant_placeholder15
1while_while_cond_3898043___redundant_placeholder25
1while_while_cond_3898043___redundant_placeholder3
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3896996

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
*sequential_245_lstm_735_while_body_3896561L
Hsequential_245_lstm_735_while_sequential_245_lstm_735_while_loop_counterR
Nsequential_245_lstm_735_while_sequential_245_lstm_735_while_maximum_iterations-
)sequential_245_lstm_735_while_placeholder/
+sequential_245_lstm_735_while_placeholder_1/
+sequential_245_lstm_735_while_placeholder_2/
+sequential_245_lstm_735_while_placeholder_3K
Gsequential_245_lstm_735_while_sequential_245_lstm_735_strided_slice_1_0?
?sequential_245_lstm_735_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_735_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_245_lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0:	?a
Nsequential_245_lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?\
Msequential_245_lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0:	?*
&sequential_245_lstm_735_while_identity,
(sequential_245_lstm_735_while_identity_1,
(sequential_245_lstm_735_while_identity_2,
(sequential_245_lstm_735_while_identity_3,
(sequential_245_lstm_735_while_identity_4,
(sequential_245_lstm_735_while_identity_5I
Esequential_245_lstm_735_while_sequential_245_lstm_735_strided_slice_1?
?sequential_245_lstm_735_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_735_tensorarrayunstack_tensorlistfromtensor]
Jsequential_245_lstm_735_while_lstm_cell_642_matmul_readvariableop_resource:	?_
Lsequential_245_lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource:	d?Z
Ksequential_245_lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource:	???Bsequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp?Asequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp?Csequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp?
Osequential_245/lstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_245/lstm_735/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_245_lstm_735_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_735_tensorarrayunstack_tensorlistfromtensor_0)sequential_245_lstm_735_while_placeholderXsequential_245/lstm_735/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOpLsequential_245_lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_245/lstm_735/while/lstm_cell_642/MatMulMatMulHsequential_245/lstm_735/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOpNsequential_245_lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_245/lstm_735/while/lstm_cell_642/MatMul_1MatMul+sequential_245_lstm_735_while_placeholder_2Ksequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_245/lstm_735/while/lstm_cell_642/addAddV2<sequential_245/lstm_735/while/lstm_cell_642/MatMul:product:0>sequential_245/lstm_735/while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOpMsequential_245_lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_245/lstm_735/while/lstm_cell_642/BiasAddBiasAdd3sequential_245/lstm_735/while/lstm_cell_642/add:z:0Jsequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_245/lstm_735/while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_245/lstm_735/while/lstm_cell_642/splitSplitDsequential_245/lstm_735/while/lstm_cell_642/split/split_dim:output:0<sequential_245/lstm_735/while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_245/lstm_735/while/lstm_cell_642/SigmoidSigmoid:sequential_245/lstm_735/while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_245/lstm_735/while/lstm_cell_642/Sigmoid_1Sigmoid:sequential_245/lstm_735/while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_245/lstm_735/while/lstm_cell_642/mulMul9sequential_245/lstm_735/while/lstm_cell_642/Sigmoid_1:y:0+sequential_245_lstm_735_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_245/lstm_735/while/lstm_cell_642/ReluRelu:sequential_245/lstm_735/while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_245/lstm_735/while/lstm_cell_642/mul_1Mul7sequential_245/lstm_735/while/lstm_cell_642/Sigmoid:y:0>sequential_245/lstm_735/while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_245/lstm_735/while/lstm_cell_642/add_1AddV23sequential_245/lstm_735/while/lstm_cell_642/mul:z:05sequential_245/lstm_735/while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_245/lstm_735/while/lstm_cell_642/Sigmoid_2Sigmoid:sequential_245/lstm_735/while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_245/lstm_735/while/lstm_cell_642/Relu_1Relu5sequential_245/lstm_735/while/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_245/lstm_735/while/lstm_cell_642/mul_2Mul9sequential_245/lstm_735/while/lstm_cell_642/Sigmoid_2:y:0@sequential_245/lstm_735/while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_245/lstm_735/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_245_lstm_735_while_placeholder_1)sequential_245_lstm_735_while_placeholder5sequential_245/lstm_735/while/lstm_cell_642/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_245/lstm_735/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_245/lstm_735/while/addAddV2)sequential_245_lstm_735_while_placeholder,sequential_245/lstm_735/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_245/lstm_735/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_245/lstm_735/while/add_1AddV2Hsequential_245_lstm_735_while_sequential_245_lstm_735_while_loop_counter.sequential_245/lstm_735/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_245/lstm_735/while/IdentityIdentity'sequential_245/lstm_735/while/add_1:z:0#^sequential_245/lstm_735/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_735/while/Identity_1IdentityNsequential_245_lstm_735_while_sequential_245_lstm_735_while_maximum_iterations#^sequential_245/lstm_735/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_735/while/Identity_2Identity%sequential_245/lstm_735/while/add:z:0#^sequential_245/lstm_735/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_735/while/Identity_3IdentityRsequential_245/lstm_735/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_245/lstm_735/while/NoOp*
T0*
_output_shapes
: ?
(sequential_245/lstm_735/while/Identity_4Identity5sequential_245/lstm_735/while/lstm_cell_642/mul_2:z:0#^sequential_245/lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_245/lstm_735/while/Identity_5Identity5sequential_245/lstm_735/while/lstm_cell_642/add_1:z:0#^sequential_245/lstm_735/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_245/lstm_735/while/NoOpNoOpC^sequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOpB^sequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOpD^sequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_245_lstm_735_while_identity/sequential_245/lstm_735/while/Identity:output:0"]
(sequential_245_lstm_735_while_identity_11sequential_245/lstm_735/while/Identity_1:output:0"]
(sequential_245_lstm_735_while_identity_21sequential_245/lstm_735/while/Identity_2:output:0"]
(sequential_245_lstm_735_while_identity_31sequential_245/lstm_735/while/Identity_3:output:0"]
(sequential_245_lstm_735_while_identity_41sequential_245/lstm_735/while/Identity_4:output:0"]
(sequential_245_lstm_735_while_identity_51sequential_245/lstm_735/while/Identity_5:output:0"?
Ksequential_245_lstm_735_while_lstm_cell_642_biasadd_readvariableop_resourceMsequential_245_lstm_735_while_lstm_cell_642_biasadd_readvariableop_resource_0"?
Lsequential_245_lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resourceNsequential_245_lstm_735_while_lstm_cell_642_matmul_1_readvariableop_resource_0"?
Jsequential_245_lstm_735_while_lstm_cell_642_matmul_readvariableop_resourceLsequential_245_lstm_735_while_lstm_cell_642_matmul_readvariableop_resource_0"?
Esequential_245_lstm_735_while_sequential_245_lstm_735_strided_slice_1Gsequential_245_lstm_735_while_sequential_245_lstm_735_strided_slice_1_0"?
?sequential_245_lstm_735_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_735_tensorarrayunstack_tensorlistfromtensor?sequential_245_lstm_735_while_tensorarrayv2read_tensorlistgetitem_sequential_245_lstm_735_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOpBsequential_245/lstm_735/while/lstm_cell_642/BiasAdd/ReadVariableOp2?
Asequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOpAsequential_245/lstm_735/while/lstm_cell_642/MatMul/ReadVariableOp2?
Csequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOpCsequential_245/lstm_735/while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3898044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_642_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_642_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_642_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_642_matmul_readvariableop_resource:	?G
4while_lstm_cell_642_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_642_biasadd_readvariableop_resource:	???*while/lstm_cell_642/BiasAdd/ReadVariableOp?)while/lstm_cell_642/MatMul/ReadVariableOp?+while/lstm_cell_642/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_642/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_642_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_642/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_642/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_642/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_642_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_642/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_642/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_642/addAddV2$while/lstm_cell_642/MatMul:product:0&while/lstm_cell_642/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_642/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_642_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_642/BiasAddBiasAddwhile/lstm_cell_642/add:z:02while/lstm_cell_642/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_642/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_642/splitSplit,while/lstm_cell_642/split/split_dim:output:0$while/lstm_cell_642/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_642/SigmoidSigmoid"while/lstm_cell_642/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_1Sigmoid"while/lstm_cell_642/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mulMul!while/lstm_cell_642/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_642/ReluRelu"while/lstm_cell_642/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_1Mulwhile/lstm_cell_642/Sigmoid:y:0&while/lstm_cell_642/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/add_1AddV2while/lstm_cell_642/mul:z:0while/lstm_cell_642/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_642/Sigmoid_2Sigmoid"while/lstm_cell_642/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_642/Relu_1Reluwhile/lstm_cell_642/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_642/mul_2Mul!while/lstm_cell_642/Sigmoid_2:y:0(while/lstm_cell_642/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_642/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_642/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_642/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_642/BiasAdd/ReadVariableOp*^while/lstm_cell_642/MatMul/ReadVariableOp,^while/lstm_cell_642/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_642_biasadd_readvariableop_resource5while_lstm_cell_642_biasadd_readvariableop_resource_0"n
4while_lstm_cell_642_matmul_1_readvariableop_resource6while_lstm_cell_642_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_642_matmul_readvariableop_resource4while_lstm_cell_642_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_642/BiasAdd/ReadVariableOp*while/lstm_cell_642/BiasAdd/ReadVariableOp2V
)while/lstm_cell_642/MatMul/ReadVariableOp)while/lstm_cell_642/MatMul/ReadVariableOp2Z
+while/lstm_cell_642/MatMul_1/ReadVariableOp+while/lstm_cell_642/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3901717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3901717___redundant_placeholder05
1while_while_cond_3901717___redundant_placeholder15
1while_while_cond_3901717___redundant_placeholder25
1while_while_cond_3901717___redundant_placeholder3
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
lstm_737_while_cond_3899579.
*lstm_737_while_lstm_737_while_loop_counter4
0lstm_737_while_lstm_737_while_maximum_iterations
lstm_737_while_placeholder 
lstm_737_while_placeholder_1 
lstm_737_while_placeholder_2 
lstm_737_while_placeholder_30
,lstm_737_while_less_lstm_737_strided_slice_1G
Clstm_737_while_lstm_737_while_cond_3899579___redundant_placeholder0G
Clstm_737_while_lstm_737_while_cond_3899579___redundant_placeholder1G
Clstm_737_while_lstm_737_while_cond_3899579___redundant_placeholder2G
Clstm_737_while_lstm_737_while_cond_3899579___redundant_placeholder3
lstm_737_while_identity
?
lstm_737/while/LessLesslstm_737_while_placeholder,lstm_737_while_less_lstm_737_strided_slice_1*
T0*
_output_shapes
: ]
lstm_737/while/IdentityIdentitylstm_737/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_737_while_identity lstm_737/while/Identity:output:0*(
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
lstm_735_input;
 serving_default_lstm_735_input:0?????????=
	dense_2450
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
2dense_245/kernel
:2dense_245/bias
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
0:.	?2lstm_735/lstm_cell_735/kernel
::8	d?2'lstm_735/lstm_cell_735/recurrent_kernel
*:(?2lstm_735/lstm_cell_735/bias
0:.	d?2lstm_736/lstm_cell_736/kernel
::8	2?2'lstm_736/lstm_cell_736/recurrent_kernel
*:(?2lstm_736/lstm_cell_736/bias
/:-2(2lstm_737/lstm_cell_737/kernel
9:7
(2'lstm_737/lstm_cell_737/recurrent_kernel
):'(2lstm_737/lstm_cell_737/bias
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
2Adam/dense_245/kernel/m
!:2Adam/dense_245/bias/m
5:3	?2$Adam/lstm_735/lstm_cell_735/kernel/m
?:=	d?2.Adam/lstm_735/lstm_cell_735/recurrent_kernel/m
/:-?2"Adam/lstm_735/lstm_cell_735/bias/m
5:3	d?2$Adam/lstm_736/lstm_cell_736/kernel/m
?:=	2?2.Adam/lstm_736/lstm_cell_736/recurrent_kernel/m
/:-?2"Adam/lstm_736/lstm_cell_736/bias/m
4:22(2$Adam/lstm_737/lstm_cell_737/kernel/m
>:<
(2.Adam/lstm_737/lstm_cell_737/recurrent_kernel/m
.:,(2"Adam/lstm_737/lstm_cell_737/bias/m
':%
2Adam/dense_245/kernel/v
!:2Adam/dense_245/bias/v
5:3	?2$Adam/lstm_735/lstm_cell_735/kernel/v
?:=	d?2.Adam/lstm_735/lstm_cell_735/recurrent_kernel/v
/:-?2"Adam/lstm_735/lstm_cell_735/bias/v
5:3	d?2$Adam/lstm_736/lstm_cell_736/kernel/v
?:=	2?2.Adam/lstm_736/lstm_cell_736/recurrent_kernel/v
/:-?2"Adam/lstm_736/lstm_cell_736/bias/v
4:22(2$Adam/lstm_737/lstm_cell_737/kernel/v
>:<
(2.Adam/lstm_737/lstm_cell_737/recurrent_kernel/v
.:,(2"Adam/lstm_737/lstm_cell_737/bias/v
?2?
0__inference_sequential_245_layer_call_fn_3898478
0__inference_sequential_245_layer_call_fn_3899216
0__inference_sequential_245_layer_call_fn_3899243
0__inference_sequential_245_layer_call_fn_3899094?
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899670
K__inference_sequential_245_layer_call_and_return_conditional_losses_3900097
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899124
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899154?
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
"__inference__wrapped_model_3896929lstm_735_input"?
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
*__inference_lstm_735_layer_call_fn_3900108
*__inference_lstm_735_layer_call_fn_3900119
*__inference_lstm_735_layer_call_fn_3900130
*__inference_lstm_735_layer_call_fn_3900141?
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900284
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900427
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900570
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900713?
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
*__inference_lstm_736_layer_call_fn_3900724
*__inference_lstm_736_layer_call_fn_3900735
*__inference_lstm_736_layer_call_fn_3900746
*__inference_lstm_736_layer_call_fn_3900757?
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3900900
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901043
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901186
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901329?
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
*__inference_lstm_737_layer_call_fn_3901340
*__inference_lstm_737_layer_call_fn_3901351
*__inference_lstm_737_layer_call_fn_3901362
*__inference_lstm_737_layer_call_fn_3901373?
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901516
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901659
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901802
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901945?
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
+__inference_dense_245_layer_call_fn_3901954?
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
F__inference_dense_245_layer_call_and_return_conditional_losses_3901964?
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
%__inference_signature_wrapper_3899189lstm_735_input"?
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
/__inference_lstm_cell_642_layer_call_fn_3901981
/__inference_lstm_cell_642_layer_call_fn_3901998?
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902030
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902062?
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
/__inference_lstm_cell_643_layer_call_fn_3902079
/__inference_lstm_cell_643_layer_call_fn_3902096?
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902128
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902160?
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
/__inference_lstm_cell_644_layer_call_fn_3902177
/__inference_lstm_cell_644_layer_call_fn_3902194?
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902226
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902258?
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
"__inference__wrapped_model_3896929?-./012345!";?8
1?.
,?)
lstm_735_input?????????
? "5?2
0
	dense_245#? 
	dense_245??????????
F__inference_dense_245_layer_call_and_return_conditional_losses_3901964\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_245_layer_call_fn_3901954O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900284?-./O?L
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900427?-./O?L
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900570q-./??<
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
E__inference_lstm_735_layer_call_and_return_conditional_losses_3900713q-./??<
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
*__inference_lstm_735_layer_call_fn_3900108}-./O?L
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
*__inference_lstm_735_layer_call_fn_3900119}-./O?L
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
*__inference_lstm_735_layer_call_fn_3900130d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_735_layer_call_fn_3900141d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_736_layer_call_and_return_conditional_losses_3900900?012O?L
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901043?012O?L
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901186q012??<
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
E__inference_lstm_736_layer_call_and_return_conditional_losses_3901329q012??<
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
*__inference_lstm_736_layer_call_fn_3900724}012O?L
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
*__inference_lstm_736_layer_call_fn_3900735}012O?L
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
*__inference_lstm_736_layer_call_fn_3900746d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_736_layer_call_fn_3900757d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901516}345O?L
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901659}345O?L
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901802m345??<
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
E__inference_lstm_737_layer_call_and_return_conditional_losses_3901945m345??<
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
*__inference_lstm_737_layer_call_fn_3901340p345O?L
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
*__inference_lstm_737_layer_call_fn_3901351p345O?L
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
*__inference_lstm_737_layer_call_fn_3901362`345??<
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
*__inference_lstm_737_layer_call_fn_3901373`345??<
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902030?-./??}
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
J__inference_lstm_cell_642_layer_call_and_return_conditional_losses_3902062?-./??}
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
/__inference_lstm_cell_642_layer_call_fn_3901981?-./??}
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
/__inference_lstm_cell_642_layer_call_fn_3901998?-./??}
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902128?012??}
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
J__inference_lstm_cell_643_layer_call_and_return_conditional_losses_3902160?012??}
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
/__inference_lstm_cell_643_layer_call_fn_3902079?012??}
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
/__inference_lstm_cell_643_layer_call_fn_3902096?012??}
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902226?345??}
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
J__inference_lstm_cell_644_layer_call_and_return_conditional_losses_3902258?345??}
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
/__inference_lstm_cell_644_layer_call_fn_3902177?345??}
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
/__inference_lstm_cell_644_layer_call_fn_3902194?345??}
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899124y-./012345!"C?@
9?6
,?)
lstm_735_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899154y-./012345!"C?@
9?6
,?)
lstm_735_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_245_layer_call_and_return_conditional_losses_3899670q-./012345!";?8
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
K__inference_sequential_245_layer_call_and_return_conditional_losses_3900097q-./012345!";?8
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
0__inference_sequential_245_layer_call_fn_3898478l-./012345!"C?@
9?6
,?)
lstm_735_input?????????
p 

 
? "???????????
0__inference_sequential_245_layer_call_fn_3899094l-./012345!"C?@
9?6
,?)
lstm_735_input?????????
p

 
? "???????????
0__inference_sequential_245_layer_call_fn_3899216d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_245_layer_call_fn_3899243d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3899189?-./012345!"M?J
? 
C?@
>
lstm_735_input,?)
lstm_735_input?????????"5?2
0
	dense_245#? 
	dense_245?????????